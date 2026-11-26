| scanner | CRITICAL | HIGH | MEDIUM | LOW | NEGLIGIBLE | UNKNOWN | total |
|---|---|---|---|---|---|---|---|
| trivy | 0 | 36 | 257 | 132 | 0 | 0 | 425 |
| grype | 1 | 44 | 260 | 129 | 0 | 0 | 434 |

secrets: 0   misconfigurations: 0   trivy findings with a fix available: 54
OS detected - trivy: redhat   grype: redhat

## Trivy

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.21.3 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.21.3 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.21.3 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.4.8-jre | 33.7.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.6.0-jre | 33.7.2 | opt/spark/jars/spark-network-common_2.13-4.2.1.jar |
| HIGH | CVE-2026-129483 | cyrus-sasl-lib | 2.1.27-22.el9 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-76641 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-91403 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-120194 | json-glib | 1.6.6-1.el9 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-43869 | org.apache.thrift:libthrift | 0.16.0 | 0.23.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-43871 | org.apache.thrift:libthrift | 0.16.0 | 0.24.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-2332 | org.eclipse.jetty:jetty-http | 9.4.58.v20250814 | 12.1.7, 12.0.33, 11.0.29, 10.0.28, 9.4.60 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-10050 | org.eclipse.jetty:jetty-security | 12.1.8 | 9.4.63, 10.0.31, 11.0.31, 12.0.36, 12.1.10 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| HIGH | CVE-2026-77422 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-77423 | org.jline:jline-builtins | 3.9.0 | 3.30.15, 4.3.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-56740 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-56741 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-57585 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-57585 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-119373 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-119374 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-119379 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| HIGH | CVE-2026-119586 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-25068 | alsa-lib | 1.2.16.1-1.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56109 | alsa-lib | 1.2.16.1-1.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-90781 | alsa-lib | 1.2.16.1-1.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-96674 | alsa-lib | 1.2.16.1-1.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-96675 | alsa-lib | 1.2.16.1-1.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-59529 | avahi-libs | 0.8-24.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-68276 | avahi-libs | 0.8-24.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-68468 | avahi-libs | 0.8-24.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-68471 | avahi-libs | 0.8-24.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-24401 | avahi-libs | 0.8-24.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-34933 | avahi-libs | 0.8-24.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-42250 | bzip2-libs | 1.0.8-11.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54516 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54517 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-54518 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.21.3 | 2.18.9, 2.21.5 | opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2025-48924 | commons-lang:commons-lang | 2.6 | - | opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | CVE-2026-56391 | coreutils-single | 8.32-43.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2023-4504 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-107655 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-107888 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-27447 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-34978 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-34979 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-34990 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-39314 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-39316 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-55480 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-87875 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-13034 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-14017 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-19931 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4873 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5773 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9080 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-92388 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9545 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9546 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-107161 | cyrus-sasl-lib | 2.1.27-22.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-132138 | cyrus-sasl-lib | 2.1.27-22.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-120749 | dbus-libs | 1:1.12.20-10.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-32776 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-32777 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-32778 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56131 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56403 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56404 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56405 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56406 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56407 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-56412 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-76957 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-1484 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-1489 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-86469 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-115819 | glibc | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-84243 | glibc | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-115819 | glibc-common | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-84243 | glibc-common | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-115819 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-84243 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-68972 | gnupg2 | 2.3.3-5.el9_7 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-67693 | gnutls | 3.8.10-9.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-88647 | gnutls | 3.8.10-9.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-88648 | gnutls | 3.8.10-9.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-28164 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-64505 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-64506 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-22693 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-34757 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-40930 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-46675 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-49919 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-91382 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95512 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-11850 | krb5-libs | 1.21.1-10.el9_9.2 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2023-30571 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-60753 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-15028 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4426 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5745 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-27456 | libblkid | 2.37.4-28.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-13034 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-14017 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-19931 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4873 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5773 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9080 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-92388 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9545 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9546 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-125709 | libgcc | 11.5.0-17.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-92822 | libmodulemd | 2.13.0-2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-92823 | libmodulemd | 2.13.0-2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-92824 | libmodulemd | 2.13.0-2.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-27456 | libmount | 2.37.4-28.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-27456 | libsmartcols | 2.37.4-28.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-82327 | libsolv | 0.7.24-6.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9149 | libsolv | 0.7.24-6.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-9150 | libsolv | 0.7.24-6.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-125709 | libstdc++ | 11.5.0-17.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-104357 | libtirpc | 1.3.3-9.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-85231 | libtirpc | 1.3.3-9.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-85977 | libtirpc | 1.3.3-9.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-27456 | libuuid | 2.37.4-28.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-0990 | libxml2 | 2.9.13-18.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-1757 | libxml2 | 2.9.13-18.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-22185 | openldap | 2.6.13-1.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-107496 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-84786 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95690 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-45205 | org.apache.commons:commons-configuration2 | 2.10.1 | 2.15.0 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2024-29869 | org.apache.hive:hive-exec | 2.3.10 | 4.0.1 | opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | CVE-2026-57914 | org.apache.kerby:kerby-asn1 | 2.0.3 | 2.1.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2024-6763 | org.eclipse.jetty:jetty-http | 9.4.58.v20250814 | 12.0.12 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-10051 | org.eclipse.jetty:jetty-server | 12.1.8 | 12.0.36, 12.1.10 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-6790 | org.eclipse.jetty:jetty-server | 12.1.8 | 12.0.35, 12.1.9 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-8384 | org.eclipse.jetty:jetty-util | 12.1.8 | 12.0.35, 12.1.9 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-77421 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77420 | org.jline:jline-reader | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2025-11468 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-12781 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-13837 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-15282 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-4516 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-0672 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-0864 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-116566 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119170 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-11972 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-124249 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-1502 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-16052 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-19672 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-3276 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-3644 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4224 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-42308 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4360 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5713 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-6019 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7210 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7774 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-11468 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-12781 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-13837 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-15282 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-4516 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-0672 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-0864 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-116566 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119170 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-11972 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-124249 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-1502 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-16052 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-19672 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-3276 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-3644 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4224 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-42308 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4360 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5713 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-6019 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7210 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7774 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2023-45803 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2024-47081 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-50181 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-50182 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-13346 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-25645 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-32284 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-45409 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-11468 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-12781 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-4516 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-6069 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-0864 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-103995 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-114583 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-115557 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-116566 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119170 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-11972 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-12345 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-124249 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-16052 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-19672 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-3276 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-42308 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4360 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5713 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-6019 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7210 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7774 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-11468 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-12781 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-4516 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-6069 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-0864 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-103995 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-114583 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-115557 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-116566 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119170 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-11972 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-12345 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-124249 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-16052 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-19672 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-3276 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-42308 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4360 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5713 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-6019 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7210 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-7774 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2024-47081 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-50181 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2025-50182 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-25645 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-32284 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-45409 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-103242 | rpm | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95519 | rpm | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95520 | rpm | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95521 | rpm | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-103242 | rpm-libs | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95519 | rpm-libs | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95520 | rpm-libs | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-95521 | rpm-libs | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-5958 | sed | 4.8-10.el9 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119371 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119372 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119375 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119376 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119378 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-119591 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-50812 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-15059 | systemd-libs | 252-79.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| MEDIUM | CVE-2026-4105 | systemd-libs | 252-79.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2017-6519 | avahi-libs | 0.8-24.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2021-25317 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-105326 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-107885 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-107886 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-107890 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-41079 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-87876 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-11053 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-9681 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-14524 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-15079 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-15224 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-18924 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-6276 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-80230 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-82209 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-86409 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-86414 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-87864 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-92389 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-92390 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-92391 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-94266 | curl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-66382 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-24515 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-41080 | expat | 2.5.0-9.el9_9.8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2023-4156 | gawk | 5.1.0-7.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2023-32636 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-3360 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-7039 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-0988 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-1485 | glib2 | 2.68.4-29.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-100290 | glibc | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-126765 | glibc | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-97399 | glibc | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-100290 | glibc-common | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-126765 | glibc-common | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-97399 | glibc-common | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-100290 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-126765 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-97399 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2022-3219 | gnupg2 | 2.3.3-5.el9_7 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-30258 | gnupg2 | 2.3.3-5.el9_7 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-105712 | gnupg2 | 2.3.3-5.el9_7 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-24883 | gnupg2 | 2.3.3-5.el9_7 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-57062 | gnupg2 | 2.3.3-5.el9_7 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-27171 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-1632 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-5915 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-5916 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-5917 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-5918 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-17591 | libarchive | 3.5.3-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-11053 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-9681 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-14524 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-15079 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-15224 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-18924 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-6276 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-80230 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-82209 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-86409 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-86414 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-87864 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-92389 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-92390 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-92391 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-94266 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2021-46195 | libgcc | 11.5.0-17.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2022-27943 | libgcc | 11.5.0-17.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-41990 | libgcrypt | 1.10.0-13.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2021-46195 | libstdc++ | 11.5.0-17.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2022-27943 | libstdc++ | 11.5.0-17.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2023-45322 | libxml2 | 2.9.13-18.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-27113 | libxml2 | 2.9.13-18.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-0989 | libxml2 | 2.9.13-18.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-0992 | libxml2 | 2.9.13-18.el9_9.1 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2023-50495 | ncurses-base | 6.2-12.20210508.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2023-50495 | ncurses-libs | 6.2-12.20210508.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2020-12413 | nspr | 4.39.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-7531 | nspr | 4.39.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2020-12413 | nss | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-7531 | nss | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2020-12413 | nss-softokn | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-7531 | nss-softokn | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2020-12413 | nss-softokn-freebl | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-7531 | nss-softokn-freebl | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2020-12413 | nss-sysinit | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-7531 | nss-sysinit | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2020-12413 | nss-util | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-7531 | nss-util | 3.124.0-5.el9_6 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-13176 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-41996 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-9232 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-107493 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-28387 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-28388 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-28389 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-31789 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-42765 | openssl-libs | 1:3.5.9-1.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2022-41409 | pcre2 | 10.40-7.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2022-41409 | pcre2-syntax | 10.40-7.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-18739 | popt | 1.18-8.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-18743 | popt | 1.18-8.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-18839 | popt | 1.18-8.el9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-13462 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-1795 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-115559 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-18503 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-2297 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-3479 | python3 | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-13462 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-1795 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-115559 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-18503 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-2297 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-3479 | python3-libs | 3.9.25-16.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2021-3572 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-13462 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-115559 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-3479 | python3.12 | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-13462 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-115559 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-3479 | python3.12-libs | 3.12.16-2.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-44605 | rpm | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-44605 | rpm-libs | 4.16.1.3-43.el9_9 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2024-0232 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2025-70873 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-119377 | sqlite-libs | 3.34.1-11.el9_8 | - | /r/image.tar (redhat 9.9) |
| LOW | CVE-2026-27171 | zlib | 1.2.11-40.el9 | - | /r/image.tar (redhat 9.9) |

