# Evidence

> [!NOTE]
> **In short:** the raw output behind every number in the guide, captured 2026-11-26. Colour
> codes are stripped and nothing else is edited. No file contains a credential value (checked
> against every Secret on the test cluster).

| Folder | Holds |
|---|---|
| [`openshift/`](openshift/) | Spark 4.2.1 on the real cluster: both bases, plus the Docker Hub image |
| [`compat/`](compat/) | Spark 4.0.5, 4.1.4 and 4.3.0 on the same cluster and on the build machine |
| [`scans/`](scans/) | Per-CVE lists for every scanned image |
| [`image-checks/`](image-checks/) | Output of the 16 hardening checks |
| [`local/`](local/) | Spark 4.2.1 test runs on the build machine |

## `openshift/` — OpenShift 4.20.27, OpenShift AI 3.5.4, Spark 4.2.1

`<base>` is `hi` (hardened image) or `ubi9`.

| File | What it is |
|---|---|
| `4.2.1-<base>-operator.log` | `SparkApplication` and `SparkConnect` through the operator: 9 / 9 |
| `4.2.1-<base>-examples.log` | Example pipeline: 5 / 5 |
| `4.2.1-<base>-security.log` | NetworkPolicy, RBAC and credential checks: 10 / 10 |
| `4.2.1-<base>-native.log` | `spark-submit` without the operator: 8 / 8 |
| `4.2.1-<base>-clients.log` | Seven `pyspark-client` versions against the server: 7 / 7 |
| `4.2.1-<base>-workbench.log` | The notebook executed inside a real workbench pod, with cell outputs |
| `dockerhub-4.2.1-operator.log` | The unmodified Docker Hub image through the operator: 5 / 9 |
| `preflight-spark-hi-4.2.1.log` | `hack/preflight.sh` on the hardened image: 0 failed |
| `preflight-dockerhub-4.2.1.log` | `hack/preflight.sh` on the Docker Hub image: 1 failed |
| `00-cluster-2026-11-25.txt` | Versions, nodes, namespace UID range, security context of every Spark pod, operator webhook scope. Captured during the first round of testing, with Spark 4.3.0 images |
| `first-run-4.3.0-operator-1-failure.log` | The first ever operator run: 8 passed, 1 failed (pod settings ignored outside `default`; see [openshift-ai.md](../openshift-ai.md#1-pod-settings-must-go-in-pod-templates)) |

## `compat/` — other Spark versions, hardened image

`<version>` is `4.0.5`, `4.1.4` or `4.3.0`. The matrix that links to these is
[compatibility.md](../compatibility.md).

| File | What it is |
|---|---|
| `<version>-operator.log` | Operator test on the cluster |
| `<version>-native.log` | `spark-submit` without the operator, on the cluster |
| `<version>-clients.log` | Seven `pyspark-client` versions against that server |
| `<version>-local-smoke.log` | Functional tests on the build machine |
| `<version>-local-operator-launch.log` | Emulation of the operator's Spark Connect launch |

The 4.1.4 operator and client tests were run a second time. The first attempt started before
the image had been pushed to the registry, so its pods could not pull it. The logs here are
from the second run.

## `scans/` — Trivy 0.76.2 and Grype 0.122.1

| File | Image |
|---|---|
| `A-dockerhub-apache-spark-4.2.1.md` | `docker.io/apache/spark:4.2.1` |
| `B-regular-ubi9-4.2.1.md` | The regular UBI 9 build |
| `C-spark-ubi9-4.2.1.md` | This repo, UBI 9 minimal |
| `D-spark-hi-4.2.1.md` | This repo, hardened base |
| `compat-spark-hi-<version>.md` | The hardened image for 4.0.5, 4.1.4 and 4.3.0 |

## `image-checks/` — `hack/verify-image.sh`

| File | Result |
|---|---|
| `verify-dockerhub-apache-spark-4.2.1.txt` | 7 passed, 9 failed |
| `verify-spark-regular-ubi9-4.2.1.txt` | 9 passed, 7 failed |
| `verify-spark-ubi9-4.2.1.txt` | 16 passed, 0 failed |
| `verify-spark-hi-4.2.1.txt` | 16 passed, 0 failed |
| `verify-spark-hi-4.0.5.txt`, `-4.1.4.txt`, `-4.3.0.txt` | 16 passed, 0 failed each |

## `local/` — build machine, podman, Spark 4.2.1

Every container runs as a random UID in group 0, with all capabilities dropped, no privilege
escalation and a read-only root filesystem.

| File | Result |
|---|---|
| `smoke-spark-hi.log`, `smoke-spark-ubi9.log` | Functional tests: 11 / 11 each |
| `operator-compat-spark-hi.log` | Emulation of the operator's Spark Connect launch: 3 / 3 |
| `security-local-spark-hi.log` | Spark Connect token and TLS, secrets hygiene: 8 / 8 |
| `jdbc-drivers-spark-hi.log` | Round-trips against PostgreSQL 16 and SQL Server 2022: 2 / 2 |
| `examples-local.log` | The three example projects: 3 / 3 |
