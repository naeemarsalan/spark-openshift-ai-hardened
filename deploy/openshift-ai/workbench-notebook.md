# From an OpenShift AI workbench

> [!NOTE]
> **In short:** install the thin client, restart the kernel, connect to the server's Service.
> Three cells.

**Prerequisites**

- A workbench with any Python 3.12 Jupyter image ("Jupyter | Minimal | CPU | Python 3.12").
- A running `SparkConnect` server ([`20-sparkconnect.yaml`](20-sparkconnect.yaml)).
- The workbench's namespace has the label `opendatahub.io/dashboard=true`.

**Procedure**

1. Install the client. It is thin: no JVM, and it pulls pandas, pyarrow and grpcio.

   ```python
   %pip install "pyspark-client>=4.2,<4.3"
   ```

2. Restart the kernel.

3. Connect. Replace `spark-demo` with the server's namespace.

   ```python
   from pyspark.sql import SparkSession
   spark = SparkSession.builder.remote(
       "sc://spark-connect-service.spark-demo.svc.cluster.local:15002").getOrCreate()
   ```

4. Run something on the executors.

   ```python
   print(spark.version)
   df = spark.range(1_000_000).selectExpr("id", "id % 7 AS bucket")
   df.groupBy("bucket").count().orderBy("bucket").show()
   ```

**Verification**

- `spark.version` prints `4.2.1`. It comes from the server image.
- The `show()` prints seven rows.

**Troubleshooting**

| Symptom | Cause | Fix |
|---|---|---|
| `getOrCreate()` hangs (not a refusal) | A NetworkPolicy is dropping the connection | The workbench pod needs the label `opendatahub.io/workbenches=true` and its namespace `opendatahub.io/dashboard=true` |
| `pip` cannot find `pyspark-client==4.2.1` | Workbenches install from Red Hat's index, which offers 4.0.1, 4.1.2 and 4.2.0 | Use the range above. It installs **4.2.0**, which is tested against the 4.2.1 server |
| You need a different client version | Same as above | Add `--index-url <your PyPI mirror>`. Tested combinations: [compatibility](../../docs/compatibility.md) |
| `pip install` cannot reach any index | Disconnected environment | Point `pip` at the internal PyPI mirror, or bake the client into a custom workbench image |

More background: [docs/openshift-ai.md](../../docs/openshift-ai.md#workbench).