## Grype

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| CRITICAL | CVE-2026-91403 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-76641 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-129975 | gpgme | 1.15.1-6.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.6.0-jre | 33.7.2 | /opt/spark/jars/spark-network-common_2.13-4.2.1.jar |
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
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.21.3 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-355h-qmc2-wpwf | jetty-http | 9.4.58.v20250814 | 9.4.60 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-2fvj-hgj9-j2gr | jetty-security | 12.1.8 | 12.1.10 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| HIGH | GHSA-2v9w-34q6-wpqx | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-r2xf-8xr9-62gw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-2r2c-cx56-8933 | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-47qp-hqvx-6r3f | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-120194 | json-glib | 1.6.6-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
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
| HIGH | CVE-2026-124851 | libzstd | 1.5.5-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-57585 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-57585 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-119373 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-119379 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-119586 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-25068 | alsa-lib | 1.2.16.1-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56109 | alsa-lib | 1.2.16.1-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-90781 | alsa-lib | 1.2.16.1-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-96674 | alsa-lib | 1.2.16.1-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-96675 | alsa-lib | 1.2.16.1-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-59529 | avahi-libs | 0.8-24.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-68276 | avahi-libs | 0.8-24.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-68468 | avahi-libs | 0.8-24.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-68471 | avahi-libs | 0.8-24.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-24401 | avahi-libs | 0.8-24.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-34933 | avahi-libs | 0.8-24.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-42250 | bzip2-libs | 1.0.8-11.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-337m-mw94-2v6g | commons-configuration2 | 2.10.1 | 2.15.0 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-j288-q9x7-2f5v | commons-lang | 2.6 | - | /opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | CVE-2026-56391 | coreutils-single | 8.32-43.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2023-4504 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-107655 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-107888 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-27447 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-34978 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-34979 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-34990 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-39314 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-39316 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-55480 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-87875 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-13034 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-14017 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-19931 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4873 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5773 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9080 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-92388 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9545 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9546 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-107161 | cyrus-sasl-lib | 2.1.27-22.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-132138 | cyrus-sasl-lib | 2.1.27-22.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-120749 | dbus-libs | 1:1.12.20-10.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-32776 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-32777 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-32778 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56131 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56403 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56404 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56405 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56406 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56407 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-56412 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-76957 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-1484 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-1489 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-86469 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121757 | glibc | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84243 | glibc | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc-common | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121757 | glibc-common | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84243 | glibc-common | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121757 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84243 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-68972 | gnupg2 | 2.3.3-5.el9_7 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-67693 | gnutls | 3.8.10-9.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-88647 | gnutls | 3.8.10-9.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-88648 | gnutls | 3.8.10-9.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-c476-j253-5rgq | hive-exec | 2.3.10 | 4.0.1 | /opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5hh8-q8hv-fr38 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-9fxm-vc8v-hj55 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.21.3 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-rcqc-6cw3-h962 | jackson-databind | 2.21.3 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.21.3 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.21.3 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.1.jar |
| MEDIUM | CVE-2025-28164 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-64505 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-64506 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-22693 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-34757 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-40930 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-46675 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-49919 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-91382 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95512 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-qh8g-58pp-2wxh | jetty-http | 9.4.58.v20250814 | 12.0.12 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-7p3p-8qv8-m2vh | jetty-server | 12.1.8 | 12.1.9 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | GHSA-f4v5-65jj-pcr2 | jetty-server | 12.1.8 | 12.1.10 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | GHSA-w7x5-g22v-xqhr | jetty-util | 12.1.8 | 12.1.9 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | GHSA-ph9c-7hw9-vhhw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5q95-hrpc-m3w3 | jline-reader | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-x6vc-x4v4-hjhr | kerby-asn1 | 2.0.3 | 2.1.2 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-11850 | krb5-libs | 1.21.1-10.el9_9.2 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2023-30571 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-60753 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-15028 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4426 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5745 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-27456 | libblkid | 2.37.4-28.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-13034 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-14017 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-19931 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4873 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5773 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9080 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-92388 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9545 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9546 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-125709 | libgcc | 11.5.0-17.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-92822 | libmodulemd | 2.13.0-2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-92823 | libmodulemd | 2.13.0-2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-92824 | libmodulemd | 2.13.0-2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-27456 | libmount | 2.37.4-28.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-27456 | libsmartcols | 2.37.4-28.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-82327 | libsolv | 0.7.24-6.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9149 | libsolv | 0.7.24-6.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-9150 | libsolv | 0.7.24-6.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-125709 | libstdc++ | 11.5.0-17.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-104357 | libtirpc | 1.3.3-9.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-85231 | libtirpc | 1.3.3-9.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-85977 | libtirpc | 1.3.3-9.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-27456 | libuuid | 2.37.4-28.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-0990 | libxml2 | 2.9.13-18.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-1757 | libxml2 | 2.9.13-18.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-22185 | openldap | 2.6.13-1.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-107496 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84786 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95690 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-11468 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-13837 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-15282 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-4516 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-0672 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-0864 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-116566 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119170 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-11972 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-124249 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-1502 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-16052 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-19672 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-3276 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-3644 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4224 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-42308 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4360 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5713 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-6019 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7210 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7774 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-11468 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-13837 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-15282 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-4516 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-0672 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-0864 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-116566 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119170 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-11972 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-124249 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-1502 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-16052 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-19672 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-3276 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-3644 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4224 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-42308 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4360 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5713 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-6019 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7210 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7774 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2023-45803 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2024-47081 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-50181 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-50182 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-13346 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-25645 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-32284 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-45409 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-11468 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-4516 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-6069 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-0864 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-103995 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-114583 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115557 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-116566 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119170 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-11972 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-12345 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-124249 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-16052 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-19672 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-3276 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-42308 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4360 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5713 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-6019 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7210 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7774 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-11468 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-4516 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-6069 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-0864 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-103995 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-114583 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115557 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-116566 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119170 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-11972 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-12345 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-124249 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-16052 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-19672 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-3276 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-42308 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4360 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5713 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-6019 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7210 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-7774 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2024-47081 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-50181 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-50182 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-25645 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-32284 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-45409 | python3.12-pip-wheel | 23.2.1-5.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-103242 | rpm | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95519 | rpm | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95520 | rpm | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95521 | rpm | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-103242 | rpm-libs | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95519 | rpm-libs | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95520 | rpm-libs | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95521 | rpm-libs | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-5958 | sed | 4.8-10.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119371 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119372 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119375 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119376 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119378 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-119591 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-50812 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-15059 | systemd-libs | 252-79.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-4105 | systemd-libs | 252-79.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2017-6519 | avahi-libs | 0.8-24.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2021-25317 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-105326 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-107885 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-107886 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-107890 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-41079 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-87876 | cups-libs | 1:2.3.3op2-39.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-11053 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-9681 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-14524 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-15079 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-15224 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-18924 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-6276 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-80230 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-82209 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-86409 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-86414 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-87864 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-92389 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-92390 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-92391 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-94266 | curl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-66382 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-24515 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-41080 | expat | 2.5.0-9.el9_9.8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2023-4156 | gawk | 5.1.0-7.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2023-32636 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-3360 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-7039 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-0988 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-1485 | glib2 | 2.68.4-29.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-97399 | glibc | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc-common | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc-common | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-97399 | glibc-common | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-97399 | glibc-minimal-langpack | 2.34-290.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2022-3219 | gnupg2 | 2.3.3-5.el9_7 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-30258 | gnupg2 | 2.3.3-5.el9_7 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-105712 | gnupg2 | 2.3.3-5.el9_7 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-24883 | gnupg2 | 2.3.3-5.el9_7 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-57062 | gnupg2 | 2.3.3-5.el9_7 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-27171 | java-21-openjdk-headless | 1:21.0.13.1.2-1.2.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-1632 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-5915 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-5916 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-5917 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-5918 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-17591 | libarchive | 3.5.3-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-11053 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-9681 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-14524 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-15079 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-15224 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-18924 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-6276 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-80230 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-82209 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-86409 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-86414 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-87864 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-92389 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-92390 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-92391 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-94266 | libcurl-minimal | 7.76.1-44.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2021-46195 | libgcc | 11.5.0-17.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2022-27943 | libgcc | 11.5.0-17.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-41990 | libgcrypt | 1.10.0-13.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2021-46195 | libstdc++ | 11.5.0-17.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2022-27943 | libstdc++ | 11.5.0-17.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2023-45322 | libxml2 | 2.9.13-18.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-27113 | libxml2 | 2.9.13-18.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-0989 | libxml2 | 2.9.13-18.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-0992 | libxml2 | 2.9.13-18.el9_9.1 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2023-50495 | ncurses-base | 6.2-12.20210508.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2023-50495 | ncurses-libs | 6.2-12.20210508.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2020-12413 | nspr | 4.39.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-7531 | nspr | 4.39.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2020-12413 | nss | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-7531 | nss | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2020-12413 | nss-softokn | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-7531 | nss-softokn | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2020-12413 | nss-softokn-freebl | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-7531 | nss-softokn-freebl | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2020-12413 | nss-sysinit | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-7531 | nss-sysinit | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2020-12413 | nss-util | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-7531 | nss-util | 3.124.0-5.el9_6 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-41996 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-9232 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-107493 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-28387 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-28388 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-28389 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-31789 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-42765 | openssl-libs | 1:3.5.9-1.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2022-41409 | pcre2 | 10.40-7.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2022-41409 | pcre2-syntax | 10.40-7.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-13462 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-1795 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-115559 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-18503 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-2297 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-3479 | python3 | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-13462 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-1795 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-115559 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-18503 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-2297 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-3479 | python3-libs | 3.9.25-16.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2021-3572 | python3-pip-wheel | 21.3.1-2.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-13462 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-115559 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-3479 | python3.12 | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-13462 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-115559 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-3479 | python3.12-libs | 3.12.16-2.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-44605 | rpm | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-44605 | rpm-libs | 4.16.1.3-43.el9_9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2013-4235 | shadow-utils | 2:4.9-17.el9 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2024-0232 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2025-70873 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-119377 | sqlite-libs | 3.34.1-11.el9_8 | - | /var/lib/rpm/rpmdb.sqlite |
| LOW | CVE-2026-27171 | zlib | 1.2.11-40.el9 | - | /var/lib/rpm/rpmdb.sqlite |
