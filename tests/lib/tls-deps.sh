# Sourced by custom-ca-cluster.sh and proxy-cluster.sh. Needs $IMAGE; sets NS, S3_TLS, JDBC_TLS, PROXY.
NS="$(oc config view --minify -o jsonpath='{..namespace}')"
S3_TLS="https://test-s3-tls.$NS.svc:8443"
PEM=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem
JDBC_TLS="jdbc:postgresql://test-postgres-tls.$NS.svc:5432/sparkdb?sslmode=verify-full\&sslrootcert=$PEM"
PROXY="test-proxy.$NS.svc"
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | tail -n 25; failn=$((failn+1)); }
render() { # file [extra sed args...]
  local f="$1"; shift
  sed -e "s#SPARK_IMAGE_PLACEHOLDER#$IMAGE#g" -e "s#S3_TLS_ENDPOINT_PLACEHOLDER#$S3_TLS#g" \
      -e "s#JDBC_TLS_URL_PLACEHOLDER#$JDBC_TLS#g" -e "s#PROXY_HOST_PLACEHOLDER#$PROXY#g" \
      ${SPARK_VERSION_OVERRIDE:+-e "s#sparkVersion: .*#sparkVersion: $SPARK_VERSION_OVERRIDE#"} "$@" "$f"
}
tls_deps_up() {
  PREREQS_ONLY=1 tests/cluster-test.sh "$IMAGE" >/dev/null
  oc apply -f deploy/openshift-ai/00-rbac.yaml >/dev/null
  oc create configmap spark-test-proxy --from-file=tests/lib/connect-proxy.py --dry-run=client -o yaml | oc apply -f - >/dev/null
  render deploy/91-test-tls-deps.yaml | oc apply -f - >/dev/null
  oc rollout status deploy/test-s3-tls deploy/test-postgres-tls deploy/test-proxy --timeout=300s >/dev/null
  for _ in $(seq 40); do
    oc exec deploy/test-s3-tls -- sh -c 'echo "s3.bucket.create -name spark-smoke" | weed shell -master=127.0.0.1:9333; echo "s3.bucket.list" | weed shell -master=127.0.0.1:9333' 2>/dev/null | grep -q spark-smoke && break; sleep 3
  done
}
tls_deps_down() {
  oc delete -f deploy/91-test-tls-deps.yaml --ignore-not-found >/dev/null 2>&1 || true
  oc delete secret test-s3-tls-cert test-postgres-tls-cert --ignore-not-found >/dev/null
  oc delete configmap spark-test-proxy --ignore-not-found >/dev/null
}
issuer() { oc get secret "$1" -o jsonpath='{.data.tls\.crt}' | base64 -d | openssl x509 -noout -issuer 2>/dev/null || true; }
wait_app() { # name -> sets state, log
  local s=""
  for _ in $(seq 120); do
    s="$(oc get sparkapplication "$1" -o jsonpath='{.status.applicationState.state}' 2>/dev/null || true)"
    [[ "$s" == COMPLETED || "$s" == FAILED || "$s" == SUBMISSION_FAILED ]] && break; sleep 5
  done
  state="$s"; log="$(oc logs "$1-driver" --tail=-1 2>&1 || true)"
}
