#!/usr/bin/env bash
# Custom CA on the cluster: a Spark job reads and writes an S3 endpoint whose certificate is
# signed by a CA the image does not trust (the OpenShift service CA).
#   * without the CA the job must fail with a certificate error
#   * with deploy/openshift-ai/12-sparkapplication-custom-ca.yaml it must complete
#
# Usage: tests/custom-ca-cluster.sh <image> [--cleanup]      (PULL_SECRET as in cluster-test.sh)
set -euo pipefail
IMAGE="${1:?usage: custom-ca-cluster.sh <image> [--cleanup]}"
cd "$(dirname "$0")/.."
NS="$(oc config view --minify -o jsonpath='{..namespace}')"
EP="https://test-s3-tls.$NS.svc:8443"
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | tail -n 25; failn=$((failn+1)); }
render() { sed -e "s#SPARK_IMAGE_PLACEHOLDER#$IMAGE#g" -e "s#S3_TLS_ENDPOINT_PLACEHOLDER#$EP#g" \
               ${SPARK_VERSION_OVERRIDE:+-e "s#sparkVersion: .*#sparkVersion: $SPARK_VERSION_OVERRIDE#"} "$1"; }
if [[ "${2:-}" == "--cleanup" ]]; then
  oc delete sparkapplication s3-custom-ca s3-no-ca --ignore-not-found >/dev/null
  oc delete -f deploy/91-test-s3-tls.yaml --ignore-not-found >/dev/null; oc delete secret test-s3-tls-cert --ignore-not-found >/dev/null
  exit 0
fi

echo "== cluster: $(oc whoami --show-server)  namespace: $NS  image: $IMAGE"
PREREQS_ONLY=1 tests/cluster-test.sh "$IMAGE" >/dev/null
oc apply -f deploy/openshift-ai/00-rbac.yaml >/dev/null
oc apply -f deploy/91-test-s3-tls.yaml >/dev/null
oc rollout status deploy/test-s3-tls --timeout=300s >/dev/null
for _ in $(seq 40); do
  oc exec deploy/test-s3-tls -- sh -c 'echo "s3.bucket.create -name spark-smoke" | weed shell -master=127.0.0.1:9333; echo "s3.bucket.list" | weed shell -master=127.0.0.1:9333' 2>/dev/null | grep -q spark-smoke && break; sleep 3
done
issuer="$(oc get secret test-s3-tls-cert -o jsonpath='{.data.tls\.crt}' | base64 -d | openssl x509 -noout -issuer 2>/dev/null || true)"
[[ "$issuer" == *service* ]] && ok "S3 endpoint $EP, certificate $issuer" || bad "serving certificate" "$issuer"

run() { # name -> sets state, log
  local s=""
  for _ in $(seq 120); do
    s="$(oc get sparkapplication "$1" -o jsonpath='{.status.applicationState.state}' 2>/dev/null || true)"
    [[ "$s" == COMPLETED || "$s" == FAILED || "$s" == SUBMISSION_FAILED ]] && break; sleep 5
  done
  state="$s"; log="$(oc logs "$1-driver" --tail=-1 2>&1 || true)"
}

# ---- without the CA: the same job, minus the trust init container and its volumes -------
oc delete sparkapplication s3-no-ca s3-custom-ca --ignore-not-found >/dev/null
render deploy/openshift-ai/11-sparkapplication-python.yaml \
  | sed -e 's/name: s3-jdbc-python/name: s3-no-ca/' \
        -e "s#- secretRef: { name: spark-datasources }#- secretRef: { name: spark-datasources }\n            env:\n              - { name: S3_ENDPOINT, value: \"$EP\" }#" \
  | oc apply -f - >/dev/null
run s3-no-ca
if [[ "$state" == FAILED ]] && grep -qE 'PKIX path building failed|unable to find valid certification path|SSLHandshakeException' <<<"$log"; then
  ok "without the CA the job fails: $(grep -oE 'PKIX path building failed|SSLHandshakeException' <<<"$log" | head -n 1)"
else bad "job without the CA should fail with a certificate error (state=${state:-none})" "$log"; fi

# ---- with the CA --------------------------------------------------------------------------
render deploy/openshift-ai/12-sparkapplication-custom-ca.yaml | oc apply -f - >/dev/null
run s3-custom-ca
if [[ "$state" == COMPLETED ]] && grep -q S3_JDBC_SMOKE_OK <<<"$log"; then ok "with the CA the job completes: $(grep -m1 S3A_OK <<<"$log")"
else bad "job with the CA (state=${state:-none})" "$(oc get events --sort-by=.lastTimestamp 2>/dev/null | tail -8; echo ---; oc logs s3-custom-ca-driver -c trust 2>&1 | tail -5; echo ---; tail -n 25 <<<"$log")"; fi

pods="$(oc get pods -l sparkoperator.k8s.io/app-name=s3-custom-ca -o json 2>/dev/null)"
python3 - "$pods" <<'PY' && ok "trust init container ran; pod admitted by restricted-v2" || bad "pod check"
import json, sys
items = json.loads(sys.argv[1])["items"]
assert items, "no pods"
for p in items:
    assert p["metadata"]["annotations"].get("openshift.io/scc") == "restricted-v2", p["metadata"]["name"]
    ics = p["status"].get("initContainerStatuses", [])
    assert ics and ics[0]["state"]["terminated"]["exitCode"] == 0, p["metadata"]["name"]
    print("  ", p["metadata"]["name"], p["metadata"]["annotations"]["openshift.io/scc"],
          "uid", p["spec"]["containers"][0]["securityContext"].get("runAsUser"))
PY

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
