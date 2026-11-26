| scanner | CRITICAL | HIGH | MEDIUM | LOW | NEGLIGIBLE | UNKNOWN | total |
|---|---|---|---|---|---|---|---|
| trivy | 0 | 26 | 29 | 0 | 0 | 0 | 55 |
| grype | 0 | 46 | 58 | 10 | 0 | 0 | 114 |

secrets: 0   misconfigurations: 0   trivy findings with a fix available: 54
OS detected - trivy: none   grype: hummingbird
WARNING: a scanner that does not recognise the OS does not scan RPMs at all; its OS-package count of 0 means 'not scanned', not 'clean'.

## Trivy

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.21.3 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.21.3 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.21.3 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.4.8-jre | 33.7.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.6.0-jre | 33.7.2 | opt/spark/jars/spark-network-common_2.13-4.3.0.jar |
| HIGH | CVE-2026-43869 | org.apache.thrift:libthrift | 0.16.0 | 0.23.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-43871 | org.apache.thrift:libthrift | 0.16.0 | 0.24.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-2332 | org.eclipse.jetty:jetty-http | 9.4.58.v20250814 | 12.1.7, 12.0.33, 11.0.29, 10.0.28, 9.4.60 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-10050 | org.eclipse.jetty:jetty-security | 12.1.8 | 9.4.63, 10.0.31, 11.0.31, 12.0.36, 12.1.10 | opt/spark/jars/spark-core_2.13-4.3.0.jar |
| HIGH | CVE-2026-77422 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-77423 | org.jline:jline-builtins | 3.9.0 | 3.30.15, 4.3.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-56740 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-56741 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54516 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54517 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54518 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.9, 2.21.5 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2025-48924 | commons-lang:commons-lang | 2.6 | - | opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | CVE-2026-45205 | org.apache.commons:commons-configuration2 | 2.10.1 | 2.15.0 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2024-29869 | org.apache.hive:hive-exec | 2.3.10 | 4.0.1 | opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | CVE-2026-57914 | org.apache.kerby:kerby-asn1 | 2.0.3 | 2.1.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2024-6763 | org.eclipse.jetty:jetty-http | 9.4.58.v20250814 | 12.0.12 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-10051 | org.eclipse.jetty:jetty-server | 12.1.8 | 12.0.36, 12.1.10 | opt/spark/jars/spark-core_2.13-4.3.0.jar |
| MEDIUM | CVE-2026-6790 | org.eclipse.jetty:jetty-server | 12.1.8 | 12.0.35, 12.1.9 | opt/spark/jars/spark-core_2.13-4.3.0.jar |
| MEDIUM | CVE-2026-8384 | org.eclipse.jetty:jetty-util | 12.1.8 | 12.0.35, 12.1.9 | opt/spark/jars/spark-core_2.13-4.3.0.jar |
| MEDIUM | CVE-2026-77421 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77420 | org.jline:jline-reader | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |

## Grype

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.6.0-jre | 33.7.2 | /opt/spark/jars/spark-network-common_2.13-4.3.0.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.4.8-jre | 33.7.2 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.21.3 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-p6pp-m3f8-5c89 | jackson-core | 2.21.3 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-p6pp-m3f8-5c89 | jackson-core | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.21.3 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-q4xh-88c3-wmh7 | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-q4xh-88c3-wmh7 | jackson-databind | 2.21.3 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.21.3 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-114939 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-114940 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-114941 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-114942 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | GHSA-355h-qmc2-wpwf | jetty-http | 9.4.58.v20250814 | 9.4.60 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-2fvj-hgj9-j2gr | jetty-security | 12.1.8 | 12.1.10 | /opt/spark/jars/spark-core_2.13-4.3.0.jar |
| HIGH | GHSA-2v9w-34q6-wpqx | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-r2xf-8xr9-62gw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-2r2c-cx56-8933 | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-47qp-hqvx-6r3f | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-120135 | libthrift | 0.16.0 | 0.24.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-43869 | libthrift | 0.16.0 | 0.23.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-61373 | libthrift | 0.16.0 | 0.25.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-61374 | libthrift | 0.16.0 | 0.25.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-66055 | libthrift | 0.16.0 | 0.25.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-82458 | libthrift | 0.16.0 | 0.25.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-94639 | libthrift | 0.16.0 | 0.25.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-94651 | libthrift | 0.16.0 | 0.25.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | GHSA-7pwc-h2j2-rjgj | libthrift | 0.16.0 | 0.23.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | GHSA-8wv5-x4w7-5gww | libthrift | 0.16.0 | 0.24.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | GHSA-gf47-qgg5-9g9q | libthrift | 0.16.0 | 0.23.0 | /opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-53615 | libuuid | 2.42.4-2.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-107494 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-124709 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-107494 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-124709 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-14534 | python3.12 | 3.12.16-2.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-14534 | python3.12-libs | 3.12.16-2.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-337m-mw94-2v6g | commons-configuration2 | 2.10.1 | 2.15.0 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-j288-q9x7-2f5v | commons-lang | 2.6 | - | /opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | CVE-2026-128241 | expat | 2.10.0-0.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121758 | glibc | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc-common | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121758 | glibc-common | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc-minimal-langpack | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121758 | glibc-minimal-langpack | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-c476-j253-5rgq | hive-exec | 2.3.10 | 4.0.1 | /opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-5hh8-q8hv-fr38 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-9fxm-vc8v-hj55 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.21.3 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-rcqc-6cw3-h962 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.21.3 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-114943 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-114944 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-114945 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-114946 | java-21-openjdk-headless | 1:21.0.13.1.2-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-qh8g-58pp-2wxh | jetty-http | 9.4.58.v20250814 | 12.0.12 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-7p3p-8qv8-m2vh | jetty-server | 12.1.8 | 12.1.9 | /opt/spark/jars/spark-core_2.13-4.3.0.jar |
| MEDIUM | GHSA-f4v5-65jj-pcr2 | jetty-server | 12.1.8 | 12.1.10 | /opt/spark/jars/spark-core_2.13-4.3.0.jar |
| MEDIUM | GHSA-w7x5-g22v-xqhr | jetty-util | 12.1.8 | 12.1.9 | /opt/spark/jars/spark-core_2.13-4.3.0.jar |
| MEDIUM | GHSA-ph9c-7hw9-vhhw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5q95-hrpc-m3w3 | jline-reader | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-x6vc-x4v4-hjhr | kerby-asn1 | 2.0.3 | 2.1.2 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-104357 | libtirpc | 1.3.8-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-85231 | libtirpc | 1.3.8-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-107496 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121482 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-35190 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84786 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95690 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95691 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-107496 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121482 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-35190 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84786 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95690 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95691 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3.12 | 3.12.16-2.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-16052 | python3.12 | 3.12.16-2.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3.12-libs | 3.12.16-2.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-16052 | python3.12-libs | 3.12.16-2.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-134703 | expat | 2.10.0-0.3.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | filesystem | 3.18-59.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc-common | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc-common | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc-minimal-langpack | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc-minimal-langpack | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-107493 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-107493 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
