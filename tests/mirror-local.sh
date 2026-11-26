#!/usr/bin/env bash
# Check that `make fetch` works against a private mirror: HTTPS with a private CA, and a
# user name and password. It serves the files already in ./artifacts from a throwaway local
# server laid out like Artifactory remote repositories (Apache, Maven, PyPI), then runs
# hack/fetch-artifacts.sh in a clean copy of the repo with only the mirror settings.
#
# Needs: ./artifacts (run `make fetch` once), openssl, python3 with pip.
# Usage: tests/mirror-local.sh
set -euo pipefail
cd "$(dirname "$0")/.."
# shellcheck disable=SC1091
source versions.env
[[ -s "artifacts/spark/spark-${SPARK_VERSION}-bin-${HADOOP_PROFILE}.tgz" ]] || { echo "run 'make fetch' first" >&2; exit 1; }

TMP="$(mktemp -d)"; PORT=$(( 20000 + RANDOM % 20000 )); SRV=""
cleanup() { [[ -n "$SRV" ]] && kill "$SRV" 2>/dev/null; rm -rf "$TMP"; }
trap cleanup EXIT
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; failn=$((failn+1)); }

# ---- a private CA and a server certificate for "localhost" ------------------------------
openssl req -x509 -newkey rsa:2048 -nodes -days 1 -subj "/CN=Test Corp Root CA" \
  -addext "basicConstraints=critical,CA:TRUE" -addext "keyUsage=critical,keyCertSign,cRLSign" \
  -keyout "$TMP/ca.key" -out "$TMP/ca.crt" 2>/dev/null
openssl req -newkey rsa:2048 -nodes -subj "/CN=localhost" -keyout "$TMP/srv.key" -out "$TMP/srv.csr" 2>/dev/null
openssl x509 -req -in "$TMP/srv.csr" -CA "$TMP/ca.crt" -CAkey "$TMP/ca.key" -CAcreateserial -days 1 \
  -extfile <(printf 'subjectAltName=DNS:localhost,IP:127.0.0.1') -out "$TMP/srv.crt" 2>/dev/null
MUSER=builder; MPASS="$(openssl rand -hex 12)"

# ---- mirror content ---------------------------------------------------------------------
W="$TMP/www"; A="$PWD/artifacts"
mkdir -p "$W/apache/spark/spark-${SPARK_VERSION}" "$W/maven" "$W/pypi/simple" "$W/pypi/files"
ln -s "$A"/spark/spark-"${SPARK_VERSION}"-bin-* "$W/apache/spark/spark-${SPARK_VERSION}/"
ln -s "$A/spark/KEYS" "$W/apache/spark/KEYS"
while IFS=: read -r g a v c; do
  [[ -z "${g// }" || "$g" == \#* ]] && continue
  jar="$a-$v${c:+-$c}.jar"; d="$W/maven/${g//.//}/$a/$v"; mkdir -p "$d"
  ln -s "$A/jars/$jar" "$d/$jar"; sha1sum "$A/jars/$jar" | awk '{print $1}' > "$d/$jar.sha1"
done < image/jars.txt
for whl in "$A"/wheels/*.whl; do
  f="$(basename "$whl")"; name="$(tr 'A-Z_.' 'a-z--' <<<"${f%%-*}")"
  mkdir -p "$W/pypi/simple/$name"; ln -s "$whl" "$W/pypi/files/$f"
  echo "<a href=\"../../files/$f\">$f</a><br>" >> "$W/pypi/simple/$name/index.html"
done

cat > "$TMP/serve.py" <<'PY'
import base64, functools, http.server, ssl, sys
root, port, cert, key, user, pw = sys.argv[1:7]
want = "Basic " + base64.b64encode(f"{user}:{pw}".encode()).decode()
class H(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.headers.get("Authorization") != want:
            self.send_response(401); self.send_header("WWW-Authenticate", 'Basic realm="mirror"'); self.end_headers(); return
        super().do_GET()
    do_HEAD = do_GET
    def log_message(self, *a): pass
srv = http.server.ThreadingHTTPServer(("127.0.0.1", int(port)), functools.partial(H, directory=root))
ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER); ctx.load_cert_chain(cert, key)
srv.socket = ctx.wrap_socket(srv.socket, server_side=True); srv.serve_forever()
PY
python3 "$TMP/serve.py" "$W" "$PORT" "$TMP/srv.crt" "$TMP/srv.key" "$MUSER" "$MPASS" & SRV=$!
M="https://localhost:$PORT"
for _ in $(seq 30); do curl -s -o /dev/null --cacert "$TMP/ca.crt" "$M/" && break; sleep 0.3; done

echo "== mirror: $M (private CA, basic auth)"
code() { curl -s -o /dev/null -w '%{http_code}' "$@" || true; }
[[ "$(code "$M/apache/spark/KEYS")" == 000 ]] && ok "without the CA, curl refuses the certificate" || bad "curl accepted an unknown CA"
[[ "$(code --cacert "$TMP/ca.crt" "$M/apache/spark/KEYS")" == 401 ]] && ok "without credentials, the mirror answers 401" || bad "mirror did not ask for credentials"

# ---- a clean copy of the repo, configured only through the documented settings ----------
C="$TMP/repo"; mkdir -p "$C/home"
cp -r hack image versions.env artifacts.sha256 "$C/"
printf 'machine localhost login %s password %s\n' "$MUSER" "$MPASS" > "$C/home/.netrc"; chmod 600 "$C/home/.netrc"
echo 'netrc-optional' > "$C/home/.curlrc"
if (cd "$C" && env -u http_proxy -u https_proxy -u HTTP_PROXY -u HTTPS_PROXY \
      HOME="$C/home" \
      SPARK_MIRROR="$M/apache/spark" SPARK_KEYS_URL="$M/apache/spark/KEYS" \
      MAVEN_REPO="$M/maven" PIP_INDEX_URL="$M/pypi/simple" \
      CURL_CA_BUNDLE="$TMP/ca.crt" PIP_CERT="$TMP/ca.crt" PIP_CONFIG_FILE=/dev/null \
      hack/fetch-artifacts.sh) > "$TMP/fetch.log" 2>&1; then
  ok "fetch from the mirror: $(grep -c 'download ' "$TMP/fetch.log") curl downloads, $(ls "$C/artifacts/wheels" | wc -l) wheels"
else
  bad "fetch from the mirror"; tail -n 25 "$TMP/fetch.log" | sed 's/^/      /'
fi
grep -q 'Good signature' "$TMP/fetch.log" && ok "Spark GPG signature verified" || bad "Spark GPG signature"
grep -q 'verify artifacts against committed artifacts.sha256' "$TMP/fetch.log" && grep -q '^.*done:' "$TMP/fetch.log" \
  && ok "every file matches artifacts.sha256" || bad "lock check"
grep -rqs "$MPASS" "$C/artifacts" "$TMP/fetch.log" && bad "password appears in the output" || ok "password not in the log or the artifacts"

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
