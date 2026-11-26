"""PySpark batch smoke test: JVM <-> Python workers, Arrow, pandas UDFs."""
import os
import pandas as pd
from pyspark.sql import SparkSession, functions as F

spark = SparkSession.builder.appName("pyspark-smoke").getOrCreate()


@F.pandas_udf("long")
def plus_one(s: pd.Series) -> pd.Series:
    return s + 1


@F.udf("string")
def whoami(_):
    return f"{os.getuid()}:{os.getgid()}"


df = spark.range(1000).select(plus_one("id").alias("v"))
assert df.agg(F.sum("v")).first()[0] == sum(range(1, 1001))
assert len(df.limit(10).toPandas()) == 10
ids = {r[0] for r in spark.range(8).repartition(4).select(whoami("id")).distinct().collect()}
print(f"PYSPARK_SMOKE_OK spark={spark.version} driver_uid={os.getuid()}:{os.getgid()} worker_uid={sorted(ids)}")
spark.stop()
