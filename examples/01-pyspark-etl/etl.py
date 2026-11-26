"""Example 1 - PySpark batch ETL (spark-submit).

  raw CSV in S3  ->  validate / de-duplicate / score (pandas UDF)  ->  curated Parquet in S3
                                                                   ->  daily summary table in PostgreSQL

The job seeds its own synthetic card-transaction data so it can run anywhere.

Configuration comes from the environment (a Kubernetes Secret), never from code:
  S3_ENDPOINT S3_BUCKET AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY   JDBC_URL JDBC_USER JDBC_PASSWORD
"""
import argparse
import os

import pandas as pd
from pyspark.sql import SparkSession, functions as F, types as T

p = argparse.ArgumentParser()
p.add_argument("--rows", type=int, default=200_000)
p.add_argument("--date", default="2026-11-25")
args = p.parse_args()

spark = (SparkSession.builder.appName("example-pyspark-etl")
         .config("spark.hadoop.fs.s3a.endpoint", os.environ["S3_ENDPOINT"])
         .config("spark.hadoop.fs.s3a.path.style.access", "true")
         .config("spark.hadoop.fs.s3a.endpoint.region", os.environ.get("AWS_REGION", "us-east-1"))
         .getOrCreate())
base = f"s3a://{os.environ['S3_BUCKET']}/examples"
raw_path, curated_path = f"{base}/raw/transactions/dt={args.date}", f"{base}/curated/transactions"
jdbc = dict(url=os.environ["JDBC_URL"], user=os.environ["JDBC_USER"], password=os.environ["JDBC_PASSWORD"])

# 1. Seed raw data: includes ~1% invalid rows and ~1% duplicates for the job to clean up.
categories = ["grocery", "fuel", "travel", "dining", "online", "utilities"]
raw = (spark.range(args.rows)
       .withColumn("txn_id", F.when(F.col("id") % 100 == 0, F.col("id") - 1).otherwise(F.col("id")))
       .withColumn("account_id", (F.col("id") * 7919) % 5000)
       .withColumn("category", F.element_at(F.array(*[F.lit(c) for c in categories]), (F.col("id") % 6 + 1).cast("int")))
       .withColumn("amount", F.when(F.col("id") % 97 == 0, F.lit(-1.0))
                   .otherwise(F.round(F.rand(seed=42) * 500 + 1, 2)))
       .withColumn("ts", F.timestamp_seconds(F.unix_timestamp(F.lit(args.date), "yyyy-MM-dd") + F.col("id") % 86400))
       .drop("id"))
raw.write.mode("overwrite").option("header", True).csv(raw_path)

# 2. Read back with an explicit schema, validate, de-duplicate.
schema = T.StructType([
    T.StructField("txn_id", T.LongType()), T.StructField("account_id", T.LongType()),
    T.StructField("category", T.StringType()), T.StructField("amount", T.DoubleType()),
    T.StructField("ts", T.TimestampType())])
src = spark.read.option("header", True).schema(schema).csv(raw_path)
raw_count = src.count()
clean = src.where("amount > 0 AND txn_id IS NOT NULL").dropDuplicates(["txn_id"])


# 3. Vectorised Python on the executors (Arrow): a toy risk score.
@F.pandas_udf("double")
def risk_score(amount: pd.Series, category: pd.Series) -> pd.Series:
    weight = category.map({"travel": 1.5, "online": 1.3}).fillna(1.0)
    return (amount / 500.0 * weight).clip(upper=1.0).round(4)


curated = clean.withColumn("risk", risk_score("amount", "category")).withColumn("dt", F.lit(args.date))
curated.write.mode("overwrite").partitionBy("category").parquet(curated_path)

# 4. Aggregate from the curated zone and load the warehouse table.
summary = (spark.read.parquet(curated_path).groupBy("dt", "category")
           .agg(F.count("*").alias("txn_count"), F.round(F.sum("amount"), 2).alias("total_amount"),
                F.round(F.avg("risk"), 4).alias("avg_risk"), F.countDistinct("account_id").alias("accounts")))
summary.write.format("jdbc").options(dbtable="daily_category_summary", **jdbc).mode("overwrite").save()

# 5. Reconcile: what landed in PostgreSQL must equal what is in S3.
curated_count = spark.read.parquet(curated_path).count()
loaded = spark.read.format("jdbc").options(dbtable="daily_category_summary", **jdbc).load()
db_total = loaded.agg(F.sum("txn_count")).first()[0]
assert loaded.count() == len(categories), loaded.count()
assert db_total == curated_count, (db_total, curated_count)
assert curated_count < raw_count, "validation should have removed rows"
print(f"ETL_OK raw={raw_count} curated={curated_count} rejected={raw_count - curated_count} summary_rows={loaded.count()}")
spark.stop()
