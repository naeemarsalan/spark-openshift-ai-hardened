#!/usr/bin/env bash
# Functional tests on a build box, run under the same constraints restricted-v2 imposes:
#   arbitrary UID + GID 0, all capabilities dropped, no privilege escalation,
#   and (stricter than the SCC) a read-only root filesystem with only /tmp writable.
#
# Usage: tests/smoke-local.sh <image>
set -euo pipefail
IMAGE="${1:?usage: smoke-local.sh <image>}"
ENGINE="${ENGINE:-podman}"
S3_IMAGE="${S3_IMAGE:-docker.io/chrislusf/seaweedfs:latest}"
PG_IMAGE="${PG_IMAGE:-quay.io/sclorg/postgresql-16-c9s:latest}"
cd "$(dirname "$0")/.."

RAND_UID=$(( 20000 + RANDOM ))   # stays inside the rootless subuid range
POD="spark-smoke-$$"
# CRI-O (OpenShift) and podman both add a passwd entry for an unknown UID. Images that ship
# nss_wrapper are tested with that disabled (--passwd=false) to prove the fallback works.
PASSWD=(); WHO="^$RAND_UID\$"
if "$ENGINE" run --rm --entrypoint /bin/bash "$IMAGE" -c 'test -r /usr/lib64/libnss_wrapper.so'; then
  PASSWD=(--passwd=false); WHO='^spark$'
fi
SEC=(--user "$RAND_UID:0" "${PASSWD[@]}" --cap-drop=ALL --security-opt=no-new-privileges
     --read-only --tmpfs /tmp:rw,mode=1777 -v "$PWD/tests/jobs:/jobs:ro,z")
