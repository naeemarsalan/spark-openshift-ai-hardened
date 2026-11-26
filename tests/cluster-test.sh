#!/usr/bin/env bash
# End-to-end test on OpenShift under the restricted-v2 SCC.
#
# Usage:
#   oc login ...; oc new-project spark-demo        # a normal project, no extra SCC grants
#   tests/cluster-test.sh <image-pullable-by-the-cluster> [--cleanup]
#
# What it proves:
#   * every Spark pod (submitter, driver, executors, Connect server) is admitted by restricted-v2
#     and runs as a namespace-assigned UID (not root, not the image's 1001)
#   * spark-submit cluster mode: Scala job, PySpark job, S3A + JDBC round-trip
#   * Spark Connect server with executors + Python client, incl. S3A + JDBC through Connect
set -euo pipefail
IMAGE="${1:?usage: cluster-test.sh <image> [--cleanup]}"
cd "$(dirname "$0")/.."
NS="$(oc config view --minify -o jsonpath='{..namespace}')"
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | tail -n 25; failn=$((failn+1)); }

if [[ "${2:-}" == "--cleanup" ]]; then
  oc delete job,deploy,svc,networkpolicy,configmap,secret,pod -l app.kubernetes.io/part-of=spark-image-test --ignore-not-found
  oc delete pod -l spark-role --ignore-not-found
  exit 0
fi

echo "== cluster: $(oc whoami --show-server)  namespace: $NS  image: $IMAGE"
LBL=(app.kubernetes.io/part-of=spark-image-test)
apply() { sed "s#SPARK_IMAGE_PLACEHOLDER#$IMAGE#g" "$1" | oc apply -f - >/dev/null && oc label --overwrite -f "$1" "${LBL[@]}" >/dev/null 2>&1 || true; }

# ---- prerequisites ---------------------------------------------------------------------
apply deploy/00-rbac.yaml
apply deploy/openshift-ai/00-rbac.yaml
# Private registry: PULL_SECRET=<name of an existing dockerconfigjson Secret in this namespace>
if [[ -n "${PULL_SECRET:-}" ]]; then
  for sa in default spark spark-operator-spark; do oc secrets link "$sa" "$PULL_SECRET" --for=pull >/dev/null; done
fi
apply deploy/10-pod-templates.yaml
oc create configmap spark-test-jobs --from-file=tests/jobs --dry-run=client -o yaml | oc apply -f - >/dev/null
oc label --overwrite configmap spark-test-jobs "${LBL[@]}" >/dev/null

if ! oc get secret spark-test-deps >/dev/null 2>&1; then
  AK="smoke$(openssl rand -hex 6)"; SK="$(openssl rand -hex 20)"; PGPW="$(openssl rand -hex 12)"
  oc create secret generic spark-test-deps --from-literal=pg-password="$PGPW" --from-literal=s3.json="{\"identities\":[{\"name\":\"smoke\",\"credentials\":[{\"accessKey\":\"$AK\",\"secretKey\":\"$SK\"}],\"actions\":[\"Admin\",\"Read\",\"Write\",\"List\",\"Tagging\"]}]}" >/dev/null
  oc create secret generic spark-datasources \
    --from-literal=S3_ENDPOINT=http://test-s3:8333 --from-literal=S3_BUCKET=spark-smoke \
    --from-literal=AWS_ACCESS_KEY_ID="$AK" --from-literal=AWS_SECRET_ACCESS_KEY="$SK" \
    --from-literal=JDBC_URL=jdbc:postgresql://test-postgres:5432/sparkdb \
    --from-literal=JDBC_USER=spark --from-literal=JDBC_PASSWORD="$PGPW" >/dev/null
  oc label secret spark-test-deps spark-datasources "${LBL[@]}" >/dev/null
fi
apply deploy/90-test-deps.yaml
# Plain Kubernetes only (kind rehearsal): nothing assigns a UID there, and the SeaweedFS image
# defaults to root. On OpenShift the SCC assigns one, and a fixed UID must NOT be set.
if ! oc api-resources --api-group=security.openshift.io 2>/dev/null | grep -q securitycontextconstraints; then
  oc patch deploy test-s3 --type=merge -p '{"spec":{"template":{"spec":{"securityContext":{"runAsUser":10001,"runAsGroup":0,"fsGroup":0}}}}}' >/dev/null
