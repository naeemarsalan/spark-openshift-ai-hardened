# Running on OpenShift AI under `restricted-v2`

What was tested on a real cluster, what `restricted-v2` requires of the image and the
manifests, and the five things that behave differently from upstream Spark documentation.

## Tested configuration

| | |
|---|---|
| OpenShift | 4.20.27 on AWS, 3 control-plane + 3 worker nodes, CRI-O 1.33 |
| OpenShift AI | 3.5.4 (`stable-3.5`), components: Spark Operator, workbenches, dashboard |
| Spark Operator | Red Hat build of Kubeflow Spark Operator v2.4.0 (bundles Spark 4.0.1 for `spark-submit`) |
| Images | `spark-hi:4.3.0-3` and `spark-ubi9:4.3.0-3` (Spark 4.3.0) |
| Namespace | Ordinary project, **no SCC granted** to any service account |
| Date | 2026-11-25 |

Captured cluster state: [evidence/openshift/00-cluster.txt](evidence/openshift/00-cluster.txt).

## Results

| Test | What it covers | `spark-hi` | `spark-ubi9` |
|---|---|---|---|
| `tests/cluster-test-openshift-ai.sh` | Scala `SparkApplication`; PySpark `SparkApplication` with S3A + JDBC; `SparkConnect` server with executors; Connect client; SCC and UID of every pod | [9 / 9](evidence/openshift/02-operator-spark-hi.log) | [9 / 9](evidence/openshift/05-operator-spark-ubi9.log) |
| `examples/run-cluster.sh` | PySpark ETL → Scala report → Spark Connect client, on shared data | [5 / 5](evidence/openshift/03-examples-spark-hi.log) | [5 / 5](evidence/openshift/07-examples-spark-ubi9-server.log) ¹ |
| `tests/security-cluster.sh` | NetworkPolicy allow and deny cases; driver RBAC; credentials absent from every spec and every pod log | [10 / 10](evidence/openshift/04-security-spark-hi.log) | [10 / 10](evidence/openshift/06-security-spark-ubi9.log) |
| `tests/cluster-test.sh` | The same without the operator: `spark-submit` in cluster mode from a Job, and a Spark Connect Deployment | [8 / 8](evidence/openshift/11-spark-submit-no-operator-spark-hi.log) | not run |
| Workbench notebook | `workbench.ipynb` executed inside a real OpenShift AI workbench against the `SparkConnect` server | — | [pass](evidence/openshift/10-workbench-executed.ipynb) ² |

¹ Spark Connect server on `spark-ubi9`; the two batch jobs use the `spark-examples` image,
which is built on `spark-hi`.
² Run against the `spark-ubi9` server, once with client 4.2.0 from Red Hat's index and once
with 4.3.0 from PyPI. The server image differs from `spark-hi` only in its base.

