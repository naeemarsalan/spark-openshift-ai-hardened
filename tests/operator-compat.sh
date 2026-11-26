#!/usr/bin/env bash
# Emulates, with podman, how the OpenShift AI (Kubeflow) Spark Operator's SparkConnect
# controller starts the server: it REPLACES the image entrypoint with
#   bash -c '... exec "${SPARK_HOME}/sbin/start-connect-server.sh" "$@" --conf spark.driver.host=...'
# sets SPARK_NO_DAEMONIZE=true, and stops it with sbin/stop-connect-server.sh (preStop).
# Source: red-hat-data-services/spark-operator internal/controller/sparkconnect/reconciler.go
#
# Usage: tests/operator-compat.sh <image>
set -euo pipefail
IMAGE="${1:?usage: operator-compat.sh <image>}"
ENGINE="${ENGINE:-podman}"
cd "$(dirname "$0")/.."
NAME="spark-opcompat-$$"; RAND_UID=$(( 20000 + RANDOM ))
trap '"$ENGINE" rm -f "$NAME" >/dev/null 2>&1 || true' EXIT
SCRIPT='host="${POD_IP}"
case "${host}" in
\[*) ;;
*:*) host="[${host}]" ;;
esac
exec "${SPARK_HOME}/sbin/start-connect-server.sh" "$@" --conf "spark.driver.host=${host}"
'
SEC=(--user "$RAND_UID:0" --cap-drop=ALL --security-opt=no-new-privileges --read-only --tmpfs /tmp:rw,mode=1777)
"$ENGINE" run -d --name "$NAME" "${SEC[@]}" -e POD_IP=127.0.0.1 -e SPARK_NO_DAEMONIZE=true \
  -v "$PWD/tests/jobs:/jobs:ro,z" --entrypoint bash "$IMAGE" \
  -c "$SCRIPT" spark-connect-server --master 'local[2]' >/dev/null
rc=0
for _ in $(seq 45); do "$ENGINE" logs "$NAME" 2>&1 | grep -q "Spark Connect server started" && break; sleep 2; done
if "$ENGINE" logs "$NAME" 2>&1 | grep -q "Spark Connect server started"; then echo "  PASS server starts via sbin/start-connect-server.sh (entrypoint bypassed)"
else echo "  FAIL server did not start"; "$ENGINE" logs "$NAME" 2>&1 | tail -20 | sed 's/^/      /'; rc=1; fi
out="$("$ENGINE" exec -e SPARK_REMOTE=sc://127.0.0.1:15002 "$NAME" python3.12 /jobs/connect_client.py 2>&1)" \
  && grep -q CONNECT_SMOKE_OK <<<"$out" && echo "  PASS client: $(grep -m1 CONNECT_SMOKE_OK <<<"$out")" \
  || { echo "  FAIL client"; tail -15 <<<"$out" | sed 's/^/      /'; rc=1; }
# In no-daemonize mode Spark writes no pid file, so the operator's preStop hook is a no-op
# upstream too; it must simply not error, and SIGTERM must stop the JVM promptly.
out="$("$ENGINE" exec "$NAME" bash -c '${SPARK_HOME}/sbin/stop-connect-server.sh' 2>&1)" || true
grep -qiE 'read-only|cannot|denied' <<<"$out" && { echo "  FAIL preStop hook errors: $out"; rc=1; } \
  || echo "  PASS preStop hook (sbin/stop-connect-server.sh) runs without filesystem errors"
# Informational, not a pass/fail: sbin/spark-daemon.sh runs the JVM as a child of bash (PID 1)
# and does not forward signals, so under the operator the pod is only stopped by SIGKILL after
# terminationGracePeriodSeconds. Same with the upstream apache/spark image. The image's own
# `connect` entrypoint mode exec's the JVM and does not have this problem.
start=$SECONDS; "$ENGINE" stop -t 10 "$NAME" >/dev/null 2>&1
(( SECONDS - start < 9 )) && echo "  NOTE server exited on SIGTERM in $((SECONDS - start))s" \
  || echo "  NOTE operator-style launch does not exit on SIGTERM (killed after grace period) - upstream spark-daemon.sh behaviour"
exit $rc
