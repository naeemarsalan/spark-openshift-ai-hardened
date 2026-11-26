#!/usr/bin/env bash
# Prove each bundled JDBC driver against a REAL database engine (podman, Spark local mode).
# PostgreSQL is already covered by smoke-local.sh; this adds SQL Server and Oracle.
#
# Licences: starting these containers accepts the vendors' terms for development/test use
# (SQL Server Developer edition EULA; Oracle Database Free terms).
#
# Usage: tests/jdbc-drivers.sh <image> [mssql|oracle|postgres ...]   (default: all three)
set -euo pipefail
IMAGE="${1:?usage: jdbc-drivers.sh <image> [mssql|oracle|postgres ...]}"; shift
DBS=("$@"); [[ ${#DBS[@]} -eq 0 ]] && DBS=(postgres mssql oracle)
ENGINE="${ENGINE:-podman}"
cd "$(dirname "$0")/.."
RAND_UID=$(( 20000 + RANDOM )); pass=0; failn=0
SEC=(--user "$RAND_UID:0" --cap-drop=ALL --security-opt=no-new-privileges --read-only --tmpfs /tmp:rw,mode=1777 -v "$PWD/tests/jobs:/jobs:ro,z")
PODS=()
trap 'for p in "${PODS[@]}"; do "$ENGINE" pod rm -f "$p" >/dev/null 2>&1 || true; done' EXIT

run_db() { # name, image, ready-cmd, url, user, version-query, db-env...
  local name="$1" img="$2" ready="$3" url="$4" user="$5" vq="$6"; shift 6
  local pod="spark-jdbc-$name-$$" pw; pw="Aa1$(openssl rand -hex 10)"
  PODS+=("$pod"); "$ENGINE" pod create --name "$pod" >/dev/null
  local envs=(); for e in "$@"; do envs+=(-e "${e//__PW__/$pw}"); done
  "$ENGINE" run -d --pod "$pod" --name "$pod-db" "${envs[@]}" "$img" >/dev/null
  local up=0; for _ in $(seq 120); do "$ENGINE" exec -e PW="$pw" "$pod-db" bash -c "$ready" >/dev/null 2>&1 && { up=1; break; }; sleep 3; done
  local out=""
  if [[ $up -eq 1 ]]; then
    out="$("$ENGINE" run --rm --pod "$pod" "${SEC[@]}" -e JDBC_URL="$url" -e JDBC_USER="$user" -e JDBC_PASSWORD="$pw" \
            -e JDBC_VERSION_QUERY="$vq" "$IMAGE" spark-submit --master 'local[2]' /jobs/jdbc_roundtrip.py 2>&1 || true)"
  fi
  if grep -q JDBC_ROUNDTRIP_OK <<<"$out"; then printf '  \033[1;32mPASS\033[0m %-10s %s\n' "$name" "$(grep -m1 JDBC_ROUNDTRIP_OK <<<"$out")"; pass=$((pass+1))
  else printf '  \033[1;31mFAIL\033[0m %s%s\n' "$name" "$([[ $up -eq 0 ]] && echo ' (database did not become ready)')"; { [[ -n "$out" ]] && grep -E 'Exception|Error|ORA-|assert' <<<"$out" | head -8 || "$ENGINE" logs "$pod-db" 2>&1 | tail -8; } | cut -c1-240 | sed 's/^/      /'; failn=$((failn+1)); fi
  "$ENGINE" pod rm -f "$pod" >/dev/null 2>&1 || true
}
echo "== JDBC drivers in $IMAGE (uid $RAND_UID:0)"
for db in "${DBS[@]}"; do case "$db" in
  postgres) run_db postgres quay.io/sclorg/postgresql-16-c9s:latest 'pg_isready -q -h 127.0.0.1' \
      'jdbc:postgresql://127.0.0.1:5432/sparkdb' spark 'SELECT version()' \
      POSTGRESQL_USER=spark POSTGRESQL_PASSWORD=__PW__ POSTGRESQL_DATABASE=sparkdb ;;
  mssql) run_db mssql mcr.microsoft.com/mssql/server:2022-latest \
      '/opt/mssql-tools18/bin/sqlcmd -C -S 127.0.0.1 -U sa -P "$PW" -Q "SELECT 1"' \
      'jdbc:sqlserver://127.0.0.1:1433;encrypt=true;trustServerCertificate=true' sa 'SELECT @@VERSION AS v' \
      ACCEPT_EULA=Y MSSQL_SA_PASSWORD=__PW__ ;;
  oracle) run_db oracle docker.io/gvenzl/oracle-free:slim-faststart 'healthcheck.sh' \
      'jdbc:oracle:thin:@//127.0.0.1:1521/FREEPDB1' system 'SELECT banner FROM v$version' \
      ORACLE_PASSWORD=__PW__ ;;
  *) echo "unknown database: $db"; exit 2 ;;
esac; done
echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
