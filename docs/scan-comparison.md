# Scan comparison: before and after

> [!NOTE]
> **In short**
>
> - The hardened image is **safer by default**: 92 findings, against 793 for a
>   regular UBI 9 build and 1,279 for the Docker Hub image (Grype).
> - Critical findings (Trivy): 4 in the regular build, 0 here.
> - The goal is fewer findings and a smaller attack surface, not a report that reads zero.
>   What is left has no drop-in fix today, and is [listed below](#what-is-left).
> - Trivy cannot see the hardened base's OS packages. Compare that image with Grype.

**On this page**

- [The four images](#the-four-images)
- [Headline](#headline)
- [Where the findings are](#where-the-findings-are)
- [What is left](#what-is-left)
- [Older Spark versions](#older-spark-versions)
- [Caveats](#caveats)

## The four images

Same Spark version (4.2.1). Scanned on 2026-11-26 with Trivy 0.76.2 and Grype 0.122.1.

| | Image | How it is built |
|---|---|---|
| A | `docker.io/apache/spark:4.2.1` | The Docker Hub image (Ubuntu), pulled as is. It has no S3 or JDBC drivers. |
| B | **Regular UBI 9**, the "before" | [`baseline/Containerfile.regular-ubi9`](../baseline/Containerfile.regular-ubi9): full `ubi9/ubi`, `curl` + `pip install` during the build, stock Spark jars. |
| C | **`spark-ubi9`** | [`Containerfile.ubi9`](../Containerfile.ubi9): UBI 9 minimal, offline build, patched jars, pruned. |
| D | **`spark-hi`** (default) | [`Containerfile`](../Containerfile): Red Hat Hardened Images base, otherwise identical to C. |

**Reproduce it**

```bash
hack/scan.sh <image>      # one image
make compare              # B next to your own build
```

The per-CVE list lands in `reports/<image>/summary.md`. The lists behind this page are in
[evidence/scans/](evidence/scans/).

## Headline

| | A: Docker Hub | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| **Grype total** | 1,279 | 793 | 434 | **92** |
| Grype critical / high | 3 / 81 | 5 / 100 | 1 / 44 | 0 / 41 |
| **Trivy total** | 3,419 | 790 | 425 | 55 ¹ |
| Trivy critical / high | 33 / 660 | 4 / 91 | 0 / 36 | 0 / 26 ¹ |
| Embedded secrets (Trivy) | 0 | 0 | 0 | 0 |
| Hardening checks passed | 7 / 16 | 9 / 16 | 16 / 16 | 16 / 16 |
| OS packages installed | 265 | 213 | 139 | 78 |
| Image size | 1.34 GB | 3.65 GB ² | 1.92 GB | 1.83 GB |

> [!WARNING]
> ¹ **Trivy does not scan the hardened image's OS packages.** This Trivy release does not
> recognise the Hardened Images distribution ("Hummingbird"), so its 55 is Java
> libraries only. Use the Grype row (92 = 64 Java + 28 OS) to compare D
> with the others. `hack/scan.sh` prints a warning whenever a scanner fails to identify the OS.

² The regular build is this large because `chown -R` after unpacking copies the whole Spark
distribution into a second layer, and nothing is pruned. It is a common mistake, left in on
purpose.

## Where the findings are

Splitting each total into OS packages and Java libraries shows which change fixed what.

**Trivy**

| | A: Docker Hub | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| OS packages | 3,279 | 603 | 370 | not scanned |
| Java libraries | 140 | 187 | 55 | 55 |

**Grype**

| | A: Docker Hub | B: regular UBI 9 | C: spark-ubi9 | D: spark-hi |
|---|---|---|---|---|
| OS packages (unique CVEs) | 1,115 (275) | 597 (399) | 370 (228) | 28 (14) |
| Java and Python libraries (unique CVEs) | 164 (100) | 196 (85) | 64 (47) | 64 (47) |

**What caused each drop**

| Step | Change in findings | Cause |
|---|---|---|
| B → C | Java libraries: 187 → 55 (Trivy) | Jar remediation. Every critical finding goes. |
| B → C | OS packages: 603 → 370 (Trivy) | Same RHEL 9 packages, fewer of them: 139 RPMs instead of 213. |
| C → D | OS packages: 370 → 28 (Grype) | The base image. It is the only difference between C and D. |
| C → D | Java libraries: no change | The Spark layer is identical. |

<details>
<summary>More detail on each step</summary>

- **Jar remediation** is [`image/jars.txt`](../image/jars.txt) and
  [`image/jars-remove.txt`](../image/jars-remove.txt): Netty, Jackson, Log4j, Vert.x, Parquet,
  Derby, lz4, snappy, Guava and JLine replaced with patched releases.
- **B has more Java findings than A** only because it adds the S3 and JDBC drivers that A
  lacks.
- **No OS finding in B, C or D has a fixed package available.** They are CVEs Red Hat has
  assessed and not (yet) patched in that package stream. Rebuilding does not clear them. A
  smaller or newer base does, which is what D shows.

</details>

## What is left

The hardened image is not at zero, and it does not need to be for the point to hold: it
starts from far fewer findings than the other three. What remains in C and D:

| Where | Count (Trivy) | Why it is still there |
|---|---|---|
| `hadoop-client-runtime-3.5.0.jar` | 27 | Shaded copies of Jackson, Jetty 9.4, JLine, Guava and commons-configuration2 inside one jar. 3.5.0 is the newest Hadoop release. |
| `parquet-jackson-1.17.1.jar` | 19 | Shaded Jackson. 1.17.1 is the newest Parquet release. |
| `spark-core_2.13-4.2.1.jar` | 4 | Shaded Jetty 12. |
| `spark-network-common_2.13-4.2.1.jar` | 1 | Shaded Guava. |
| Hive 2.3 support jars (`libthrift`, `hive-exec`, `commons-lang`) | 4 | Needed for `enableHiveSupport()` and Hive Metastore. Kept on purpose. |
| OS packages | 370 (C) / 28 (D, Grype) | No fixed RPM published. |

This repo leaves them as they are. If your policy needs them closed, the options are to
rebuild Spark and the Hadoop client from source, to drop Hive support, or to record an
exception for each. Those are decisions for the image owner, outside the image build.

## Older Spark versions

The other tested Spark versions are built with the same hardened base and the same Spark
layer steps, but **without** the jar remediation, which is maintained for 4.2 and 4.3 only.

| Spark | Grype total | Trivy Java libraries | Trivy critical |
|---|---|---|---|
| 4.0.5 | 195 | 158 | 7 |
| 4.1.4 | 185 | 148 | 2 |
| 4.2.1 (default) | 92 | 55 | 0 |
| 4.3.0 | 92 | 55 | 0 |

Which versions work on OpenShift AI: [compatibility.md](compatibility.md).

## Caveats

- **Findings are not exploits.** Counts are scanner findings, not exploitable vulnerabilities.
  Trivy counts a CVE once per affected package, so one kernel-headers CVE can appear several
  times.
- **Numbers go stale.** Scanner databases change daily. Re-run `hack/scan.sh` before quoting
  these.
- **Scanners disagree.** Trivy and Grype rate the same CVE differently in places (Trivy uses
  the vendor's rating when one exists). Your own scanner will give a third set of numbers.
- **The comparison is like for like.** All images were scanned on the same day with the same
  scanner databases.

---

**Next:** [bring your own image](bring-your-own-image.md) · [choosing a base](choosing-a-base.md) · [what the hardening changed](hardening.md)
