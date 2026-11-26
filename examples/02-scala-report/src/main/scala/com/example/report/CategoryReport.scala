package com.example.report

import org.apache.spark.sql.{Dataset, SparkSession}
import org.apache.spark.sql.expressions.Window
import org.apache.spark.sql.functions._

/** One curated transaction, as written by example 1. */
case class Txn(txn_id: Long, account_id: Long, amount: Double, risk: Double, category: String)

/** Example 2 - Scala batch job (spark-submit --class).
  *
  * Reads the curated Parquet written by the PySpark ETL from S3, uses the typed Dataset API and
  * a window function to find the highest-spending accounts per category, and writes the result
  * to PostgreSQL. Configuration comes from the environment (a Kubernetes Secret).
  */
object CategoryReport {
  def main(args: Array[String]): Unit = {
    val topN = args.headOption.map(_.toInt).getOrElse(3)
    val env = sys.env
    val spark = SparkSession.builder().appName("example-scala-report")
      .config("spark.hadoop.fs.s3a.endpoint", env("S3_ENDPOINT"))
      .config("spark.hadoop.fs.s3a.path.style.access", "true")
      .config("spark.hadoop.fs.s3a.endpoint.region", env.getOrElse("AWS_REGION", "us-east-1"))
      .getOrCreate()
    import spark.implicits._

    val txns: Dataset[Txn] = spark.read
      .parquet(s"s3a://${env("S3_BUCKET")}/examples/curated/transactions")
      .select("txn_id", "account_id", "amount", "risk", "category").as[Txn]

    // Typed transformation running as compiled Scala on the executors.
    val highRisk = txns.filter(t => t.risk >= 0.5).count()

    val perAccount = txns.groupBy($"category", $"account_id")
      .agg(round(sum($"amount"), 2).as("spend"), count(lit(1)).as("txns"))
    val ranked = perAccount
      .withColumn("rank", row_number().over(Window.partitionBy($"category").orderBy($"spend".desc)))
      .where($"rank" <= topN)

    val jdbc = Map("url" -> env("JDBC_URL"), "user" -> env("JDBC_USER"), "password" -> env("JDBC_PASSWORD"),
      "dbtable" -> "top_accounts_by_category")
    ranked.write.format("jdbc").options(jdbc).mode("overwrite").save()

    val loaded = spark.read.format("jdbc").options(jdbc).load()
    val categories = txns.select($"category").distinct().count()
    require(loaded.count() == categories * topN, s"expected ${categories * topN} rows, got ${loaded.count()}")
    println(s"SCALA_REPORT_OK categories=$categories top_n=$topN rows=${loaded.count()} high_risk_txns=$highRisk")
    spark.stop()
  }
}
