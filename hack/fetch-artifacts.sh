#!/usr/bin/env bash
# Vendor every third-party binary the image needs into ./artifacts.
#
# This is the ONLY step that talks to the outside world. `podman build` itself
# never downloads software: it COPYs from ./artifacts and verifies every file
# against artifacts.sha256 (committed to git).
#
# In an enterprise pipeline point the three sources at internal mirrors:
#   SPARK_MIRROR=https://artifactory.example.com/apache-remote/spark
#   MAVEN_REPO=https://artifactory.example.com/maven-remote
#   PIP_INDEX_URL=https://artifactory.example.com/api/pypi/pypi-remote/simple
#
# Usage: hack/fetch-artifacts.sh [--update-lock]
#   default        : download, verify against upstream signatures AND artifacts.sha256
#   --update-lock  : download, verify against upstream signatures, REWRITE artifacts.sha256
set -euo pipefail

cd "$(dirname "$0")/.."
# shellcheck disable=SC1091
source versions.env

SPARK_MIRROR="${SPARK_MIRROR:-https://dlcdn.apache.org/spark}"
SPARK_KEYS_URL="${SPARK_KEYS_URL:-https://downloads.apache.org/spark/KEYS}"
MAVEN_REPO="${MAVEN_REPO:-https://repo1.maven.org/maven2}"
UPDATE_LOCK=0
[[ "${1:-}" == "--update-lock" ]] && UPDATE_LOCK=1

A=artifacts
mkdir -p "$A/spark" "$A/jars" "$A/wheels"

log() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
die() { printf '\033[1;31mERROR:\033[0m %s\n' "$*" >&2; exit 1; }
dl() { # url dest
  if [[ -s "$2" ]]; then return 0; fi
  log "download $1"
  curl -fsSL --retry 3 -o "$2.part" "$1" && mv "$2.part" "$2"
}

# ---------------------------------------------------------------- Apache Spark
tgz="spark-${SPARK_VERSION}-bin-${HADOOP_PROFILE}.tgz"
for f in "$tgz" "$tgz.sha512" "$tgz.asc"; do
  dl "$SPARK_MIRROR/spark-${SPARK_VERSION}/$f" "$A/spark/$f"
done
dl "$SPARK_KEYS_URL" "$A/spark/KEYS"

log "verify $tgz sha512"
(cd "$A/spark" && sha512sum -c --quiet "$tgz.sha512") || die "sha512 mismatch for $tgz"

log "verify $tgz GPG signature against Apache Spark KEYS"
GNUPGHOME="$(mktemp -d)"; export GNUPGHOME
trap 'rm -rf "$GNUPGHOME"' EXIT
gpg --quiet --batch --import "$A/spark/KEYS" 2>/dev/null
gpg --batch --verify "$A/spark/$tgz.asc" "$A/spark/$tgz" 2>&1 | grep -E 'Good signature|BAD' \
  || die "GPG verification failed for $tgz"

# ----------------------------------------------------------------- Maven jars
# Remove jars no longer listed so a stale driver can never slip into the image.
wanted=()
while IFS=: read -r g a v c; do
  [[ -z "${g// }" || "$g" == \#* ]] && continue
  jar="$a-$v${c:+-$c}.jar"; wanted+=("$jar")
  url="$MAVEN_REPO/${g//.//}/$a/$v/$jar"
  dl "$url" "$A/jars/$jar"
  want="$(curl -fsSL "$url.sha1" | awk '{print $1}')"
  got="$(sha1sum "$A/jars/$jar" | awk '{print $1}')"
  [[ "$want" == "$got" ]] || die "sha1 mismatch for $jar (want $want got $got)"
done < image/jars.txt
shopt -s nullglob
for f in "$A"/jars/*.jar; do
  [[ " ${wanted[*]} " == *" $(basename "$f") "* ]] || { log "remove stale $(basename "$f")"; rm -f "$f"; }
done

# -------------------------------------------------------------- Python wheels
# Binary wheels only (no sdists => no compilers and no setup.py execution at build time).
if [[ $UPDATE_LOCK -eq 1 || -z "$(ls -A "$A/wheels" 2>/dev/null)" ]]; then
  log "download Python ${PYTHON_VERSION} wheels"
  rm -f "$A"/wheels/*
  python3 -m pip download --quiet --disable-pip-version-check \
    --dest "$A/wheels" --only-binary=:all: \
    --implementation cp --python-version "${PYTHON_VERSION}" --abi "cp${PYTHON_VERSION//./}" \
    --platform manylinux_2_28_x86_64 --platform manylinux_2_17_x86_64 --platform manylinux2014_x86_64 \
    -r image/requirements.txt
fi

# ----------------------------------------------------------------------- lock
lock() {
  { echo "$A/spark/$tgz"; find "$A/jars" "$A/wheels" -type f \( -name '*.jar' -o -name '*.whl' \); } \
    | LC_ALL=C sort | xargs sha256sum
}
if [[ $UPDATE_LOCK -eq 1 || ! -f artifacts.sha256 ]]; then
  lock > artifacts.sha256
  log "wrote artifacts.sha256 ($(wc -l < artifacts.sha256) files) - review and commit it"
else
  log "verify artifacts against committed artifacts.sha256"
  diff <(lock) artifacts.sha256 >/dev/null \
    || die "artifacts differ from artifacts.sha256. Re-run with --update-lock if the change is intended."
fi
log "done: $(du -sh "$A" | cut -f1) in ./$A"
