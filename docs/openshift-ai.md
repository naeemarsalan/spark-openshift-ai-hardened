# Running on OpenShift AI under `restricted-v2`

> [!NOTE]
> **In short**
>
> - Both images run on OpenShift AI 3.5.4 with **no SCC granted**. Every Spark pod was admitted
>   by `restricted-v2`.
> - Never set `runAsUser`, `runAsGroup` or `fsGroup` in a manifest.
> - Five things behave differently from upstream Spark documentation. If a job fails, start at
>   [Troubleshooting](#troubleshooting).

**On this page**

- [Troubleshooting](#troubleshooting)
- [Tested configuration](#tested-configuration)
- [Results](#results)
- [What `restricted-v2` enforces](#what-restricted-v2-enforces-as-observed)
- [Five things that differ from upstream documentation](#five-things-that-differ-from-upstream-documentation)
- [Spark Connect access control](#spark-connect-access-control)
- [Driver permissions](#driver-permissions)
- [Workbench](#workbench)
- [Not covered](#not-covered)
- [How this lines up with Red Hat's examples](#how-this-lines-up-with-red-hats-examples)
- [Rehearsing without OpenShift](#rehearsing-without-openshift)

## Troubleshooting

Find your symptom, apply the fix.

| Symptom | Cause | Fix |
|---|---|---|
| Job starts, then fails with a missing file, volume or environment variable (`can't open file '/jobs/...'`) | Flat pod fields are ignored outside the `default` namespace | Move them into `driver.template` and `executor.template`. [Point 1](#1-pod-settings-must-go-in-pod-templates) |
| Pod is rejected at admission with a UID or SCC error | A manifest sets `runAsUser`, `runAsGroup` or `fsGroup` | Delete those fields. [Details](#what-restricted-v2-enforces-as-observed) |
| Spark Connect server crash-loops | Executors try to reach the driver at `0.0.0.0` (Spark 4.2 and 4.3) | Set `spark.kubernetes.executor.useDriverPodIP: "false"`. [Point 2](#2-executors-cannot-reach-an-operator-managed-spark-connect-server) |
| `pip install pyspark-client==4.2.1` fails in a workbench | Red Hat's index offers 4.0.1, 4.1.2 and 4.2.0 only | Install `pyspark-client>=4.2,<4.3`. [Point 4](#4-workbenches-install-python-packages-from-red-hats-index) |
| `spark-submit` fails with `networkpolicies ... is forbidden` | Spark 4.2 and 4.3 create a NetworkPolicy per application | Exclude `NetworkPolicyFeatureStep`. [Point 5](#5-spark-submit-creates-a-networkpolicy-per-application) |
| `getOrCreate()` **hangs** in a notebook | A NetworkPolicy is dropping the connection | Label the namespace `opendatahub.io/dashboard=true`. [Workbench](#workbench) |
| Database password shows up in the Connect server log | A custom `SPARK_CONF_DIR` dropped the logger settings | Keep the four Connect loggers at WARN. [hardening.md](hardening.md#10-spark-connect-does-not-log-client-requests) |

## Tested configuration

| | |
|---|---|
| OpenShift | 4.20.27 on AWS, 3 control-plane + 3 worker nodes, CRI-O 1.33 |
| OpenShift AI | 3.5.4 (`stable-3.5`), components: Spark Operator, workbenches, dashboard |
| Spark Operator | Red Hat build of Kubeflow Spark Operator v2.4.0 (bundles Spark 4.0.1 for `spark-submit`) |
| Images | `spark-hi:4.2.1-2` and `spark-ubi9:4.2.1-2` (Spark 4.2.1) |
| Namespace | Ordinary project, **no SCC granted** to any service account |
| Date | 2026-11-26 |

Captured cluster state: [evidence/openshift/00-cluster-2026-11-25.txt](evidence/openshift/00-cluster-2026-11-25.txt).
Other Spark versions on the same cluster: [compatibility.md](compatibility.md).

## Results

| Test | `spark-hi` | `spark-ubi9` |
|---|---|---|
| `tests/cluster-test-openshift-ai.sh` | ✅ [9 / 9](evidence/openshift/4.2.1-hi-operator.log) | ✅ [9 / 9](evidence/openshift/4.2.1-ubi9-operator.log) |
| `examples/run-cluster.sh` | ✅ [5 / 5](evidence/openshift/4.2.1-hi-examples.log) | ✅ [5 / 5](evidence/openshift/4.2.1-ubi9-examples.log) ¹ |
| `tests/security-cluster.sh` | ✅ [10 / 10](evidence/openshift/4.2.1-hi-security.log) | ✅ [10 / 10](evidence/openshift/4.2.1-ubi9-security.log) |
| `tests/cluster-test.sh` | ✅ [8 / 8](evidence/openshift/4.2.1-hi-native.log) | ✅ [8 / 8](evidence/openshift/4.2.1-ubi9-native.log) |
| `tests/compat-clients.sh` | ✅ [7 / 7](evidence/openshift/4.2.1-hi-clients.log) | ✅ [7 / 7](evidence/openshift/4.2.1-ubi9-clients.log) |
| `tests/workbench-test.sh` ² | ✅ [pass](evidence/openshift/4.2.1-hi-workbench.log) | ✅ [pass](evidence/openshift/4.2.1-ubi9-workbench.log) |

**What each test covers**

| Test | Covers |
|---|---|
| `cluster-test-openshift-ai.sh` | Scala `SparkApplication`; PySpark `SparkApplication` with S3A + JDBC; `SparkConnect` server with executors; Connect client; SCC and UID of every pod |
| `run-cluster.sh` | PySpark ETL → Scala report → Spark Connect client, on shared data |
| `security-cluster.sh` | NetworkPolicy allow and deny cases; driver RBAC; credentials absent from every spec and every pod log |
| `cluster-test.sh` | The same without the operator: `spark-submit` in cluster mode from a Job, and a Spark Connect Deployment |
| `compat-clients.sh` | Seven `pyspark-client` versions, each running a pandas UDF, S3 and JDBC through the server |
| `workbench-test.sh` | `workbench.ipynb` executed top to bottom inside a real OpenShift AI workbench pod against the `SparkConnect` server |

¹ Spark Connect server on `spark-ubi9`. The two batch jobs use the `spark-examples` image,
which is built on `spark-hi`.

² Both runs used `pyspark-client` 4.2.0 from Red Hat's index, the workbench default. Other
client versions are covered by `compat-clients.sh`.

**The Docker Hub image, unmodified, on the same cluster**

| Test | `docker.io/apache/spark:4.2.1` |
|---|---|
| `tests/cluster-test-openshift-ai.sh` | ❌ [5 / 9](evidence/openshift/dockerhub-4.2.1-operator.log) |

- Every pod was admitted by `restricted-v2`, and the Spark Connect server started.
- Both `SparkApplication` jobs failed. The first error is
  `AccessDeniedException: /opt/spark/work-dir/...`: the working directory is not writable by
  the UID OpenShift assigns.
- The Connect client checks failed because the image has Python 3.10, not 3.12.

Why, and what to use instead: [bring-your-own-image.md](bring-your-own-image.md#three-starting-points).

> [!NOTE]
> The first ever run of the operator test (with Spark 4.3.0) had one failure, kept as
> [evidence](evidence/openshift/first-run-4.3.0-operator-1-failure.log). It was a real
> difference between OpenShift AI and the upstream operator:
> [point 1](#1-pod-settings-must-go-in-pod-templates).

## What `restricted-v2` enforces, as observed

**Every Spark pod, with no SCC granted:**

```
NAME                   SCC            UID         nonRoot  privEsc  caps.drop  seccomp
spark-connect-server   restricted-v2  1000770000  True     False    ALL        RuntimeDefault
spark-connect-exec-3   restricted-v2  1000770000  True     False    ALL        RuntimeDefault
example-etl-driver     restricted-v2  1000770000  True     False    ALL        RuntimeDefault
...
```

**Inside a running driver:**

```
$ id
uid=1000770000(1000770000) gid=0(root) groups=0(root),1000770000
$ touch /opt/spark/jars/x
touch: cannot touch '/opt/spark/jars/x': Permission denied
$ touch /opt/spark/work-dir/.w && echo work-dir writable
work-dir writable
$ grep -E 'Cap(Eff|Prm|Bnd)|NoNewPrivs|Seccomp' /proc/1/status
CapPrm: 0000000000000000
CapEff: 0000000000000000
CapBnd: 0000000000000000
NoNewPrivs: 1
Seccomp: 2
```

**Why the UID is not 1001**

The UID comes from the namespace's range (`openshift.io/sa.scc.uid-range: 1000770000/10000`),
not from the image's `USER 1001`. The image has to work as a UID it has never heard of, in
group 0. So:

- Everything the process writes is group-0 writable (`work-dir`) or under `/tmp`.
- Nothing depends on the user name or on an `/etc/passwd` entry the image wrote.

> [!IMPORTANT]
> **No manifest may set `runAsUser`, `runAsGroup` or `fsGroup`.** A fixed value outside the
> namespace's range is rejected at admission. Upstream Spark examples set `runAsUser: 185`.
> Remove it.

**What a manifest should set**

```yaml
securityContext:
  runAsNonRoot: true
  allowPrivilegeEscalation: false
  capabilities: { drop: ["ALL"] }
  seccompProfile: { type: RuntimeDefault }
```

All of it is also the `restricted-v2` default. Stating it makes the pod pass the upstream
*restricted* Pod Security Standard too.

## Five things that differ from upstream documentation

### 1. Pod settings must go in pod templates

**Symptom:** the job starts, then fails because its Secret or volume is not there
(`can't open file '/jobs/s3_jdbc.py'`).

**Cause:** upstream `SparkApplication` examples put pod settings in flat fields:

```yaml
spec:
  volumes: [...]
  driver:
    envFrom: [...]
    volumeMounts: [...]
```

Those fields are applied by the operator's pod-mutating webhook. In OpenShift AI 3.5.4 the
operator watches every namespace, but its webhooks are registered **only for the `default`
namespace**:

```
mutate-pod.sparkoperator.k8s.io  namespaceSelector={"matchExpressions":[{"key":"kubernetes.io/metadata.name","operator":"In","values":["default"]}]}
```

In any other namespace the flat fields are silently ignored.

**Fix:** put them in `driver.template` and `executor.template`. Templates are handed to
`spark-submit` and do not involve the webhook.

```yaml
spec:
  driver:
    serviceAccount: spark-operator-spark
    template:
      spec:
        containers:
          - name: spark-kubernetes-driver
            envFrom:
              - secretRef: { name: spark-datasources }
            securityContext:
              capabilities: { drop: ["ALL"] }
              runAsNonRoot: true
              allowPrivilegeEscalation: false
              seccompProfile: { type: RuntimeDefault }
```

Every manifest in [`deploy/openshift-ai/`](../deploy/openshift-ai) and
[`examples/openshift-ai/`](../examples/openshift-ai) does this. The upstream operator on a
plain Kubernetes cluster accepts both forms, so the templates are portable.

### 2. Executors cannot reach an operator-managed Spark Connect server

**Symptom:** the Spark Connect server crash-loops.

**Applies to:** Spark 4.2 and 4.3. The setting is harmless on 4.0 and 4.1, which were tested
with it in place.

**Cause:** the operator starts the server with `spark.driver.bindAddress=0.0.0.0`. Executors
then try to reach the driver at `0.0.0.0`.

**Fix:** add this to the `SparkConnect` resource.

```yaml
sparkConf:
  spark.kubernetes.executor.useDriverPodIP: "false"
```

### 3. The operator bypasses the image entrypoint for Spark Connect

**What happens:** the operator runs
`bash -c 'exec ${SPARK_HOME}/sbin/start-connect-server.sh ...'` directly.

**What that requires of the image:**

- It must keep `bash` and `sbin/`.
- Spark's log and PID directories must be writable without the entrypoint's help. The image
  sets `SPARK_LOG_DIR` and `SPARK_PID_DIR` to `/tmp` for this.

`tests/operator-compat.sh` reproduces the launch locally.

### 4. Workbenches install Python packages from Red Hat's index

**Symptom:**

```
ERROR: Could not find a version that satisfies the requirement pyspark-client==4.2.1 (from versions: 4.0.1, 4.1.2, 4.2.0)
```

**Cause:** a workbench's `pip` points at Red Hat's package index, not PyPI. In OpenShift AI
3.5 that index offers `pyspark-client` 4.0.1, 4.1.2 and 4.2.0.

**Fix:** install a range. The notebook uses `pyspark-client>=4.2,<4.3`, which resolves to
4.2.0 on Red Hat's index.

Seven client versions were tested against each server version, and the whole notebook was run
from a real workbench (S3 read, pandas UDF on the executors, Spark SQL, JDBC read):

| Client | Source | Result against the 4.2.1 server |
|---|---|---|
| `pyspark-client` 4.0.1, 4.1.2, 4.2.0 | Red Hat's index (workbench default) | ✅ [pass](evidence/openshift/4.2.1-hi-clients.log) |
| `pyspark-client` 4.0.5, 4.1.4, 4.2.1, 4.3.0 | `--index-url https://pypi.org/simple` | ✅ [pass](evidence/openshift/4.2.1-hi-clients.log) |
| Notebook in a workbench, client 4.2.0 | Red Hat's index | ✅ [pass](evidence/openshift/4.2.1-hi-workbench.log) |

Full client and server matrix: [compatibility.md](compatibility.md#notebook-client-against-server).

> [!NOTE]
> OpenShift AI 3.5 is built around Spark 4.0.1 (the operator) and up to 4.2.0 (the index).
> That is why this repo defaults to Spark 4.2.1. To build another version, see
> [compatibility.md](compatibility.md#build-another-version).

### 5. `spark-submit` creates a NetworkPolicy per application

**Applies only** to Spark 4.2 and 4.3, and only when you run `spark-submit` yourself, without
the operator
([`deploy/30-spark-submit-job.yaml`](../deploy/30-spark-submit-job.yaml)). The operator path is
not affected, because the operator submits with its own Spark 4.0.1.

**Symptom:**

```
networkpolicies.networking.k8s.io "spark-pi-scala-...-policy" is forbidden:
User "system:serviceaccount:spark-native:spark" cannot patch resource "networkpolicies"
```

**Cause:** Spark 4.2 and 4.3 have a step that creates a NetworkPolicy for each application. The usual
driver Role (pods, services, config maps) does not allow it.

**Fix:** exclude the step. NetworkPolicies stay with the namespace administrator.

```
--conf spark.kubernetes.driver.pod.excludedFeatureSteps=org.apache.spark.deploy.k8s.features.NetworkPolicyFeatureStep
```

Do not grant the permission instead. It would let any job rewrite the other policies in its
namespace.

## Spark Connect access control

> [!WARNING]
> Spark Connect has no authentication and no TLS unless you add them.

| Layer | What to do |
|---|---|
| **NetworkPolicy** | [`20-sparkconnect.yaml`](../deploy/openshift-ai/20-sparkconnect.yaml) limits port 15002 to pods in the same namespace and to workbench pods. Executor-to-driver traffic needs its own rule, which the file includes. |
| **Token** | Set `SPARK_CONNECT_AUTHENTICATE_TOKEN` from a Secret for anything shared. |
| **TLS** | Not built in. Terminate it in front with a Route, a mesh sidecar or a proxy. `tests/security-local.sh` shows the proxy pattern with the gRPC port bound to loopback. |

A workbench pod is one with the label `opendatahub.io/workbenches=true`, in a namespace
labelled `opendatahub.io/dashboard=true`. The workbench controller sets the pod label itself.
This is confirmed on the cluster.

**Tested on the cluster:**

```
PASS same namespace can reach Spark Connect
PASS workbench pod in a data-science-project namespace can reach it
PASS non-workbench pod in that namespace is blocked
PASS pod in an unrelated namespace is blocked
```

## Driver permissions

The driver's service account (`spark-operator-spark`,
[`00-rbac.yaml`](../deploy/openshift-ai/00-rbac.yaml)) can manage executor pods, services and
config maps in its own namespace, and nothing else:

```
PASS can create executor pods in its own namespace
PASS cannot read Secrets
PASS cannot create pods in another namespace
PASS no cluster-level permissions
```

Credentials reach the pods as environment variables from a Secret reference. The security test
checks that no value from that Secret appears in any pod spec, ConfigMap, `SparkApplication`,
`SparkConnect` or Spark pod log.

## Workbench

**Prerequisites**

- A `SparkConnect` server is running ([`20-sparkconnect.yaml`](../deploy/openshift-ai/20-sparkconnect.yaml)).
- The workbench's namespace has the label `opendatahub.io/dashboard=true`.

**Procedure**

1. Create a workbench with a Python 3.12 Jupyter image in a data science project.
2. Open [`examples/03-spark-connect/workbench.ipynb`](../examples/03-spark-connect/workbench.ipynb).
3. For the database cell, attach a Secret with `JDBC_URL`, `JDBC_USER` and `JDBC_PASSWORD` to
   the workbench as environment variables.
4. Run the cells from the top.

> [!IMPORTANT]
> Do not type credentials into a notebook.

**Verification**

`spark.version` prints `4.2.1`. It comes from the server image, not the client.

**If it hangs**

If `getOrCreate()` **hangs** rather than failing, a NetworkPolicy is dropping the connection.
Check the namespace label `opendatahub.io/dashboard=true`.

Short copy-paste version: [`deploy/openshift-ai/workbench-notebook.md`](../deploy/openshift-ai/workbench-notebook.md).

## Not covered

- The Spark Operator's support status in OpenShift AI 3.5 (generally available or Technology
  Preview) was not confirmed from Red Hat's documentation.
- A disconnected cluster, a cluster-wide proxy, and FIPS mode.
- Architectures other than x86_64.
- Spark Connect behind a Route with TLS on the cluster. The token and TLS pattern is tested
  locally with a proxy, not through an OpenShift Route.

## How this lines up with Red Hat's examples

Compared with the examples in Red Hat's operator source,
[red-hat-data-services/spark-operator](https://github.com/red-hat-data-services/spark-operator)
(`examples/openshift/`):

| Red Hat's example | This repo |
|---|---|
| Directories owned by group 0 and group-writable (`chmod -R g=u /opt/spark`) | Stricter: `/opt/spark` is read-only; only `work-dir` and `/tmp` are writable |
| No fixed UID; the example image ends as `USER root` and relies on the SCC | `USER 1001:0`, and still runs as any UID |
| Remove `runAsUser` / `runAsGroup` from `SparkApplication` | Done in every manifest |
| Driver RBAC named `spark-operator-spark` / `spark-role` per namespace | Same names, [`00-rbac.yaml`](../deploy/openshift-ai/00-rbac.yaml) |
| `SparkConnect` resource, Service and NetworkPolicy for workbenches | [`20-sparkconnect.yaml`](../deploy/openshift-ai/20-sparkconnect.yaml) |
| Workbench: `pip install pyspark==<server version>` | Thin `pyspark-client`, see [point 4](#4-workbenches-install-python-packages-from-red-hats-index) |
| Example images on Spark 4.0.1 | Spark 4.2.1 built from pinned artifacts; 4.0.5, 4.1.4 and 4.3.0 also tested |

## Rehearsing without OpenShift

The cluster scripts also run on a local `kind` cluster with the upstream Kubeflow Spark
Operator. That is how the manifests were developed. The scripts detect plain Kubernetes and
check the *restricted* Pod Security Standard instead of the SCC.

<details>
<summary>kind setup commands</summary>

```bash
kind create cluster --name spark --config hack/kind-config.yaml --kubeconfig .kind/kubeconfig
export KUBECONFIG=$PWD/.kind/kubeconfig
kubectl create namespace spark-demo
kubectl label namespace spark-demo pod-security.kubernetes.io/enforce=restricted
kubectl config set-context --current --namespace spark-demo
helm install spark-operator spark-operator/spark-operator -n spark-operator --create-namespace \
     --set 'spark.jobNamespaces={spark-demo}'
podman save -m -o /tmp/i.tar <images> && kind load image-archive /tmp/i.tar --name spark

tests/cluster-test-openshift-ai.sh <image>
```

</details>

> [!WARNING]
> kind proves the manifests and the operator integration. It does not prove `restricted-v2`.
> Points 1 and 4 above only showed up on real OpenShift AI.

---

**Next:** [compatibility](compatibility.md) · [walkthrough](walkthrough.md) · [evidence](evidence/)
