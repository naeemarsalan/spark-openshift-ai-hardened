#!/usr/bin/env bash
# Client compatibility: run several pyspark-client versions against the running SparkConnect
# server, from a pod that uses the OpenShift AI workbench image (so pip resolves against the
# same index a real workbench uses).
#
# Usage: tests/compat-clients.sh [client ...]
#   client = <version>        install from the workbench image's default index (Red Hat's)
#            pypi:<version>   install from PyPI (stands in for an internal PyPI mirror)
#   default: 4.0.1 4.1.2 4.2.0 pypi:4.3.0
#
# Needs: tests/cluster-test-openshift-ai.sh run first in this namespace (it leaves the
# SparkConnect server, the test data sources and the job ConfigMap in place).
# Each client runs tests/jobs/connect_client.py (pandas UDF on the executors, SQL) and
# tests/jobs/s3_jdbc.py (S3A write/read and JDBC write/read through the server).
set -euo pipefail
cd "$(dirname "$0")/.."
WB_IMAGE="${WB_IMAGE:-$(oc get imagestream -n redhat-ods-applications -o jsonpath='{range .items[*]}{range .spec.tags[*]}{.from.name}{"\n"}{end}{end}' 2>/dev/null | grep -m1 jupyter-minimal-cpu-py312 || true)}"
[[ -n "$WB_IMAGE" ]] || { echo "set WB_IMAGE to a Python 3.12 workbench image" >&2; exit 1; }
[[ $# -gt 0 ]] || set -- 4.0.1 4.1.2 4.2.0 pypi:4.3.0
server="$(oc get sparkconnect spark-connect -o jsonpath='{.spec.server.template.spec.containers[0].image}')"
echo "== server image: $server"
echo "== client image: $WB_IMAGE"

script='
unset PIP_CERT; cd /tmp
for c in '"$*"'; do
  idx=""; v="$c"; src="workbench default index"
  case "$c" in pypi:*) v="${c#pypi:}"; idx="--index-url https://pypi.org/simple"; src="PyPI";; esac
  rm -rf venv; python -m venv venv >/dev/null 2>&1
  if ! venv/bin/pip install --quiet $idx "pyspark-client==$v" >pip.log 2>&1; then
    echo "RESULT client=$v source=\"$src\" INSTALL_FAILED $(grep -m1 ERROR pip.log)"; continue; fi
  if out=$(venv/bin/python /jobs/connect_client.py 2>&1 && venv/bin/python /jobs/s3_jdbc.py 2>&1); then
    echo "RESULT client=$v source=\"$src\" PASS $(grep -o "server_version=[0-9.]*" <<<"$out") $(grep -c -E "S3A_OK|JDBC_OK" <<<"$out")/2 data paths"
  else
    echo "RESULT client=$v source=\"$src\" FAIL"; tail -n 15 <<<"$out" | sed "s/^/    /"
  fi
done
echo CLIENTS_DONE'

oc delete pod compat-clients --ignore-not-found >/dev/null
oc run compat-clients --image="$WB_IMAGE" --restart=Never --labels=spark-test=true --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"c","image":"'"$WB_IMAGE"'","command":["bash","-c"],"args":['"$(python3 -c 'import json,sys; print(json.dumps(sys.argv[1]))' "$script")"'],"envFrom":[{"secretRef":{"name":"spark-datasources"}}],"env":[{"name":"SPARK_REMOTE","value":"sc://spark-connect-service:15002"}],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}},"volumeMounts":[{"name":"jobs","mountPath":"/jobs"}]}],"volumes":[{"name":"jobs","configMap":{"name":"spark-test-jobs"}}]}}' >/dev/null
for _ in $(seq 240); do
  ph="$(oc get pod compat-clients -o jsonpath='{.status.phase}' 2>/dev/null || true)"
  [[ "$ph" == Succeeded || "$ph" == Failed ]] && break; sleep 5
done
log="$(oc logs compat-clients 2>&1 || true)"
pass=0; failn=0
while IFS= read -r l; do
  case "$l" in
    RESULT*PASS*) printf '  \033[1;32mPASS\033[0m %s\n' "${l#RESULT }"; pass=$((pass+1));;
    RESULT*)      printf '  \033[1;31mFAIL\033[0m %s\n' "${l#RESULT }"; failn=$((failn+1));;
    "    "*)      echo "  $l";;
  esac
done <<<"$log"
grep -q CLIENTS_DONE <<<"$log" || { echo "  pod did not finish (phase=$ph)"; tail -n 20 <<<"$log"; failn=$((failn+1)); }
echo "  $(oc get pod compat-clients -o jsonpath='{.metadata.name}  scc={.metadata.annotations.openshift\.io/scc}  uid={.spec.containers[0].securityContext.runAsUser}')"
echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
