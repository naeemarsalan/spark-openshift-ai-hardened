#!/usr/bin/env bash
# Security behaviour of Spark Connect, tested with podman:
#   * bearer-token authentication (SPARK_CONNECT_AUTHENTICATE_TOKEN from a "Secret")
#   * TLS in front of it. Spark Connect has no TLS of its own, so a proxy terminates it -
#     here nginx as a sidecar; on OpenShift a Route or service-mesh sidecar plays that role.
#   * the gRPC port bound to loopback so the ONLY way in is through the TLS proxy
#   * secrets never show up in the container spec's command line or in logs
#
# Usage: tests/security-local.sh <image>
set -euo pipefail
IMAGE="${1:?usage: security-local.sh <image>}"
ENGINE="${ENGINE:-podman}"
PROXY_IMAGE="${PROXY_IMAGE:-docker.io/library/nginx:latest}"
S3_IMAGE="${S3_IMAGE:-docker.io/chrislusf/seaweedfs:latest}"
cd "$(dirname "$0")/.."
POD="spark-sec-$$"; RAND_UID=$(( 20000 + RANDOM )); TMP="$(mktemp -d)"
cleanup() { "$ENGINE" pod rm -f "$POD" >/dev/null 2>&1 || true; rm -rf "$TMP"; }
trap cleanup EXIT
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && tail -n 12 <<<"$2" | sed 's/^/      /'; failn=$((failn+1)); }

TOKEN="$(openssl rand -hex 24)"; AK="sec$(openssl rand -hex 6)"; SK="$(openssl rand -hex 20)"
openssl req -x509 -newkey rsa:2048 -nodes -days 1 -subj "/CN=localhost" -addext "subjectAltName=DNS:localhost" \
  -keyout "$TMP/tls.key" -out "$TMP/tls.crt" 2>/dev/null
