#!/usr/bin/env bash
# Check that `make fetch` works against a private mirror: HTTPS with a private CA, and a
# user name and password. It serves the files already in ./artifacts from a throwaway local
# server laid out like Artifactory remote repositories (Apache, Maven, PyPI), then runs
# hack/fetch-artifacts.sh in a clean copy of the repo with only the mirror settings.
#
# It then repeats the fetch through a forward proxy, with and without no_proxy, and runs two
# small image builds: one whose package manager goes through the proxy, and one that installs
# RPMs from an HTTPS mirror with the private CA (a pass-through to Red Hat's public UBI
# repository), configured with a mounted .repo file.
#
# Needs: ./artifacts (run `make fetch` once), openssl, python3 with pip, podman.
# Usage: tests/mirror-local.sh
set -euo pipefail
cd "$(dirname "$0")/.."
# shellcheck disable=SC1091
source versions.env
[[ -s "artifacts/spark/spark-${SPARK_VERSION}-bin-${HADOOP_PROFILE}.tgz" ]] || { echo "run 'make fetch' first" >&2; exit 1; }

ENGINE="${ENGINE:-podman}"
BASE="${UBI9_BASE_IMAGE:-registry.access.redhat.com/ubi9/ubi-minimal:9.9}"
TMP="$(mktemp -d)"; PORT=$(( 20000 + RANDOM % 10000 )); PPORT=$(( PORT + 1 )); RPORT=$(( PORT + 2 )); SRV=""; PRX=""; RPM=""
cleanup() { for p in $SRV $PRX $RPM; do kill "$p" 2>/dev/null || true; done; "$ENGINE" rmi -f localhost/mirror-test-proxy localhost/mirror-test-rpm >/dev/null 2>&1 || true; rm -rf "$TMP"; }
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
  -extfile <(printf 'subjectAltName=DNS:localhost,DNS:host.containers.internal,IP:127.0.0.1') -out "$TMP/srv.crt" 2>/dev/null
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
fetch() { # dir, extra environment assignments...
  local C="$TMP/$1"; shift; mkdir -p "$C/home"
  cp -r hack image versions.env artifacts.sha256 "$C/"
  printf 'machine localhost login %s password %s\n' "$MUSER" "$MPASS" > "$C/home/.netrc"; chmod 600 "$C/home/.netrc"
  echo 'netrc-optional' > "$C/home/.curlrc"
  (cd "$C" && env -u http_proxy -u https_proxy -u HTTP_PROXY -u HTTPS_PROXY -u no_proxy -u NO_PROXY \
      HOME="$C/home" \
      SPARK_MIRROR="$M/apache/spark" SPARK_KEYS_URL="$M/apache/spark/KEYS" \
      MAVEN_REPO="$M/maven" PIP_INDEX_URL="$M/pypi/simple" \
      CURL_CA_BUNDLE="$TMP/ca.crt" PIP_CERT="$TMP/ca.crt" PIP_CONFIG_FILE=/dev/null \
      "$@" hack/fetch-artifacts.sh) > "$C/fetch.log" 2>&1
}
C="$TMP/repo"
if fetch repo; then
  ok "fetch from the mirror: $(grep -c 'download ' "$C/fetch.log") curl downloads, $(ls "$C/artifacts/wheels" | wc -l) wheels"
else
  bad "fetch from the mirror"; tail -n 25 "$C/fetch.log" | sed 's/^/      /'
fi
grep -q 'Good signature' "$C/fetch.log" && ok "Spark GPG signature verified" || bad "Spark GPG signature"
grep -q 'verify artifacts against committed artifacts.sha256' "$C/fetch.log" && grep -q '^.*done:' "$C/fetch.log" \
  && ok "every file matches artifacts.sha256" || bad "lock check"
grep -rqs "$MPASS" "$C/artifacts" "$C/fetch.log" && bad "password appears in the output" || ok "password not in the log or the artifacts"

# ---- the same fetch through a forward proxy ------------------------------------------------
python3 -u tests/lib/connect-proxy.py "$PPORT" > "$TMP/proxy.log" 2>&1 & PRX=$!
for _ in $(seq 30); do grep -q listening "$TMP/proxy.log" && break; sleep 0.2; done
tunnels() { grep -c "^CONNECT $PPORT $1" "$TMP/proxy.log" || true; }
echo "== proxy: http://127.0.0.1:$PPORT"
if fetch viaproxy https_proxy="http://127.0.0.1:$PPORT" && [[ "$(tunnels "localhost:$PORT")" -gt 60 ]]; then
  ok "fetch with https_proxy set: curl and pip went through the proxy ($(tunnels "localhost:$PORT") tunnels), lock still matches"
else bad "fetch through the proxy ($(tunnels "localhost:$PORT") tunnels)"; tail -n 15 "$TMP/viaproxy/fetch.log" | sed 's/^/      /'; fi
before="$(tunnels "localhost:$PORT")"
if fetch noproxy https_proxy="http://127.0.0.1:$PPORT" no_proxy=localhost && [[ "$(tunnels "localhost:$PORT")" == "$before" ]]; then
  ok "fetch with no_proxy=localhost: the mirror is reached directly (0 new tunnels)"