fi
oc rollout status deploy/test-s3 deploy/test-postgres --timeout=300s >/dev/null
for _ in $(seq 30); do
  oc exec deploy/test-s3 -- sh -c 'echo "s3.bucket.create -name spark-smoke" | weed shell -master=127.0.0.1:9333' >/dev/null 2>&1 && break; sleep 3
done

[[ -n "${PREREQS_ONLY:-}" ]] && exit 0   # used by cluster-test-openshift-ai.sh

# ---- spark-submit (cluster mode) -------------------------------------------------------
submit() { # job-name, marker, app args...
  local name="$1" want="$2"; shift 2
  local args; args="$(printf '            - "%s"\\n' "$@")"
  oc delete job "$name" --ignore-not-found >/dev/null; oc delete pod -l "spark-job=$name" --ignore-not-found >/dev/null
  sed -e "s#SPARK_IMAGE_PLACEHOLDER#$IMAGE#g" -e "s#JOB_NAME_PLACEHOLDER#$name#g" \
      -e "s#^            - APP_ARGS_PLACEHOLDER#${args%\\n}#" deploy/30-spark-submit-job.yaml \
    | oc apply -f - >/dev/null
  oc label --overwrite job "$name" "${LBL[@]}" >/dev/null
  oc wait --for=condition=complete "job/$name" --timeout=600s >/dev/null 2>&1 || true
  local log; log="$(oc logs -l "spark-job=$name" --tail=-1 2>&1 || true)"
  if grep -q -- "$want" <<<"$log"; then ok "spark-submit $name: $(grep -m1 -- "$want" <<<"$log")"
  else bad "spark-submit $name" "$(oc logs "job/$name" --tail=30 2>&1; echo ---; tail -n 30 <<<"$log")"; fi
}
submit spark-pi-scala "Pi is roughly 3.1" --class org.apache.spark.examples.SparkPi local:///opt/spark/examples/jars/spark-examples.jar 200
submit pyspark-smoke "PYSPARK_SMOKE_OK" local:///jobs/pyspark_smoke.py
submit s3-jdbc "S3_JDBC_SMOKE_OK" local:///jobs/s3_jdbc.py

# ---- Spark Connect ---------------------------------------------------------------------
apply deploy/20-connect-server.yaml
oc rollout status deploy/spark-connect --timeout=300s >/dev/null && ok "Spark Connect server ready" || bad "Spark Connect server" "$(oc logs deploy/spark-connect --tail=40 2>&1)"
client() { # name, marker, script, extra-env-from-secret(yes|no)
  local name="$1" want="$2" script="$3" envfrom=""
  [[ "$4" == yes ]] && envfrom='"envFrom":[{"secretRef":{"name":"spark-datasources"}}],'
  oc delete pod "$name" --ignore-not-found >/dev/null
  oc run "$name" --image="$IMAGE" --restart=Never --labels="${LBL[0]}" --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"'"$name"'","image":"'"$IMAGE"'",'"$envfrom"'"env":[{"name":"SPARK_REMOTE","value":"sc://spark-connect:15002"}],"args":["python3.12","/jobs/'"$script"'"],"securityContext":{"allowPrivilegeEscalation":false,"readOnlyRootFilesystem":true,"capabilities":{"drop":["ALL"]}},"volumeMounts":[{"name":"jobs","mountPath":"/jobs"},{"name":"tmp","mountPath":"/tmp"}]}],"volumes":[{"name":"jobs","configMap":{"name":"spark-test-jobs"}},{"name":"tmp","emptyDir":{}}]}}' >/dev/null
  oc wait --for=jsonpath='{.status.phase}'=Succeeded "pod/$name" --timeout=300s >/dev/null 2>&1 || true
  local log; log="$(oc logs "$name" 2>&1 || true)"
  grep -q -- "$want" <<<"$log" && ok "$name: $(grep -m1 -- "$want" <<<"$log")" || bad "$name" "$log"
}
client connect-client "CONNECT_SMOKE_OK" connect_client.py no
client connect-s3-jdbc "S3_JDBC_SMOKE_OK" s3_jdbc.py yes

# ---- admission / UID evidence -----------------------------------------------------------
source tests/lib-evidence.sh
security_evidence "$IMAGE"

echo "== $pass passed, $failn failed   (cleanup: tests/cluster-test.sh $IMAGE --cleanup)"
[[ $failn -eq 0 ]]
