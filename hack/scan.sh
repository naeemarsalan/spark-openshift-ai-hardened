#!/usr/bin/env bash
# Scan an image for vulnerabilities, embedded secrets and misconfiguration.
# Two independent scanners (Trivy + Grype) so a clean result is not an artefact of one DB.
# Scanners run as containers; nothing is installed on the host.
#
# Usage: hack/scan.sh <image> [--fail]
#   --fail : exit 1 if any finding of any severity remains (use as a pipeline gate)
set -euo pipefail

IMAGE="${1:?usage: scan.sh <image> [--fail]}"
FAIL=0; [[ "${2:-}" == "--fail" ]] && FAIL=1
ENGINE="${ENGINE:-podman}"
TRIVY_IMAGE="${TRIVY_IMAGE:-ghcr.io/aquasecurity/trivy:0.76.2}"
GRYPE_IMAGE="${GRYPE_IMAGE:-docker.io/anchore/grype:v0.122.1}"

cd "$(dirname "$0")/.."
# One report directory per image, e.g. reports/spark-hi_4.2.1-2/
NAME="$(basename "$IMAGE" | tr ':' '_')"
C="$PWD/reports/cache"; R="$PWD/reports/$NAME"; mkdir -p "$C/trivy" "$C/grype" "$R"
TAR="$R/image.tar"

echo "==> export $IMAGE"
rm -f "$TAR"; "$ENGINE" save --format docker-archive -o "$TAR" "$IMAGE"

run() { "$ENGINE" run --rm --security-opt label=disable -v "$R:/r" -v "$C:/c" "$@"; }

echo "==> trivy (vuln, secret, misconfig)"
run -e TRIVY_CACHE_DIR=/c/trivy "$TRIVY_IMAGE" image --quiet --input /r/image.tar \
    --scanners vuln,secret,misconfig --format json --output /r/trivy.json
run -e TRIVY_CACHE_DIR=/c/trivy "$TRIVY_IMAGE" convert --quiet --format table \
    --output /r/trivy.txt /r/trivy.json

echo "==> grype"
run -e GRYPE_DB_CACHE_DIR=/c/grype "$GRYPE_IMAGE" docker-archive:/r/image.tar \
    --quiet --output json --file /r/grype.json
rm -f "$TAR"

python3 - "$R" "$FAIL" <<'PY'
import json, sys, collections
r, fail = sys.argv[1], sys.argv[2] == "1"
t = json.load(open(f"{r}/trivy.json"))
g = json.load(open(f"{r}/grype.json"))
sev = ["CRITICAL", "HIGH", "MEDIUM", "LOW", "NEGLIGIBLE", "UNKNOWN"]

os_seen = (t.get("Metadata", {}).get("OS") or {}).get("Family", "none")
tv = collections.Counter(); tfix = 0; secrets = []; misconf = []; trows = []
for res in t.get("Results", []):
    for v in res.get("Vulnerabilities", []) or []:
        tv[v["Severity"]] += 1; tfix += bool(v.get("FixedVersion"))
        trows.append((v["Severity"], v["VulnerabilityID"], v["PkgName"], v.get("InstalledVersion", ""),
                      v.get("FixedVersion", "-"), v.get("PkgPath") or res.get("Target", "")))
    secrets += [(res["Target"], s["RuleID"], s.get("StartLine")) for s in res.get("Secrets", []) or []]
    misconf += [(res["Target"], m["ID"], m["Severity"], m["Title"]) for m in res.get("Misconfigurations", []) or []
                if m.get("Status") == "FAIL"]

gv = collections.Counter(); grows = []
for m in g.get("matches", []):
    s = m["vulnerability"]["severity"].upper(); gv[s] += 1
    a = m["artifact"]
    grows.append((s, m["vulnerability"]["id"], a["name"], a["version"],
                  ",".join(m["vulnerability"].get("fix", {}).get("versions", [])) or "-",
                  (a.get("locations") or [{}])[0].get("path", "")))

key = lambda row: (sev.index(row[0]) if row[0] in sev else 9, row[2], row[1])
with open(f"{r}/summary.md", "w") as f:
    f.write("| scanner | " + " | ".join(sev) + " | total |\n|---|" + "---|" * (len(sev) + 1) + "\n")
    for name, c in (("trivy", tv), ("grype", gv)):
        f.write(f"| {name} | " + " | ".join(str(c.get(s, 0)) for s in sev) + f" | {sum(c.values())} |\n")
    f.write(f"\nsecrets: {len(secrets)}   misconfigurations: {len(misconf)}   trivy findings with a fix available: {tfix}\n")
    gd = (g.get("distro") or {}).get("name") or "none"
    f.write(f"OS detected - trivy: {os_seen}   grype: {gd}\n")
    if os_seen == "none" or gd == "none":
        f.write("WARNING: a scanner that does not recognise the OS does not scan RPMs at all; "
                "its OS-package count of 0 means 'not scanned', not 'clean'.\n")
    for title, rows in (("Trivy", trows), ("Grype", grows)):
        f.write(f"\n## {title}\n\n| severity | id | package | installed | fixed | path |\n|---|---|---|---|---|---|\n")
        for row in sorted(set(rows), key=key):
            f.write("| " + " | ".join(row) + " |\n")
    if secrets:
        f.write("\n## Secrets\n\n" + "\n".join(f"- {s}" for s in secrets) + "\n")
    if misconf:
        f.write("\n## Misconfigurations\n\n" + "\n".join(f"- {m}" for m in misconf) + "\n")

print(open(f"{r}/summary.md").read().split("\n## ")[0])
print(f"full report: {r}/summary.md")
total = sum(tv.values()) + sum(gv.values()) + len(secrets) + len(misconf)
sys.exit(1 if (fail and total) else 0)
PY