cat > "$TMP/nginx.conf" <<'NGINX'
pid /tmp/nginx.pid;
events {}
http {
  client_body_temp_path /tmp/c; proxy_temp_path /tmp/p; fastcgi_temp_path /tmp/f; uwsgi_temp_path /tmp/u; scgi_temp_path /tmp/s;
  server {
    listen 8443 ssl; http2 on;
    ssl_certificate /tls/tls.crt; ssl_certificate_key /tls/tls.key; ssl_protocols TLSv1.3;
    location / { grpc_pass grpc://127.0.0.1:15002; grpc_read_timeout 300s; grpc_send_timeout 300s; }
  }
}
NGINX
echo "{\"identities\":[{\"name\":\"s\",\"credentials\":[{\"accessKey\":\"$AK\",\"secretKey\":\"$SK\"}],\"actions\":[\"Admin\",\"Read\",\"Write\",\"List\",\"Tagging\"]}]}" > "$TMP/s3.json"
chmod 644 "$TMP"/*; chmod 755 "$TMP"
cat > "$TMP/client.py" <<'PY'
import os, sys
from pyspark.sql import SparkSession
try:
    s = SparkSession.builder.remote(os.environ["SPARK_REMOTE"]).getOrCreate()
    n = s.range(100).count()
    if os.environ.get("S3_WRITE"):
        s.range(50).write.mode("overwrite").parquet("s3a://sec/t"); n = s.read.parquet("s3a://sec/t").count()
    print(f"QUERY_OK {n}")
except Exception as e:  # report the gRPC status, not a stack trace
    msg = str(e).replace("\n", " ")
    print("QUERY_REJECTED " + ("UNAUTHENTICATED" if "UNAUTHENTICATED" in msg or "nauthenticated" in msg else msg[:300]))
PY
chmod 644 "$TMP/client.py"

SEC=(--user "$RAND_UID:0" --cap-drop=ALL --security-opt=no-new-privileges --read-only --tmpfs /tmp:rw,mode=1777)
"$ENGINE" pod create --name "$POD" >/dev/null
"$ENGINE" run -d --pod "$POD" --name "$POD-s3" -v "$TMP/s3.json:/etc/s3.json:ro,z" "$S3_IMAGE" server -dir=/data -s3 -s3.port=8333 -s3.config=/etc/s3.json >/dev/null
"$ENGINE" run -d --pod "$POD" --name "$POD-proxy" --user "$RAND_UID:0" --cap-drop=ALL --read-only --tmpfs /tmp:rw,mode=1777 \
  -v "$TMP/nginx.conf:/etc/nginx/nginx.conf:ro,z" -v "$TMP:/tls:ro,z" "$PROXY_IMAGE" >/dev/null
# Secrets reach the server only as environment variables (a Secret in Kubernetes).
"$ENGINE" run -d --pod "$POD" --name "$POD-connect" "${SEC[@]}" \
  -e SPARK_CONNECT_AUTHENTICATE_TOKEN="$TOKEN" -e AWS_ENDPOINT_URL_S3=http://127.0.0.1:8333 \
  -e AWS_ACCESS_KEY_ID="$AK" -e AWS_SECRET_ACCESS_KEY="$SK" "$IMAGE" connect --master 'local[2]' \
  --conf spark.connect.grpc.binding.address=127.0.0.1 \
  --conf spark.hadoop.fs.s3a.path.style.access=true --conf spark.hadoop.fs.s3a.endpoint.region=us-east-1 >/dev/null
for _ in $(seq 60); do "$ENGINE" exec "$POD-s3" sh -c 'echo "s3.bucket.create -name sec" | weed shell -master=127.0.0.1:9333' >/dev/null 2>&1 && break; sleep 2; done
for _ in $(seq 60); do "$ENGINE" logs "$POD-connect" 2>&1 | grep -q "Spark Connect server started" && break; sleep 2; done

client() { # remote-url [extra env...]
  local url="$1"; shift
  "$ENGINE" run --rm --pod "$POD" "${SEC[@]}" -v "$TMP/client.py:/client.py:ro,z" -v "$TMP/tls.crt:/ca/ca.crt:ro,z" \
    -e GRPC_DEFAULT_SSL_ROOTS_FILE_PATH=/ca/ca.crt -e SPARK_REMOTE="$url" "$@" "$IMAGE" \
    timeout 90 python3.12 /client.py 2>&1 | grep -E 'QUERY_(OK|REJECTED)' | tail -1 || true
}
echo "== Spark Connect: token + TLS (uid $RAND_UID:0)"
out="$(client "sc://localhost:8443/;use_ssl=true;token=$TOKEN" -e S3_WRITE=1)"
[[ "$out" == "QUERY_OK 50" ]] && ok "valid token over TLS: query + S3 write succeed" || bad "valid token over TLS" "$out"
out="$(client "sc://localhost:8443/;use_ssl=true;token=wrong-$(openssl rand -hex 8)")"
[[ "$out" == *UNAUTHENTICATED* ]] && ok "wrong token is rejected (UNAUTHENTICATED)" || bad "wrong token was not rejected" "$out"
out="$(client "sc://localhost:8443/;use_ssl=true")"
[[ "$out" == *UNAUTHENTICATED* ]] && ok "missing token is rejected (UNAUTHENTICATED)" || bad "missing token was not rejected" "$out"
# Same valid token, but the client trusts only the public CA bundle, not this server's CA.
# The client keeps retrying the handshake, so "no successful query within the timeout" is the pass condition.
out="$(client "sc://localhost:8443/;use_ssl=true;token=$TOKEN" -e GRPC_DEFAULT_SSL_ROOTS_FILE_PATH=/etc/pki/tls/certs/ca-bundle.crt)"
[[ "$out" != QUERY_OK* ]] && ok "client that does not trust the server certificate cannot connect" || bad "untrusted certificate accepted" "$out"
srvlog="$("$ENGINE" logs "$POD-connect" 2>&1)"
bound="$(grep -m1 'Spark Connect server started at' <<<"$srvlog" || true)"
[[ "$bound" == *127.0.0.1:15002* ]] && ok "gRPC port is bound to loopback only (${bound##*at: }) - reachable solely through the TLS proxy" \
  || bad "gRPC port not restricted to loopback" "$bound"

echo "== secrets hygiene"
spec="$("$ENGINE" inspect "$POD-connect" --format '{{.Config.Cmd}} {{.Config.Entrypoint}} {{.Args}}')"
grep -qF -e "$TOKEN" -e "$SK" <<<"$spec" && bad "a secret appears in the container command line" || ok "no secret in the container command line (env-only)"
logs="$("$ENGINE" logs "$POD-connect" 2>&1; "$ENGINE" logs "$POD-proxy" 2>&1)"
grep -qF -e "$TOKEN" -e "$SK" <<<"$logs" && bad "a secret appears in the logs" "$(grep -F -e "$TOKEN" -e "$SK" <<<"$logs" | head -3 | cut -c1-160)" \
  || ok "token and S3 secret key never appear in server or proxy logs ($(wc -l <<<"$logs") lines checked)"
ps="$("$ENGINE" exec "$POD-connect" bash -c 'cat /proc/[0-9]*/cmdline 2>/dev/null | tr "\0" " "')"
grep -qF -e "$TOKEN" -e "$SK" <<<"$ps" && bad "a secret appears in a process command line" || ok "no secret in any process command line inside the container"
echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
