#!/usr/bin/env bash
# Proxy settings on the cluster. Runs deploy/openshift-ai/13-sparkapplication-proxy.yaml against
# a small forward proxy in the project and checks, in the proxy's log, that each layer's
# setting sent its traffic there:
#   port 3128  S3 connector   (spark.hadoop.fs.s3a.proxy.*)
#   port 3129  other JVM code (-Dhttps.proxyHost)
#   port 3130  Python code    (HTTPS_PROXY)
# Then runs it again without NO_PROXY, to show where the driver's Kubernetes API calls go.
#
# Usage: tests/proxy-cluster.sh <image> [--cleanup]
#   PROXY_TEST_URL  an HTTPS URL outside the cluster (default https://repo1.maven.org/maven2/)
set -euo pipefail
IMAGE="${1:?usage: proxy-cluster.sh <image> [--cleanup]}"
cd "$(dirname "$0")/.."
URL="${PROXY_TEST_URL:-https://repo1.maven.org/maven2/}"
source tests/lib/tls-deps.sh
if [[ "${2:-}" == "--cleanup" ]]; then
  oc delete sparkapplication proxy-check proxy-check-no-noproxy --ignore-not-found >/dev/null; tls_deps_down; exit 0
fi
NOPROXY="kubernetes.default.svc,.cluster.local,localhost,127.0.0.1,172.30.0.1"

echo "== cluster: $(oc whoami --show-server)  namespace: $NS  image: $IMAGE"
tls_deps_up
oc rollout restart deploy/test-proxy >/dev/null; oc rollout status deploy/test-proxy --timeout=120s >/dev/null   # empty log
plog() { oc logs deploy/test-proxy --tail=-1 2>/dev/null | grep '^CONNECT' || true; }
api="$(oc get svc kubernetes -n default -o jsonpath='{.spec.clusterIP}' 2>/dev/null || echo 172.30.0.1)"

oc delete sparkapplication proxy-check proxy-check-no-noproxy --ignore-not-found >/dev/null
render deploy/openshift-ai/13-sparkapplication-proxy.yaml -e "s#NO_PROXY_PLACEHOLDER#$NOPROXY#" -e "s#PROXY_TEST_URL_PLACEHOLDER#$URL#" | oc apply -f - >/dev/null
wait_app proxy-check
[[ "$state" == COMPLETED ]] && grep -q PROXY_CHECK_OK <<<"$log" && ok "job completed with 2 executors behind the proxy settings" \
  || bad "proxy job (state=${state:-none})" "$(tail -n 25 <<<"$log")"
P="$(plog)"; host="${URL#https://}"; host="${host%%/*}"
for row in "3128|test-s3-tls.$NS.svc:8443|S3 connector|S3A_VIA_PROXY_OK" "3129|$host:443|JVM code|JVM_VIA_PROXY_OK" "3130|$host:443|Python code|PYTHON_VIA_PROXY_OK"; do
  IFS='|' read -r port target what marker <<<"$row"
  n="$(grep -c "^CONNECT $port $target" <<<"$P" || true)"
  [[ "$n" -gt 0 ]] && grep -q "$marker" <<<"$log" && ok "$what went through the proxy: $n tunnel(s) to $target; $(grep -m1 -o "$marker.*HTTP [0-9]*" <<<"$log" || echo "$marker")" \
    || bad "$what did not use the proxy" "$P"
done
n="$(grep -cE "kubernetes|$api" <<<"$P" || true)"
[[ "$n" -eq 0 ]] && ok "with NO_PROXY set, no Kubernetes API call reached the proxy" || bad "Kubernetes API calls reached the proxy" "$(grep -E "kubernetes|$api" <<<"$P")"

# ---- the same job with NO_PROXY left empty -------------------------------------------------
render deploy/openshift-ai/13-sparkapplication-proxy.yaml -e 's/name: proxy-check/name: proxy-check-no-noproxy/' \
  -e "s#NO_PROXY_PLACEHOLDER##" -e "s#PROXY_TEST_URL_PLACEHOLDER#$URL#" | oc apply -f - >/dev/null
wait_app proxy-check-no-noproxy
k="$(plog | grep -E "kubernetes|$api" | sort | uniq -c | sed 's/^ *//' | tr '\n' ';' || true)"
if [[ -n "$k" ]]; then ok "without NO_PROXY the Kubernetes API calls go to the proxy (job state $state): $k"
else ok "without NO_PROXY no Kubernetes API call reached the proxy (job state $state)"; fi

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
