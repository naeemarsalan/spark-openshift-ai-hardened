# Sourced by the cluster test scripts: admission / UID evidence for every pod running $IMAGE.
# On OpenShift: each pod must be admitted by the restricted-v2 SCC with a namespace-assigned UID.
# On plain Kubernetes (kind rehearsal): the namespace must ENFORCE the "restricted" Pod Security
# Standard (so the pods' existence proves compliance) and no container may run as root.
security_evidence() { # image-prefix
  local rows
  rows="$(oc get pods -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.metadata.annotations.openshift\.io/scc}{"\t"}{.spec.containers[0].securityContext.runAsUser}{"\t"}{.spec.containers[0].image}{"\n"}{end}' | awk -F'\t' -v img="$1" 'index($4, img) == 1')"
  if oc api-resources --api-group=security.openshift.io 2>/dev/null | grep -q securitycontextconstraints; then
    echo "== SCC / UID of every Spark pod"; column -t -s$'\t' <<<"$rows" | sed 's/^/  /'
    local notv2 baduid
    notv2="$(awk -F'\t' '$2 != "restricted-v2"' <<<"$rows")"
    [[ -n "$rows" && -z "$notv2" ]] && ok "all $(wc -l <<<"$rows") Spark pods admitted by restricted-v2" || bad "pods not under restricted-v2" "$notv2"
    baduid="$(awk -F'\t' '$3 == "" || $3 == 0 || $3 == 1001 || $3 == 185' <<<"$rows")"
    [[ -z "$baduid" ]] && ok "all Spark pods run as a namespace-assigned UID" || bad "unexpected UID" "$baduid"
  else
    echo "== plain Kubernetes (no SCCs): Pod Security Standard evidence"
    local enf; enf="$(oc get namespace "$(oc config view --minify -o jsonpath='{..namespace}')" -o jsonpath='{.metadata.labels.pod-security\.kubernetes\.io/enforce}')"
    [[ "$enf" == restricted ]] && ok "namespace enforces the 'restricted' Pod Security Standard; all $(wc -l <<<"$rows") Spark pods were admitted" \
      || bad "namespace does not enforce pod-security 'restricted' (got '${enf:-none}')"
    local uids="" p
    for p in $(oc get pods --field-selector=status.phase=Running -o name | head -8); do
      uids+="$p $(oc exec "$p" -- id -u 2>/dev/null || echo '?')"$'\n'
    done
    grep -qE ' 0$' <<<"$uids" && bad "a pod runs as root" "$uids" || ok "no running pod is root: $(awk '{print $2}' <<<"$uids" | sort -u | tr '\n' ' ')"
  fi
}
