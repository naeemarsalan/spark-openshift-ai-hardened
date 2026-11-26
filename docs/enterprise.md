# Mirrors, proxies and private CAs

> [!NOTE]
> **In short**
>
> - **Your own Artifactory or Nexus:** three variables point `make fetch` at it. Credentials
>   go in `~/.netrc`.
> - **Your own registry and RPM mirror:** two variables for the base images, one mounted
>   `.repo` file for the packages.
> - **Proxy:** the standard `https_proxy` and `no_proxy` variables. Nothing is saved in the
>   image.
> - **Your own CA in Spark pods:** an init container adds it at start-up, with no image
>   rebuild. Or bake it in with a three-line Containerfile.
> - **Workbenches** already receive the cluster's CA bundle from OpenShift AI.

**On this page**

- [What goes where](#what-goes-where)
- [Download from your own Artifactory or Nexus](#download-from-your-own-artifactory-or-nexus)
- [Base images and RPMs from your own mirror](#base-images-and-rpms-from-your-own-mirror)
- [Build behind a proxy](#build-behind-a-proxy)
- [Pull the image from a private registry](#pull-the-image-from-a-private-registry)
- [Trust your own CA in Spark pods](#trust-your-own-ca-in-spark-pods)
- [Proxy settings for Spark pods](#proxy-settings-for-spark-pods)
- [Workbenches](#workbenches)
- [Not tested](#not-tested)

## What goes where

| You have | Set this | Where |
|---|---|---|
| A Maven, PyPI or generic mirror | `MAVEN_REPO`, `PIP_INDEX_URL`, `SPARK_MIRROR`, `SPARK_KEYS_URL` | Build machine, for `make fetch` |
| A password on that mirror | `~/.netrc` | Build machine |
| A mirror with a private CA | `CURL_CA_BUNDLE`, `PIP_CERT` | Build machine |
| A mirror of the base images | `HI_BUILDER_IMAGE`, `UBI9_BASE_IMAGE` | [`versions.env`](../versions.env) |
| An RPM mirror or Satellite | `BUILD_ARGS` with a mounted `.repo` file, `DNF_REPO_ARGS` | `make build` |
| A proxy | `https_proxy`, `http_proxy`, `no_proxy` | Build machine |
| A private registry for the finished image | `REGISTRY`, a pull secret | `versions.env`, the project |
| A registry with a private CA | `additionalTrustedCA` | Cluster (administrator) |
| S3 or a database with a private CA | The `trust` init container | Your Spark manifests |

## Download from your own Artifactory or Nexus

`make fetch` is the only step that downloads software. Point it at your mirror with
environment variables. Nothing in the repo changes.

**Prerequisites**

Three remote (proxy) repositories on your mirror:

| Variable | Replaces | Repository type |
|---|---|---|
| `SPARK_MIRROR` | `https://dlcdn.apache.org/spark` | Generic remote of `https://dlcdn.apache.org` ¹ |
| `SPARK_KEYS_URL` | `https://downloads.apache.org/spark/KEYS` | Generic remote of `https://downloads.apache.org` |
| `MAVEN_REPO` | `https://repo1.maven.org/maven2` | Maven remote of Maven Central |
| `PIP_INDEX_URL` | `https://pypi.org/simple` | PyPI remote. The URL ends in `/simple` |

¹ `dlcdn.apache.org` carries current releases only. For an older Spark version use a remote
of `https://archive.apache.org/dist`.

**Procedure**

1. Set the mirror URLs.

   ```bash
   export SPARK_MIRROR=https://artifactory.example.com/artifactory/apache-remote/spark
   export SPARK_KEYS_URL=https://artifactory.example.com/artifactory/apache-downloads-remote/spark/KEYS
   export MAVEN_REPO=https://artifactory.example.com/artifactory/maven-remote
   export PIP_INDEX_URL=https://artifactory.example.com/artifactory/api/pypi/pypi-remote/simple
   ```

2. If the mirror needs a login, put it in `~/.netrc` and tell `curl` to read that file.
   `pip` reads it without being told.

   ```bash
   cat >> ~/.netrc <<'EOF'
   machine artifactory.example.com login <user> password <token>
   EOF
   chmod 600 ~/.netrc
   echo netrc-optional >> ~/.curlrc
   ```

3. If the mirror's certificate is signed by your own CA, name the CA file.

   ```bash
   export CURL_CA_BUNDLE=/path/to/corp-ca.pem
   export PIP_CERT=/path/to/corp-ca.pem
   ```

4. Fetch.

   ```bash
   make fetch
   ```

> [!IMPORTANT]
> Do not put the password in a URL or in `versions.env`. URLs end up in logs and shell
> history.

**What is still checked**

The mirror does not weaken the checks. `make fetch` verifies Spark against its SHA-512 and
GPG signature, each jar against its Maven checksum, and every file against
[`artifacts.sha256`](../artifacts.sha256) in git. A mirror that serves a different file stops
the fetch.

**Verification**

`tests/mirror-local.sh` runs the whole fetch against a throwaway HTTPS mirror with a private
CA and a password ([log](results/local/mirror-local.log)):

```
== mirror: https://localhost:<port> (private CA, basic auth)
  PASS without the CA, curl refuses the certificate
  PASS without credentials, the mirror answers 401
  PASS fetch from the mirror: 57 curl downloads, 12 wheels
  PASS Spark GPG signature verified
  PASS every file matches artifacts.sha256
  PASS password not in the log or the artifacts
== 6 passed, 0 failed
```

## Base images and RPMs from your own mirror

The image build downloads no software, but it does two things on the network: it pulls the
base image, and the package manager installs RPMs.

### Base images

Copy the two base images to your registry, then name them. Pin by digest.

```bash
make build HI_BUILDER_IMAGE=registry.example.com/mirror/hi/openjdk@sha256:<digest>
make build FLAVOR=ubi9 UBI9_BASE_IMAGE=registry.example.com/mirror/ubi9/ubi-minimal@sha256:<digest>
```

To make it permanent, edit the same two variables in [`versions.env`](../versions.env).

If the registry's certificate is signed by your own CA, give it to `podman`:

```bash
sudo mkdir -p /etc/containers/certs.d/registry.example.com
sudo cp corp-ca.pem /etc/containers/certs.d/registry.example.com/ca.crt
```

### RPMs

Write a `.repo` file for your mirror or Satellite, mount it into the build, and select its
repositories.

```ini
# internal.repo
[internal-baseos]
name=Internal mirror of UBI 9 BaseOS
baseurl=https://mirror.example.com/ubi9/baseos/os
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release

[internal-appstream]
name=Internal mirror of UBI 9 AppStream
baseurl=https://mirror.example.com/ubi9/appstream/os
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
```

```bash
make build FLAVOR=ubi9 \
  BUILD_ARGS="-v $PWD/internal.repo:/etc/yum.repos.d/internal.repo:ro,z" \
  DNF_REPO_ARGS="--disablerepo=* --enablerepo=internal-baseos --enablerepo=internal-appstream"
```

| Flavour | Upstream repository to mirror | Signing key already in the base image |
|---|---|---|
| `ubi9` | `cdn-ubi.redhat.com/content/public/ubi/dist/ubi9/9/x86_64/{baseos,appstream}/os` | `RPM-GPG-KEY-redhat-release` |
| `hi` (default) | `packages.redhat.com/api/pulp-content/public-hummingbird/x86_64/` | `RPM-GPG-KEY-hummingbird-release` |

The hardened flavour takes one repository instead of two. Keep `gpgcheck=1`: the keys are in
the base images, so packages from a mirror are still verified.

If the mirror has a private CA, add `sslcacert=/etc/pki/corp-ca.pem` to each section and
mount that file with a second `-v` in `BUILD_ARGS`.

> [!TIP]
> On a RHEL host registered to Satellite, `podman` passes the host's subscription into the
> build, and the build then sees Satellite's repositories as well. The UBI 9 flavour selects
> the two public UBI repositories by name for that reason. Change `DNF_REPO_ARGS` if you want
> Satellite's instead.

## Build behind a proxy

Set the standard variables before `make fetch` and `make build`.

```bash
export https_proxy=http://proxy.example.com:3128
export http_proxy=http://proxy.example.com:3128
export no_proxy=.example.com,localhost,127.0.0.1
```

| Tool | Reads them |
|---|---|
| `curl` and `pip` in `make fetch` | yes |
| `podman pull` and `podman push` | yes |
| `dnf` and `microdnf` inside `podman build` | yes. `podman` passes them into each build step |

Put your mirror and registry host names in `no_proxy` so they are reached directly.

The variables are not saved in the image. A build with `https_proxy` set produces an image
whose environment has no proxy entry.

## Pull the image from a private registry

**Procedure**

1. Create a pull secret in the project and name it for the tests.

   ```bash
   oc create secret docker-registry spark-pull --docker-server=<registry> \
      --docker-username=<user> --docker-password=<password>
   export PULL_SECRET=spark-pull
   ```

   The test scripts link it to the service accounts Spark uses. For your own jobs:

   ```bash
   oc secrets link spark-operator-spark spark-pull --for=pull
   ```

2. Only if the registry's certificate is signed by your own CA: a cluster administrator adds
   the CA once. The key is the registry host name. For a port, write `host..5000`.

   ```bash
   oc create configmap registry-cas -n openshift-config \
      --from-file=registry.example.com=corp-ca.pem
   oc patch image.config.openshift.io/cluster --type merge \
      -p '{"spec":{"additionalTrustedCA":{"name":"registry-cas"}}}'
   ```

**Verification**

```bash
hack/preflight.sh <registry>/spark-hi:<tag>
```

It reports `PASS cluster can pull the image`. Without the CA, pods stay in `ImagePullBackOff`
and the event says `x509: certificate signed by unknown authority`.

## Trust your own CA in Spark pods

Spark needs your CA when S3, a database or any other endpoint presents a certificate that
your organisation signed. Without it the job fails with:

```
PKIX path building failed: unable to find valid certification path to requested target
```

### Where the CA comes from

OpenShift already keeps CA bundles in every project as ConfigMaps. Use them instead of copying
certificates around.

| ConfigMap | Holds | Who maintains it |
|---|---|---|
| `odh-trusted-ca-bundle` | `ca-bundle.crt`: the cluster-wide trust bundle. `odh-ca-bundle.crt`: CAs added for OpenShift AI | OpenShift AI, in every project |
| `openshift-service-ca.crt` | The CA that signs in-cluster service certificates | OpenShift, in every project |
| One you create | Anything else | You: `oc create configmap my-ca --from-file=ca.crt=corp-ca.pem` |

A cluster administrator adds a CA for the whole cluster, or for OpenShift AI only:

```bash
# Whole cluster: appears in ca-bundle.crt in every project
oc create configmap user-ca-bundle -n openshift-config --from-file=ca-bundle.crt=corp-ca.pem
oc patch proxy/cluster --type merge -p '{"spec":{"trustedCA":{"name":"user-ca-bundle"}}}'

# OpenShift AI only: appears in odh-ca-bundle.crt in every project
oc edit dscinitialization        # spec.trustedCABundle.customCABundle: the PEM text
```

### Option A: add it when the pod starts (no rebuild)

An init container runs `update-ca-trust` from the same Spark image and writes a complete
trust store to an `emptyDir`. The Spark container mounts it read-only. The JVM and Python both
read their CA list from that directory, so no `-Djavax.net.ssl.trustStore` option is needed.

Add this to `driver.template` **and** `executor.template`:

```yaml
spec:
  volumes:
    - name: ca
      projected:
        sources:
          - configMap: { name: odh-trusted-ca-bundle, optional: true }
          - configMap: { name: openshift-service-ca.crt, optional: true }
          - configMap: { name: my-ca, optional: true }
    - name: trust
      emptyDir: {}
  initContainers:
    - name: trust
      image: <the same Spark image>
      command: ["update-ca-trust", "extract", "-o", "/trust"]
      volumeMounts:
        - { name: ca, mountPath: /etc/pki/ca-trust/source/anchors, readOnly: true }
        - { name: trust, mountPath: /trust }
      securityContext:
        capabilities: { drop: ["ALL"] }
        runAsNonRoot: true
        allowPrivilegeEscalation: false
        readOnlyRootFilesystem: true
        seccompProfile: { type: RuntimeDefault }
  containers:
    - name: spark-kubernetes-driver      # spark-kubernetes-executor in the executor template
      volumeMounts:
        - { name: trust, mountPath: /etc/pki/ca-trust/extracted, readOnly: true }
```

Full manifest:
[`12-sparkapplication-custom-ca.yaml`](../deploy/openshift-ai/12-sparkapplication-custom-ca.yaml).

It runs under `restricted-v2` as the assigned UID, on both image flavours. When the ConfigMap
changes, new pods pick the change up. Running pods do not.

### Option B: bake it into a derived image

```dockerfile
FROM <registry>/spark-hi:<tag>
USER 0
COPY corp-ca.pem /etc/pki/ca-trust/source/anchors/
RUN update-ca-trust
USER 1001:0
```

The derived image still passes `hack/verify-image.sh` 16 / 16 on both flavours. Manifests
need no change.

### Which one

| | Option A: init container | Option B: derived image |
|---|---|---|
| Image rebuild when the CA changes | no | yes |
| Change to each manifest | yes, one block per template | no |
| Follows CAs the cluster administrator adds | yes | no |
| Extra start-up time | about a second per pod | none |

### Verification

`tests/custom-ca-cluster.sh <image>` starts an S3 endpoint with a certificate from the
OpenShift service CA, runs the job without the CA, then with option A.

```
  PASS S3 endpoint https://test-s3-tls.spark-demo.svc:8443, certificate issuer=CN=openshift-service-serving-signer@...
  PASS without the CA the job fails: PKIX path building failed
  PASS with the CA the job completes: S3A_OK s3a://spark-smoke/smoke/...
  PASS trust init container ran; pod admitted by restricted-v2
== 4 passed, 0 failed
```

Logs: [hardened image](results/openshift/4.2.1-hi-custom-ca.log),
[UBI 9](results/openshift/4.2.1-ubi9-custom-ca.log).

### Databases over TLS

| Driver | How it finds the CA |
|---|---|
| SQL Server | The JVM trust store. `encrypt=true;trustServerCertificate=false` in the URL is enough |
| PostgreSQL | Its own setting, not the JVM trust store. Add `sslmode=verify-full&sslrootcert=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem` to the URL |

## Proxy settings for Spark pods

OpenShift's cluster-wide proxy (`oc get proxy cluster -o yaml`) is used by the nodes and the
platform. It is **not** added to your pods. Most Spark jobs need no proxy, because S3 and the
databases are inside the network.

If a job must reach something through a proxy, set it per layer:

| Layer | Setting |
|---|---|
| S3 connector | `spark.hadoop.fs.s3a.proxy.host` and `spark.hadoop.fs.s3a.proxy.port` |
| Other JVM code | `-Dhttps.proxyHost=<host> -Dhttps.proxyPort=<port> -Dhttp.nonProxyHosts=*.svc\|*.cluster.local\|localhost` in `spark.driver.extraJavaOptions` and `spark.executor.extraJavaOptions` |
| Python code in UDFs | `HTTPS_PROXY` and `NO_PROXY` as container environment variables |

> [!WARNING]
> If you set `HTTPS_PROXY` on the driver container, also set `NO_PROXY`. The driver's
> Kubernetes client reads both, and without `NO_PROXY` it sends its API calls to the proxy and
> cannot create executors. Start from the cluster's own list and add `.svc` and
> `.cluster.local`:
>
> ```bash
> oc get proxy cluster -o jsonpath='{.status.noProxy}'
> ```

## Workbenches

OpenShift AI configures workbenches for you (seen on OpenShift AI 3.5.4):

| What | How it is set |
|---|---|
| CA bundle | Mounted at `/etc/pki/tls/custom-certs/ca-bundle.crt`. `PIP_CERT`, `SSL_CERT_FILE`, `REQUESTS_CA_BUNDLE` and `GIT_SSL_CAINFO` point at it |
| Python package index | `/opt/app-root/pip.conf` points at Red Hat's index |

To install from your own PyPI mirror instead, either add `PIP_INDEX_URL` as an environment
variable on the workbench, or pass it per install:

```python
%pip install --index-url https://artifactory.example.com/artifactory/api/pypi/pypi-remote/simple "pyspark-client>=4.2,<4.3"
```

A CA your administrator added (see [above](#where-the-ca-comes-from)) is in the workbench
bundle, so `pip` trusts the mirror with no further setting.

## Not tested

- A proxy, on the build machine beyond passing the variables into the build, and on the
  cluster. The test cluster has none.
- An RPM mirror with its own CA. The mounted `.repo` file was tested with new repository IDs
  pointing at Red Hat's public URLs.
- A registry with a private CA on the cluster.
- Option A in a `SparkConnect` resource. The same blocks go in `server.template` and
  `executor.template`.
- JDBC over TLS.

---

**Next:** [bring your own image](bring-your-own-image.md) · [walkthrough](walkthrough.md) · [running on OpenShift AI](openshift-ai.md)
