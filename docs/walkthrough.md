# Walkthrough: build, check, scan, test, deploy

> [!NOTE]
> **In short:** eleven steps, one command each. Steps 1 to 7 need a build machine. Steps 8 to
> 10 need a cluster. Every step prints a pass or fail count.

| Step | What you do | Where |
|---|---|---|
| [1](#1-pin-what-goes-in) | Pin what goes in | Build machine |
| [2](#2-fetch-and-lock-the-artifacts) | Fetch and lock the artifacts | Build machine |
| [3](#3-build) | Build | Build machine |
| [4](#4-check-the-hardening) | Check the hardening | Build machine |
| [5](#5-scan) | Scan | Build machine |
| [6](#6-test-locally) | Test locally | Build machine |
| [7](#7-push) | Push | Build machine |
| [8](#8-prepare-the-cluster) | Prepare the cluster | Cluster |
| [9](#9-test-on-the-cluster) | Test on the cluster | Cluster |
| [10](#10-use-it-from-a-workbench) | Use it from a workbench | Cluster |
| [11](#11-write-your-own-jobs) | Write your own jobs | Anywhere |

## Prerequisites

- `podman`, `make`, `curl`, `gpg`, and `python3` with `pip`.
- For steps 8 to 10: `oc`, logged in to OpenShift with OpenShift AI 3.5 or later.

> [!TIP]
> The commands build the hardened-image flavour. Add `FLAVOR=ubi9` to any `make` command for
> the UBI 9 flavour. Not sure which? See [choosing-a-base.md](choosing-a-base.md).

---

## 1. Pin what goes in

Three files decide the content of the image.

| File | Controls |
|---|---|
| [`versions.env`](../versions.env) | Spark, Hadoop, Java and Python versions, base images, registry and tag |
| [`image/jars.txt`](../image/jars.txt) | Jars added: S3, JDBC drivers, patched replacements |
| [`image/requirements.txt`](../image/requirements.txt) | Python packages |

**Procedure**

1. Open `versions.env`.
2. Set `REGISTRY` to your own registry.

## 2. Fetch and lock the artifacts

This is the **only** step that uses the network.

**Procedure**

```bash
make fetch
```

It downloads Spark, the jars and the Python wheels into `./artifacts`, then verifies:

- Spark against Apache's SHA-512 and GPG signature
- each jar against its Maven checksum
- every file against [`artifacts.sha256`](../artifacts.sha256)

**Verification**

The command exits without error. Any mismatch stops it.

<details>
<summary>Restricted network: use internal mirrors</summary>

```bash
SPARK_MIRROR=https://artifactory.example.com/apache-remote/spark \
MAVEN_REPO=https://artifactory.example.com/maven-remote \
PIP_INDEX_URL=https://artifactory.example.com/api/pypi/pypi-remote/simple \
make fetch
```

Credentials, a private CA, an RPM mirror and proxies: [enterprise.md](enterprise.md).

</details>

<details>
<summary>After you change a version</summary>

1. Run `make fetch-update` to rewrite the lock.
2. Review the diff of `artifacts.sha256`.
3. Commit `artifacts.sha256`. Do not commit `./artifacts`.

</details>

## 3. Build

**Procedure**

```bash
make build
```

The build copies from `./artifacts`, verifies the lock again inside the builder, and fails if
anything differs. It downloads no software. The only network use is the package manager
reaching its configured RPM repository.

**Verification**

```bash
podman images | grep spark-hi
```

You should see `<REGISTRY>/spark-hi` with tag `<IMAGE_TAG>`.

## 4. Check the hardening

**Procedure**

```bash
make verify
```

**Verification**

```
== 16 passed, 0 failed
```

The 16 checks cover: non-root numeric user in group 0, no credentials in `ENV` or build
history, no setuid binaries, Spark read-only to the runtime user, no keys or keystores, no
`pip`, no build caches, and a start-up as an arbitrary UID with no capabilities on a read-only
root filesystem.

What each check is for, and what a failure looks like: [hardening.md](hardening.md).

## 5. Scan

**Procedure**

```bash
make scan
```

This runs Trivy (vulnerabilities, secrets, misconfiguration) and Grype against the image. Both
run as containers, so there is nothing to install.

**Verification**

- A summary prints to the terminal.
- The per-CVE list is in `reports/<image>_<tag>/summary.md`.

> [!TIP]
> To use the scan as a pipeline gate, run `hack/scan.sh <image> --fail`.

**Optional: compare with a regular build**

```bash
make compare
```

This builds the regular UBI image and runs the same checks and scans against both.
Results from this repo: [scan-comparison.md](scan-comparison.md).

## 6. Test locally

**Procedure**

Run these one at a time.

```bash
make test                          # 11 functional checks + operator launch emulation
tests/security-local.sh <image>    # Spark Connect token and TLS, secrets hygiene
tests/jdbc-drivers.sh <image>      # round-trips against PostgreSQL and SQL Server (and Oracle, if you added its driver)
examples/run-local.sh              # the three example projects
```

**Verification**

| Command | Ends with |
|---|---|
| `make test` | `== 11 passed, 0 failed`, then `== 3 passed, 0 failed` |
| `tests/security-local.sh` | `== 8 passed, 0 failed` |
| `tests/jdbc-drivers.sh` | `== 3 passed, 0 failed` |
| `examples/run-local.sh` | `== 3 passed, 0 failed` |

Every container in these tests runs as a random UID in group 0, with all capabilities dropped,
no privilege escalation and a read-only root filesystem. Those are the constraints
`restricted-v2` applies. The tests start their own throwaway S3 and database containers.

## 7. Push

**Procedure**

```bash
podman login <registry>
make push
```

## 8. Prepare the cluster

**Prerequisites**

- Cluster administrator access, for step 1 only.

**Procedure**

1. Enable the Spark Operator component in the `DataScienceCluster`:

   ```yaml
   spec:
     components:
       sparkoperator:
         managementState: Managed
       workbenches:
         managementState: Managed
   ```

2. Create an ordinary project.

   ```bash
   oc new-project spark-demo
   oc label namespace spark-demo opendatahub.io/dashboard=true
   ```

3. Only if your registry is private, create a pull secret.

   ```bash
   oc create secret docker-registry spark-pull --docker-server=<registry> \
      --docker-username=<user> --docker-password=<password>
   export PULL_SECRET=spark-pull
   ```

4. Check the cluster, the project and the image in one go.

   ```bash
   hack/preflight.sh <registry>/spark-hi:<tag>
   ```

   It ends with `0 failed`. Every `FAIL` line names the fix. What it checks:
   [spark-on-openshift-ai.md](spark-on-openshift-ai.md#check-before-you-start).

> [!IMPORTANT]
> Do **not** grant the project any SCC. The image does not need one.

## 9. Test on the cluster

**Procedure**

```bash
IMG=<registry>/spark-hi:<tag>

tests/cluster-test-openshift-ai.sh "$IMG"
examples/run-cluster.sh "$IMG" <registry>/spark-examples:<tag>
tests/security-cluster.sh "$IMG"
```

| Script | Covers |
|---|---|
| `cluster-test-openshift-ai.sh` | Scala job, PySpark S3 + JDBC job, Spark Connect, all through the operator |
| `run-cluster.sh` | The example pipeline |
| `security-cluster.sh` | NetworkPolicy, RBAC, credentials never leave the Secret |

Each script deploys its own throwaway S3 store and PostgreSQL in the namespace.

**Verification**

| Script | Ends with |
|---|---|
| `cluster-test-openshift-ai.sh` | `== 9 passed, 0 failed` |
| `run-cluster.sh` | `== 5 passed, 0 failed` |
| `security-cluster.sh` | `== 10 passed, 0 failed` |

Each run also lists every Spark pod with the SCC that admitted it and the UID it ran as. A run
only passes if all of them say `restricted-v2` and a UID from the namespace's range.

A test failed? Go to [openshift-ai.md: troubleshooting](openshift-ai.md#troubleshooting).
Results from the test cluster: [openshift-ai.md](openshift-ai.md). Logs: [results/](results/).

## 10. Use it from a workbench

**Procedure**

1. Create an OpenShift AI workbench with any Python 3.12 Jupyter image.
2. Open [`examples/03-spark-connect/workbench.ipynb`](../examples/03-spark-connect/workbench.ipynb).
3. Run the cells from the top.

The notebook installs the thin `pyspark-client`, connects to the `SparkConnect` server and
runs queries on the executors.

Details and troubleshooting: [openshift-ai.md](openshift-ai.md#workbench).

## 11. Write your own jobs

Start from an example.

| Example | Shows |
|---|---|
| [`examples/01-pyspark-etl`](../examples/01-pyspark-etl/etl.py) | PySpark job: S3 read/write, pandas UDF, JDBC load |
| [`examples/02-scala-report`](../examples/02-scala-report) | Scala job compiled into an application image with no sbt or Maven |
| [`examples/03-spark-connect`](../examples/03-spark-connect) | Spark Connect client as a script and as a notebook |
| [`examples/openshift-ai/`](../examples/openshift-ai) | `SparkApplication` manifests for the two jobs |

Two rules:

- Application code goes in a small image built `FROM` the Spark image
  ([`examples/Containerfile`](../examples/Containerfile)).
- Credentials always come from a Secret at run time.

## Clean up

```bash
tests/cluster-test-openshift-ai.sh "$IMG" --cleanup
```

---

**Next:** [what the hardening changed](hardening.md) · [scan comparison](scan-comparison.md) · [OpenShift AI notes](openshift-ai.md)
