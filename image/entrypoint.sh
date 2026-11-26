#!/bin/bash
#
# Entrypoint for the hardened Spark image. Derived from Apache Spark's
# kubernetes/dockerfiles/spark/entrypoint.sh (Apache License 2.0) with these changes:
#   * no `set -x`: command lines (which can carry credentials in --conf) are not echoed to logs
#   * /etc/passwd is NOT group-writable; an arbitrary UID gets its identity via nss_wrapper
#   * no dependency on tini (not shipped in UBI); the JVM is exec'd directly
#   * extra `connect` command to run a Spark Connect server in the foreground
#
# Commands:
#   driver   [spark-submit args]  - used by Spark on Kubernetes (cluster mode)
#   executor                      - used by Spark on Kubernetes
#   connect  [spark-submit args]  - Spark Connect server (gRPC, default port 15002)
#   <anything else>               - executed as-is (e.g. /opt/spark/bin/spark-submit ...)

set -e

myuid="$(id -u)"
mygid="$(id -g)"

# OpenShift's restricted-v2 SCC runs the container with a random UID that has no passwd
# entry. Hadoop's UserGroupInformation needs one, so synthesise it in a private file and
# expose it through nss_wrapper instead of modifying /etc/passwd.
if ! getent passwd "$myuid" > /dev/null 2>&1; then
  if [ -r /usr/lib64/libnss_wrapper.so ]; then
    NSS_WRAPPER_PASSWD="$(mktemp "${TMPDIR:-/tmp}/passwd.XXXXXX")"
    grep -v '^spark:' /etc/passwd > "$NSS_WRAPPER_PASSWD"
    echo "${SPARK_USER_NAME:-spark}:x:${myuid}:${mygid}:Apache Spark:${HOME:-/opt/spark/work-dir}:/sbin/nologin" >> "$NSS_WRAPPER_PASSWD"
    export NSS_WRAPPER_PASSWD
    export NSS_WRAPPER_GROUP=/etc/group
    export LD_PRELOAD="/usr/lib64/libnss_wrapper.so${LD_PRELOAD:+:$LD_PRELOAD}"
  else
    echo "WARN: no passwd entry for UID $myuid and nss_wrapper is not installed" >&2
  fi
fi

if [ -z "$JAVA_HOME" ]; then
  JAVA_HOME=$(java -XshowSettings:properties -version 2>&1 > /dev/null | grep 'java.home' | awk '{print $3}')
fi

SPARK_CLASSPATH="$SPARK_CLASSPATH:${SPARK_HOME}/jars/*"
SPARK_EXECUTOR_JAVA_OPTS=()
while IFS= read -r opt; do
  SPARK_EXECUTOR_JAVA_OPTS+=("$opt")
done < <(env | grep SPARK_JAVA_OPT_ | sort -t_ -k4 -n | sed 's/[^=]*=\(.*\)/\1/g')

if [ -n "$SPARK_EXTRA_CLASSPATH" ]; then
  SPARK_CLASSPATH="$SPARK_CLASSPATH:$SPARK_EXTRA_CLASSPATH"
fi

if [ -n "${PYSPARK_PYTHON+x}" ]; then export PYSPARK_PYTHON; fi
if [ -n "${PYSPARK_DRIVER_PYTHON+x}" ]; then export PYSPARK_DRIVER_PYTHON; fi

if [ -n "${HADOOP_HOME}" ] && [ -z "${SPARK_DIST_CLASSPATH}" ]; then
  SPARK_DIST_CLASSPATH="$("$HADOOP_HOME/bin/hadoop" classpath)"
  export SPARK_DIST_CLASSPATH
fi

if [ -n "${HADOOP_CONF_DIR+x}" ]; then
  SPARK_CLASSPATH="$HADOOP_CONF_DIR:$SPARK_CLASSPATH"
fi

if [ -n "${SPARK_CONF_DIR+x}" ]; then
  SPARK_CLASSPATH="$SPARK_CONF_DIR:$SPARK_CLASSPATH"
elif [ -n "${SPARK_HOME+x}" ]; then
  SPARK_CLASSPATH="$SPARK_HOME/conf:$SPARK_CLASSPATH"
fi

# SPARK-43540: add current working directory into executor classpath
SPARK_CLASSPATH="$SPARK_CLASSPATH:$PWD"

case "$1" in
  driver)
    shift 1
    CMD=(
      "$SPARK_HOME/bin/spark-submit"
      --conf "spark.driver.bindAddress=$SPARK_DRIVER_BIND_ADDRESS"
      --conf "spark.executorEnv.SPARK_DRIVER_POD_IP=$SPARK_DRIVER_BIND_ADDRESS"
      --deploy-mode client
      "$@"
    )
    ;;
  executor)
    shift 1
    if [ -n "$SPARK_EXECUTOR_LIBRARY_PATH" ]; then
      export LD_LIBRARY_PATH="$SPARK_EXECUTOR_LIBRARY_PATH${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
    fi
    CMD=(
      "${JAVA_HOME}/bin/java"
      "${SPARK_EXECUTOR_JAVA_OPTS[@]}"
      "-Xms$SPARK_EXECUTOR_MEMORY"
      "-Xmx$SPARK_EXECUTOR_MEMORY"
      -cp "$SPARK_CLASSPATH:$SPARK_DIST_CLASSPATH"
      org.apache.spark.scheduler.cluster.k8s.KubernetesExecutorBackend
      --driver-url "$SPARK_DRIVER_URL"
      --executor-id "$SPARK_EXECUTOR_ID"
      --cores "$SPARK_EXECUTOR_CORES"
      --app-id "$SPARK_APPLICATION_ID"
      --hostname "$SPARK_EXECUTOR_POD_IP"
      --resourceProfileId "$SPARK_RESOURCE_PROFILE_ID"
      --podName "$SPARK_EXECUTOR_POD_NAME"
    )
    ;;
  connect)
    shift 1
    # Foreground Spark Connect server (what sbin/start-connect-server.sh runs, minus the
    # daemon/pid-file/log-file handling that does not suit containers).
    CMD=(
      "$SPARK_HOME/bin/spark-submit"
      --class org.apache.spark.sql.connect.service.SparkConnectServer
      --name "Spark Connect server"
      "$@"
    )
    ;;
  *)
    CMD=("$@")
    ;;
esac

exec "${CMD[@]}"
