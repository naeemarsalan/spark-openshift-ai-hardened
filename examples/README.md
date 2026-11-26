# Example projects

A small pipeline that exercises everything the image is meant to do. Each stage checks its own
result and prints a marker line; the runners fail if a marker is missing.

| # | Project | Language / mode | What it proves |
|---|---|---|---|
| 1 | [`01-pyspark-etl`](01-pyspark-etl/etl.py) | PySpark, `spark-submit` | S3A read/write (CSV + partitioned Parquet), pandas UDF on Python executors, JDBC load, S3-vs-database reconciliation |
| 2 | [`02-scala-report`](02-scala-report/src/main/scala/com/example/report/CategoryReport.scala) | Scala, `spark-submit --class` | Compiled Scala on executors (typed Dataset, window functions), S3 read, JDBC write |
| 3 | [`03-spark-connect`](03-spark-connect/) | Spark Connect client, script + notebook | Thin client with no JVM; UDF shipped from the client; S3 + JDBC through the server |

Stage 2 reads what stage 1 wrote, and stage 3 cross-checks both.

## Application image

[`Containerfile`](Containerfile) layers the code on the hardened base. The Scala job is compiled
with the Scala compiler that ships inside Spark, so the build needs no sbt/Maven and no network.

## Run

```bash
examples/run-local.sh                       # podman, Spark local mode, throwaway S3 + PostgreSQL

# On a cluster, through the OpenShift AI Spark Operator:
examples/run-cluster.sh oci.arsalan.io/spark/spark-hi:4.3.0-3 oci.arsalan.io/spark/spark-examples:4.3.0-3
```

`run-cluster.sh` submits stages 1 and 2 as `SparkApplication` resources
([`openshift-ai/`](openshift-ai/)), and runs stage 3 from a pod against the `SparkConnect`
server. The real workbench version of stage 3 is
[`03-spark-connect/workbench.ipynb`](03-spark-connect/workbench.ipynb).

Configuration and credentials always come from the `spark-datasources` Secret:
`S3_ENDPOINT`, `S3_BUCKET`, `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `JDBC_URL`, `JDBC_USER`, `JDBC_PASSWORD`.
