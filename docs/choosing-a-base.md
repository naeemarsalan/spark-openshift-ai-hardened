# Choosing a base: hardened image or UBI 9

The repo builds the same Spark layer on two Red Hat bases. Everything in
[hardening.md](hardening.md) applies to both. This page is only about the base.

| | Red Hat Hardened Images (`Containerfile`) | UBI 9 minimal (`Containerfile.ubi9`) |
|---|---|---|
| Image | `oci.arsalan.io/spark/spark-hi` | `oci.arsalan.io/spark/spark-ubi9` |
| Built from | `registry.access.redhat.com/hi/openjdk:21-runtime-builder` → `FROM scratch` | `registry.access.redhat.com/ubi9/ubi-minimal:9.9` |
| OS packages | 78 | 139 |
| OS findings (Grype) | 50 (29 unique CVEs) | 370 (228 unique CVEs) |
| OS findings with a fix available | 0 | 0 |
| Package manager in the image | none | `microdnf`, `rpm` |
| `curl` in the image | no | yes |
| Trivy scans its OS packages | **no** (0.76.2 does not recognise the OS) | yes |
| Grype scans its OS packages | yes | yes |
| Release model | rolling | RHEL 9 minor releases, long lifecycle |
| Tested on OpenShift AI 3.5 under `restricted-v2` | yes | yes |

Both pass all 16 hardening checks and all functional and security tests.

## Use the hardened image when

- **The target is the lowest possible finding count.** It has about one seventh of the OS
  findings, because it has fewer packages and newer ones.
- **You want the smallest attack surface.** No package manager, no `curl`, no setuid programs
  were ever installed, rather than installed and then stripped.
- **Your scanner understands it.** Check this first. A scanner that does not recognise the
  distribution reports zero OS findings, which looks like a pass and is not one.

## Use UBI 9 when

- **Your scanner or compliance tooling does not recognise the hardened distribution yet**, or
  policy requires an OS your tooling has a benchmark for (for example a RHEL 9 STIG or CIS
  profile).
- **You need a fixed OS version for a long time.** UBI 9 follows RHEL 9's lifecycle; the
  hardened images move forward continuously, so a rebuild can bring a new major version of a
  package.
- **You need to debug in the container.** UBI minimal still has `microdnf` and `curl`.
- **You need packages that are not in the hardened repository.**

## What the hardened base costs you

- **A rolling base.** Pin the builder image by digest and rebuild on a schedule; do not track
  a floating tag in production.
- **Scanner support.** Trivy 0.76.2 skipped its RPMs entirely. Grype 0.122.1 handled them. The
  bank's scanner is unknown and must be tried.
- **A slightly unusual build.** There is no ready-made runtime image to start `FROM`: the
  builder installs RPMs into a directory and the final stage copies it into `scratch`. It is
  about ten extra lines in the Containerfile, and the image needs its release package installed
  or scanners cannot identify the OS at all.
- **No fallback tools.** `nss_wrapper` is not available, so the image relies on the container
  runtime to supply a passwd entry for the assigned UID. CRI-O on OpenShift does; this is
  verified on a real cluster.

## What neither base fixes

Changing the base does nothing for the 55 Java-library findings: they are inside Spark's own
dependencies and are identical on both. Nor does either base reach zero OS findings, because
none of the remaining ones has a fixed package to move to. Getting to an actual zero needs
decisions outside the image build:

1. **Shaded libraries (51 findings).** Rebuild Spark and the Hadoop client from source with
   newer dependency versions, re-shade the affected jars in the builder stage, or record VEX
   justifications for them.
2. **Hive 2.3 jars (4 findings).** Removing them clears the findings and removes
   `enableHiveSupport()` and Hive Metastore access.
3. **OS findings with no fix.** Accept with the vendor's assessment as justification, which is
   the normal treatment for "will not fix" and "fix deferred" Red Hat CVEs.

## Not verified

- The support and subscription terms of Red Hat Hardened Images, and whether FIPS-validated
  variants exist for the packages used here. Confirm with Red Hat before recommending them to a
  regulated customer.
- How the bank's scanner treats either base.
