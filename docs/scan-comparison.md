# Scan comparison: before and after

> [!NOTE]
> **In short**
>
> - Regular UBI 9 build: **793** findings. This repo on UBI 9 minimal: **434**. This repo on
>   the hardened base: **114** (Grype).
> - Critical findings (Trivy): 4 → 0.
> - **Zero is not reached.** Nothing that remains has a fixed version to move to.
> - Trivy cannot see the hardened base's OS packages. Compare that image with Grype.

**On this page**

- [The four images](#the-four-images)
- [Headline](#headline)
- [Where the findings are](#where-the-findings-are)
- [What is still open](#what-is-still-open)
- [Caveats](#caveats)

## The four images

Same Spark version and the same features: `spark-submit`, Spark Connect, Scala and Python, S3A
and JDBC drivers. Scanned on 2026-11-25 with Trivy 0.76.2 and Grype 0.122.1.

| | Image | How it is built |
|---|---|---|
| A | `docker.io/apache/spark:4.3.0` | Upstream's published image (Ubuntu). Reference only. It has no S3 or JDBC drivers. |
| B | **Regular UBI 9**, the "before" | [`baseline/Containerfile.regular-ubi9`](../baseline/Containerfile.regular-ubi9): full `ubi9/ubi`, `curl` + `pip install` during the build, stock Spark jars. |
| C | **`spark-ubi9`** | [`Containerfile.ubi9`](../Containerfile.ubi9): UBI 9 minimal, offline build, patched jars, pruned. |
| D | **`spark-hi`** | [`Containerfile`](../Containerfile): Red Hat Hardened Images base, otherwise identical to C. |

**Reproduce it**

```bash
hack/scan.sh <image>      # one image
make compare              # B next to your own build
```

The per-CVE list lands in `reports/<image>/summary.md`. The lists behind this page are in
[evidence/scans/](evidence/scans/).

## Headline

| | A: apache/spark | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| **Grype total** | 1,335 | 793 | 434 | **114** |
| Grype critical / high | 3 / 81 | 5 / 100 | 1 / 44 | 0 / 46 |
| **Trivy total** | 3,409 | 790 | 425 | 55 ¹ |
| Trivy critical / high | 32 / 634 | 4 / 91 | 0 / 36 | 0 / 26 ¹ |
| Embedded secrets (Trivy) | 0 | 0 | 0 | 0 |
| Misconfigurations (Trivy) | 0 | 3 | 0 | 0 |
| Hardening checks passed | 7 / 16 | 9 / 16 | 16 / 16 | 16 / 16 |
| OS packages installed | 265 | 213 | 139 | 78 |
| Image size | 1.35 GB | 3.69 GB ² | 1.94 GB | 1.85 GB |

> [!WARNING]
> ¹ **Trivy does not scan the hardened image's OS packages.** Trivy 0.76 does not recognise
> the Hardened Images distribution ("Hummingbird"), so its 55 is Java libraries only. Use the
> Grype row (114 = 64 Java + 50 OS) to compare D with the others. `hack/scan.sh` prints a
> warning whenever a scanner fails to identify the OS.

² The regular build is this large because `chown -R` after unpacking copies the whole Spark
distribution into a second layer, and nothing is pruned. It is a common mistake, left in on
purpose.

## Where the findings are

Splitting each total into OS packages and Java libraries shows which change fixed what.

**Trivy**

| | A: apache/spark | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| OS packages | 3,269 | 603 | 370 | not scanned |
| Java libraries | 140 | 187 | 55 | 55 |

**Grype**

| | A: apache/spark | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| OS packages (unique CVEs) | 1,171 (286) | 597 (399) | 370 (228) | 50 (29) |
| Java libraries (unique CVEs) | 149 (85) | 196 (85) | 64 (47) | 64 (47) |
| OS findings with a fix available | 49 | 0 | 0 | 0 |

**What caused each drop**

| Step | Change in findings | Cause |
|---|---|---|
| B → C | Java libraries: 187 → 55 | Jar remediation. All four critical findings go. |
| B → C | OS packages: 603 → 370 | Same RHEL 9 packages, fewer of them: 139 RPMs instead of 213. |
| C → D | OS packages: 370 → 50 | The base image. It is the only difference between C and D. |
| C → D | Java libraries: 64 → 64 | No change. The Spark layer is identical. |

<details>
<summary>More detail on each step</summary>

- **Jar remediation** is [`image/jars.txt`](../image/jars.txt) and
  [`image/jars-remove.txt`](../image/jars-remove.txt): Netty, Jackson, Log4j, Vert.x, Parquet,
  Derby, lz4, snappy, Guava and JLine replaced with patched releases.
- **B has more Java findings than A** only because it adds the S3 and JDBC drivers that A
  lacks.
- **No OS finding in B, C or D has a fix available.** They are CVEs Red Hat has assessed and
  not (yet) patched in that package stream. Rebuilding does not clear them. A different base,
  or a documented exception, does.

</details>

## What is still open

"Zero findings" is not reached on any base. What remains in C and D:

| Where | Count (Trivy) | Why it cannot be swapped out |
|---|---|---|
| `hadoop-client-runtime-3.5.0.jar` | 27 | Shaded copies of Jackson 2.18.6, Jetty 9.4.58, JLine, Guava, Kerby and commons-configuration2 inside one jar. 3.5.0 is the newest Hadoop release. |
| `parquet-jackson-1.17.1.jar` | 19 | Shaded Jackson 2.21.3. 1.17.1 is the newest Parquet release. |
| `spark-core_2.13-4.3.0.jar` | 4 | Shaded Jetty 12.1.8. |
| `spark-network-common_2.13-4.3.0.jar` | 1 | Shaded Guava 33.6.0. |
| Hive 2.3 support jars (`libthrift`, `hive-exec`, `commons-lang`) | 4 | Needed for `enableHiveSupport()` and Hive Metastore. |
| OS packages | 370 (C) / 50 (D, Grype) | No fixed RPM published. |

**Options for closing them**

- Rebuild Spark and the Hadoop client from source.
- Re-shade the affected jars.
- Drop Hive support.
- Record VEX justifications.

These are decisions for the image owner. See
[choosing-a-base.md](choosing-a-base.md#what-neither-base-fixes).

## Caveats

- **Findings are not exploits.** Counts are scanner findings, not exploitable vulnerabilities.
  Trivy counts a CVE once per affected package, so one kernel-headers CVE can appear several
  times.
- **Numbers go stale.** Scanner databases change daily. Re-run `hack/scan.sh` before quoting
  these.
- **Scanners disagree.** Trivy and Grype rate the same CVE differently in places (Trivy uses
  the vendor's rating when one exists). Your own scanner will give a third set of numbers.
- **The comparison is like for like.** All four images were scanned on the same day with the
  same scanner databases.

---

**Next:** [choosing a base](choosing-a-base.md) · [what the hardening changed](hardening.md)
