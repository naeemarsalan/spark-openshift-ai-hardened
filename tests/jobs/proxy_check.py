"""Proxy check: one request per layer, so the test can see each one arrive at the proxy.

  S3A          -> spark.hadoop.fs.s3a.proxy.host / .port
  other JVM    -> -Dhttps.proxyHost / -Dhttps.proxyPort
  Python code  -> HTTPS_PROXY / NO_PROXY environment variables
Environment: S3_ENDPOINT, S3_BUCKET, AWS_*, PROXY_TEST_URL (any HTTPS URL outside the cluster).
"""
import os
import urllib.error
import urllib.request
import uuid
from pyspark.sql import SparkSession

spark = (SparkSession.builder.appName("proxy-check")
         .config("spark.hadoop.fs.s3a.endpoint", os.environ["S3_ENDPOINT"])
         .config("spark.hadoop.fs.s3a.path.style.access", "true")
         .config("spark.hadoop.fs.s3a.endpoint.region", os.environ.get("AWS_REGION", "us-east-1"))
         .getOrCreate())
url = os.environ["PROXY_TEST_URL"]

path = f"s3a://{os.environ['S3_BUCKET']}/proxy/{uuid.uuid4().hex[:8]}"
spark.range(1000).repartition(2).write.mode("overwrite").parquet(path)
assert spark.read.parquet(path).count() == 1000
print(f"S3A_VIA_PROXY_OK {path}")

conn = spark._jvm.java.net.URI(url).toURL().openConnection()
conn.setRequestMethod("HEAD")
print(f"JVM_VIA_PROXY_OK {url} -> HTTP {conn.getResponseCode()}")

try:
    code = urllib.request.urlopen(urllib.request.Request(url, method="HEAD"), timeout=30).status
except urllib.error.HTTPError as e:
    code = e.code
print(f"PYTHON_VIA_PROXY_OK {url} -> HTTP {code}")
print("PROXY_CHECK_OK")
spark.stop()