The first run of the operator test had one failure, kept as
[evidence](evidence/openshift/01-operator-spark-hi-first-run-1-failure.log). It was a real
difference between OpenShift AI and the upstream operator, described under
[pod settings](#1-pod-settings-must-go-in-pod-templates) below.

## What `restricted-v2` enforces, as observed

Every Spark pod, with no SCC granted:

```
NAME                   SCC            UID         nonRoot  privEsc  caps.drop  seccomp
spark-connect-server   restricted-v2  1000770000  True     False    ALL        RuntimeDefault
spark-connect-exec-3   restricted-v2  1000770000  True     False    ALL        RuntimeDefault
example-etl-driver     restricted-v2  1000770000  True     False    ALL        RuntimeDefault
...
```

Inside a running driver:

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

The UID comes from the namespace's range (`openshift.io/sa.scc.uid-range: 1000770000/10000`),
not from the image's `USER 1001`. The image has to work as a UID it has never heard of, in
group 0. That is why:

- everything the process writes is group-0 writable (`work-dir`) or under `/tmp`;
- nothing depends on the user name or on an `/etc/passwd` entry the image wrote;
- **no manifest sets `runAsUser`, `runAsGroup` or `fsGroup`.** A fixed value outside the
  namespace's range is rejected at admission. Upstream Spark examples set `runAsUser: 185`;
  remove it.

What a manifest should set (all of it is also the `restricted-v2` default, but stating it
makes the pod pass the upstream *restricted* Pod Security Standard too):

```yaml
securityContext:
  runAsNonRoot: true
  allowPrivilegeEscalation: false
  capabilities: { drop: ["ALL"] }
  seccompProfile: { type: RuntimeDefault }
```

## Five things that differ from upstream documentation

### 1. Pod settings must go in pod templates

Upstream `SparkApplication` examples put pod settings in flat fields:

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

In any other namespace the flat fields are silently ignored. The job starts, then fails
because its Secret or volume is not there (`can't open file '/jobs/s3_jdbc.py'`).

Put them in `driver.template` and `executor.template` instead. Templates are handed to
`spark-submit` and do not involve the webhook:

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

### 2. Spark 4.3 with an operator-managed Spark Connect server

The operator starts the server with `spark.driver.bindAddress=0.0.0.0`. Spark 4.3 executors
then try to reach the driver at `0.0.0.0` and the server crash-loops. Add this to the
`SparkConnect` resource:

```yaml
sparkConf:
  spark.kubernetes.executor.useDriverPodIP: "false"
```

### 3. The operator bypasses the image entrypoint for Spark Connect

It runs `bash -c 'exec ${SPARK_HOME}/sbin/start-connect-server.sh ...'` directly. So the image
must keep `bash` and `sbin/`, and Spark's log and PID directories must be writable without the
entrypoint's help. The image sets `SPARK_LOG_DIR` and `SPARK_PID_DIR` to `/tmp` for this.
`tests/operator-compat.sh` reproduces the launch locally.

### 4. Workbenches install Python packages from Red Hat's index

A workbench's `pip` points at Red Hat's package index, not PyPI. In OpenShift AI 3.5 that index
offers `pyspark-client` 4.0.1, 4.1.2 and 4.2.0. `pip install pyspark-client==4.3.0` fails:

```
ERROR: Could not find a version that satisfies the requirement pyspark-client==4.3.0 (from versions: 4.0.1, 4.1.2, 4.2.0)
```

Both of these were tested from a real workbench against the 4.3.0 server, running the whole
notebook (S3 read, pandas UDF on the executors, Spark SQL, JDBC read):

| Client | Source | Result |
|---|---|---|
| `pyspark-client` 4.2.0 | Red Hat's index (workbench default) | [pass](evidence/openshift/09-workbench-client-4.2.0-redhat-index.log) |
| `pyspark-client` 4.3.0 | `--index-url https://pypi.org/simple` | [pass](evidence/openshift/08-workbench-client-4.3.0-pypi.log) |

The notebook installs `pyspark-client>=4.2,<=4.3.0`, which resolves to whichever the configured
index has. Note that OpenShift AI 3.5 itself is built around Spark 4.0.1 (the operator) and up
to 4.2.0 (the index); Spark 4.3.0 works but is ahead of what Red Hat ships. If staying inside
Red Hat's tested versions matters more than having the newest Spark, set `SPARK_VERSION` in
`versions.env` to match and rebuild.

### 5. Spark 4.3 `spark-submit` creates a NetworkPolicy per application

This only applies when you run `spark-submit` yourself, without the operator
([`deploy/30-spark-submit-job.yaml`](../deploy/30-spark-submit-job.yaml)). The operator path is
not affected, because the operator submits with its own Spark 4.0.1.

Spark 4.3 adds a step that creates a NetworkPolicy for each application. With the usual driver
Role (pods, services, config maps) the submission fails:

```
networkpolicies.networking.k8s.io "spark-pi-scala-...-policy" is forbidden:
User "system:serviceaccount:spark-native:spark" cannot patch resource "networkpolicies"
```

Granting that permission would let any job rewrite the other policies in its namespace. The
manifest excludes the step instead, and NetworkPolicies stay with the namespace administrator:

```
--conf spark.kubernetes.driver.pod.excludedFeatureSteps=org.apache.spark.deploy.k8s.features.NetworkPolicyFeatureStep
```

## Spark Connect access control

Spark Connect has no authentication and no TLS unless you add them.

- **NetworkPolicy** ([`20-sparkconnect.yaml`](../deploy/openshift-ai/20-sparkconnect.yaml))
  limits port 15002 to pods in the same namespace and to workbench pods (label
  `opendatahub.io/workbenches=true`, in a namespace labelled `opendatahub.io/dashboard=true`).
  The workbench controller sets the pod label itself; this is confirmed on the cluster.
  Executor-to-driver traffic needs its own rule, which the file includes.
- **Token.** Set `SPARK_CONNECT_AUTHENTICATE_TOKEN` from a Secret for anything shared.
- **TLS.** Not built in; terminate it in front with a Route, a mesh sidecar or a proxy.
  `tests/security-local.sh` shows the proxy pattern with the gRPC port bound to loopback.

Tested cases, all on the cluster:

```
PASS same namespace can reach Spark Connect
PASS workbench pod in a data-science-project namespace can reach it
PASS non-workbench pod in that namespace is blocked
PASS pod in an unrelated namespace is blocked
```

## Driver permissions

The driver's service account (`spark-operator-spark`, [`00-rbac.yaml`](../deploy/openshift-ai/00-rbac.yaml))
can manage executor pods, services and config maps in its own namespace, and nothing else:

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

1. Create a workbench with a Python 3.12 Jupyter image in a data science project.
2. Open [`examples/03-spark-connect/workbench.ipynb`](../examples/03-spark-connect/workbench.ipynb).
3. For the database cell, attach a Secret with `JDBC_URL`, `JDBC_USER` and `JDBC_PASSWORD` to
   the workbench as environment variables. Do not type credentials into a notebook.

If `getOrCreate()` **hangs** rather than failing, a NetworkPolicy is dropping the connection:
check the namespace label `opendatahub.io/dashboard=true`.

## Not covered

- The Spark Operator's support status in OpenShift AI 3.5 (generally available or Technology
  Preview) was not confirmed from Red Hat's documentation.
- A disconnected cluster, a cluster-wide proxy, and FIPS mode.
- x86_64 only.
- Spark Connect behind a Route with TLS on the cluster (the token and TLS pattern is tested
  locally with a proxy, not through an OpenShift Route).

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
| Example images on Spark 4.0.1 | Spark 4.3.0 built from pinned artifacts |

## Rehearsing without OpenShift

The cluster scripts also run on a local `kind` cluster with the upstream Kubeflow Spark
Operator, which is how the manifests were developed. The scripts detect plain Kubernetes and
check the *restricted* Pod Security Standard instead of the SCC.

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

kind proves the manifests and the operator integration. It does not prove `restricted-v2`:
points 1 and 4 above only showed up on real OpenShift AI.
