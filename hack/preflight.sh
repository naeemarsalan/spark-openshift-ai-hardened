#!/usr/bin/env bash
# Preflight: check what YOU have to bring before running Spark on OpenShift AI.
#
# Usage: hack/preflight.sh [image]
#   Without an image: checks the cluster and the current project.
#   With an image:    also starts one short pod from it and checks that the cluster can pull it
#                     and that it runs under restricted-v2 as a project-assigned UID.
#   PULL_SECRET=<secret name>   if the image is in a private registry
#
# Read-only apart from that one pod, which it deletes. Needs `oc`, logged in, with a current project.
set -uo pipefail
IMAGE="${1:-}"
pass=0; warn=0; failn=0
ok()   { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
note() { printf '  \033[1;33mWARN\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && printf '       %s\n' "$2"; warn=$((warn+1)); }
bad()  { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && printf '       fix: %s\n' "$2"; failn=$((failn+1)); }
finish() { echo "== $pass passed, $warn warnings, $failn failed"; [[ $failn -eq 0 ]]; exit $?; }

echo "== cluster"
if oc whoami >/dev/null 2>&1; then ok "logged in as $(oc whoami) to $(oc whoami --show-server)"
else bad "not logged in" "oc login <api-url>"; finish; fi
NS="$(oc config view --minify -o jsonpath='{..namespace}')"
ocp="$(oc get clusterversion version -o jsonpath='{.status.desired.version}' 2>/dev/null || true)"
[[ -n "$ocp" ]] && ok "OpenShift $ocp" || note "cannot read the OpenShift version (needs cluster-reader)"
rhoai="$(oc get csv -A -o jsonpath='{range .items[?(@.spec.displayName=="Red Hat OpenShift AI")]}{.spec.version}{"\n"}{end}' 2>/dev/null | sort -u | head -1)"
if [[ -n "$rhoai" ]]; then
  case "$rhoai" in 1.*|2.*|3.[0-4].*) note "OpenShift AI $rhoai" "this repo is tested on 3.5.4; the Spark Operator component may be missing or different";;
                   *) ok "OpenShift AI $rhoai";; esac
else note "cannot find the OpenShift AI operator (or no permission to list it)"; fi

echo "== Spark Operator"
for crd in sparkapplications.sparkoperator.k8s.io sparkconnects.sparkoperator.k8s.io; do
  oc get crd "$crd" >/dev/null 2>&1 && ok "CRD $crd" \
    || bad "CRD $crd is missing" "a cluster administrator sets spec.components.sparkoperator.managementState: Managed in the DataScienceCluster"
done
scope="$(oc get mutatingwebhookconfiguration -o jsonpath='{range .items[*].webhooks[?(@.name=="mutate-pod.sparkoperator.k8s.io")]}{.namespaceSelector.matchExpressions[*].values}{end}' 2>/dev/null || true)"
if [[ -n "$scope" && "$scope" != *"\"$NS\""* ]]; then
  note "the operator's pod webhook covers only $scope, not this project" \
       "expected on OpenShift AI: put volumes, env and securityContext in driver.template / executor.template (docs/openshift-ai.md)"
fi

echo "== project: ${NS:-<none>}"
if [[ -z "$NS" ]] || ! oc get namespace "$NS" >/dev/null 2>&1; then bad "no current project" "oc new-project <name>"; finish; fi
range="$(oc get namespace "$NS" -o jsonpath='{.metadata.annotations.openshift\.io/sa\.scc\.uid-range}')"
[[ -n "$range" ]] && ok "UID range $range (pods run as a UID from this range, not the image's USER)" \
  || note "no UID range annotation: this does not look like an OpenShift project"
[[ "$(oc get namespace "$NS" -o jsonpath='{.metadata.labels.opendatahub\.io/dashboard}')" == true ]] \
  && ok "labelled opendatahub.io/dashboard=true (workbenches can reach Spark Connect)" \
  || note "not labelled opendatahub.io/dashboard=true" "only matters for workbenches: oc label namespace $NS opendatahub.io/dashboard=true"
scc="$(oc get rolebinding -n "$NS" -o jsonpath='{range .items[*]}{.roleRef.name}{"\n"}{end}' 2>/dev/null | grep '^system:openshift:scc:' | sort -u | tr '\n' ' ')"
[[ -z "$scc" ]] && ok "no SCC granted in this project (restricted-v2 applies)" \
  || note "SCC role bindings present: $scc" "not needed for these images; remove them to prove restricted-v2"
