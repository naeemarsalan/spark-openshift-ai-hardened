#!/bin/bash
# Runs inside the BUILDER stage only. Assembles, fully offline, from /build/artifacts:
#   /opt/spark   - pruned + CVE-patched Spark distribution
#   /opt/pydeps  - Python dependencies (prefix layout, copied to /usr/local)
set -euo pipefail
: "${SPARK_VERSION:?}" "${HADOOP_PROFILE:?}" "${PYTHON_VERSION:?}"
cd /build

# 1. Every vendored artifact must match the committed lock.
sha256sum -c --quiet artifacts.sha256

# 2. Unpack Spark; drop what is not needed on Kubernetes
#    (YARN shuffle service, SparkR, Windows launchers, tests, docs, sample data).
mkdir -p /opt/spark
tar -xzf "artifacts/spark/spark-${SPARK_VERSION}-bin-${HADOOP_PROFILE}.tgz" \
    -C /opt/spark --strip-components=1 --no-same-owner
cd /opt/spark
rm -rf yarn R data examples/src kubernetes bin/*.cmd conf/*.template README.md
mkdir python.keep && mv python/pyspark python/lib python.keep/ && rm -rf python && mv python.keep python
find python -type d \( -name tests -o -name __pycache__ \) -prune -exec rm -rf {} +
ln -s "$(basename python/lib/py4j-*-src.zip)" python/lib/py4j-src.zip
ln -s "$(basename examples/jars/spark-examples_*.jar)" examples/jars/spark-examples.jar

# 3. CVE remediation: remove vulnerable/unneeded jars, add patched ones + S3/JDBC libraries.
while read -r glob; do
  [[ -z "${glob// }" || "$glob" == \#* ]] && continue
  # shellcheck disable=SC2086
  matches=$(compgen -G "jars/$glob" || true)
  [[ -n "$matches" ]] || { echo "ERROR: jars-remove.txt entry matches nothing: $glob" >&2; exit 1; }
  # shellcheck disable=SC2086
  rm -rf $matches
done < /build/jars-remove.txt
cp /build/artifacts/jars/*.jar jars/

# Two versions of one library on the classpath is a bug waiting to happen: fail the build.
dups=$(ls jars | sed -E 's/-[0-9][0-9A-Za-z.]*(-(jre|jdk8|core|shaded-protobuf|linux-[a-z0-9_]+))?\.jar$//' | sort | uniq -d \
       | grep -vx -e jline || true)   # jline 2.x and 3.x are different libraries that share a name
[[ -z "$dups" ]] || { echo "ERROR: duplicate jar versions: $dups" >&2; exit 1; }
mkdir -p work-dir conf

# 4. Python dependencies from vendored wheels. pip is executed straight from the distro's
#    bundled pip wheel, so pip itself is never installed, not even in the builder.
pipwhl=$(ls /usr/share/python*wheels/pip-*.whl | sort -V | tail -1)
PYTHONPATH="$pipwhl" "python${PYTHON_VERSION}" -m pip install --no-cache-dir --no-index --no-compile \
    --disable-pip-version-check --root-user-action=ignore \
    --find-links /build/artifacts/wheels --prefix /opt/pydeps -r /build/requirements.txt
rm -rf /opt/pydeps/bin
find /opt/pydeps -type d \( -name tests -o -name __pycache__ \) -prune -exec rm -rf {} +

# 5. Root-owned, read-only for the runtime user, no setuid/setgid bits.
chown -R 0:0 /opt/spark /opt/pydeps
chmod -R u=rwX,go=rX /opt/spark /opt/pydeps
find /opt/spark /opt/pydeps -perm /6000 -exec chmod a-s {} +
# The one directory the runtime user may write to (besides /tmp): group 0 + g=u is what
# lets an OpenShift-assigned arbitrary UID use it.
chmod 0775 work-dir
mkdir -p /licenses && cp -r LICENSE NOTICE licenses /licenses/
