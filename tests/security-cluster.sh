#!/usr/bin/env bash
# Cluster-side security behaviour. Run after tests/cluster-test-openshift-ai.sh (it needs the
# SparkConnect server and the spark-datasources Secret in the current namespace).
#
#   * NetworkPolicy: Spark Connect reachable from its own namespace and from OpenShift AI
#     workbench pods, NOT from any other namespace
#   * RBAC: the Spark driver ServiceAccount cannot read Secrets or touch other namespaces
#   * no credential VALUE appears in any pod spec, ConfigMap or Spark pod log
#
# Usage: tests/security-cluster.sh <image>
set -euo pipefail
IMAGE="${1:?usage: security-cluster.sh <image>}"
cd "$(dirname "$0")/.."
NS="$(oc config view --minify -o jsonpath='{..namespace}')"
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | tail -n 12; failn=$((failn+1)); }
TARGET="spark-connect-service.$NS.svc.cluster.local"
OUT="$NS-outsider"; WB="$NS-workbench"
cleanup() { oc delete namespace "$OUT" "$WB" --ignore-not-found --wait=false >/dev/null 2>&1 || true; oc delete pod np-probe -n "$NS" --ignore-not-found >/dev/null 2>&1 || true; }
trap cleanup EXIT

probe() { # namespace, extra-labels  -> prints OPEN or BLOCKED
  local ns="$1" labels="${2:-probe=true}"
  oc delete pod np-probe -n "$ns" --ignore-not-found >/dev/null 2>&1
  oc run np-probe -n "$ns" --image="$IMAGE" --restart=Never --labels="$labels" --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"np-probe","image":"'"$IMAGE"'","args":["bash","-c","if timeout 8 bash -c \"</dev/tcp/'"$TARGET"'/15002\" 2>/dev/null; then echo OPEN; else echo BLOCKED; fi"],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}}}]}}' >/dev/null
  for _ in $(seq 40); do
    [[ "$(oc get pod np-probe -n "$ns" -o jsonpath='{.status.phase}' 2>/dev/null)" =~ Succeeded|Failed ]] && break; sleep 2
  done
  oc logs np-probe -n "$ns" 2>/dev/null | tail -1
}
echo "== NetworkPolicy around Spark Connect ($TARGET:15002)"
for ns in "$OUT" "$WB"; do oc create namespace "$ns" >/dev/null 2>&1 || true; done
oc label namespace "$WB" opendatahub.io/dashboard=true --overwrite >/dev/null
# Private registry: let the probe namespaces pull the image too.
if [[ -n "${PULL_SECRET:-}" ]]; then
  for ns in "$OUT" "$WB"; do
    oc get secret "$PULL_SECRET" -o json | python3 -c 'import json,sys; d=json.load(sys.stdin); m=d["metadata"]; d["metadata"]={"name":m["name"]}; print(json.dumps(d))' | oc apply -n "$ns" -f - >/dev/null
    oc secrets link default "$PULL_SECRET" --for=pull -n "$ns" >/dev/null
  done
fi
r="$(probe "$NS")";                                  [[ "$r" == OPEN ]]    && ok "same namespace can reach Spark Connect"                        || bad "same namespace should reach Spark Connect (got '${r:-no result}')"
r="$(probe "$WB" opendatahub.io/workbenches=true)";  [[ "$r" == OPEN ]]    && ok "workbench pod in a data-science-project namespace can reach it" || bad "workbench pod should reach Spark Connect (got '${r:-no result}')"
r="$(probe "$WB")";                                  [[ "$r" == BLOCKED ]] && ok "non-workbench pod in that namespace is blocked"                 || bad "non-workbench pod should be blocked (got '${r:-no result}')"
r="$(probe "$OUT")";                                 [[ "$r" == BLOCKED ]] && ok "pod in an unrelated namespace is blocked"                       || bad "unrelated namespace should be blocked (got '${r:-no result}')"

echo "== RBAC of the Spark driver ServiceAccount"
SA="system:serviceaccount:$NS:spark-operator-spark"
can() { oc auth can-i "$@" --as "$SA" 2>/dev/null || true; }
[[ "$(can create pods -n "$NS")" == yes ]] && ok "can create executor pods in its own namespace" || bad "driver SA cannot create pods"
[[ "$(can get secrets -n "$NS")" == no ]] && ok "cannot read Secrets" || bad "driver SA can read Secrets"
[[ "$(can create pods -n "$OUT")" == no ]] && ok "cannot create pods in another namespace" || bad "driver SA can create pods elsewhere"
[[ "$(can list nodes)" == no && "$(can create clusterrolebindings)" == no ]] && ok "no cluster-level permissions" || bad "driver SA has cluster-level permissions"

echo "== credential values never leave the Secret"
mapfile -t vals < <(oc get secret spark-datasources -o json | python3 -c 'import json,sys,base64
d=json.load(sys.stdin)["data"]
for k in ("AWS_SECRET_ACCESS_KEY","JDBC_PASSWORD"): print(base64.b64decode(d[k]).decode())')
dump="$(oc get pods,configmaps,sparkapplications,sparkconnects -o yaml 2>/dev/null)"
hit=0; for v in "${vals[@]}"; do grep -qF -- "$v" <<<"$dump" && hit=1; done
[[ $hit -eq 0 ]] && ok "not in any pod spec, ConfigMap, SparkApplication or SparkConnect ($(wc -l <<<"$dump") lines of YAML checked)" || bad "a credential value appears in a resource spec"
logs=""; for p in $(oc get pods -l spark-role -o name); do logs+="$(oc logs "$p" --tail=-1 2>/dev/null || true)"$'\n'; done
hit=0; for v in "${vals[@]}"; do grep -qF -- "$v" <<<"$logs" && hit=1; done
[[ $hit -eq 0 ]] && ok "not in any Spark pod log ($(wc -l <<<"$logs") lines checked)" || bad "a credential value appears in a Spark pod log"

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