pass=0; failn=0
ok()   { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad()  { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; failn=$((failn+1)); }
check() { # name, expected-string, command...
  local name="$1" want="$2" out; shift 2
  if out="$("$@" 2>&1)" && grep -q -- "$want" <<<"$out"; then ok "$name: $(grep -m1 -- "$want" <<<"$out")"
  else bad "$name"; tail -n 25 <<<"$out" | sed 's/^/      /'; fi
}
cleanup() { "$ENGINE" pod rm -f "$POD" >/dev/null 2>&1 || true; rm -rf "${TMP:-}"; }
trap cleanup EXIT
TMP="$(mktemp -d)"

echo "== image: $IMAGE   uid: $RAND_UID:0"
check "default user is non-root 1001:0" "^1001:0$" "$ENGINE" run --rm "$IMAGE" bash -c 'echo "$(id -u):$(id -g)"'
check "arbitrary uid has a usable identity" "$WHO" "$ENGINE" run --rm "${SEC[@]}" "$IMAGE" whoami
check "spark dist is read-only for runtime user" "RO_OK" "$ENGINE" run --rm --user "$RAND_UID:0" "$IMAGE" \
  bash -c 'touch /opt/spark/jars/x 2>/dev/null || touch /etc/x 2>/dev/null || echo RO_OK'
check "spark-submit Scala (SparkPi)" "Pi is roughly 3.1" "$ENGINE" run --rm "${SEC[@]}" "$IMAGE" \
  spark-submit --master 'local[2]' --class org.apache.spark.examples.SparkPi \
  local:///opt/spark/examples/jars/spark-examples.jar 20
check "spark-submit Python (pandas UDF, Arrow)" "PYSPARK_SMOKE_OK" "$ENGINE" run --rm "${SEC[@]}" "$IMAGE" \
  spark-submit --master 'local[2]' /jobs/pyspark_smoke.py

# ---- pod with S3 + PostgreSQL + Spark Connect server -------------------------------
AK="smoke$(openssl rand -hex 6)"; SK="$(openssl rand -hex 20)"; PGPW="$(openssl rand -hex 12)"
cat > "$TMP/s3.json" <<JSON
{"identities":[{"name":"smoke","credentials":[{"accessKey":"$AK","secretKey":"$SK"}],"actions":["Admin","Read","Write","List","Tagging"]}]}
JSON
chmod 644 "$TMP/s3.json"
"$ENGINE" pod create --name "$POD" >/dev/null
"$ENGINE" run -d --pod "$POD" --name "$POD-s3" -v "$TMP/s3.json:/etc/s3.json:ro,z" "$S3_IMAGE" \
  server -dir=/data -s3 -s3.port=8333 -s3.config=/etc/s3.json >/dev/null
"$ENGINE" run -d --pod "$POD" --name "$POD-pg" -e POSTGRESQL_USER=spark -e POSTGRESQL_PASSWORD="$PGPW" \
  -e POSTGRESQL_DATABASE=sparkdb "$PG_IMAGE" >/dev/null
ENVS=(-e S3_ENDPOINT=http://127.0.0.1:8333 -e S3_BUCKET=spark-smoke -e AWS_ACCESS_KEY_ID="$AK"
      -e AWS_SECRET_ACCESS_KEY="$SK" -e AWS_REGION=us-east-1
      -e JDBC_URL=jdbc:postgresql://127.0.0.1:5432/sparkdb -e JDBC_USER=spark -e JDBC_PASSWORD="$PGPW")
"$ENGINE" run -d --pod "$POD" --name "$POD-connect" "${SEC[@]}" "${ENVS[@]}" "$IMAGE" connect \
  --master 'local[2]' \
  --conf spark.hadoop.fs.s3a.endpoint=http://127.0.0.1:8333 \
  --conf spark.hadoop.fs.s3a.path.style.access=true \
  --conf spark.hadoop.fs.s3a.endpoint.region=us-east-1 >/dev/null

echo "== waiting for S3, PostgreSQL and Spark Connect"
for _ in $(seq 60); do
  "$ENGINE" exec "$POD-s3" sh -c 'echo "s3.bucket.create -name spark-smoke" | weed shell -master=127.0.0.1:9333' >/dev/null 2>&1 && break; sleep 2
done
for _ in $(seq 60); do "$ENGINE" exec "$POD-pg" pg_isready -q -h 127.0.0.1 2>/dev/null && break; sleep 2; done
for _ in $(seq 60); do "$ENGINE" logs "$POD-connect" 2>&1 | grep -q "Spark Connect server started" && break; sleep 2; done

check "Spark Connect server up on :15002" "Spark Connect server started" "$ENGINE" logs "$POD-connect"
check "Spark Connect Python client" "CONNECT_SMOKE_OK" "$ENGINE" run --rm --pod "$POD" "${SEC[@]}" \
  -e SPARK_REMOTE=sc://127.0.0.1:15002 "$IMAGE" python3.12 /jobs/connect_client.py
check "spark-submit: S3A + JDBC round-trip" "S3_JDBC_SMOKE_OK" "$ENGINE" run --rm --pod "$POD" "${SEC[@]}" "${ENVS[@]}" \
  "$IMAGE" spark-submit --master 'local[2]' /jobs/s3_jdbc.py
check "Spark Connect: S3A + JDBC round-trip" "S3_JDBC_SMOKE_OK" "$ENGINE" run --rm --pod "$POD" "${SEC[@]}" "${ENVS[@]}" \
  -e SPARK_REMOTE=sc://127.0.0.1:15002 "$IMAGE" python3.12 /jobs/s3_jdbc.py

# Clients send JDBC options (incl. the password) to the Connect server inside the request,
# and upstream Spark logs whole requests at INFO from SparkConnectExecutionManager when a
# session closes with an execution still open (a timing race, so it cannot be provoked on
# demand). The image's log4j2.properties silences that logger; assert both that it is silent
# and that no credential value made it into the log.
srvlog="$("$ENGINE" logs "$POD-connect" 2>&1)"
n="$(grep -c 'INFO SparkConnectExecutionManager' <<<"$srvlog" || true)"
[[ "$n" -eq 0 ]] && ok "Connect request logger (SparkConnectExecutionManager) is silenced at INFO" \
  || bad "Connect request logger still logs at INFO ($n lines): client-supplied credentials can leak into pod logs"
if grep -qF -e "$PGPW" -e "$SK" <<<"$srvlog"; then bad "Connect server log contains a credential sent by a client"
else ok "no client-supplied credential in the Connect server log ($(wc -l <<<"$srvlog") lines)"; fi

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
