#!/usr/bin/env bash
# Build the image for another Spark line from a profile in compat/<line>/.
#
# A profile holds the four files that differ between Spark lines:
#   versions.env  jars.txt  jars-remove.txt  artifacts.sha256
# This script overlays them on a staging copy of the repo (.compat/<line>/) and runs the
# normal make targets there, so the build rules are exactly the ones the default line uses.
#
# Usage: hack/compat-build.sh <line> [make targets...]      e.g. hack/compat-build.sh 4.1
#        default targets: fetch build verify   (add FLAVOR=ubi9 for the UBI 9 base)
set -euo pipefail
cd "$(dirname "$0")/.."
LINE="${1:?usage: compat-build.sh <line> [make targets...]}"; shift || true
P="compat/$LINE"; [[ -f "$P/versions.env" ]] || { echo "no profile $P" >&2; exit 1; }
S=".compat/$LINE"; mkdir -p "$S/artifacts"
tar -c --exclude=./artifacts --exclude=./reports --exclude=./.git --exclude=./.compat \
       --exclude=./.kind --exclude=./.claude --exclude=./docs . | tar -x -C "$S"
cp "$P/versions.env" "$S/versions.env"
cp "$P/jars.txt" "$S/image/jars.txt"
cp "$P/jars-remove.txt" "$S/image/jars-remove.txt"
# Reuse files already downloaded for the default line (fetch still verifies every checksum).
for d in jars wheels; do
  mkdir -p "$S/artifacts/$d"; [[ -d "artifacts/$d" ]] && cp -n --reflink=auto artifacts/$d/* "$S/artifacts/$d/" 2>/dev/null || true
done
if [[ -f "$P/artifacts.sha256" ]]; then
  cp "$P/artifacts.sha256" "$S/artifacts.sha256"; FETCH=fetch
else
  rm -f "$S/artifacts.sha256"; FETCH=fetch-update      # first build of a new profile: create its lock
fi
[[ $# -gt 0 ]] || set -- fetch build verify
args=(); for a in "$@"; do [[ "$a" == fetch ]] && a="$FETCH"; args+=("$a"); done
make -C "$S" "${args[@]}"
[[ -f "$P/artifacts.sha256" ]] || { cp "$S/artifacts.sha256" "$P/artifacts.sha256"; echo "==> wrote $P/artifacts.sha256 - review and commit it"; }
