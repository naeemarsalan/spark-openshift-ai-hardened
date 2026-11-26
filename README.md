# Hardened Apache Spark images for OpenShift AI

A worked example of building a custom Apache Spark image that passes a security review and runs
on OpenShift AI under the default `restricted-v2` SCC, with the checks and test results to
prove it.

One image does every job: `spark-submit` driver, Scala and Python executors, and the Spark
Connect server.

| | |
|---|---|
| Spark | 4.3.0 (Scala 2.13), Spark Connect included |
| Java / Python | OpenJDK 21 headless / Python 3.12 with numpy, pandas, pyarrow, grpcio |
| Storage | S3 through `hadoop-aws` 3.5.0 and the AWS SDK v2 |
| Databases | PostgreSQL, SQL Server and Oracle JDBC drivers |
| Base images | Red Hat Hardened Images (default) or UBI 9 minimal |
| Tested on | OpenShift 4.20 with OpenShift AI 3.5.4, no SCC granted |

## Start here

| If you want to... | Read |
|---|---|
| Build, check, scan and deploy the image step by step | [docs/walkthrough.md](docs/walkthrough.md) |
| See what changed compared with a regular UBI build, and why | [docs/hardening.md](docs/hardening.md) |
| See scan results before and after | [docs/scan-comparison.md](docs/scan-comparison.md) |
| Decide between the hardened base and UBI 9 | [docs/choosing-a-base.md](docs/choosing-a-base.md) |
| Run it on OpenShift AI, and know what differs from upstream docs | [docs/openshift-ai.md](docs/openshift-ai.md) |
| Check the raw output behind every number | [docs/evidence/](docs/evidence/) |

## Quick start

Needs `podman`, `python3` with pip, `gpg`, `curl` and `make`. Scanners run as containers.

```bash
make fetch     # download Spark, jars and wheels once; verify signatures and the SHA-256 lock
make build     # build from ./artifacts only; add FLAVOR=ubi9 for the UBI 9 base
make verify    # 16 hardening checks
make test      # functional tests as a random UID, no capabilities, read-only root filesystem
make scan      # Trivy + Grype -> reports/<image>/summary.md
```

On a cluster with OpenShift AI 3.5 or later and the Spark Operator component enabled:

```bash
oc new-project spark-demo
make push
IMG=<registry>/spark-hi:4.3.0-3

tests/cluster-test-openshift-ai.sh "$IMG"       # SparkApplication (Scala, PySpark), SparkConnect
examples/run-cluster.sh "$IMG" <registry>/spark-examples:4.3.0-3
tests/security-cluster.sh "$IMG"                # NetworkPolicy, RBAC, no credentials in specs or logs
```

## Before and after

The same Spark, built the regular UBI way and built by this repo
([details](docs/scan-comparison.md)):

| | Regular UBI 9 build | This repo, UBI 9 minimal | This repo, hardened base |
|---|---|---|---|
| Trivy findings | 790 | 425 | 55 ¹ |
| Grype findings | 793 | 434 | 114 |
| Critical (Trivy) | 4 | 0 | 0 |
| Java-library findings (Trivy) | 187 | 55 | 55 |
| OS packages installed | 213 | 139 | 78 |
| Hardening checks passed | 9 / 16 | 16 / 16 | 16 / 16 |
| Software downloaded during the build | yes | no | no |
| `pip` and build caches left in the image | yes | no | no |
| Runtime user can modify Spark's jars | yes | no | no |

¹ Trivy does not recognise the hardened base's operating system and skips its packages, so
this figure is Java libraries only. Use the Grype row to compare.

