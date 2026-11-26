# What the hardened build changes, and the evidence

This page compares the **regular way** of building a Spark image on UBI with the build in this
repo, change by change. Each change names the file that makes it and the check that proves it.

The regular build is real: [`baseline/Containerfile.regular-ubi9`](../baseline/Containerfile.regular-ubi9).
Build it and run the same checks against it to see every "before" on this page for yourself:

```bash
podman build -f baseline/Containerfile.regular-ubi9 -t spark-regular-ubi9:4.3.0 baseline
hack/verify-image.sh spark-regular-ubi9:4.3.0      # 9 passed, 7 failed
hack/verify-image.sh <your spark-hi or spark-ubi9> # 16 passed, 0 failed
```

## Summary

| | Regular UBI 9 build | This repo |
|---|---|---|
| Base | Full `ubi9/ubi` | Red Hat Hardened Images (`FROM scratch` + chosen RPMs), or UBI 9 minimal |
| Software sources at build time | `curl` from apache.org and Maven Central, `pip install` from PyPI | Nothing downloaded; everything `COPY`ed from `./artifacts` and checked against a SHA-256 lock |
| Bundled Java libraries | As shipped by Spark | 10 library families replaced with patched releases |
| Left in the image | `dnf`, `pip`, `curl`, `tar`, setuid binaries, package caches, SparkR, YARN, sample data | None of those |
| Who owns `/opt/spark` | The runtime user (can rewrite Spark's jars) | root; read-only to the runtime user |
| Default user | `185` (group 0 by accident of `useradd -g 0`) | `1001:0`, and tested as an arbitrary UID |
| Runs with a read-only root filesystem | Not designed for it | Yes; only `/tmp` and `work-dir` are written |
| Hardening checks | 9 / 16 | 16 / 16 |
| Trivy findings | 790 | 425 (UBI 9 minimal) / 55 + OS not scanned (hardened base) |

Full scan numbers: [scan-comparison.md](scan-comparison.md).

## The changes

### 1. Nothing is downloaded during the build

**Before.** The regular Containerfile runs `curl https://dlcdn.apache.org/...`, five `curl`s
against Maven Central and a `pip install` from PyPI. The build needs internet access, is not
repeatable (PyPI resolves to whatever is newest that day), and nothing verifies what arrived.

**After.** [`hack/fetch-artifacts.sh`](../hack/fetch-artifacts.sh) is the only step that touches
the network. It runs outside the build, verifies Spark against Apache's SHA-512 and GPG
signature and each jar against its Maven checksum, and records every file in
[`artifacts.sha256`](../artifacts.sha256). The image build only `COPY`s from `./artifacts`;
[`image/assemble.sh`](../image/assemble.sh) runs `sha256sum -c` first and fails on any
difference. Python wheels are installed with `pip --no-index`. In a bank pipeline, point
`SPARK_MIRROR`, `MAVEN_REPO` and `PIP_INDEX_URL` at Artifactory and the build farm needs no
route to the internet at all. RPMs come from whichever repository the builder is configured
for (Red Hat CDN, Satellite or a mirror).

**Evidence.** `verify-image.sh` reads the image's build history:

```
regular:  FAIL build history
            ... /bin/sh -c curl -fsSL https://dlcdn.apache.org/spark/spark-${SPARK_VERSION}/...
            ... /bin/sh -c cd /opt/spark/jars && M=https://repo1.maven.org/maven2 && curl -fsSLO ...
ours:     PASS build history: no inline secrets, no curl/wget/git downloads
```

### 2. Vulnerable bundled libraries are replaced

**Before.** Spark 4.3.0 ships about 280 jars. As shipped, they carry 187 Trivy findings, four
of them critical.

**After.** [`image/jars-remove.txt`](../image/jars-remove.txt) deletes the affected jars and
[`image/jars.txt`](../image/jars.txt) adds the patched release from the same line: Netty
4.2.21, Jackson 2.21.7, Log4j 2.25.5, Vert.x 4.5.36, Parquet 1.17.1, Derby 10.17.1, lz4-java
1.11.4, snappy-java 1.1.10.9, Guava 33.7.2, JLine 3.30.15. The build fails if a removal pattern
matches nothing, or if two versions of one library end up on the classpath, so a Spark upgrade
cannot silently undo a fix.

**Evidence.** Java-library findings 187 → 55, critical 4 → 0 (Trivy). The swapped image still
passes every functional test, including S3, three JDBC engines and Spark Connect.

### 3. A smaller operating system

**Before.** Full UBI 9 with `dnf`, plus whatever `dnf install` pulls in: 213 RPMs.

**After.** Two options, same Spark layer on top:

- **UBI 9 minimal** ([`Containerfile.ubi9`](../Containerfile.ubi9)): 139 RPMs.
- **Red Hat Hardened Images** ([`Containerfile`](../Containerfile)): the final stage is
  `FROM scratch`, filled with a root filesystem that the builder stage assembles from only the
  RPMs Spark needs (bash, coreutils, grep, sed, gawk, procps, libstdc++, OpenJDK 21 headless,
  Python 3.12): 78 RPMs, no package manager at all.

**Evidence.** OS findings 603 → 370 → 50. See [choosing-a-base.md](choosing-a-base.md) for
which to pick.

### 4. Build tools do not ship

**Before.** `pip`, `setuptools`, `dnf`, `curl` and `tar` stay in the runtime image, along with
the dnf cache. Anyone who gets a shell in the container can install software.

**After.** Tooling exists only in the builder stage. The hardened flavour has no `dnf`, `rpm`,
`pip`, `curl` or `wget`. The UBI flavour keeps `microdnf`, `rpm` and `curl` because they are
part of the UBI minimal base, but has no `pip`.

**Evidence.**

```
regular:  FAIL no pip / setuptools importable         pip, setuptools
          FAIL no leftover build caches               packages.db, ubi-9-appstream-rpms-..., ...
ours:     PASS (both)
```

### 5. No setuid binaries

**Before.** Twelve setuid/setgid programs from the base (`su`, `mount`, `passwd`, `newgrp`...).
`restricted-v2` blocks privilege escalation anyway, but scanners and CIS-style benchmarks flag
them.

**After.** The hardened flavour never installs them; the UBI flavour strips the bits.

**Evidence.** `FAIL no setuid/setgid binaries` (12 listed) → `PASS`.

### 6. The runtime user cannot modify Spark

**Before.** `chown -R 185:0 /opt/spark`: the user the job runs as owns Spark's jars and scripts.
Code running in the container (a notebook cell, a UDF, a compromised dependency) can replace
them.

```
$ podman run --rm --entrypoint bash spark-regular-ubi9:4.3.0 -c 'touch /opt/spark/jars/evil.jar && echo writable'
writable
```

It also breaks on OpenShift in the other direction: `work-dir` is mode `700` owned by 185, so
the arbitrary UID that `restricted-v2` assigns cannot write to it.

**After.** `/opt/spark` and the Python packages are owned by root and read-only to everyone
else. The only writable paths are `/opt/spark/work-dir` (group 0, `775`) and `/tmp`.
`/etc/passwd` is never made writable.

```
$ podman run --rm --user 54321:0 --entrypoint bash spark-hi:4.3.0-3 -c 'touch /opt/spark/work-dir/x && echo ok; touch /opt/spark/jars/evil.jar'
ok
touch: cannot touch '/opt/spark/jars/evil.jar': Permission denied
```

**Evidence.** Two `verify-image.sh` checks (`read-only for the runtime user`, `work-dir is
writable through group 0 only`) fail on the regular image and pass on ours.

### 7. Non-root by default, and any UID works

**Before.** `USER 185`. Numeric, which is good, but nothing is tested as any other UID, and
upstream manifests hard-code `runAsUser: 185`, which `restricted-v2` rejects.

**After.** `USER 1001:0`, and every test runs the image as a different, random UID in group 0
with all capabilities dropped. No manifest in this repo sets `runAsUser` or `runAsGroup`.

**Evidence.** On the OpenShift cluster every Spark pod was admitted by `restricted-v2` and ran
as UID `1000770000`, taken from the namespace's range: [evidence/](evidence/).

### 8. Read-only root filesystem

**Before.** Spark writes logs and PID files under `/opt/spark`, and Ivy and the warehouse
directory under the home directory.

**After.** [`image/spark-defaults.conf`](../image/spark-defaults.conf) and the image `ENV` move
all of those to `/tmp` (`SPARK_LOG_DIR`, `SPARK_PID_DIR`, Ivy, warehouse), so pods
can set `readOnlyRootFilesystem: true` with an `emptyDir` on `/tmp`.

**Evidence.** Every local test runs with `--read-only --cap-drop=ALL
--security-opt=no-new-privileges` (`tests/smoke-local.sh`, 11 / 11).

### 9. An entrypoint that suits Red Hat bases and does not leak

**Before.** Upstream's `entrypoint.sh` starts with `set -ex` and ends with `exec tini`.
`set -x` echoes every `--conf` value into the pod log, and those can be credentials. `tini` is
not shipped as a Red Hat RPM, so the regular image does not even start:

```
$ podman run --rm spark-regular-ubi9:4.3.0 /opt/spark/bin/run-example SparkPi 10
/opt/entrypoint.sh: line 120: /usr/bin/tini: No such file or directory
```

The usual fix is to download a `tini` binary from GitHub during the build.

**After.** [`image/entrypoint.sh`](../image/entrypoint.sh): no `set -x`, no `tini`, and an
extra `connect` mode that starts the Spark Connect server.

### 10. Spark Connect does not log client requests

**Before.** Spark Connect logs whole client requests at INFO. A JDBC read carries its options
in the request, so the database password appears in the server's pod log. The cluster security
test found exactly that.

**After.** [`image/log4j2.properties`](../image/log4j2.properties) holds the four Connect
request loggers at WARN. If you mount your own `SPARK_CONF_DIR`, keep those lines.

**Evidence.** `tests/security-cluster.sh` greps every Spark pod log for every value in the
credentials Secret: `PASS not in any Spark pod log (5942 lines checked)`.

### 11. Less Spark

**Before.** The whole distribution: SparkR, YARN, sample data, example sources, Windows
scripts, and Dockerfiles (which Trivy reports as three misconfigurations).

**After.** Pruned in `assemble.sh`. What remains is what a driver, an executor or a Connect
server uses.

### 12. No secrets, checked rather than assumed

Neither build embeds a secret. The difference is that this repo checks: image `ENV`, build
history, key and keystore files, PEM private-key blocks, and a Trivy secret scan of every
layer. Defaults in `spark-defaults.conf` name credential *providers* (environment, web
identity) and contain no endpoints or keys.

## The 16 checks

`hack/verify-image.sh <image>`:

| Check | Regular UBI 9 | `spark-ubi9` | `spark-hi` |
|---|---|---|---|
| `USER` is numeric and non-root | pass | pass | pass |
| Primary group is 0 | fail | pass | pass |
| No credential-looking `ENV` | pass | pass | pass |
| Build history: no secrets, no downloads | fail | pass | pass |
| No privileged ports | pass | pass | pass |
| No setuid/setgid binaries | fail | pass | pass |
| No world-writable files | pass | pass | pass |
| `/etc/passwd` not writable | pass | pass | pass |
| Spark and Python packages read-only | fail | pass | pass |
| `work-dir` writable through group 0 only | fail | pass | pass |
| No private keys or keystores | pass | pass | pass |
| No PEM private-key blocks | pass | pass | pass |
| No package manager, compiler or download tool ¹ | pass | pass | pass |
| No `pip` / `setuptools` | fail | pass | pass |
| No build caches | fail | pass | pass |
| Starts as arbitrary UID, no capabilities, read-only rootfs | pass | pass | pass |

¹ On RHEL-based images this check tolerates `dnf`/`microdnf`, `rpm` and `curl`, because UBI
ships them. Only the hardened flavour is free of them.
