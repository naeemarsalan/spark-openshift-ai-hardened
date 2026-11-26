# Apache Spark for OpenShift AI / OpenShift (restricted-v2 SCC) - Red Hat Hardened Images base
#
# One image for: spark-submit drivers, Scala/Java + Python executors, Spark Connect server.
#
# Build rules:
#   * Nothing is downloaded from the internet. Third-party binaries are COPYed from
#     ./artifacts (hack/fetch-artifacts.sh) and verified against artifacts.sha256.
#     The only network access is the package manager talking to the configured RPM repo
#     (Red Hat CDN here; Satellite / internal mirror in a regulated build farm).
#   * No secrets, keys or credentials are baked in.
#   * Runs as non-root 1001:0 by default AND as any arbitrary UID in group 0.
#   * Build tooling (package manager, pip, tar) exists only in the builder stage.
#
# Base: Red Hat Hardened Images ("Hummingbird"). The final image is built FROM scratch out of
# a root filesystem that contains only the RPMs Spark needs (no shell tools beyond bash and
# coreutils, no package manager), installed from the hardened RPM repo by the builder.

ARG BUILDER_IMAGE=registry.access.redhat.com/hi/openjdk:21-runtime-builder

# ------------------------------------------------------------------ builder
FROM ${BUILDER_IMAGE} AS builder
USER 0

ARG SPARK_VERSION
ARG HADOOP_PROFILE=hadoop3
ARG JAVA_MAJOR=21
ARG PYTHON_VERSION=3.12
# Extra dnf arguments, e.g. to point at an internal mirror of the hardened RPM repo.
ARG DNF_REPO_ARGS=""

RUN dnf ${DNF_REPO_ARGS} install -y --nodocs --setopt=install_weak_deps=0 \
        tar gzip findutils python${PYTHON_VERSION} && dnf clean all

WORKDIR /build
COPY artifacts.sha256 image/requirements.txt image/jars-remove.txt image/assemble.sh ./
COPY artifacts/ ./artifacts/
RUN ./assemble.sh

# Runtime root filesystem: only what Spark needs.
#   bash, coreutils, grep, sed, gawk : Spark launcher scripts (bin/spark-class, load-spark-env.sh)
#   procps-ng                        : executor decommissioning script (ps)
#   libstdc++                        : native code in the numpy / pyarrow / grpcio wheels
#   <os-release package>             : /etc/os-release, without which vulnerability scanners
#                                      cannot identify the OS and silently skip every RPM
RUN dnf ${DNF_REPO_ARGS} install -y --installroot=/rootfs --use-host-config \
        --nodocs --setopt=install_weak_deps=0 \
        "$(rpm -qf --qf '%{NAME}' /etc/os-release)" \
        bash coreutils-single grep sed gawk procps-ng libstdc++ \
        java-${JAVA_MAJOR}-openjdk-headless python${PYTHON_VERSION} && \
    dnf --installroot=/rootfs clean all && \
    rm -rf /rootfs/var/cache/* /rootfs/var/log/* /rootfs/var/lib/dnf /rootfs/tmp/* && \
    echo "spark:x:1001:0:Apache Spark:/opt/spark/work-dir:/sbin/nologin" >> /rootfs/etc/passwd && \
    cp -a /opt/spark /rootfs/opt/spark && \
    cp -a /opt/pydeps/. /rootfs/usr/local/ && \
    cp -a /licenses /rootfs/licenses && \
    chmod 1777 /rootfs/tmp
COPY --chmod=0755 image/entrypoint.sh image/decom.sh /rootfs/opt/
COPY --chmod=0644 image/spark-defaults.conf image/log4j2.properties /rootfs/opt/spark/conf/
# Fail the build, not the first job, if a native dependency of the Python wheels is missing.
RUN chroot /rootfs /usr/bin/python${PYTHON_VERSION} -c "import numpy, pandas, pyarrow, grpc, zstandard"

# -------------------------------------------------------------------- final
FROM scratch

ARG SPARK_VERSION
ARG JAVA_MAJOR=21
ARG PYTHON_VERSION=3.12
ARG IMAGE_VERSION=dev

LABEL name="spark-hi" \
      version="${SPARK_VERSION}" \
      release="${IMAGE_VERSION}" \
      summary="Apache Spark ${SPARK_VERSION} (Spark Connect, spark-submit, Scala and Python executors)" \
      description="Hardened Apache Spark runtime for OpenShift AI. Runs under the restricted-v2 SCC as an arbitrary non-root UID." \
      io.k8s.display-name="Apache Spark ${SPARK_VERSION}" \
      io.k8s.description="Hardened Apache Spark runtime for OpenShift AI. Runs under the restricted-v2 SCC as an arbitrary non-root UID." \
      io.openshift.tags="spark,pyspark,spark-connect,openshift-ai" \
      org.opencontainers.image.title="spark-hi" \
      org.opencontainers.image.version="${SPARK_VERSION}" \
      org.opencontainers.image.licenses="Apache-2.0"

COPY --from=builder /rootfs/ /

ENV SPARK_HOME=/opt/spark \
    JAVA_HOME=/usr/lib/jvm/jre-${JAVA_MAJOR}-openjdk \
    PATH=/opt/spark/bin:/opt/spark/sbin:/usr/local/bin:/usr/bin:/bin \
    HOME=/opt/spark/work-dir \
    PYSPARK_PYTHON=/usr/bin/python${PYTHON_VERSION} \
    PYSPARK_DRIVER_PYTHON=/usr/bin/python${PYTHON_VERSION} \
    PYTHONPATH=/opt/spark/python:/opt/spark/python/lib/py4j-src.zip \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    SPARK_LOG_DIR=/tmp/spark-logs \
    SPARK_PID_DIR=/tmp/spark-pids \
    LANG=C.UTF-8

# SPARK_LOG_DIR / SPARK_PID_DIR: the OpenShift AI Spark Operator starts Spark Connect with
# sbin/start-connect-server.sh (bypassing the entrypoint); keep its files off the read-only /opt/spark.
WORKDIR /opt/spark/work-dir

# Numeric UID:GID so the kubelet can verify `runAsNonRoot: true`.
USER 1001:0

ENTRYPOINT ["/opt/entrypoint.sh"]