**"Zero vulnerabilities" is not reached on either base.** What remains has no fixed version to
move to: vulnerable code shaded inside the Hadoop, Parquet and Spark jars, and OS packages
Red Hat has not patched. See [what is still open](docs/scan-comparison.md#what-is-still-open).

## How each requirement is met

| Requirement | How | Proof |
|---|---|---|
| Spark Connect and `spark-submit` | [`image/entrypoint.sh`](image/entrypoint.sh): `driver`, `executor`, `connect` | Operator test 9 / 9 on OpenShift AI |
| Scala and Python executors | One image with the JVM, Python 3.12 and the Arrow stack | Scala SparkPi, PySpark pandas UDF, both on the cluster |
| S3 and database libraries | [`image/jars.txt`](image/jars.txt) | S3 + JDBC round-trips; three real database engines locally |
| No secrets in the image | Nothing in git, `ENV` or layers; credentials come from Secrets at run time | `verify-image.sh`, Trivy secret scan: 0; cluster test finds no credential in any spec or log |
| Non-root default user | `USER 1001:0`, works as any UID in group 0 | Ran as UID `1000770000` on the cluster |
| No downloads during the build | Build copies from `./artifacts`, verified against [`artifacts.sha256`](artifacts.sha256) | `verify-image.sh` build-history check |
| No end-of-life software | Spark 4.3.0, OpenJDK 21, Python 3.12; ten bundled library families replaced with patched releases | [`image/jars.txt`](image/jars.txt), scan reports |
| `restricted-v2` compatible | No fixed UID in any manifest, all capabilities dropped, no privilege escalation, `RuntimeDefault` seccomp, read-only root filesystem | Every Spark pod admitted by `restricted-v2` with no SCC granted |
| Zero vulnerabilities | **Not met.** 55 Java-library findings plus OS findings with no fix available | [docs/scan-comparison.md](docs/scan-comparison.md) |

## Test results on OpenShift AI

OpenShift 4.20.27, OpenShift AI 3.5.4, 2026-11-25 ([details](docs/openshift-ai.md)):

| Test | `spark-hi` | `spark-ubi9` |
|---|---|---|
| Operator: `SparkApplication` and `SparkConnect` | 9 / 9 | 9 / 9 |
| Example pipeline through the operator | 5 / 5 | 5 / 5 |
| Cluster security: NetworkPolicy, RBAC, credentials | 10 / 10 | 10 / 10 |
| `spark-submit` without the operator | 8 / 8 | not run |
| Notebook in a real workbench | — | pass (against the `spark-ubi9` server) |

## Layout

```
versions.env            pinned versions, base images, registry and tag
artifacts.sha256        SHA-256 lock for every vendored binary
Containerfile           hardened-image flavour (FROM scratch + minimal RPM root filesystem)
Containerfile.ubi9      UBI 9 minimal flavour
baseline/               the regular UBI build, for comparison only
image/                  what goes in the image: assemble script, jar lists, entrypoint, defaults
hack/                   fetch-artifacts.sh, verify-image.sh, scan.sh
tests/                  local and cluster tests
deploy/openshift-ai/    SparkApplication, SparkConnect, RBAC and NetworkPolicy for OpenShift AI
deploy/                 the same without the operator (plain spark-submit)
examples/               three example projects and their manifests
docs/                   the guide and the evidence
```

## Open decisions

1. **Shaded-library findings (51).** Rebuild Spark and the Hadoop client from source, re-shade
   the affected jars, or record VEX justifications.
2. **Hive 2.3 jars (4 findings).** Removing them clears the findings and drops Hive Metastore
   support.
3. **Which base to lead with.** Depends on whether the organisation's scanner recognises the
   hardened images. See [docs/choosing-a-base.md](docs/choosing-a-base.md).
4. **Spark version.** OpenShift AI 3.5 ships Spark 4.0.1 in the operator and client packages up
   to 4.2.0. Spark 4.3.0 is tested here and works, but is newer than what Red Hat ships.
5. **Oracle JDBC driver licence.** Confirm it may be redistributed inside the image.

## Not covered

- Red Hat's published Spark Operator documentation was not read directly (the site blocks
  automated access); the manifests follow the examples in Red Hat's operator source repository.
- The Spark Operator's support status in OpenShift AI 3.5 (generally available or Technology
  Preview) is unconfirmed.
- Disconnected clusters, FIPS mode, and architectures other than x86_64.
- Support and licensing terms of Red Hat Hardened Images.