for verb in "create sparkapplications.sparkoperator.k8s.io" "create sparkconnects.sparkoperator.k8s.io" "create rolebindings" "create secrets" "create networkpolicies"; do
  # shellcheck disable=SC2086
  [[ "$(oc auth can-i $verb -n "$NS" 2>/dev/null)" == yes ]] && ok "you can $verb" || bad "you cannot $verb" "ask for the admin role on project $NS"
done
if [[ -n "${PULL_SECRET:-}" ]]; then
  oc get secret "$PULL_SECRET" -n "$NS" >/dev/null 2>&1 && ok "pull secret $PULL_SECRET exists" \
    || bad "pull secret $PULL_SECRET not found" "oc create secret docker-registry $PULL_SECRET --docker-server=<registry> --docker-username=<user> --docker-password=<password>"
fi

if [[ -n "$IMAGE" ]]; then
  echo "== image: $IMAGE"
  P="spark-preflight-$$"
  # No double quotes or backslashes in this script: it is embedded in JSON as-is.
  probe='echo ID=$(id -u):$(id -g); touch /opt/spark/jars/.w 2>/dev/null && echo JARS=writable || echo JARS=readonly; touch /opt/spark/work-dir/.w 2>/dev/null && echo WORKDIR=writable || echo WORKDIR=readonly; echo SPARK=$(ls /opt/spark/jars | grep -m1 ^spark-core_); echo JAVA=$(java -version 2>&1 | head -1); echo PYTHON=$(${PYSPARK_PYTHON:-python3} -V 2>&1)'
  ips=""; [[ -n "${PULL_SECRET:-}" ]] && ips='"imagePullSecrets":[{"name":"'"$PULL_SECRET"'"}],'
  ov='{"spec":{'"$ips"'"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"c","image":"'"$IMAGE"'","command":["bash","-c","'"$probe"'"],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}}}]}}'
  oc delete pod "$P" -n "$NS" --ignore-not-found >/dev/null 2>&1
  if ! err="$(oc run "$P" -n "$NS" --image="$IMAGE" --restart=Never --overrides="$ov" 2>&1 >/dev/null)"; then
    bad "could not create the test pod: $(head -c 200 <<<"$err")"; finish
  fi
  ph=""; why=""
  for _ in $(seq 60); do
    ph="$(oc get pod "$P" -n "$NS" -o jsonpath='{.status.phase}' 2>/dev/null || true)"
    why="$(oc get pod "$P" -n "$NS" -o jsonpath='{.status.containerStatuses[0].state.waiting.reason}' 2>/dev/null || true)"
    [[ "$ph" == Succeeded || "$ph" == Failed || "$why" == ImagePullBackOff || "$why" == ErrImagePull || "$why" == CreateContainerConfigError ]] && break; sleep 3
  done
  if [[ "$ph" == Succeeded ]]; then
    out="$(oc logs "$P" -n "$NS" 2>/dev/null)"; get() { sed -n "s/^$1=//p" <<<"$out"; }
    ok "cluster can pull the image"
    s="$(oc get pod "$P" -n "$NS" -o jsonpath='{.metadata.annotations.openshift\.io/scc}')"
    [[ "$s" == restricted-v2 ]] && ok "admitted by restricted-v2" || note "admitted by SCC '$s', not restricted-v2"
    uid="$(get ID)"; [[ "${uid%%:*}" != 0 && "${uid##*:}" == 0 ]] && ok "ran as UID:GID $uid (arbitrary non-root UID, group 0)" || note "ran as UID:GID $uid"
    [[ "$(get JARS)" == readonly ]] && ok "Spark's jars are read-only to the runtime user" || note "the runtime user can modify /opt/spark/jars"
    [[ "$(get WORKDIR)" == writable ]] && ok "work-dir is writable" || bad "work-dir is not writable by the assigned UID" "make it group 0 and mode 775 in the image"
    ok "$(get SPARK | sed -E "s/^spark-core_[0-9.]+-(.*)\\.jar$/Spark \\1/"); $(get JAVA); $(get PYTHON)"
  elif [[ "$why" == ImagePullBackOff || "$why" == ErrImagePull ]]; then
    bad "cluster cannot pull the image ($why)" "check the image name; for a private registry create a pull secret and run with PULL_SECRET=<name>"
  else
    bad "test pod did not complete (phase=${ph:-none} ${why})" "$(oc get events -n "$NS" --field-selector involvedObject.name="$P" -o jsonpath='{.items[-1:].message}' 2>/dev/null | cut -c1-200)"
  fi
  oc delete pod "$P" -n "$NS" --ignore-not-found >/dev/null 2>&1
fi
finish
