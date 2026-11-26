#!/usr/bin/env bash
# Run the example pipeline on a cluster through the OpenShift AI Spark Operator:
#   1. example-etl     SparkApplication (PySpark)
#   2. example-report  SparkApplication (Scala)
#   3. Spark Connect client pod (stands in for a workbench) against the SparkConnect server
#
# Usage: examples/run-cluster.sh <base-image> <examples-image>
#   e.g. examples/run-cluster.sh oci.arsalan.io/spark/spark-hi:4.2.1-2 oci.arsalan.io/spark/spark-examples:4.2.1-2
set -euo pipefail
BASE="${1:?usage: run-cluster.sh <base-image> <examples-image>}"; APP="${2:?examples image}"
cd "$(dirname "$0")/.."
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | tail -n 25; failn=$((failn+1)); }
echo "== cluster: $(oc whoami --show-server)  base: $BASE  app: $APP"
PREREQS_ONLY=1 tests/cluster-test.sh "$BASE" >/dev/null 2>&1

sparkapp() { # file, name, marker
  oc delete sparkapplication "$2" --ignore-not-found >/dev/null
  sed "s#EXAMPLES_IMAGE_PLACEHOLDER#$APP#g" "$1" | oc apply -f - >/dev/null
  local state=""
  for _ in $(seq 120); do
    state="$(oc get sparkapplication "$2" -o jsonpath='{.status.applicationState.state}' 2>/dev/null || true)"
    [[ "$state" == COMPLETED || "$state" == FAILED || "$state" == SUBMISSION_FAILED ]] && break; sleep 5
  done
  local log; log="$(oc logs "$2-driver" --tail=-1 2>&1 || true)"
  if [[ "$state" == COMPLETED ]] && grep -q -- "$3" <<<"$log"; then ok "$2: $(grep -m1 -- "$3" <<<"$log")"
  else bad "$2 (state=${state:-none})" "$(oc get sparkapplication "$2" -o jsonpath='{.status.applicationState.errorMessage}' 2>/dev/null; echo; tail -n 25 <<<"$log")"; fi
}
sparkapp examples/openshift-ai/01-etl-sparkapplication.yaml example-etl ETL_OK
sparkapp examples/openshift-ai/02-report-sparkapplication.yaml example-report SCALA_REPORT_OK

sed "s#SPARK_IMAGE_PLACEHOLDER#$BASE#g" deploy/openshift-ai/20-sparkconnect.yaml | oc apply -f - >/dev/null 2>&1
oc wait --for=condition=Ready pod -l spark-role=connect-server --timeout=300s >/dev/null 2>&1 || true
oc delete pod example-connect-client --ignore-not-found >/dev/null
oc run example-connect-client --image="$APP" --restart=Never --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"c","image":"'"$APP"'","envFrom":[{"secretRef":{"name":"spark-datasources"}}],"env":[{"name":"SPARK_REMOTE","value":"sc://spark-connect-service:15002"}],"args":["python3.12","/opt/spark/app/client.py"],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}}}]}}' >/dev/null
oc wait --for=jsonpath='{.status.phase}'=Succeeded pod/example-connect-client --timeout=300s >/dev/null 2>&1 || true
log="$(oc logs example-connect-client 2>&1 || true)"
grep -q CONNECT_EXAMPLE_OK <<<"$log" && ok "connect client: $(grep -m1 CONNECT_EXAMPLE_OK <<<"$log")" || bad "connect client" "$log"

source tests/lib-evidence.sh
security_evidence "${BASE%/*}"
echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
