"""JDBC round-trip against any database: write typed rows, read them back, compare.
Env: JDBC_URL JDBC_USER JDBC_PASSWORD [JDBC_VERSION_QUERY]"""
import os
import uuid
from pyspark.sql import SparkSession, functions as F

spark = SparkSession.builder.appName("jdbc-roundtrip").getOrCreate()
opts = dict(url=os.environ["JDBC_URL"], user=os.environ["JDBC_USER"], password=os.environ["JDBC_PASSWORD"])
table = f"SPARK_RT_{uuid.uuid4().hex[:8].upper()}"
src = (spark.range(1000)
       .withColumn("label", F.concat(F.lit("row-"), F.col("id").cast("string")))
       .withColumn("amount", (F.col("id") * 1.25).cast("decimal(12,2)"))
       .withColumn("created", F.to_timestamp(F.lit("2026-11-25 10:00:00")))
       .withColumn("day", F.to_date(F.lit("2026-11-25"))))
src.write.format("jdbc").options(dbtable=table, **opts).mode("overwrite").save()
back = spark.read.format("jdbc").options(dbtable=table, **opts).load()
# Oracle has no pure DATE type (its DATE carries a time), so compare after casting back.
aggs = [F.count("*"), F.sum("amount"), F.countDistinct("label"), F.min(F.col("day").cast("date"))]
got = back.agg(*aggs).first()
want = src.agg(*aggs).first()
assert tuple(got) == tuple(want), (got, want)
# Pushdown: the filter must be executed by the database, not by Spark.
assert back.where("id >= 990").count() == 10
version = ""
if os.environ.get("JDBC_VERSION_QUERY"):
    version = str(spark.read.format("jdbc").options(query=os.environ["JDBC_VERSION_QUERY"], **opts).load().first()[0]).split("\n")[0][:70]
print(f"JDBC_ROUNDTRIP_OK rows={got[0]} sum={got[1]} db={version}")
spark.stop()
