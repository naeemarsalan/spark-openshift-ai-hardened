# Using Spark with OpenShift AI

> [!NOTE]
> **In short**
>
> - OpenShift AI gives you the **Spark Operator** and **workbenches**. It does not give you a
>   Spark image for your jobs. **You bring the image.**
> - There are three ways to run Spark. Pick one from the table below.
> - Run `hack/preflight.sh` first. It tells you in under a minute what is missing.

**On this page**

- [Three ways to run Spark](#three-ways-to-run-spark)
- [What you get and what you bring](#what-you-get-and-what-you-bring)
- [Who supports what](#who-supports-what)
- [Check before you start](#check-before-you-start)
- [The path from zero to a running job](#the-path-from-zero-to-a-running-job)

## Three ways to run Spark

| | Batch job through the operator | Interactive from a workbench | Plain `spark-submit` |
|---|---|---|---|
| You create | A `SparkApplication` resource | A `SparkConnect` resource, then a notebook | A Kubernetes `Job` that runs `spark-submit` |
| Good for | Scheduled and pipeline jobs | Exploration, notebooks, ad hoc SQL | Clusters or teams that do not use the operator |
| Who starts the driver | The Spark Operator | The Spark Operator (a long-running server) | Your Job |
| Client needs a JVM | Not applicable | No. The notebook uses the thin `pyspark-client` | Not applicable |
| Example manifest | [`10-sparkapplication-scala.yaml`](../deploy/openshift-ai/10-sparkapplication-scala.yaml), [`11-sparkapplication-python.yaml`](../deploy/openshift-ai/11-sparkapplication-python.yaml) | [`20-sparkconnect.yaml`](../deploy/openshift-ai/20-sparkconnect.yaml), [`workbench.ipynb`](../examples/03-spark-connect/workbench.ipynb) | [`30-spark-submit-job.yaml`](../deploy/30-spark-submit-job.yaml) |
| Tested here | Yes | Yes | Yes |

All three use the **same image**. Driver, executors and the Spark Connect server are one image
started with different arguments.

## What you get and what you bring

**OpenShift AI gives you** (OpenShift AI 3.5.4):

| Item | Detail |
|---|---|
| Spark Operator component | Red Hat build of the Kubeflow Spark Operator v2.4.0. Off by default; a cluster administrator sets it to `Managed`. |
| `SparkApplication` and `SparkConnect` resources | Installed with the operator. |
| The operator's own Spark | 4.0.1. The operator uses it only to *submit* your job. Your job runs on the Spark in *your* image. |
| Workbenches | Jupyter images with Python 3.12. |
| A Python package index | Offers `pyspark-client` 4.0.1, 4.1.2 and 4.2.0 to workbenches. |
| The `restricted-v2` SCC | The default security policy every pod runs under. |

**You bring:**

| Item | Where this repo helps |
|---|---|
| **A Spark image** | [bring-your-own-image.md](bring-your-own-image.md) and the two Containerfiles |
| A registry the cluster can pull from, and a pull secret if it is private | [walkthrough.md](walkthrough.md#8-prepare-the-cluster) |
| A project (namespace) where you are administrator | [walkthrough.md](walkthrough.md#8-prepare-the-cluster) |
| A service account and Role for the driver | [`00-rbac.yaml`](../deploy/openshift-ai/00-rbac.yaml) |
| Your data: S3-compatible storage, databases | The tests start throwaway ones; yours replace them |
| Credentials, as Kubernetes Secrets | [`examples/README.md`](../examples/README.md) lists the keys the examples read |
| Your job code | [`examples/`](../examples) |
| A NetworkPolicy for Spark Connect, if you use it | [`20-sparkconnect.yaml`](../deploy/openshift-ai/20-sparkconnect.yaml) |

**You do not need:**

- Any extra SCC. No `anyuid`, no `privileged`, no `oc adm policy add-scc-to-user`.
- A fixed user ID in your manifests. Setting one makes the pod fail.
- Internet access from the cluster or from the image build.

## Who supports what

| Layer | Who owns it |
|---|---|
| OpenShift, OpenShift AI, the Spark Operator component | Red Hat |
| The base image under your Spark image (UBI or Red Hat Hardened Images) | Red Hat publishes and patches it |
| Apache Spark and its bundled libraries | The Apache Spark community |
| **The Spark image you build** | **You.** You rebuild it, rescan it and decide when to patch |
| Your jobs, data and credentials | You |

> [!IMPORTANT]
> This repo is an example, not a Red Hat product. For the Spark versions and operator features
> Red Hat supports, check Red Hat's supported-configurations page for your OpenShift AI
> version or ask your account team. Versions tested here: [compatibility.md](compatibility.md).

## Check before you start

**Procedure**

1. Log in and select your project.

   ```bash
   oc login <api-url>
   oc project <your-project>
   ```

2. Check the cluster and the project.

   ```bash
   hack/preflight.sh
   ```

3. Once you have an image, check that too.

   ```bash
   hack/preflight.sh <registry>/spark-hi:<tag>
   ```

**Verification**

Output for the hardened image on the test cluster
([full log](results/openshift/preflight-spark-hi-4.2.1.log)):

```
== cluster
  PASS logged in as system:admin to https://api.<cluster>:6443
  PASS OpenShift 4.20.27
  PASS OpenShift AI 3.5.4
== Spark Operator
  PASS CRD sparkapplications.sparkoperator.k8s.io
  PASS CRD sparkconnects.sparkoperator.k8s.io
  WARN the operator's pod webhook covers only ["default"], not this project
       expected on OpenShift AI: put volumes, env and securityContext in driver.template / executor.template (docs/openshift-ai.md)
== project: spark-demo
  PASS UID range 1000770000/10000 (pods run as a UID from this range, not the image's USER)
  PASS labelled opendatahub.io/dashboard=true (workbenches can reach Spark Connect)
  PASS no SCC granted in this project (restricted-v2 applies)
  PASS you can create sparkapplications.sparkoperator.k8s.io
  PASS you can create sparkconnects.sparkoperator.k8s.io
  PASS you can create rolebindings
  PASS you can create secrets
  PASS you can create networkpolicies
  PASS pull secret spark-pull exists
== image: <registry>/spark-hi:4.2.1-2
  PASS cluster can pull the image
  PASS admitted by restricted-v2
  PASS ran as UID:GID 1000770000:0 (arbitrary non-root UID, group 0)
  PASS Spark's jars are read-only to the runtime user
  PASS work-dir is writable
  PASS Spark 4.2.1; openjdk version "21.0.13.1" 2026-11-17; Python 3.12.16
== 20 passed, 1 warnings, 0 failed
```

The one warning is expected on OpenShift AI and is explained in
[openshift-ai.md](openshift-ai.md#1-pod-settings-must-go-in-pod-templates). The same check on the unmodified Docker Hub image ends with
`1 failed`: [full log](results/openshift/preflight-dockerhub-4.2.1.log).

Every `FAIL` line comes with the command that fixes it.

## The path from zero to a running job

| Step | Do this | Page |
|---|---|---|
| 1 | Check the cluster | [Check before you start](#check-before-you-start) |
| 2 | Choose a base for your image | [bring-your-own-image.md](bring-your-own-image.md#three-starting-points) |
| 3 | Choose a Spark version | [compatibility.md](compatibility.md) |
| 4 | Build, check and scan the image | [walkthrough.md](walkthrough.md) steps 1 to 7 |
| 5 | Run the tests on your cluster | [walkthrough.md](walkthrough.md#9-test-on-the-cluster) |
| 6 | Run your own job or notebook | [walkthrough.md](walkthrough.md#11-write-your-own-jobs) |
| Stuck | Look up the error | [openshift-ai.md](openshift-ai.md#troubleshooting) |

---

**Next:** [bring your own image](bring-your-own-image.md) · [compatibility](compatibility.md) · [walkthrough](walkthrough.md)
