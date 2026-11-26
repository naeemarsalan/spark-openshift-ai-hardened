# Evidence

> [!NOTE]
> **In short:** the raw output behind every number in the guide, captured 2026-11-25. Colour
> codes are stripped and nothing else is edited. No file contains a credential value (checked
> against every Secret on the test cluster).

| Folder | Holds |
|---|---|
| [`openshift/`](openshift/) | Test runs on the real cluster |
| [`scans/`](scans/) | Per-CVE lists for the four scanned images |
| [`image-checks/`](image-checks/) | Output of the 16 hardening checks |
| [`local/`](local/) | Test runs on the build machine |

## `openshift/` — OpenShift 4.20.27, OpenShift AI 3.5.4

| File | What it is |
|---|---|
| `00-cluster.txt` | Versions, nodes, namespace UID range, SCC and security context of every Spark pod, capabilities inside a running pod, operator webhook scope |
| `01-operator-spark-hi-first-run-1-failure.log` | First operator run: 8 passed, 1 failed (pod settings ignored outside `default`; see [openshift-ai.md](../openshift-ai.md#1-pod-settings-must-go-in-pod-templates)) |
| `02-operator-spark-hi.log` | Operator test, hardened image: 9 / 9 |
| `03-examples-spark-hi.log` | Example pipeline, hardened image: 5 / 5 |
| `04-security-spark-hi.log` | Cluster security test, hardened image: 10 / 10 |
| `05-operator-spark-ubi9.log` | Operator test, UBI 9 image: 9 / 9 |
| `06-security-spark-ubi9.log` | Cluster security test, UBI 9 image: 10 / 10 |
| `07-examples-spark-ubi9-server.log` | Example pipeline with the UBI 9 Spark Connect server: 5 / 5 |
| `08-workbench-client-4.3.0-pypi.log` | Notebook cells run in a real workbench, client 4.3.0 from PyPI |
| `09-workbench-client-4.2.0-redhat-index.log` | The same with client 4.2.0 from Red Hat's index |
| `10-workbench-executed.ipynb` | The notebook as executed in the workbench, with outputs |
| `11-spark-submit-no-operator-spark-hi.log` | `spark-submit` without the operator: 8 / 8 |

## `scans/` — Trivy 0.76.2 and Grype 0.122.1

Full per-CVE lists for the four images in [scan-comparison.md](../scan-comparison.md):
`A-apache-spark.md`, `B-regular-ubi9.md`, `C-spark-ubi9.md`, `D-spark-hi.md`.

## `image-checks/` — `hack/verify-image.sh`

| File | Result |
|---|---|
| `verify-spark-regular-ubi9.txt` | 9 passed, 7 failed |
| `verify-spark-ubi9.txt` | 16 passed, 0 failed |
| `verify-spark-hi.txt` | 16 passed, 0 failed |

## `local/` — build machine, podman

Every container runs as a random UID in group 0, with all capabilities dropped, no privilege
escalation and a read-only root filesystem.

| File | Result |
|---|---|
| `smoke-spark-hi.log`, `smoke-spark-ubi9.log` | Functional tests: 11 / 11 each |
| `operator-compat-spark-hi.log` | Emulation of the operator's Spark Connect launch: 3 / 3 |
| `security-local-spark-hi.log` | Spark Connect token and TLS, secrets hygiene: 8 / 8 |
| `jdbc-drivers-spark-hi.log` | Round-trips against PostgreSQL 16, SQL Server 2022 and Oracle 23ai Free: 3 / 3 |
| `examples-local.log` | The three example projects: 3 / 3 |
