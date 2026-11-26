#!/usr/bin/env bash
# Execute examples/03-spark-connect/workbench.ipynb inside a real OpenShift AI workbench pod,
# against the SparkConnect server in the current project.
#
# Usage: tests/workbench-test.sh <workbench-namespace> <workbench-pod> [pip args for the client]
#   e.g. tests/workbench-test.sh spark-wb spark-wb-0
#        tests/workbench-test.sh spark-wb spark-wb-0 --index-url https://pypi.org/simple
# Needs: examples/run-cluster.sh run first (the notebook reads the data that pipeline wrote).
# The database settings are passed from the project's spark-datasources Secret over stdin, so
# they never appear on a command line or in this script's output.
set -euo pipefail
WNS="${1:?workbench namespace}"; WPOD="${2:?workbench pod}"; shift 2
cd "$(dirname "$0")/.."
NS="$(oc config view --minify -o jsonpath='{..namespace}')"
echo "== workbench $WNS/$WPOD -> SparkConnect in $NS ($(oc get sparkconnect spark-connect -o jsonpath='{.spec.server.template.spec.containers[0].image}'))"
c="$(oc get pod "$WPOD" -n "$WNS" -o jsonpath='{.spec.containers[0].name}')"
oc cp examples/03-spark-connect/workbench.ipynb "$WNS/$WPOD:/opt/app-root/src/workbench.ipynb" -c "$c" >/dev/null
oc cp tests/workbench-run.sh "$WNS/$WPOD:/tmp/workbench-run.sh" -c "$c" >/dev/null
pipargs="$*"
{ oc get secret spark-datasources -o go-template='{{range $k,$v := .data}}{{if or (eq $k "JDBC_URL") (eq $k "JDBC_USER") (eq $k "JDBC_PASSWORD") (eq $k "S3_BUCKET")}}export {{$k}}='"'"'{{$v | base64decode}}'"'"'{{"\n"}}{{end}}{{end}}'
  echo "export SPARK_CONNECT_NAMESPACE='$NS'"
  echo "pip install --quiet $pipargs 'pyspark-client>=4.2,<4.3' 2>&1 | tail -n 2"
  echo "bash /tmp/workbench-run.sh test"
} | oc exec -i "$WPOD" -n "$WNS" -c "$c" -- bash -s 2>&1 | tee /tmp/workbench-test.$$ | sed 's/^/  /'
grep -q NOTEBOOK_OK /tmp/workbench-test.$$ && r=0 || r=1; rm -f /tmp/workbench-test.$$
[[ $r -eq 0 ]] && echo "== 1 passed, 0 failed" || echo "== 0 passed, 1 failed"; exit $r
