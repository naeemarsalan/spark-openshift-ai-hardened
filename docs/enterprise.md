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
> - Each section ends with the test that covers it. [All tests](#tests-behind-this-page).

**On this page**

- [What goes where](#what-goes-where)
- [Download from your own Artifactory or Nexus](#download-from-your-own-artifactory-or-nexus)
- [Base images and RPMs from your own mirror](#base-images-and-rpms-from-your-own-mirror)
- [Build behind a proxy](#build-behind-a-proxy)
- [Pull the image from a private registry](#pull-the-image-from-a-private-registry)
- [Trust your own CA in Spark pods](#trust-your-own-ca-in-spark-pods)
- [Proxy settings for Spark pods](#proxy-settings-for-spark-pods)
- [Workbenches](#workbenches)
- [Tests behind this page](#tests-behind-this-page)
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
| A proxy between Spark and S3 or the internet | `fs.s3a.proxy.*`, `-Dhttps.proxyHost`, `HTTPS_PROXY` + `NO_PROXY` | Your Spark manifests |

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
mount that file with a second `-v`:

```bash
BUILD_ARGS="-v $PWD/internal.repo:/etc/yum.repos.d/internal.repo:ro,z -v $PWD/corp-ca.pem:/etc/pki/corp-ca.pem:ro,z"
```

**Verification**

The same test builds an image from an HTTPS RPM mirror with a private CA, configured only
through a mounted `.repo` file:

```
== RPM mirror: https://host.containers.internal:<port> (private CA)
  PASS without sslcacert, the build stops: Curl error (60): SSL peer certificate or SSH remote key was not OK for https
  PASS with the mounted .repo file and CA: 1 RPM(s) installed from the mirror, signature checked
```

Both full images were also built this way, with `make build` and a `.repo` file under new
repository IDs.

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

The variables are not saved in the image.

**Verification**

The same test repeats the fetch and a build through a forward proxy:

```
== proxy: http://127.0.0.1:<port>
  PASS fetch with https_proxy set: curl and pip went through the proxy (132 tunnels), lock still matches
  PASS fetch with no_proxy=localhost: the mirror is reached directly (0 new tunnels)
  PASS image build with https_proxy set: microdnf went through the proxy (5 tunnels to cdn-ubi.redhat.com)
  PASS the built image has no proxy setting in its environment
```

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

   The CA reaches the nodes in under a minute, with no node reboot.

**Verification**

```bash
hack/preflight.sh <registry>/spark-hi:<tag>
```

It reports `PASS cluster can pull the image`.

`tests/registry-ca-cluster.sh <image>` runs the whole sequence against a throwaway registry
with a private CA, then restores the cluster setting
([log](results/openshift/4.2.1-hi-registry-ca.log)):

```
  PASS registry https://test-registry-spark-demo.apps.<cluster> with a private CA; image copied to .../test/spark-hi:4.2.1-2
  PASS before: the pull fails: x509: certificate signed by unknown authority
  PASS CA added: ConfigMap spark-test-registry-ca in openshift-config, named in image.config.openshift.io/cluster
  PASS after: the pull works (27s after the change, no node reboot); pod ran as UID 1000770000, version 4.2.1
  PASS admitted by restricted-v2
```

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

**Spark Connect**

The same blocks go in `server.template` and `executor.template` of the `SparkConnect`
resource:
[`21-sparkconnect-custom-ca.yaml`](../deploy/openshift-ai/21-sparkconnect-custom-ca.yaml).

> [!IMPORTANT]
> The operator does not restart a running Spark Connect server when you change the resource.
> Replace it:
>
> ```bash
> oc delete sparkconnect spark-connect
> oc apply -f deploy/openshift-ai/21-sparkconnect-custom-ca.yaml
> ```

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

### Databases over TLS

| Driver | How it finds the CA |
|---|---|
| PostgreSQL | Its own setting, not the JVM trust store. Add `sslmode=verify-full&sslrootcert=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem` to the URL |
| SQL Server | The JVM trust store. `encrypt=true;trustServerCertificate=false` in the URL |

The PEM path in the PostgreSQL URL is the trust store the init container wrote, so it holds
your CA with both options.

### Verification

`tests/custom-ca-cluster.sh <image>` serves S3 and PostgreSQL over TLS with certificates from
the OpenShift service CA, which no image trusts by default. It runs a job without the CA,
then with option A, then through a Spark Connect server.

```
  PASS S3 endpoint https://test-s3-tls.spark-demo.svc:8443, certificate issuer=CN=openshift-service-serving-signer@...
  PASS PostgreSQL test-postgres-tls.spark-demo.svc:5432 with TLS, certificate issuer=CN=openshift-service-serving-signer@...
  PASS without the CA the job fails: PKIX path building failed
  PASS SparkApplication with the CA, S3 over TLS: S3A_OK s3a://spark-smoke/smoke/...
  PASS SparkApplication with the CA, PostgreSQL with sslmode=verify-full: JDBC_OK smoke_...
  PASS trust init container ran; pod admitted by restricted-v2
  PASS SparkConnect server ready with the trust init container: spark-connect-server init=trust scc=restricted-v2
  PASS Spark Connect client through that server: S3 (https://test-s3-tls.spark-demo.svc:8443) and PostgreSQL over TLS
  PASS Spark Connect executors have the trust init container: spark-connect-exec-1:trust spark-connect-exec-2:trust
== 9 passed, 0 failed
```

Logs: [hardened image](results/openshift/4.2.1-hi-custom-ca.log),
[UBI 9](results/openshift/4.2.1-ubi9-custom-ca.log).

Option B was checked on the build machine: the CA is in the image's Java and PEM trust stores.

## Proxy settings for Spark pods

OpenShift's cluster-wide proxy (`oc get proxy cluster -o yaml`) is used by the nodes and the
platform. It is **not** added to your pods. Most Spark jobs need no proxy, because S3 and the
databases are inside the network.

If a job must reach something through a proxy, each layer has its own setting. One does not
cover the others.

| Layer | Setting | Where |
|---|---|---|
| S3 connector | `spark.hadoop.fs.s3a.proxy.host`, `spark.hadoop.fs.s3a.proxy.port` | `sparkConf` |
| Other JVM code | `-Dhttps.proxyHost=<host> -Dhttps.proxyPort=<port> -Dhttp.nonProxyHosts=...` | `spark.driver.extraJavaOptions` and `spark.executor.extraJavaOptions` |
| Python code in the driver and in UDFs | `HTTPS_PROXY` and `NO_PROXY` | Container `env` in both pod templates |

```yaml
spec:
  sparkConf:
    spark.hadoop.fs.s3a.proxy.host: proxy.example.com
    spark.hadoop.fs.s3a.proxy.port: "3128"
    spark.driver.extraJavaOptions: "-Dhttps.proxyHost=proxy.example.com -Dhttps.proxyPort=3128 -Dhttp.nonProxyHosts=kubernetes.default.svc|*.cluster.local|localhost|172.30.*"
    spark.executor.extraJavaOptions: "-Dhttps.proxyHost=proxy.example.com -Dhttps.proxyPort=3128 -Dhttp.nonProxyHosts=kubernetes.default.svc|*.cluster.local|localhost|172.30.*"
  driver:
    template:
      spec:
        containers:
          - name: spark-kubernetes-driver
            env:
              - { name: HTTPS_PROXY, value: "http://proxy.example.com:3128" }
              - { name: NO_PROXY, value: "kubernetes.default.svc,.cluster.local,localhost,127.0.0.1,172.30.0.1" }
```

Full manifest:
[`13-sparkapplication-proxy.yaml`](../deploy/openshift-ai/13-sparkapplication-proxy.yaml).

- `http.nonProxyHosts` uses `|` between entries and `*` as the wildcard. `NO_PROXY` uses
  commas and a leading dot.
- Add your internal S3 and database host names to both lists if they must not go through the
  proxy. Add `*.svc` and `.svc` if nothing in the cluster should.
- `172.30.0.1` is the Kubernetes API service address on a default OpenShift install. Start
  from the cluster's own list: `oc get proxy cluster -o jsonpath='{.status.noProxy}'`.

> [!WARNING]
> If you set `HTTPS_PROXY` on the driver container, set `NO_PROXY` too. The driver's
> Kubernetes client reads both. Without `NO_PROXY` it sends its API calls to the proxy, and a
> proxy that cannot reach the cluster's internal addresses leaves the driver unable to create
> executors.

**Verification**

`tests/proxy-cluster.sh <image>` runs that manifest against a small forward proxy in the
project. The proxy listens on one port per layer, so its log shows which setting sent which
request.

```
  PASS job completed with 2 executors behind the proxy settings
  PASS S3 connector went through the proxy: 3 tunnel(s) to test-s3-tls.spark-demo.svc:8443; S3A_VIA_PROXY_OK
  PASS JVM code went through the proxy: 1 tunnel(s) to repo1.maven.org:443; JVM_VIA_PROXY_OK https://repo1.maven.org/maven2/ -> HTTP 200
  PASS Python code went through the proxy: 1 tunnel(s) to repo1.maven.org:443; PYTHON_VIA_PROXY_OK https://repo1.maven.org/maven2/ -> HTTP 200
  PASS with NO_PROXY set, no Kubernetes API call reached the proxy
  PASS without NO_PROXY the Kubernetes API calls go to the proxy (job state COMPLETED): 3 CONNECT 3130 kubernetes.default.svc:443;
== 6 passed, 0 failed
```

The last line is the warning above, observed. The job still completed there only because the
test proxy sits inside the cluster and can reach the API.

Logs: [hardened image](results/openshift/4.2.1-hi-proxy.log),
[UBI 9](results/openshift/4.2.1-ubi9-proxy.log).

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

## Tests behind this page

| Test | Where it runs | Covers | Result |
|---|---|---|---|
| `tests/mirror-local.sh` | Build machine | Fetch from a private mirror (CA, password); fetch and build through a proxy; `no_proxy`; RPM mirror with a private CA | [12 / 12](results/local/mirror-local.log) |
| `tests/custom-ca-cluster.sh` | Cluster | S3 and PostgreSQL over TLS with a private CA, in a `SparkApplication` and through `SparkConnect` | 9 / 9 on [hardened](results/openshift/4.2.1-hi-custom-ca.log) and [UBI 9](results/openshift/4.2.1-ubi9-custom-ca.log) |
| `tests/proxy-cluster.sh` | Cluster | The three proxy settings and `NO_PROXY` | 6 / 6 on [hardened](results/openshift/4.2.1-hi-proxy.log) and [UBI 9](results/openshift/4.2.1-ubi9-proxy.log) |
| `tests/registry-ca-cluster.sh` | Cluster, as administrator | Image pull from a registry with a private CA, before and after `additionalTrustedCA` | [5 / 5](results/openshift/4.2.1-hi-registry-ca.log) |

The mirror, the proxy and the registry in these tests are small stand-ins that the tests
start themselves. `registry-ca-cluster.sh` changes a cluster-wide setting and puts it back.

## Not tested

- Artifactory, Nexus and Satellite themselves. The settings were tested against stand-ins
  that behave the same way on the wire.
- A proxy that asks for a user name and password.
- SQL Server over TLS.
- Option B on the cluster.
- `PIP_INDEX_URL` on a workbench.

---

**Next:** [bring your own image](bring-your-own-image.md) · [walkthrough](walkthrough.md) · [running on OpenShift AI](openshift-ai.md)
