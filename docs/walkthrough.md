# Walkthrough: build, check, scan, test, deploy

Start to finish on one build machine and one OpenShift cluster. Every step prints its own
pass/fail result; nothing here asks you to inspect output by eye.

**You need:** `podman`, `python3` with `pip`, `gpg`, `curl`, `make`, and for the cluster steps
`oc` logged in to OpenShift with OpenShift AI 3.5 or later.

The examples build the hardened-image flavour. Add `FLAVOR=ubi9` to any `make` command for the
UBI 9 flavour ([which one?](choosing-a-base.md)).

---

## 1. Pin what goes in

Three files decide the content of the image. Read them before building.

| File | Controls |
|---|---|
| [`versions.env`](../versions.env) | Spark, Hadoop, Java and Python versions, base images, registry and tag |
| [`image/jars.txt`](../image/jars.txt) | Jars added: S3, JDBC drivers, patched replacements |
| [`image/requirements.txt`](../image/requirements.txt) | Python packages |

Set `REGISTRY` in `versions.env` to your own registry.

## 2. Fetch and lock the artifacts

```bash
make fetch
```

This is the only step that uses the network. It downloads Spark, the jars and the Python
wheels into `./artifacts`, verifies Spark's SHA-512 and GPG signature and each jar's Maven
checksum, and compares everything with [`artifacts.sha256`](../artifacts.sha256).

In a restricted network, point it at internal mirrors:

```bash
SPARK_MIRROR=https://artifactory.example.com/apache-remote/spark \
MAVEN_REPO=https://artifactory.example.com/maven-remote \
PIP_INDEX_URL=https://artifactory.example.com/api/pypi/pypi-remote/simple \
make fetch
```

After changing a version, run `make fetch-update` to rewrite the lock, then review and commit
`artifacts.sha256`. `./artifacts` itself is not committed.

## 3. Build

```bash
make build
```

The build copies from `./artifacts`, verifies the lock again inside the builder, and fails if
anything differs. It downloads no software; the only network use is the package manager
reaching its configured RPM repository.

Result: `<REGISTRY>/spark-hi:<IMAGE_TAG>`.

## 4. Check the hardening

```bash
make verify
```

Sixteen static checks: non-root numeric user in group 0, no credentials in `ENV` or build
history, no setuid binaries, Spark read-only to the runtime user, no keys or keystores, no
`pip`, no build caches, and a start-up as an arbitrary UID with no capabilities on a read-only
root filesystem. Expected: `16 passed, 0 failed`.

What each check is for, and what it looks like when it fails: [hardening.md](hardening.md).

## 5. Scan

```bash
make scan
```

Runs Trivy (vulnerabilities, secrets, misconfiguration) and Grype against the image, both as
containers. The summary prints to the terminal; the per-CVE list is in
`reports/<image>_<tag>/summary.md`. Add `--fail` to `hack/scan.sh` to use it as a pipeline gate.

To see what the hardening bought you, build the regular UBI image and run the same checks and
scans against both:

```bash
make compare
```

Results from this repo: [scan-comparison.md](scan-comparison.md).

## 6. Test locally

```bash
make test                          # 11 functional checks + operator launch emulation
tests/security-local.sh <image>    # Spark Connect token and TLS, secrets hygiene
tests/jdbc-drivers.sh <image>      # round-trips against real PostgreSQL, SQL Server and Oracle
examples/run-local.sh              # the three example projects
```

Every container in these tests runs as a random UID in group 0, with all capabilities dropped,
no privilege escalation and a read-only root filesystem: the same constraints `restricted-v2`
applies. They start throwaway S3 and database containers as needed.

## 7. Push

```bash
podman login <registry>
make push
```

## 8. Prepare the cluster

OpenShift AI must have the Spark Operator component enabled. In the `DataScienceCluster`:

```yaml
spec:
  components:
    sparkoperator:
      managementState: Managed
    workbenches:
      managementState: Managed
```

Then create an ordinary project. Do **not** grant it any SCC.

```bash
oc new-project spark-demo
oc label namespace spark-demo opendatahub.io/dashboard=true

# only if the registry is private
oc create secret docker-registry spark-pull --docker-server=<registry> \
   --docker-username=<user> --docker-password=<password>
export PULL_SECRET=spark-pull
```

## 9. Test on the cluster

```bash
IMG=<registry>/spark-hi:<tag>

tests/cluster-test-openshift-ai.sh "$IMG"     # operator: Scala job, PySpark S3+JDBC job, Spark Connect
examples/run-cluster.sh "$IMG" <registry>/spark-examples:<tag>   # the example pipeline
tests/security-cluster.sh "$IMG"              # NetworkPolicy, RBAC, credentials never leave the Secret
```

Each script deploys its own throwaway S3 store and PostgreSQL in the namespace, and ends by
listing every Spark pod with the SCC that admitted it and the UID it ran as. The run only
passes if all of them say `restricted-v2` and a UID from the namespace's range.

Results from a real cluster: [openshift-ai.md](openshift-ai.md) and [evidence/](evidence/).

## 10. Use it from a workbench

In an OpenShift AI workbench (any Python 3.12 Jupyter image), open
[`examples/03-spark-connect/workbench.ipynb`](../examples/03-spark-connect/workbench.ipynb).
It installs the thin `pyspark-client`, connects to the `SparkConnect` server and runs queries
on the executors. Details and troubleshooting: [openshift-ai.md](openshift-ai.md#workbench).

## 11. Write your own jobs

Start from the examples:

| Example | Shows |
|---|---|
| [`examples/01-pyspark-etl`](../examples/01-pyspark-etl/etl.py) | PySpark job: S3 read/write, pandas UDF, JDBC load |
| [`examples/02-scala-report`](../examples/02-scala-report) | Scala job compiled into an application image with no sbt or Maven |
| [`examples/03-spark-connect`](../examples/03-spark-connect) | Spark Connect client as a script and as a notebook |
| [`examples/openshift-ai/`](../examples/openshift-ai) | `SparkApplication` manifests for the two jobs |

Application code goes in a small image built `FROM` the Spark image
([`examples/Containerfile`](../examples/Containerfile)). Credentials always come from a Secret
at run time.

## Clean up

```bash
tests/cluster-test-openshift-ai.sh "$IMG" --cleanup
```
