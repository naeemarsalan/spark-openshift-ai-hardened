# Choosing a base: hardened image or UBI 9

> [!NOTE]
> **In short**
>
> - **Default: the hardened image, `spark-hi`.** It is safer by default: 28 OS findings
>   against 370 on UBI 9.
> - **Check one thing first:** that your scanner recognises Red Hat Hardened Images.
> - **It does not, or you need a RHEL 9 benchmark or a fixed OS version?** Use `spark-ubi9`.
> - **Not sure?** Scan both with your scanner first. That answers it.
>
> The Spark layer and all the hardening in [hardening.md](hardening.md) are the same on both.

## Decide in three questions

1. Does your scanner report OS packages for `spark-hi`? **No, or it reports zero:** use `spark-ubi9`.
2. Does policy require a RHEL 9 benchmark or a fixed OS version? **Yes:** use `spark-ubi9`.
3. Do you need a shell with `curl` or a package manager? **Yes:** use `spark-ubi9`.
4. Otherwise use `spark-hi`.

> [!WARNING]
> A scanner that does not recognise the distribution reports **zero OS findings**. That looks
> like a pass and is not one. Trivy 0.76.2 does exactly this with the hardened base.

## Side by side

| | Red Hat Hardened Images | UBI 9 minimal |
|---|---|---|
| File | `Containerfile` | `Containerfile.ubi9` |
| Image | `oci.arsalan.io/spark/spark-hi` | `oci.arsalan.io/spark/spark-ubi9` |
| Built from | `registry.access.redhat.com/hi/openjdk:21-runtime-builder` → `FROM scratch` | `registry.access.redhat.com/ubi9/ubi-minimal:9.9` |
| OS packages | 78 | 139 |
| OS findings (Grype) | 28 (14 unique CVEs) | 370 (228 unique CVEs) |
| OS findings with a fix available | 0 | 0 |
| Package manager in the image | none | `microdnf`, `rpm` |
| `curl` in the image | no | yes |
| Trivy scans its OS packages | **no** (0.76.2 does not recognise the OS) | yes |
| Grype scans its OS packages | yes | yes |
| Release model | rolling | RHEL 9 minor releases, long lifecycle |
| Hardening checks | 16 / 16 | 16 / 16 |
| Tested on OpenShift AI 3.5 under `restricted-v2` | yes | yes |

The Docker Hub image is the third starting point. It is compared in
[bring-your-own-image.md](bring-your-own-image.md#three-starting-points).

## Use the hardened image when

- **You want the lowest finding count.** Fewer packages, and newer ones.
- **You want the smallest attack surface.** No package manager, no `curl`, no setuid programs.
  They were never installed, rather than installed and then stripped.
- **Your scanner understands it.** Check this first.

## Use UBI 9 when

- **Your scanner or compliance tooling does not recognise the hardened distribution yet.**
- **Policy requires an OS your tooling has a benchmark for**, such as a RHEL 9 STIG or CIS
  profile.
- **You need a fixed OS version for a long time.** UBI 9 follows RHEL 9's lifecycle. The
  hardened images move forward continuously, so a rebuild can bring a new major version of a
  package.
- **You need to debug in the container.** UBI minimal still has `microdnf` and `curl`.
- **You need packages that are not in the hardened repository.**

## What the hardened base costs you

| Cost | What to do about it |
|---|---|
| **A rolling base** | Pin the builder image by digest and rebuild on a schedule. Do not track a floating tag in production. |
| **Scanner support** | Trivy 0.76.2 skipped its RPMs entirely. Grype 0.122.1 handled them. Try your own scanner before you decide. |
| **A slightly unusual build** | There is no ready-made runtime image to start `FROM`. The builder installs RPMs into a directory and the final stage copies it into `scratch`: about ten extra lines. The release package must be installed, or scanners cannot identify the OS at all. |
| **No fallback tools** | `nss_wrapper` is not available, so the image relies on the container runtime to supply a passwd entry for the assigned UID. CRI-O on OpenShift does. This is verified on a real cluster. |

## What neither base changes

The base does nothing for the **55 Java-library findings**. They are inside Spark's
own dependencies and are identical on both. Neither base reaches zero OS findings either,
because none of the remaining ones has a fixed package to move to.

That is expected. The aim is the safer starting point, not zero. What is left and why:
[scan-comparison.md](scan-comparison.md#what-is-left).

## Not verified

- The support and subscription terms of Red Hat Hardened Images.
- Whether FIPS-validated variants exist for the packages used here.
- How your organisation's scanner treats either base.

> [!IMPORTANT]
> Confirm the first two with Red Hat before adopting the hardened images in a regulated
> environment.

---

**Next:** [bring your own image](bring-your-own-image.md) · [scan comparison](scan-comparison.md) · [walkthrough](walkthrough.md)
