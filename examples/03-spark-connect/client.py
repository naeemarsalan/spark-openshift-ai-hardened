"""Example 3 - Spark Connect client (what a data scientist runs from a workbench).

Nothing here needs a JVM, cluster credentials or the Spark distribution: only the thin
`pyspark-client` package and the server address in SPARK_REMOTE (sc://host:15002).
The server holds the S3 credentials; the JDBC ones are passed from this session.
Run examples 1 and 2 first - this explores what they produced.
"""
import os

import pandas as pd
from pyspark.sql import SparkSession, functions as F

spark = SparkSession.builder.remote(os.environ["SPARK_REMOTE"]).getOrCreate()
print("server Spark version:", spark.version)

# 1. Curated data lake zone in S3 (read by the executors, not by this process).
txns = spark.read.parquet(f"s3a://{os.environ['S3_BUCKET']}/examples/curated/transactions")
txns.createOrReplaceTempView("txns")
by_cat = spark.sql("""
    SELECT category, count(*) AS n, round(avg(amount), 2) AS avg_amount, round(max(risk), 2) AS max_risk
    FROM txns GROUP BY category ORDER BY category""")
by_cat.show()


# 2. A pandas UDF defined in the notebook, shipped to and executed on the cluster.
@F.pandas_udf("string")
def band(amount: pd.Series) -> pd.Series:
    return pd.cut(amount, [0, 50, 200, 1e9], labels=["small", "medium", "large"]).astype(str)


bands = txns.groupBy(band("amount").alias("band")).count().toPandas().set_index("band")["count"]
assert set(bands.index) == {"small", "medium", "large"}, bands

# 3. Warehouse tables in PostgreSQL written by examples 1 and 2, joined with the lake.
jdbc = dict(url=os.environ["JDBC_URL"], user=os.environ["JDBC_USER"], password=os.environ["JDBC_PASSWORD"])
summary = spark.read.format("jdbc").options(dbtable="daily_category_summary", **jdbc).load()
top = spark.read.format("jdbc").options(dbtable="top_accounts_by_category", **jdbc).load()
joined = top.where("rank = 1").join(summary, "category").select(
    "category", "account_id", "spend", F.round(F.col("spend") / F.col("total_amount") * 100, 3).alias("pct_of_category"))
pdf = joined.orderBy("category").toPandas()
print(pdf.to_string(index=False))

lake_total = by_cat.agg(F.sum("n")).first()[0]
db_total = summary.agg(F.sum("txn_count")).first()[0]
assert lake_total == db_total, (lake_total, db_total)
assert len(pdf) == by_cat.count()
print(f"CONNECT_EXAMPLE_OK txns={lake_total} categories={len(pdf)} bands={bands.to_dict()}")
spark.stop()
