# Bring your own Spark image

> [!NOTE]
> **In short**
>
> - OpenShift AI runs your jobs on **your** Spark image. Any image works if it meets the
>   [seven requirements](#what-any-spark-image-must-do) below.
> - This repo gives you two ready Containerfiles: **hardened** (default) and **UBI 9**.
> - The Docker Hub `apache/spark` image is not a good starting point on OpenShift.
>   [Why](#three-starting-points).

**On this page**

- [Three starting points](#three-starting-points)
- [What any Spark image must do](#what-any-spark-image-must-do)
- [The Containerfiles, line by line](#the-containerfiles-line-by-line)
- [Make it yours](#make-it-yours)
- [Build and check](#build-and-check)

## Three starting points

| | Hardened image | UBI 9 minimal | Docker Hub `apache/spark` |
|---|---|---|---|
| File | [`Containerfile`](../Containerfile) | [`Containerfile.ubi9`](../Containerfile.ubi9) | none: you pull it as is |
| Base | Red Hat Hardened Images | Red Hat UBI 9 minimal | Ubuntu |
| Scan findings (Grype) | 92 | 434 | 1,279 |
| OS packages | 78 | 139 | 265 |
| Hardening checks passed | 16 / 16 | 16 / 16 | 7 / 16 |
| S3 and JDBC libraries included | yes | yes | no |
| Runs on OpenShift AI with no changes | yes | yes | no: [5 / 9](evidence/openshift/dockerhub-4.2.1-operator.log), both batch jobs fail |
| Who patches the base | Red Hat | Red Hat | Apache community / Ubuntu |
| **Pick this if** | You want the fewest findings and your scanner recognises the base | Your scanner or policy needs RHEL 9 | You are experimenting outside OpenShift |

Numbers are for Spark 4.2.1, scanned 2026-11-26. Details:
[scan-comparison.md](scan-comparison.md) and [choosing-a-base.md](choosing-a-base.md).

> [!WARNING]
> **Why not just use the Docker Hub image?**
>
> - Its working directory is not writable by the user ID OpenShift assigns
>   (`hack/preflight.sh` reports this).
> - It has no S3 connector and no JDBC drivers, so you would rebuild it anyway.
> - It ships with Python 3.10; OpenShift AI workbenches use Python 3.12, and pandas UDFs need
>   the same Python minor version on both sides.
> - Upstream examples for it set `runAsUser: 185`, which `restricted-v2` rejects.

## What any Spark image must do

These are the rules OpenShift AI imposes. They apply to every image, including one you write
from scratch.

| # | Requirement | Why | How this repo's images do it |
|---|---|---|---|
| 1 | Run as **any** user ID, in group 0 | `restricted-v2` assigns a random UID from the project's range and ignores the image's `USER` | Nothing depends on the user name; writable paths are group-0 writable |
| 2 | Write only to `/tmp` and the work directory | Lets pods use a read-only root filesystem, and stops jobs from changing Spark itself | `SPARK_LOG_DIR`, `SPARK_PID_DIR`, Ivy and the warehouse all point at `/tmp` |
| 3 | Keep `bash` and `sbin/start-connect-server.sh` | The operator starts Spark Connect with that script and bypasses your entrypoint | Both kept; `tests/operator-compat.sh` reproduces the launch |
| 4 | Accept `driver` and `executor` as entrypoint arguments | That is how Spark on Kubernetes starts its pods | [`image/entrypoint.sh`](../image/entrypoint.sh) |
| 5 | Same Python minor version on client and executors | pandas UDFs are pickled on one side and unpickled on the other | Python 3.12, matching the workbench images |
| 6 | Carry the libraries your jobs need | Executors cannot download jars at run time in a locked-down cluster | S3 connector and JDBC drivers in [`image/jars.txt`](../image/jars.txt) |
| 7 | Contain no credentials | Images are widely readable; credentials come from Secrets at run time | Checked by `hack/verify-image.sh` and a secret scan |

`hack/verify-image.sh <image>` checks 1, 2 and 7 on your build machine.
`hack/preflight.sh <image>` checks 1 and 2 on your cluster.

## The Containerfiles, line by line

Both files have the same two stages. The Spark layer is identical; only the base differs.

**Legend:** 🟢 change freely · 🟡 change with care · 🔴 do not remove

### Stage 1: builder (thrown away)

| Lines | What they do | |
|---|---|---|
| `ARG SPARK_VERSION`, `PYTHON_VERSION`, `JAVA_MAJOR` | Versions. Set them in [`versions.env`](../versions.env), not here | 🟢 |
| `dnf install tar gzip findutils python` | Tools needed only to unpack and assemble | 🟢 |
| `COPY artifacts.sha256 ...` and `COPY artifacts/` | Brings in the pre-downloaded Spark, jars and wheels | 🔴 |
| `RUN ./assemble.sh` | Verifies every file against the lock, unpacks Spark, swaps jars, installs Python packages, sets ownership | 🔴 |

[`image/assemble.sh`](../image/assemble.sh) is where the Spark layer is made. Its steps:

| Step | What it does | |
|---|---|---|
| 1 | `sha256sum -c`: every artifact must match `artifacts.sha256` | 🔴 |
| 2 | Unpack Spark; delete YARN, SparkR, sample data, Windows scripts | 🟡 keep `sbin/` and `bin/` |
| 3 | Delete jars listed in `jars-remove.txt`; add jars from `jars.txt`; fail on duplicates | 🟢 edit the two lists |
| 4 | Install Python wheels with `pip --no-index` (no network, pip itself is not installed) | 🟢 edit `requirements.txt` |
| 5 | `chown root`, read-only for everyone else, `work-dir` group-writable | 🔴 |

### Stage 2: the image you ship

| Lines | What they do | |
|---|---|---|
| Hardened: `dnf install --installroot=/rootfs ...` then `FROM scratch` + `COPY /rootfs/ /` | Builds a root filesystem with only the RPMs Spark needs, then starts from an empty image | 🟡 add RPMs here if a job needs a native library |
| UBI 9: `microdnf install java python procps-ng` | The same packages on top of UBI minimal | 🟡 |
| `<os-release package>` (hardened only) | Without it, scanners cannot identify the OS and silently skip every package | 🔴 |
| UBI 9: `find / -perm /6000 -exec chmod a-s` | Strips setuid bits | 🔴 |
| `echo "spark:x:1001:0:..." >> /etc/passwd` | A name for the default user. `/etc/passwd` itself stays read-only | 🟡 |
| `COPY entrypoint.sh decom.sh` | Entrypoint and the executor decommission script | 🔴 |
| `COPY spark-defaults.conf log4j2.properties` | Defaults: temp paths under `/tmp`, S3 credential providers, quiet Spark Connect request logging | 🟡 keep the four Connect logger lines |
| `ENV SPARK_LOG_DIR=/tmp/... SPARK_PID_DIR=/tmp/...` | Needed because the operator bypasses the entrypoint for Spark Connect | 🔴 |
| `ENV PYSPARK_PYTHON=...` | Pins the executor Python | 🟡 keep it equal to the workbench's Python minor version |
| `USER 1001:0` | Numeric, non-root, group 0. Lets the kubelet verify `runAsNonRoot` | 🔴 |
| `ENTRYPOINT ["/opt/entrypoint.sh"]` | `driver`, `executor`, `connect`, or any command | 🔴 |

## Make it yours

| I want to... | Do this |
|---|---|
| Add a jar (a connector, a JDBC driver) | Add its Maven coordinate to [`image/jars.txt`](../image/jars.txt), then `make fetch-update` |
| Add the Oracle JDBC driver | Uncomment its line in `image/jars.txt`, then `make fetch-update`. Check Oracle's licence first |
| Add a Python package | Add it to [`image/requirements.txt`](../image/requirements.txt), then `make fetch-update` |
| Add an OS package | Add it to the `dnf install` list in stage 2 |
| Use a different Spark version | [compatibility.md](compatibility.md) lists the tested ones and how to build each |
| Ship my job code | Do not put it here. Build a small image `FROM` this one: [`examples/Containerfile`](../examples/Containerfile) |
| Build without internet access | Point `make fetch` at your mirrors: [walkthrough.md](walkthrough.md#2-fetch-and-lock-the-artifacts) |

After any change, `make fetch-update` rewrites `artifacts.sha256`. Review the diff and commit
it. The build refuses to run if the files and the lock disagree.

## Build and check

**Procedure**

```bash
make fetch                  # the only step that uses the network
make build                  # add FLAVOR=ubi9 for the UBI 9 base
make verify                 # 16 hardening checks
make test                   # functional tests under restricted-v2 constraints
make push
hack/preflight.sh <image>   # on the cluster
```

**Verification**

- `make verify` ends with `== 16 passed, 0 failed`.
- `make test` ends with `== 11 passed, 0 failed`.
- `hack/preflight.sh <image>` ends with `0 failed`.

The full version with expected output at every step: [walkthrough.md](walkthrough.md).

---

**Next:** [compatibility](compatibility.md) · [what the hardening changed](hardening.md) · [walkthrough](walkthrough.md)
