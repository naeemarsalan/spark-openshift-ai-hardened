"""S3A + JDBC round-trip. Works with spark-submit and with Spark Connect (set SPARK_REMOTE).

Environment (credentials come from Secrets, never from code or the image):
  S3_ENDPOINT, S3_BUCKET, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY   - S3A (the last two are read by the AWS SDK itself)
  JDBC_URL, JDBC_USER, JDBC_PASSWORD                                 - e.g. jdbc:postgresql://host:5432/db
"""
import os
import uuid
from pyspark.sql import SparkSession

b = SparkSession.builder.appName("s3-jdbc-smoke")
if os.environ.get("SPARK_REMOTE"):
    b = b.remote(os.environ["SPARK_REMOTE"])
else:
    b = (b.config("spark.hadoop.fs.s3a.endpoint", os.environ["S3_ENDPOINT"])
          .config("spark.hadoop.fs.s3a.path.style.access", "true")
          .config("spark.hadoop.fs.s3a.endpoint.region", os.environ.get("AWS_REGION", "us-east-1")))
spark = b.getOrCreate()

run = uuid.uuid4().hex[:8]
src = spark.range(5000).selectExpr("id", "id % 7 AS bucket", "cast(id AS string) AS label")

path = f"s3a://{os.environ['S3_BUCKET']}/smoke/{run}"
src.write.mode("overwrite").parquet(path)
assert spark.read.parquet(path).count() == 5000
print(f"S3A_OK {path}")

jdbc = dict(url=os.environ["JDBC_URL"], user=os.environ["JDBC_USER"], password=os.environ["JDBC_PASSWORD"])
table = f"smoke_{run}"
spark.read.parquet(path).write.format("jdbc").options(dbtable=table, **jdbc).mode("overwrite").save()
back = spark.read.format("jdbc").options(dbtable=table, **jdbc).load()
assert back.count() == 5000 and back.groupBy("bucket").count().count() == 7
print(f"JDBC_OK {table}")
print("S3_JDBC_SMOKE_OK")
spark.stop()
