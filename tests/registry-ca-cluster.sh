#!/usr/bin/env bash
# A registry with a private CA, on the cluster. Needs cluster-admin.
#   1. starts a throw-away registry in the project, on a Route, with a certificate from a
#      CA created for this test, and copies <image> into it
#   2. a pod that uses the image from that registry must fail to pull (x509)
#   3. adds the CA to image.config.openshift.io/cluster (additionalTrustedCA)
#   4. the same pod must now start, under restricted-v2
#   5. restores image.config.openshift.io/cluster and removes everything it created
#
# Usage: tests/registry-ca-cluster.sh <image>       (needs skopeo and openssl locally)
#   SRC_CREDS=user:password  if <image> needs a login to read
set -euo pipefail
IMAGE="${1:?usage: registry-ca-cluster.sh <image>}"
cd "$(dirname "$0")/.."
NS="$(oc config view --minify -o jsonpath='{..namespace}')"
HOST="test-registry-$NS.$(oc get ingresses.config/cluster -o jsonpath='{.spec.domain}')"
DEST="$HOST/test/${IMAGE##*/}"
CM=spark-test-registry-ca
TMP="$(mktemp -d)"
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | tail -n 15; failn=$((failn+1)); }
before="$(oc get image.config.openshift.io/cluster -o jsonpath='{.spec.additionalTrustedCA.name}')"
[[ -z "$before" ]] || { echo "image.config.openshift.io/cluster already has additionalTrustedCA=$before; add the CA to that ConfigMap instead" >&2; exit 1; }
cleanup() {
  oc patch image.config.openshift.io/cluster --type merge -p '{"spec":{"additionalTrustedCA":null}}' >/dev/null 2>&1 || true
  oc delete configmap "$CM" -n openshift-config --ignore-not-found >/dev/null 2>&1 || true
  oc delete pod registry-ca-pull --ignore-not-found >/dev/null 2>&1 || true
  oc delete deploy,svc,route test-registry --ignore-not-found >/dev/null 2>&1 || true
  oc delete secret test-registry-tls --ignore-not-found >/dev/null 2>&1 || true
  rm -rf "$TMP"
}
trap cleanup EXIT

echo "== cluster: $(oc whoami --show-server)  namespace: $NS"
# ---- CA, certificate, registry -------------------------------------------------------------
openssl req -x509 -newkey rsa:2048 -nodes -days 2 -subj "/CN=Test Corp Registry CA" \
  -addext "basicConstraints=critical,CA:TRUE" -addext "keyUsage=critical,keyCertSign,cRLSign" \
  -keyout "$TMP/ca.key" -out "$TMP/ca.crt" 2>/dev/null
openssl req -newkey rsa:2048 -nodes -subj "/CN=$HOST" -keyout "$TMP/tls.key" -out "$TMP/tls.csr" 2>/dev/null
openssl x509 -req -in "$TMP/tls.csr" -CA "$TMP/ca.crt" -CAkey "$TMP/ca.key" -CAcreateserial -days 2 \
  -extfile <(printf 'subjectAltName=DNS:%s' "$HOST") -out "$TMP/tls.crt" 2>/dev/null
oc create secret tls test-registry-tls --cert="$TMP/tls.crt" --key="$TMP/tls.key" --dry-run=client -o yaml | oc apply -f - >/dev/null
oc apply -f - >/dev/null <<YAML
apiVersion: apps/v1
kind: Deployment
metadata: { name: test-registry }
spec:
  selector: { matchLabels: { app: test-registry } }
  template:
    metadata: { labels: { app: test-registry } }
    spec:
      securityContext: { runAsNonRoot: true, seccompProfile: { type: RuntimeDefault } }
      containers:
        - name: registry
          image: docker.io/library/registry:2
          env:
            - { name: REGISTRY_HTTP_ADDR, value: ":5000" }
            - { name: REGISTRY_HTTP_TLS_CERTIFICATE, value: /tls/tls.crt }
            - { name: REGISTRY_HTTP_TLS_KEY, value: /tls/tls.key }
          ports: [{ containerPort: 5000 }]
          securityContext: { allowPrivilegeEscalation: false, capabilities: { drop: ["ALL"] } }
          volumeMounts:
            - { name: data, mountPath: /var/lib/registry }
            - { name: tls, mountPath: /tls, readOnly: true }
      volumes:
        - { name: data, emptyDir: {} }
        - { name: tls, secret: { secretName: test-registry-tls } }
