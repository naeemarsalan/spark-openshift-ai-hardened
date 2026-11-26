#!/usr/bin/env bash
# Static hardening / compliance checks on a built image. Complements the CVE scan:
# these are the things a restricted-v2 cluster and a security review care about that a
# vulnerability database cannot tell you.
#
# Usage: hack/verify-image.sh <image>
set -uo pipefail
IMAGE="${1:?usage: verify-image.sh <image>}"
ENGINE="${ENGINE:-podman}"
pass=0; failn=0
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$1"; pass=$((pass+1)); }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$1"; [[ -n "${2:-}" ]] && sed 's/^/      /' <<<"$2" | head -20; failn=$((failn+1)); }
# Run a script inside the image as the image's default user; empty output == pass.
empty() { # name, script
  local out; out="$("$ENGINE" run --rm --entrypoint /bin/bash "$IMAGE" -c "$2" 2>/dev/null)"
  [[ -z "$out" ]] && ok "$1" || bad "$1" "$out"
}
cfg() { "$ENGINE" image inspect "$IMAGE" --format "$1"; }

echo "== $IMAGE"

# ---- image config --------------------------------------------------------------------
user="$(cfg '{{.Config.User}}')"
[[ "$user" =~ ^[1-9][0-9]*(:[0-9]+)?$ ]] && ok "USER is numeric and non-root ($user)" \
  || bad "USER must be a numeric non-root UID (got '$user')"
[[ "$user" == *:0 ]] && ok "primary group is 0 (arbitrary-UID friendly)" || bad "USER should be <uid>:0"

envs="$(cfg '{{range .Config.Env}}{{println .}}{{end}}')"
hits="$(grep -iE '(pass(word)?|secret|token|api_?key|access_?key|credential)[a-z_]*=' <<<"$envs" || true)"
[[ -z "$hits" ]] && ok "no credential-looking ENV vars" || bad "credential-looking ENV vars" "$hits"

hist="$("$ENGINE" history --no-trunc --format '{{.CreatedBy}}' "$IMAGE")"
hits="$(grep -iE '(pass(word)?|secret|token|api_?key)=[^ $]{4,}|curl |wget |git clone|pip install [^-]*https?://' <<<"$hist" || true)"
[[ -z "$hits" ]] && ok "build history: no inline secrets, no curl/wget/git downloads" || bad "build history" "$hits"

ports="$(cfg '{{range $p, $_ := .Config.ExposedPorts}}{{$p}} {{end}}')"
low="$(tr ' ' '\n' <<<"$ports" | awk -F/ '$1 != "" && $1 < 1024' || true)"
[[ -z "$low" ]] && ok "no privileged ports exposed" || bad "privileged ports exposed" "$low"

# ---- filesystem ----------------------------------------------------------------------
empty "no setuid/setgid binaries" \
  'find / -xdev -type f -perm /6000 2>/dev/null'
empty "no world-writable files or non-sticky world-writable dirs" \
  'find / -xdev \( -path /proc -o -path /sys -o -path /dev \) -prune -o \( -type f -perm -0002 -print \) -o \( -type d -perm -0002 ! -perm -1000 -print \) 2>/dev/null'
empty "/etc/passwd and /etc/group are not writable by the runtime user" \
  'for f in /etc/passwd /etc/group /etc/shadow; do [ -w "$f" ] && echo "$f"; done'
empty "Spark distribution and Python packages are read-only for the runtime user" \
  'find /opt/spark /usr/local /opt/entrypoint.sh /opt/decom.sh -writable ! -path "/opt/spark/work-dir*" 2>/dev/null | head'
empty "work-dir is writable through group 0 only" \
  '[ "$(stat -c %g:%a /opt/spark/work-dir)" = "0:775" ] || stat -c "%U:%G %a %n" /opt/spark/work-dir'
empty "no private keys, keystores or credential files" \
  'find / -xdev \( -path /proc -o -path /sys -o -path /etc/pki/ca-trust -o -path /etc/pki/java -o -path "/usr/lib/jvm/*" \) -prune -o -type f \( -name "id_rsa*" -o -name "id_ed25519*" -o -name "id_ecdsa*" -o -name "*.key" -o -name "*.p12" -o -name "*.pfx" -o -name "*.jks" -o -name ".netrc" -o -name ".npmrc" -o -name ".pypirc" -o -name "credentials" -o -name ".git-credentials" -o -name "*.kdbx" \) -print 2>/dev/null'
empty "no PEM private-key blocks in config, script or Python files" \
  'grep -rIlE -e "-----BEGIN ([A-Z]+ )?PRIVATE KEY-----" /opt /etc /usr/local /root /home 2>/dev/null'
empty "no package manager, compiler or download tool in the runtime image (UBI flavour keeps microdnf/rpm/curl from the base)" \
  'if grep -q "^ID=\"\\?rhel" /etc/os-release 2>/dev/null; then L="gcc cc make pip pip3 wget git"; else L="dnf dnf5 microdnf yum rpm gcc cc make pip pip3 curl wget git"; fi; for b in $L; do command -v $b; done'
empty "no pip / setuptools importable" \
  'for m in pip setuptools; do "$PYSPARK_PYTHON" -c "import $m" 2>/dev/null && echo $m; done'
empty "no leftover build caches" \
  'ls -A /var/cache/dnf /var/cache/yum /root/.cache /tmp 2>/dev/null | grep -v -e "^/" -e "^$"'

# ---- behaviour -----------------------------------------------------------------------
out="$("$ENGINE" run --rm --user 12345:0 --cap-drop=ALL --security-opt=no-new-privileges --read-only \
        --tmpfs /tmp:rw,mode=1777 "$IMAGE" spark-submit --version 2>&1)"
grep -q "version" <<<"$out" && ok "starts as arbitrary UID, no capabilities, no-new-privileges, read-only rootfs" \
  || bad "does not start under restricted constraints" "$out"

echo "== $pass passed, $failn failed"
[[ $failn -eq 0 ]]
