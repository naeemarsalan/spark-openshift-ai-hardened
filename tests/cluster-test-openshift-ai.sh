#!/usr/bin/env bash
# End-to-end test through the OpenShift AI Spark Operator (Kubeflow Spark Operator, RHOAI 3.5+).
#
# Usage:
#   oc login ...; oc new-project spark-demo
#   tests/cluster-test-openshift-ai.sh <image-pullable-by-the-cluster> [--cleanup]
#
# Needs: DataScienceCluster with the Spark Operator component Managed, and the operator
# watching this namespace. Proves, with the custom image:
#   * SparkApplication (Scala) and SparkApplication (PySpark, S3A + JDBC) complete
#   * SparkConnect CR brings up a server + executors; a Python client can use it
#   * every Spark pod is admitted by restricted-v2 with a namespace-assigned UID
set -euo pipefail
IMAGE="${1:?usage: cluster-test-openshift-ai.sh <image> [--cleanup]}"
cd "$(dirname "$0")/.."
NS="$(oc config view --minify -o jsonpath='{..namespace}')"; D=deploy/openshift-ai
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | tail -n 25; failn=$((failn+1)); }
apply() { sed "s#SPARK_IMAGE_PLACEHOLDER#$IMAGE#g" "$1" | oc apply -f - >/dev/null; }

if [[ "${2:-}" == "--cleanup" ]]; then
  for f in "$D"/2*.yaml "$D"/1*.yaml; do oc delete -f "$f" --ignore-not-found >/dev/null 2>&1 || true; done
  oc delete pod oai-connect-client --ignore-not-found >/dev/null
  tests/cluster-test.sh "$IMAGE" --cleanup; exit 0
fi

echo "== cluster: $(oc whoami --show-server)  namespace: $NS  image: $IMAGE"
# ---- preflight -------------------------------------------------------------------------
for crd in sparkapplications.sparkoperator.k8s.io sparkconnects.sparkoperator.k8s.io; do
  oc get crd "$crd" >/dev/null 2>&1 && ok "CRD $crd present" || { bad "CRD $crd missing - is the Spark Operator component Managed in the DataScienceCluster?"; echo "== aborting"; exit 1; }
done
echo "  info: RHOAI $(oc get csv -A -o jsonpath='{range .items[?(@.spec.displayName=="Red Hat OpenShift AI")]}{.spec.version}{"\n"}{end}' 2>/dev/null | sort -u | head -1)" \
     " spark operator: $(oc get sparkoperator default-sparkoperator -o jsonpath='{.spec.managementState}' 2>/dev/null || echo '?')"

PREREQS_ONLY=1 tests/cluster-test.sh "$IMAGE" >/dev/null   # test S3 + PostgreSQL, Secrets, job ConfigMap
apply "$D/00-rbac.yaml"

# ---- SparkApplication ------------------------------------------------------------------
sparkapp() { # file, name, marker
  oc delete sparkapplication "$2" --ignore-not-found >/dev/null
  apply "$1"
  local state=""
  for _ in $(seq 120); do
    state="$(oc get sparkapplication "$2" -o jsonpath='{.status.applicationState.state}' 2>/dev/null || true)"
    [[ "$state" == COMPLETED || "$state" == FAILED || "$state" == SUBMISSION_FAILED ]] && break; sleep 5
  done
  local log; log="$(oc logs "$2-driver" --tail=-1 2>&1 || true)"
  if [[ "$state" == COMPLETED ]] && grep -q -- "$3" <<<"$log"; then ok "SparkApplication $2: $(grep -m1 -- "$3" <<<"$log")"
  else bad "SparkApplication $2 (state=${state:-none})" "$(oc get sparkapplication "$2" -o jsonpath='{.status.applicationState.errorMessage}' 2>/dev/null; echo; oc get events --sort-by=.lastTimestamp 2>/dev/null | tail -8; echo ---; tail -n 25 <<<"$log")"; fi
}
sparkapp "$D/10-sparkapplication-scala.yaml" spark-pi-scala "Pi is roughly 3.1"
sparkapp "$D/11-sparkapplication-python.yaml" s3-jdbc-python "S3_JDBC_SMOKE_OK"

# ---- SparkConnect ----------------------------------------------------------------------
apply "$D/20-sparkconnect.yaml"
oc wait --for=condition=Ready pod -l spark-role=connect-server --timeout=300s >/dev/null 2>&1 \
  && ok "SparkConnect server pod ready" || bad "SparkConnect server" "$(oc get sparkconnect spark-connect -o yaml | tail -25; oc logs -l spark-role=connect-server --tail=30 2>&1)"
oc delete pod oai-connect-client --ignore-not-found >/dev/null
oc run oai-connect-client --image="$IMAGE" --restart=Never --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"c","image":"'"$IMAGE"'","envFrom":[{"secretRef":{"name":"spark-datasources"}}],"env":[{"name":"SPARK_REMOTE","value":"sc://spark-connect-service:15002"}],"args":["bash","-c","python3.12 /jobs/connect_client.py && python3.12 /jobs/s3_jdbc.py"],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}},"volumeMounts":[{"name":"jobs","mountPath":"/jobs"}]}],"volumes":[{"name":"jobs","configMap":{"name":"spark-test-jobs"}}]}}' >/dev/null
oc wait --for=jsonpath='{.status.phase}'=Succeeded pod/oai-connect-client --timeout=300s >/dev/null 2>&1 || true
log="$(oc logs oai-connect-client 2>&1 || true)"
grep -q CONNECT_SMOKE_OK <<<"$log" && ok "Connect client: $(grep -m1 CONNECT_SMOKE_OK <<<"$log")" || bad "Connect client" "$log"
grep -q S3_JDBC_SMOKE_OK <<<"$log" && ok "Connect client: S3A + JDBC round-trip" || bad "Connect client S3A + JDBC" "$log"

# ---- admission / UID evidence -----------------------------------------------------------
source tests/lib-evidence.sh
security_evidence "$IMAGE"

echo "== $pass passed, $failn failed"
echo "   manual step: workbench test in $D/workbench-notebook.md"
[[ $failn -eq 0 ]]
