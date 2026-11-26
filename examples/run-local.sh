#!/usr/bin/env bash
# Run the three examples as one pipeline with podman (Spark local mode), against a throwaway
# S3 endpoint and PostgreSQL, under restricted-v2-like constraints.
#
#   1. PySpark ETL    : raw CSV (S3) -> curated Parquet (S3) + summary table (PostgreSQL)
#   2. Scala report   : curated Parquet (S3) -> top accounts table (PostgreSQL)
#   3. Connect client : explores both through a Spark Connect server
#
# Usage: examples/run-local.sh [base-image]      (default: $REGISTRY/spark-hi:$IMAGE_TAG from versions.env)
set -euo pipefail
cd "$(dirname "$0")/.."
source versions.env
BASE="${1:-$REGISTRY/$IMAGE_NAME-hi:$IMAGE_TAG}"
APP="$REGISTRY/$IMAGE_NAME-examples:$IMAGE_TAG"
ENGINE="${ENGINE:-podman}"
S3_IMAGE="${S3_IMAGE:-docker.io/chrislusf/seaweedfs:latest}"
PG_IMAGE="${PG_IMAGE:-quay.io/sclorg/postgresql-16-c9s:latest}"

echo "== build application image $APP (FROM $BASE)"
"$ENGINE" build -q -f examples/Containerfile --build-arg BASE_IMAGE="$BASE" -t "$APP" examples >/dev/null

POD="spark-examples-$$"; RAND_UID=$(( 20000 + RANDOM )); TMP="$(mktemp -d)"
cleanup() { "$ENGINE" pod rm -f "$POD" >/dev/null 2>&1 || true; rm -rf "$TMP"; }
trap cleanup EXIT
SEC=(--user "$RAND_UID:0" --cap-drop=ALL --security-opt=no-new-privileges --read-only --tmpfs /tmp:rw,mode=1777)
pass=0; failn=0
check() { local name="$1" want="$2" out; shift 2
  if out="$("$@" 2>&1)" && grep -q -- "$want" <<<"$out"; then printf '  \033[1;32mPASS\033[0m %s\n       %s\n' "$name" "$(grep -m1 -- "$want" <<<"$out")"; pass=$((pass+1))
  else printf '  \033[1;31mFAIL\033[0m %s\n' "$name"; tail -n 25 <<<"$out" | sed 's/^/      /'; failn=$((failn+1)); fi; }

AK="demo$(openssl rand -hex 6)"; SK="$(openssl rand -hex 20)"; PGPW="$(openssl rand -hex 12)"
echo "{\"identities\":[{\"name\":\"demo\",\"credentials\":[{\"accessKey\":\"$AK\",\"secretKey\":\"$SK\"}],\"actions\":[\"Admin\",\"Read\",\"Write\",\"List\",\"Tagging\"]}]}" > "$TMP/s3.json"; chmod 644 "$TMP/s3.json"
"$ENGINE" pod create --name "$POD" >/dev/null
"$ENGINE" run -d --pod "$POD" --name "$POD-s3" -v "$TMP/s3.json:/etc/s3.json:ro,z" "$S3_IMAGE" server -dir=/data -s3 -s3.port=8333 -s3.config=/etc/s3.json >/dev/null
"$ENGINE" run -d --pod "$POD" --name "$POD-pg" -e POSTGRESQL_USER=spark -e POSTGRESQL_PASSWORD="$PGPW" -e POSTGRESQL_DATABASE=sparkdb "$PG_IMAGE" >/dev/null
ENVS=(-e S3_ENDPOINT=http://127.0.0.1:8333 -e S3_BUCKET=spark-demo -e AWS_ACCESS_KEY_ID="$AK" -e AWS_SECRET_ACCESS_KEY="$SK"
      -e JDBC_URL=jdbc:postgresql://127.0.0.1:5432/sparkdb -e JDBC_USER=spark -e JDBC_PASSWORD="$PGPW")
for _ in $(seq 60); do "$ENGINE" exec "$POD-s3" sh -c 'echo "s3.bucket.create -name spark-demo" | weed shell -master=127.0.0.1:9333' >/dev/null 2>&1 && break; sleep 2; done
for _ in $(seq 60); do "$ENGINE" exec "$POD-pg" pg_isready -q -h 127.0.0.1 2>/dev/null && break; sleep 2; done

echo "== pipeline (uid $RAND_UID:0)"
check "1. PySpark ETL (spark-submit)" "ETL_OK" "$ENGINE" run --rm --pod "$POD" "${SEC[@]}" "${ENVS[@]}" "$APP" \
  spark-submit --master 'local[2]' /opt/spark/app/etl.py --rows 200000
check "2. Scala report (spark-submit --class)" "SCALA_REPORT_OK" "$ENGINE" run --rm --pod "$POD" "${SEC[@]}" "${ENVS[@]}" "$APP" \
  spark-submit --master 'local[2]' --class com.example.report.CategoryReport /opt/spark/app/category-report.jar 3
"$ENGINE" run -d --pod "$POD" --name "$POD-connect" "${SEC[@]}" -e AWS_ENDPOINT_URL_S3=http://127.0.0.1:8333 \
  -e AWS_ACCESS_KEY_ID="$AK" -e AWS_SECRET_ACCESS_KEY="$SK" "$BASE" connect --master 'local[2]' \
  --conf spark.hadoop.fs.s3a.path.style.access=true --conf spark.hadoop.fs.s3a.endpoint.region=us-east-1 >/dev/null
for _ in $(seq 60); do "$ENGINE" logs "$POD-connect" 2>&1 | grep -q "Spark Connect server started" && break; sleep 2; done
check "3. Spark Connect client" "CONNECT_EXAMPLE_OK" "$ENGINE" run --rm --pod "$POD" "${SEC[@]}" "${ENVS[@]}" \
  -e SPARK_REMOTE=sc://127.0.0.1:15002 "$APP" python3.12 /opt/spark/app/client.py
echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
