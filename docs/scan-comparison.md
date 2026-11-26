# Scan comparison: before and after

Four images, same Spark version, same features (spark-submit, Spark Connect, Scala and Python,
S3A and JDBC drivers), scanned on 2026-11-25 with Trivy 0.76.2 and Grype 0.122.1.

| | Image | How it is built |
|---|---|---|
| A | `docker.io/apache/spark:4.3.0` | Upstream's published image (Ubuntu). Reference only; it has no S3 or JDBC drivers. |
| B | **Regular UBI 9** | [`baseline/Containerfile.regular-ubi9`](../baseline/Containerfile.regular-ubi9): full `ubi9/ubi`, `curl` + `pip install` during the build, stock Spark jars. The "before". |
| C | **`spark-ubi9`** | [`Containerfile.ubi9`](../Containerfile.ubi9): UBI 9 minimal, offline build, patched jars, pruned. |
| D | **`spark-hi`** | [`Containerfile`](../Containerfile): Red Hat Hardened Images base, otherwise identical to C. |

Reproduce any row with `hack/scan.sh <image>`; the full per-CVE list lands in
`reports/<image>/summary.md`.

## Headline

| | A: apache/spark | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| **Trivy total** | 3,409 | 790 | 425 | 55 ¹ |
| Trivy critical / high | 32 / 634 | 4 / 91 | 0 / 36 | 0 / 26 ¹ |
| **Grype total** | 1,335 | 793 | 434 | 114 |
| Grype critical / high | 3 / 81 | 5 / 100 | 1 / 44 | 0 / 46 |
| Embedded secrets (Trivy) | 0 | 0 | 0 | 0 |
| Misconfigurations (Trivy) | 0 | 3 | 0 | 0 |
| Hardening checks passed (`hack/verify-image.sh`) | 7 / 16 | 9 / 16 | 16 / 16 | 16 / 16 |
| OS packages installed | 265 | 213 | 139 | 78 |
| Image size | 1.35 GB | 3.69 GB ² | 1.94 GB | 1.85 GB |

¹ **Trivy does not scan the hardened image's OS packages.** Trivy 0.76 does not recognise the
Hardened Images distribution ("Hummingbird"), so its 55 is Java libraries only. Use the Grype
row (114 = 64 Java + 50 OS) when comparing D with the others. `hack/scan.sh` prints a warning
whenever a scanner fails to identify the OS.

² The regular build is this large because `chown -R` after unpacking copies the whole Spark
distribution into a second layer, and nothing is pruned. It is a common mistake, left in on
purpose.

## Where the findings are

Splitting each total into operating-system packages and Java libraries shows which change fixed
what.

| Trivy findings | A: apache/spark | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| OS packages | 3,269 | 603 | 370 | not scanned |
| Java libraries | 140 | 187 | 55 | 55 |

| Grype findings | A: apache/spark | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| OS packages (unique CVEs) | 1,171 (286) | 597 (399) | 370 (228) | 50 (29) |
| Java libraries (unique CVEs) | 149 (85) | 196 (85) | 64 (47) | 64 (47) |
| OS findings with a fix available | 49 | 0 | 0 | 0 |

Reading across:

- **B → C, Java libraries: 187 → 55.** This is the jar remediation
  ([`image/jars.txt`](../image/jars.txt), [`image/jars-remove.txt`](../image/jars-remove.txt)):
  Netty, Jackson, Log4j, Vert.x, Parquet, Derby, lz4, snappy, Guava and JLine replaced with
  patched releases. All four critical findings go. B has more Java findings than A only because
  it adds the S3 and JDBC drivers that A lacks.
- **B → C, OS packages: 603 → 370.** Same RHEL 9 packages, fewer of them: UBI minimal plus only
  the RPMs Spark needs (139 instead of 213).
- **C → D, OS packages: 370 → 50.** The only difference between C and D is the base image. The
  Java numbers are identical because the Spark layer is identical.
- **No OS finding in B, C or D has a fix available.** They are CVEs Red Hat has assessed and
  not (yet) patched in that package stream. Rebuilding does not clear them; a different base, or
  a documented exception, does.

## What is still open

"Zero findings" is not reached on any base. What remains in C and D:

| Where | Count (Trivy) | Why it cannot be swapped out |
|---|---|---|
| `hadoop-client-runtime-3.5.0.jar` | 27 | Shaded copies of Jackson 2.18.6, Jetty 9.4.58, JLine, Guava, Kerby, commons-configuration2 inside one jar. 3.5.0 is the newest Hadoop release. |
| `parquet-jackson-1.17.1.jar` | 19 | Shaded Jackson 2.21.3. 1.17.1 is the newest Parquet release. |
| `spark-core_2.13-4.3.0.jar` | 4 | Shaded Jetty 12.1.8. |
| `spark-network-common_2.13-4.3.0.jar` | 1 | Shaded Guava 33.6.0. |
| Hive 2.3 support jars (`libthrift`, `hive-exec`, `commons-lang`) | 4 | Needed for `enableHiveSupport()` / Hive Metastore. |
| OS packages | 370 (C) / 50 (D, Grype) | No fixed RPM published. |

The options for closing these (rebuild Spark and the Hadoop client from source, re-shade the
jars, drop Hive support, or record VEX justifications) are decisions for the image owner; see
[choosing-a-base.md](choosing-a-base.md#what-neither-base-fixes).

## Caveats

- Counts are scanner findings, not exploitable vulnerabilities. Trivy counts a CVE once per
  affected package, so one kernel-headers CVE can appear several times.
- Scanner databases change daily. Re-run `hack/scan.sh` before quoting these numbers.
- Trivy and Grype disagree on severity for the same CVE in places (Trivy uses the vendor's
  rating when one exists). The customer's own scanner will give a third set of numbers.
- All four images were scanned on the same day with the same scanner databases, so the
  comparison is like for like.