else bad "no_proxy was not honoured"; fi

# ---- image build: the package manager behind the proxy -----------------------------------
mkdir -p "$TMP/b"; printf 'FROM %s\nARG R\nRUN microdnf ${R} install -y --nodocs --setopt=install_weak_deps=0 tar && microdnf clean all\n' "$BASE" > "$TMP/b/Containerfile"
UBI="--disablerepo=* --enablerepo=ubi-9-baseos-rpms"
if env -u http_proxy -u HTTP_PROXY -u HTTPS_PROXY -u no_proxy -u NO_PROXY https_proxy="http://host.containers.internal:$PPORT" \
     "$ENGINE" build --no-cache -q -t localhost/mirror-test-proxy --build-arg R="$UBI" "$TMP/b" > "$TMP/b/proxy.log" 2>&1 \
   && [[ "$(tunnels cdn-ubi.redhat.com:443)" -gt 0 ]]; then
  ok "image build with https_proxy set: microdnf went through the proxy ($(tunnels cdn-ubi.redhat.com:443) tunnels to cdn-ubi.redhat.com)"
else bad "image build through the proxy"; tail -n 15 "$TMP/b/proxy.log" | sed 's/^/      /'; fi
"$ENGINE" inspect localhost/mirror-test-proxy --format '{{.Config.Env}}' 2>/dev/null | grep -qi proxy \
  && bad "proxy setting saved in the image" || ok "the built image has no proxy setting in its environment"

# ---- image build: RPMs from a mirror with the private CA ---------------------------------
cat > "$TMP/rpmmirror.py" <<'PY'
import http.server, shutil, ssl, sys, urllib.request
port, cert, key, upstream = sys.argv[1:5]
class H(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        try:
            with urllib.request.urlopen(upstream + self.path, timeout=60) as r:
                self.send_response(r.status)
                for h in ("Content-Type", "Content-Length"):
                    if r.headers.get(h): self.send_header(h, r.headers[h])
                self.end_headers(); shutil.copyfileobj(r, self.wfile)
            print("GET", self.path, flush=True)
        except Exception as e:
            self.send_error(502, str(e))
    def log_message(self, *a): pass
srv = http.server.ThreadingHTTPServer(("0.0.0.0", int(port)), H)
ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER); ctx.load_cert_chain(cert, key)
srv.socket = ctx.wrap_socket(srv.socket, server_side=True); srv.serve_forever()
PY
env -u http_proxy -u https_proxy -u HTTP_PROXY -u HTTPS_PROXY python3 -u "$TMP/rpmmirror.py" "$RPORT" "$TMP/srv.crt" "$TMP/srv.key" https://cdn-ubi.redhat.com > "$TMP/rpm.log" 2>&1 & RPM=$!
cat > "$TMP/internal.repo" <<REPO
[internal-baseos]
name=Internal mirror of UBI 9 BaseOS
baseurl=https://host.containers.internal:$RPORT/content/public/ubi/dist/ubi9/9/\$basearch/baseos/os
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
sslcacert=/etc/pki/corp-ca.pem
REPO
chmod 644 "$TMP/internal.repo" "$TMP/ca.crt"; sleep 1
echo "== RPM mirror: https://host.containers.internal:$RPORT (private CA)"
INT="--disablerepo=* --enablerepo=internal-baseos"
rb() { env -u http_proxy -u https_proxy -u HTTP_PROXY -u HTTPS_PROXY "$ENGINE" build --no-cache -q -t localhost/mirror-test-rpm --build-arg R="$INT" "$@" "$TMP/b"; }
grep -v '^sslcacert' "$TMP/internal.repo" > "$TMP/internal-noca.repo"; chmod 644 "$TMP/internal-noca.repo"
if rb -v "$TMP/internal-noca.repo:/etc/yum.repos.d/internal.repo:ro,z" > "$TMP/b/noca.log" 2>&1; then bad "microdnf accepted the mirror without its CA"
else ok "without sslcacert, the build stops: $(grep -m1 -oiE 'Curl error \([0-9]+\): [A-Za-z ]+' "$TMP/b/noca.log" | head -c 110)"; fi
if rb -v "$TMP/internal.repo:/etc/yum.repos.d/internal.repo:ro,z" -v "$TMP/ca.crt:/etc/pki/corp-ca.pem:ro,z" > "$TMP/b/ca.log" 2>&1 && grep -q '\.rpm' "$TMP/rpm.log"; then
  ok "with the mounted .repo file and CA: $(grep -c '\.rpm' "$TMP/rpm.log") RPM(s) installed from the mirror, signature checked"
else bad "build from the RPM mirror"; tail -n 15 "$TMP/b/ca.log" | sed 's/^/      /'; fi

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