---
apiVersion: v1
kind: Service
metadata: { name: test-registry }
spec:
  selector: { app: test-registry }
  ports: [{ port: 5000 }]
---
apiVersion: route.openshift.io/v1
kind: Route
metadata: { name: test-registry }
spec:
  host: $HOST
  to: { kind: Service, name: test-registry }
  port: { targetPort: 5000 }
  tls: { termination: passthrough }
YAML
oc rollout status deploy/test-registry --timeout=300s >/dev/null
for _ in $(seq 30); do curl -fsS --cacert "$TMP/ca.crt" "https://$HOST/v2/" >/dev/null 2>&1 && break; sleep 3; done
mkdir -p "$TMP/certs"; cp "$TMP/ca.crt" "$TMP/certs/ca.crt"
skopeo copy --quiet ${SRC_CREDS:+--src-creds "$SRC_CREDS"} --dest-cert-dir "$TMP/certs" "docker://$IMAGE" "docker://$DEST" \
  && ok "registry https://$HOST with a private CA; image copied to $DEST" || bad "copy the image into the test registry"

pull() { # -> prints the pod phase or the waiting reason and message
  oc delete pod registry-ca-pull --ignore-not-found >/dev/null
  oc run registry-ca-pull --image="$DEST" --restart=Never --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"c","image":"'"$DEST"'","imagePullPolicy":"Always","args":["bash","-c","id -u; /opt/spark/bin/spark-submit --version 2>&1 | grep -oE \"version [0-9.]+\" | head -n 1"],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}}}]}}' >/dev/null
  local s=""
  for _ in $(seq "$1"); do
    s="$(oc get pod registry-ca-pull -o jsonpath='{.status.phase} {.status.containerStatuses[0].state.waiting.reason} {.status.containerStatuses[0].state.waiting.message}' 2>/dev/null || true)"
    [[ "$s" == Succeeded* || "$s" == Failed* || "$s" == *x509* ]] && break; sleep 5
  done
  echo "$s"
}

# ---- before: the nodes do not know the CA ----------------------------------------------------
s="$(pull 36)"
[[ "$s" == *x509* ]] && ok "before: the pull fails: $(grep -oE 'x509: [a-z ]+' <<<"$s" | head -n 1)" || bad "the pull should fail with an x509 error" "$s"

# ---- add the CA ------------------------------------------------------------------------------
oc create configmap "$CM" -n openshift-config --from-file="$HOST=$TMP/ca.crt" >/dev/null
oc patch image.config.openshift.io/cluster --type merge -p '{"spec":{"additionalTrustedCA":{"name":"'"$CM"'"}}}' >/dev/null
ok "CA added: ConfigMap $CM in openshift-config, named in image.config.openshift.io/cluster"

# ---- after: retry until the CA has reached the nodes ----------------------------------------
start=$SECONDS; s=""
for _ in $(seq 20); do s="$(pull 12)"; [[ "$s" == Succeeded* ]] && break; sleep 10; done
if [[ "$s" == Succeeded* ]]; then
  ok "after: the pull works ($(( SECONDS - start ))s after the change, no node reboot); pod ran as UID $(oc logs registry-ca-pull | head -n 1), $(oc logs registry-ca-pull | tail -n 1 | sed 's/^ *//')"
  [[ "$(oc get pod registry-ca-pull -o jsonpath='{.metadata.annotations.openshift\.io/scc}')" == restricted-v2 ]] && ok "admitted by restricted-v2" || bad "SCC"
else bad "the pull still fails after adding the CA" "$s"; fi

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
