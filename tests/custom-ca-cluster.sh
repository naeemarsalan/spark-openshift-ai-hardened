#!/usr/bin/env bash
# Custom CA on the cluster. S3 and PostgreSQL are served over TLS with certificates from a CA
# the image does not trust (the OpenShift service CA).
#   * without the CA, a job fails with a certificate error
#   * with deploy/openshift-ai/12-sparkapplication-custom-ca.yaml it completes (S3A + JDBC)
#   * with deploy/openshift-ai/21-sparkconnect-custom-ca.yaml a Spark Connect client does the same
#
# Usage: tests/custom-ca-cluster.sh <image> [--cleanup]      (PULL_SECRET as in cluster-test.sh)
# The Spark Connect part replaces the `spark-connect` server in the project.
set -euo pipefail
IMAGE="${1:?usage: custom-ca-cluster.sh <image> [--cleanup]}"
cd "$(dirname "$0")/.."
D=deploy/openshift-ai
source tests/lib/tls-deps.sh
if [[ "${2:-}" == "--cleanup" ]]; then
  oc delete sparkapplication s3-custom-ca s3-no-ca --ignore-not-found >/dev/null
  oc delete sparkconnect spark-connect --ignore-not-found >/dev/null; oc delete pod ca-connect-client --ignore-not-found >/dev/null
  tls_deps_down; exit 0
fi

echo "== cluster: $(oc whoami --show-server)  namespace: $NS  image: $IMAGE"
tls_deps_up
i="$(issuer test-s3-tls-cert)";      [[ "$i" == *service* ]] && ok "S3 endpoint $S3_TLS, certificate $i" || bad "S3 serving certificate" "$i"
i="$(issuer test-postgres-tls-cert)"; [[ "$i" == *service* ]] && ok "PostgreSQL test-postgres-tls.$NS.svc:5432 with TLS, certificate $i" || bad "PostgreSQL serving certificate" "$i"

# ---- without the CA: the standard job, pointed at the TLS endpoints ----------------------
oc delete sparkapplication s3-no-ca s3-custom-ca --ignore-not-found >/dev/null
render "$D/11-sparkapplication-python.yaml" -e 's/name: s3-jdbc-python/name: s3-no-ca/' \
  -e "s#- secretRef: { name: spark-datasources }#- secretRef: { name: spark-datasources }\n            env:\n              - { name: S3_ENDPOINT, value: \"$S3_TLS\" }#" \
  | oc apply -f - >/dev/null
wait_app s3-no-ca
if [[ "$state" == FAILED ]] && grep -qE 'PKIX path building failed|SSLHandshakeException' <<<"$log"; then
  ok "without the CA the job fails: $(grep -oE 'PKIX path building failed|SSLHandshakeException' <<<"$log" | head -n 1)"
else bad "job without the CA should fail with a certificate error (state=${state:-none})" "$log"; fi

# ---- with the CA: SparkApplication ---------------------------------------------------------
render "$D/12-sparkapplication-custom-ca.yaml" | oc apply -f - >/dev/null
wait_app s3-custom-ca
if [[ "$state" == COMPLETED ]] && grep -q S3_JDBC_SMOKE_OK <<<"$log"; then
  ok "SparkApplication with the CA, S3 over TLS: $(grep -m1 S3A_OK <<<"$log")"
  ok "SparkApplication with the CA, PostgreSQL with sslmode=verify-full: $(grep -m1 JDBC_OK <<<"$log")"
else bad "SparkApplication with the CA (state=${state:-none})" "$(oc get events --sort-by=.lastTimestamp 2>/dev/null | tail -8; echo ---; oc logs s3-custom-ca-driver -c trust 2>&1 | tail -5; echo ---; tail -n 25 <<<"$log")"; fi
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

# ---- with the CA: SparkConnect -------------------------------------------------------------
# 20-sparkconnect.yaml brings the Service and NetworkPolicies. The operator does not restart a
# running server when the resource changes, so the server is deleted before 21 is applied.
render "$D/20-sparkconnect.yaml" | oc apply -f - >/dev/null
oc delete sparkconnect spark-connect --ignore-not-found >/dev/null
oc wait --for=delete pod -l spark-role=connect-server --timeout=120s >/dev/null 2>&1 || true
render "$D/21-sparkconnect-custom-ca.yaml" | oc apply -f - >/dev/null
for _ in $(seq 60); do
  [[ "$(oc get pod -l spark-role=connect-server -o jsonpath='{.items[0].spec.initContainers[0].name}' 2>/dev/null)" == trust ]] \
    && oc wait --for=condition=Ready pod -l spark-role=connect-server --timeout=10s >/dev/null 2>&1 && break; sleep 5
done
srv="$(oc get pod -l spark-role=connect-server -o jsonpath='{.items[0].metadata.name} init={.items[0].spec.initContainers[0].name} scc={.items[0].metadata.annotations.openshift\.io/scc}' 2>/dev/null || true)"
[[ "$srv" == *"init=trust scc=restricted-v2"* ]] && ok "SparkConnect server ready with the trust init container: $srv" \
  || bad "SparkConnect server with the CA" "$srv; $(oc logs -l spark-role=connect-server --tail=20 2>&1)"
oc delete pod ca-connect-client --ignore-not-found >/dev/null
oc run ca-connect-client --image="$IMAGE" --restart=Never --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"c","image":"'"$IMAGE"'","envFrom":[{"secretRef":{"name":"spark-datasources"}}],"env":[{"name":"SPARK_REMOTE","value":"sc://spark-connect-service:15002"},{"name":"JDBC_URL","value":"'"${JDBC_TLS//\\/}"'"}],"args":["python3.12","/jobs/s3_jdbc.py"],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}},"volumeMounts":[{"name":"jobs","mountPath":"/jobs"}]}],"volumes":[{"name":"jobs","configMap":{"name":"spark-test-jobs"}}]}}' >/dev/null
oc wait --for=jsonpath='{.status.phase}'=Succeeded pod/ca-connect-client --timeout=300s >/dev/null 2>&1 || true
log="$(oc logs ca-connect-client 2>&1 || true)"
ep="$(oc get pod -l spark-role=connect-server -o jsonpath='{.items[0].spec.containers[0].env[?(@.name=="AWS_ENDPOINT_URL_S3")].value}' 2>/dev/null || true)"
grep -q S3_JDBC_SMOKE_OK <<<"$log" && [[ "$ep" == "$S3_TLS" ]] \
  && ok "Spark Connect client through that server: S3 ($ep) and PostgreSQL over TLS" || bad "Spark Connect client" "$ep; $log"
execs="$(oc get pods -l spark-role=executor -o jsonpath='{range .items[*]}{.metadata.name}:{.spec.initContainers[0].name} {end}' 2>/dev/null || true)"
grep -q 'spark-connect.*:trust' <<<"$execs" && ok "Spark Connect executors have the trust init container: $execs" || bad "executor init container" "$execs"

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
