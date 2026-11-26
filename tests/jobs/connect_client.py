"""Spark Connect client smoke test. Needs SPARK_REMOTE=sc://host:15002."""
import os
import pandas as pd
from pyspark.sql import SparkSession, functions as F

spark = SparkSession.builder.remote(os.environ["SPARK_REMOTE"]).getOrCreate()


@F.pandas_udf("long")
def square(s: pd.Series) -> pd.Series:
    return s * s


pdf = spark.range(100).select(square("id").alias("sq")).toPandas()
assert int(pdf.sq.sum()) == sum(i * i for i in range(100))
assert spark.sql("SELECT 21 * 2 AS answer").first().answer == 42
print(f"CONNECT_SMOKE_OK server_version={spark.version}")
spark.stop()
