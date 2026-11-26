# From an OpenShift AI workbench

Workbench image: any Python 3.12 Jupyter image ("Jupyter | Minimal | CPU | Python 3.12").

```python
%pip install "pyspark-client>=4.2,<=4.3.0"   # thin client: no JVM, pulls pandas/pyarrow/grpcio
```

Workbenches install from Red Hat's Python index, not PyPI. In OpenShift AI 3.5 that index
offers `pyspark-client` 4.0.1, 4.1.2 and 4.2.0, so the line above installs **4.2.0**. That
client is tested against this image's 4.3.0 server (S3, JDBC, SQL and a pandas UDF). For an
exact version match add `--index-url <your PyPI mirror>`; that is tested too.

Restart the kernel, then (replace `spark-demo` with the server's namespace):

```python
from pyspark.sql import SparkSession
spark = SparkSession.builder.remote(
    "sc://spark-connect-service.spark-demo.svc.cluster.local:15002").getOrCreate()

print(spark.version)                                    # 4.3.0 - comes from the server image
df = spark.range(1_000_000).selectExpr("id", "id % 7 AS bucket")
df.groupBy("bucket").count().orderBy("bucket").show()   # runs on the executor pods
```

A hang on `getOrCreate()` (not a refusal) means a NetworkPolicy drop: the workbench pod needs
label `opendatahub.io/workbenches=true` and its namespace `opendatahub.io/dashboard=true`.

In a disconnected environment `pip install` must point at the internal PyPI mirror, or the
client should be baked into a custom workbench image.
