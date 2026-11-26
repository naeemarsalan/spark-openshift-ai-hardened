# Compatibility: Spark versions tested on OpenShift AI

> [!NOTE]
> **In short**
>
> - Four Spark versions were built and run on OpenShift AI 3.5.4: **4.0.5, 4.1.4, 4.2.1
>   (default) and 4.3.0**.
> - Each result links to its log.
> - These are test results. For what Red Hat supports, check Red Hat's
>   supported-configurations page for your OpenShift AI version.

**On this page**

- [Which version should I use?](#which-version-should-i-use)
- [Spark version on the cluster](#spark-version-on-the-cluster)
- [Notebook client against server](#notebook-client-against-server)
- [What differs between the versions](#what-differs-between-the-versions)
- [Not tested](#not-tested)
- [Build another version](#build-another-version)
- [Test your own combination](#test-your-own-combination)

## Which version should I use?

| If you want... | Use | Why |
|---|---|---|
| The default | **4.2.1** | The workbench package index in OpenShift AI 3.5 offers `pyspark-client` 4.2.0, so notebooks match the server's minor version with no extra index. Upstream gives the 4.2 line a longer maintenance window than 4.3. Fully remediated here. |
| The newest Spark | 4.3.0 | Works. Workbenches use client 4.2.0 from Red Hat's index, or 4.3.0 from your PyPI mirror. Fully remediated here. |
| The same version as the operator's own Spark | 4.0.5 | The operator in OpenShift AI 3.5.4 bundles 4.0.1. Works, but the 4.0 line is at the end of its upstream maintenance window and is **not** remediated here. |
| 4.1 | 4.1.4 | Works. **Not** remediated here. |

## Spark version on the cluster

Hardened image, OpenShift 4.20.27, OpenShift AI 3.5.4, `restricted-v2`, no SCC granted,
2026-11-26.

| Spark | Image tag | Hardening checks | Local functional | Operator | Without the operator |
|---|---|---|---|---|---|
| 4.0.5 | `spark-hi:4.0.5-2` | ✅ [16 / 16](results/image-checks/verify-spark-hi-4.0.5.txt) | ✅ [11 / 11](results/compat/4.0.5-local-smoke.log) | ✅ [9 / 9](results/compat/4.0.5-operator.log) | ✅ [8 / 8](results/compat/4.0.5-native.log) |
| 4.1.4 | `spark-hi:4.1.4-2` | ✅ [16 / 16](results/image-checks/verify-spark-hi-4.1.4.txt) | ✅ [11 / 11](results/compat/4.1.4-local-smoke.log) | ✅ [9 / 9](results/compat/4.1.4-operator.log) | ✅ [8 / 8](results/compat/4.1.4-native.log) |
| **4.2.1** (default) | `spark-hi:4.2.1-2` | ✅ [16 / 16](results/image-checks/verify-spark-hi-4.2.1.txt) | ✅ [11 / 11](results/local/smoke-spark-hi.log) | ✅ [9 / 9](results/openshift/4.2.1-hi-operator.log) | ✅ [8 / 8](results/openshift/4.2.1-hi-native.log) |
| 4.3.0 | `spark-hi:4.3.0-4` | ✅ [16 / 16](results/image-checks/verify-spark-hi-4.3.0.txt) | ✅ [11 / 11](results/compat/4.3.0-local-smoke.log) | ✅ [9 / 9](results/compat/4.3.0-operator.log) | ✅ [8 / 8](results/compat/4.3.0-native.log) |

**What each column runs**

| Column | Test | Covers |
|---|---|---|
| Hardening checks | `hack/verify-image.sh` | The 16 image checks |
| Local functional | `tests/smoke-local.sh` | 11 tests as a random UID with a read-only root filesystem |
| Operator | `tests/cluster-test-openshift-ai.sh` | Scala `SparkApplication`, PySpark `SparkApplication` with S3 and JDBC, `SparkConnect` server and client |
| Without the operator | `tests/cluster-test.sh` | `spark-submit` in cluster mode from a Job, and a Spark Connect Deployment |

The default version was also run on the UBI 9 base, with the example pipeline, the security
tests and a workbench notebook: [openshift-ai.md](openshift-ai.md#results).

## Notebook client against server

Each client was installed with `pip` into a clean environment in a pod running the OpenShift
AI workbench image (Python 3.12), then ran a pandas UDF on the executors, an S3 write and
read, and a JDBC write and read through the Spark Connect server.

**Source** is where `pip` found the package: Red Hat's index is what a workbench uses by
default; PyPI needs `--index-url`.

| `pyspark-client` | Source | Server 4.0.5 | Server 4.1.4 | Server 4.2.1 | Server 4.3.0 |
|---|---|---|---|---|---|
| 4.0.1 | Red Hat's index | ✅ [pass](results/compat/4.0.5-clients.log) | ✅ [pass](results/compat/4.1.4-clients.log) | ✅ [pass](results/openshift/4.2.1-hi-clients.log) | ✅ [pass](results/compat/4.3.0-clients.log) |
| 4.1.2 | Red Hat's index | ✅ [pass](results/compat/4.0.5-clients.log) | ✅ [pass](results/compat/4.1.4-clients.log) | ✅ [pass](results/openshift/4.2.1-hi-clients.log) | ✅ [pass](results/compat/4.3.0-clients.log) |
| 4.2.0 | Red Hat's index | ✅ [pass](results/compat/4.0.5-clients.log) | ✅ [pass](results/compat/4.1.4-clients.log) | ✅ [pass](results/openshift/4.2.1-hi-clients.log) | ✅ [pass](results/compat/4.3.0-clients.log) |
| 4.0.5 | PyPI | ✅ [pass](results/compat/4.0.5-clients.log) | ✅ [pass](results/compat/4.1.4-clients.log) | ✅ [pass](results/openshift/4.2.1-hi-clients.log) | ✅ [pass](results/compat/4.3.0-clients.log) |
| 4.1.4 | PyPI | ✅ [pass](results/compat/4.0.5-clients.log) | ✅ [pass](results/compat/4.1.4-clients.log) | ✅ [pass](results/openshift/4.2.1-hi-clients.log) | ✅ [pass](results/compat/4.3.0-clients.log) |
| 4.2.1 | PyPI | ✅ [pass](results/compat/4.0.5-clients.log) | ✅ [pass](results/compat/4.1.4-clients.log) | ✅ [pass](results/openshift/4.2.1-hi-clients.log) | ✅ [pass](results/compat/4.3.0-clients.log) |
| 4.3.0 | PyPI | ✅ [pass](results/compat/4.0.5-clients.log) | ✅ [pass](results/compat/4.1.4-clients.log) | ✅ [pass](results/openshift/4.2.1-hi-clients.log) | ✅ [pass](results/compat/4.3.0-clients.log) |

> [!TIP]
> In a workbench, `%pip install "pyspark-client>=4.2,<4.3"` gets 4.2.0 from Red Hat's index
> with no extra configuration.

## What differs between the versions

| | 4.0.5 | 4.1.4 | 4.2.1 (default) | 4.3.0 |
|---|---|---|---|---|
| Hadoop / S3 connector | 3.4.1 | 3.4.2 | 3.5.0 | 3.5.0 |
| Bundled libraries replaced with patched releases | no | no | yes | yes |
| Scan findings, Grype (critical) | 195 (7) | 185 (2) | 92 (0) | 92 (0) |
| Needs `useDriverPodIP: "false"` for an operator-managed Spark Connect server | set, harmless | set, harmless | yes | yes |
| Needs `NetworkPolicyFeatureStep` excluded for plain `spark-submit` | set, harmless | set, harmless | yes | yes |
| Profile | [`compat/4.0/`](../compat/4.0) | [`compat/4.1/`](../compat/4.1) | [`versions.env`](../versions.env), [`image/`](../image) | [`compat/4.3/`](../compat/4.3) |

The same manifests were used for all four versions. The two settings in the table are
explained in [openshift-ai.md](openshift-ai.md#five-things-that-differ-from-upstream-documentation).

> [!WARNING]
> The 4.0 and 4.1 images here carry Spark's bundled libraries as shipped. They pass the
> hardening checks and run correctly, but they have more scan findings than 4.2.1. If you
> need one of those lines in production, extend its `jars.txt` and `jars-remove.txt` the way
> [`image/jars.txt`](../image/jars.txt) does.

## Not tested

- **Spark 3.5.** It uses Scala 2.12 and a different Spark Connect packaging.
- **The UBI 9 base for 4.0.5, 4.1.4 and 4.3.0.** Only 4.2.1 was run on both bases. The Spark
  layer is the same on both.
- **Clients older than 4.0.1 or newer than 4.3.0.**
- **A workbench Python other than 3.12.** pandas UDFs need the same Python minor version in
  the notebook and on the executors.
- **Scala or Java Spark Connect clients.**
- **OpenShift AI versions other than 3.5.4.**

## Build another version

**Procedure**

1. Build and check a profile. This stages a copy of the repo under `.compat/<line>/`, applies
   the profile and runs the normal `make` targets there.

   ```bash
   hack/compat-build.sh 4.1          # fetch, build, verify
   hack/compat-build.sh 4.1 test     # any other make target
   ```

2. Push the image.

   ```bash
   podman push <registry>/spark-hi:4.1.4-2
   ```

3. Run the cluster tests. `SPARK_VERSION_OVERRIDE` sets `sparkVersion` in the manifests.

   ```bash
   SPARK_VERSION_OVERRIDE=4.1.4 tests/cluster-test-openshift-ai.sh <registry>/spark-hi:4.1.4-2
   ```

**Verification**

- `hack/compat-build.sh` ends with `== 16 passed, 0 failed`.
- The cluster test ends with `== 9 passed, 0 failed`.

To add a version, copy a profile directory, edit its `versions.env` and jar lists, and run
`hack/compat-build.sh <line>`. The first build writes the profile's `artifacts.sha256`.

## Test your own combination

With a `SparkConnect` server running in the current project:

```bash
tests/compat-clients.sh 4.2.0 pypi:4.3.0
```

A plain version installs from the workbench's default index. `pypi:<version>` installs from
PyPI. The script prints one `PASS` or `FAIL` line per client.

---

**Next:** [bring your own image](bring-your-own-image.md) · [running on OpenShift AI](openshift-ai.md) · [walkthrough](walkthrough.md)
