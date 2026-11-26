| scanner | CRITICAL | HIGH | MEDIUM | LOW | NEGLIGIBLE | UNKNOWN | total |
|---|---|---|---|---|---|---|---|
| trivy | 7 | 71 | 75 | 5 | 0 | 0 | 158 |
| grype | 7 | 86 | 90 | 12 | 0 | 0 | 195 |

secrets: 0   misconfigurations: 0   trivy findings with a fix available: 146
OS detected - trivy: none   grype: hummingbird
WARNING: a scanner that does not recognise the OS does not scan RPMs at all; its OS-package count of 0 means 'not scanned', not 'clean'.

## Trivy

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| CRITICAL | CVE-2026-75595 | io.netty:netty-handler | 4.1.118.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/netty-handler-4.1.118.Final.jar |
| CRITICAL | CVE-2024-47561 | org.apache.avro:avro | 1.9.2 | 1.11.4 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| CRITICAL | CVE-2022-46337 | org.apache.derby:derby | 10.16.1.1 | 10.14.2.1, 10.16.1.2, 10.15.2.1 | opt/spark/jars/derby-10.16.1.1.jar |
| CRITICAL | CVE-2025-14813 | org.bouncycastle:bcprov-jdk18on | 1.80 | 1.80.2, 1.81.1, 1.84 | opt/spark/jars/bcprov-jdk18on-1.80.jar |
| CRITICAL | CVE-2026-8763 | org.bouncycastle:bcprov-jdk18on | 1.80 | 1.85 | opt/spark/jars/bcprov-jdk18on-1.80.jar |
| CRITICAL | CVE-2019-10202 | org.codehaus.jackson:jackson-mapper-asl | 1.9.13 | - | opt/spark/examples/jars/jackson-mapper-asl-1.9.13.jar |
| CRITICAL | CVE-2019-10202 | org.codehaus.jackson:jackson-mapper-asl | 1.9.13 | - | opt/spark/hive-jackson/jackson-mapper-asl-1.9.13.jar |
| HIGH | CVE-2025-52999 | com.fasterxml.jackson.core:jackson-core | 2.12.7 | 2.15.0 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.12.7 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/jackson-core-2.18.6.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.18.1 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/jackson-core-2.18.6.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.18.1 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.12.7 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/jackson-core-2.18.6.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.18.1 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.4.0-jre | 33.7.2 | opt/spark/jars/guava-33.4.0-jre.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.4.0-jre | 33.7.2 | opt/spark/jars/spark-network-common_2.13-4.0.5.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 32.0.1-jre | 33.7.2 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.4.0-jre | 33.7.2 | opt/spark/jars/spark-connect_2.13-4.0.5.jar |
| HIGH | CVE-2025-48734 | commons-beanutils:commons-beanutils | 1.9.4 | 1.11.0 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-42583 | io.netty:netty-codec | 4.1.118.Final | 4.1.133.Final | opt/spark/jars/netty-codec-4.1.118.Final.jar |
| HIGH | CVE-2026-59901 | io.netty:netty-codec | 4.1.118.Final | 4.1.136.Final | opt/spark/jars/netty-codec-4.1.118.Final.jar |
| HIGH | CVE-2026-42579 | io.netty:netty-codec-dns | 4.1.118.Final | 4.2.13.Final, 4.1.133.Final | opt/spark/jars/netty-codec-dns-4.1.118.Final.jar |
| HIGH | CVE-2026-33870 | io.netty:netty-codec-http | 4.1.118.Final | 4.1.132.Final, 4.2.10.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | CVE-2026-42584 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.13.Final, 4.1.133.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | CVE-2026-42587 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.13.Final, 4.1.133.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | CVE-2026-55831 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | CVE-2026-55833 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | CVE-2026-56745 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | CVE-2025-55163 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.2.4.Final, 4.1.124.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | CVE-2026-33871 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.1.132.Final, 4.2.11.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | CVE-2026-42587 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.2.13.Final, 4.1.133.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | CVE-2026-56819 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | CVE-2026-44249 | io.netty:netty-handler | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-handler-4.1.118.Final.jar |
| HIGH | CVE-2026-45416 | io.netty:netty-handler | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-handler-4.1.118.Final.jar |
| HIGH | CVE-2026-50010 | io.netty:netty-handler | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-handler-4.1.118.Final.jar |
| HIGH | CVE-2026-45674 | io.netty:netty-resolver-dns | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-resolver-dns-4.1.118.Final.jar |
| HIGH | CVE-2026-47691 | io.netty:netty-resolver-dns | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-resolver-dns-4.1.118.Final.jar |
| HIGH | CVE-2023-39410 | org.apache.avro:avro | 1.9.2 | 1.11.3 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-43869 | org.apache.thrift:libthrift | 0.16.0 | 0.23.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-43871 | org.apache.thrift:libthrift | 0.16.0 | 0.24.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-24281 | org.apache.zookeeper:zookeeper | 3.9.3 | 3.8.6, 3.9.5 | opt/spark/jars/zookeeper-3.9.3.jar |
| HIGH | CVE-2026-24308 | org.apache.zookeeper:zookeeper | 3.9.3 | 3.9.5, 3.8.6 | opt/spark/jars/zookeeper-3.9.3.jar |
| HIGH | CVE-2026-13506 | org.bouncycastle:bcprov-jdk18on | 1.80 | 1.85 | opt/spark/jars/bcprov-jdk18on-1.80.jar |
| HIGH | CVE-2026-5598 | org.bouncycastle:bcprov-jdk18on | 1.80 | 1.84, 1.80.2 | opt/spark/jars/bcprov-jdk18on-1.80.jar |
| HIGH | CVE-2019-10172 | org.codehaus.jackson:jackson-mapper-asl | 1.9.13 | - | opt/spark/examples/jars/jackson-mapper-asl-1.9.13.jar |
| HIGH | CVE-2019-10172 | org.codehaus.jackson:jackson-mapper-asl | 1.9.13 | - | opt/spark/hive-jackson/jackson-mapper-asl-1.9.13.jar |
| HIGH | CVE-2026-2332 | org.eclipse.jetty:jetty-http | 9.4.53.v20231009 | 12.1.7, 12.0.33, 11.0.29, 10.0.28, 9.4.60 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-2332 | org.eclipse.jetty:jetty-http | 11.0.24 | 12.1.7, 12.0.33, 11.0.29, 10.0.28, 9.4.60 | opt/spark/jars/spark-core_2.13-4.0.5.jar |
| HIGH | CVE-2026-10050 | org.eclipse.jetty:jetty-security | 11.0.24 | 9.4.63, 10.0.31, 11.0.31, 12.0.36, 12.1.10 | opt/spark/jars/spark-core_2.13-4.0.5.jar |
| HIGH | CVE-2026-77422 | org.jline:jline-builtins | 3.27.1 | 4.3.1, 3.30.15 | opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | CVE-2026-77422 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-77423 | org.jline:jline-builtins | 3.9.0 | 3.30.15, 4.3.1 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-77423 | org.jline:jline-builtins | 3.27.1 | 3.30.15, 4.3.1 | opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | CVE-2026-56740 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-56740 | org.jline:jline-remote-telnet | 3.27.1 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | CVE-2026-56741 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | CVE-2026-56741 | org.jline:jline-remote-telnet | 3.27.1 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | CVE-2025-12183 | org.lz4:lz4-java | 1.8.0 | 1.8.1 | opt/spark/jars/lz4-java-1.8.0.jar |
| HIGH | CVE-2025-66566 | org.lz4:lz4-java | 1.8.0 | - | opt/spark/jars/lz4-java-1.8.0.jar |
| HIGH | CVE-2026-106451 | org.lz4:lz4-java | 1.8.0 | - | opt/spark/jars/lz4-java-1.8.0.jar |
| HIGH | CVE-2026-108106 | org.xerial.snappy:snappy-java | 1.1.10.7 | 1.1.10.9 | opt/spark/jars/snappy-java-1.1.10.7.jar |
| HIGH | CVE-2026-93451 | org.xerial.snappy:snappy-java | 1.1.10.7 | 1.1.10.9 | opt/spark/jars/snappy-java-1.1.10.7.jar |
| MEDIUM | CVE-2025-49128 | com.fasterxml.jackson.core:jackson-core | 2.12.7 | 2.13.0 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-18401 | com.fasterxml.jackson.core:jackson-core | 2.18.1 | 2.21.1, 2.18.6 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | CVE-2026-50193 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.14.0 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.12.7.1 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.18.1 | 2.18.9, 2.21.5 | opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5 | opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | CVE-2025-53864 | com.nimbusds:nimbus-jose-jwt | 9.37.2 | 10.0.2, 9.37.4 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2025-48924 | commons-lang:commons-lang | 2.6 | - | opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | CVE-2025-58057 | io.netty:netty-codec | 4.1.118.Final | 4.1.125.Final | opt/spark/jars/netty-codec-4.1.118.Final.jar |
| MEDIUM | CVE-2026-73508 | io.netty:netty-codec-dns | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-dns-4.1.118.Final.jar |
| MEDIUM | CVE-2025-67735 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.8.Final, 4.1.129.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-41417 | io.netty:netty-codec-http | 4.1.118.Final | 4.1.133.Final, 4.2.13.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-42580 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.13.Final, 4.1.133.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-42581 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.13.Final, 4.1.133.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-42585 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.13.Final, 4.1.133.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-50020 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-56746 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-59898 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-59899 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-59903 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-59921 | io.netty:netty-codec-http | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | CVE-2026-47244 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | CVE-2026-48043 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.1.135.Final, 4.2.15.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | CVE-2026-50560 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | CVE-2026-59900 | io.netty:netty-codec-http2 | 4.1.118.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | CVE-2026-75596 | io.netty:netty-handler | 4.1.118.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/netty-handler-4.1.118.Final.jar |
| MEDIUM | CVE-2026-45673 | io.netty:netty-resolver-dns | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-resolver-dns-4.1.118.Final.jar |
| MEDIUM | CVE-2026-45536 | io.netty:netty-transport-native-epoll | 4.1.118.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-transport-native-epoll-4.1.118.Final-linux-x86_64.jar |
| MEDIUM | CVE-2026-1002 | io.vertx:vertx-core | 4.5.12 | 4.5.24, 5.0.7 | opt/spark/jars/vertx-core-4.5.12.jar |
| MEDIUM | CVE-2026-6860 | io.vertx:vertx-core | 4.5.12 | 4.5.27, 5.0.12 | opt/spark/jars/vertx-core-4.5.12.jar |
| MEDIUM | CVE-2026-45205 | org.apache.commons:commons-configuration2 | 2.10.1 | 2.15.0 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2025-48924 | org.apache.commons:commons-lang3 | 3.17.0 | 3.18.0 | opt/spark/jars/commons-lang3-3.17.0.jar |
| MEDIUM | CVE-2025-48924 | org.apache.commons:commons-lang3 | 3.12.0 | 3.18.0 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2024-29869 | org.apache.hive:hive-exec | 2.3.10 | 4.0.1 | opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | CVE-2026-57914 | org.apache.kerby:kerby-asn1 | 2.0.3 | 2.1.2 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-49844 | org.apache.logging.log4j:log4j-api | 2.24.3 | 2.25.5, 2.26.1 | opt/spark/jars/log4j-api-2.24.3.jar |
| MEDIUM | CVE-2025-68161 | org.apache.logging.log4j:log4j-core | 2.24.3 | 2.25.3 | opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | CVE-2026-34477 | org.apache.logging.log4j:log4j-core | 2.24.3 | 2.25.4 | opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | CVE-2026-34478 | org.apache.logging.log4j:log4j-core | 2.24.3 | 2.25.4 | opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | CVE-2026-34479 | org.apache.logging.log4j:log4j-core | 2.24.3 | 2.25.4 | opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | CVE-2026-34480 | org.apache.logging.log4j:log4j-core | 2.24.3 | 2.25.4 | opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | CVE-2026-34481 | org.apache.logging.log4j:log4j-layout-template-json | 2.24.3 | 2.25.4 | opt/spark/jars/log4j-layout-template-json-2.24.3.jar |
| MEDIUM | CVE-2025-58457 | org.apache.zookeeper:zookeeper | 3.9.3 | 3.9.4 | opt/spark/jars/zookeeper-3.9.3.jar |
| MEDIUM | CVE-2026-0636 | org.bouncycastle:bcprov-jdk18on | 1.80 | 1.80.2, 1.81.1, 1.84 | opt/spark/jars/bcprov-jdk18on-1.80.jar |
| MEDIUM | CVE-2024-6763 | org.eclipse.jetty:jetty-http | 11.0.24 | 12.0.12 | opt/spark/jars/spark-core_2.13-4.0.5.jar |
| MEDIUM | CVE-2024-6763 | org.eclipse.jetty:jetty-http | 9.4.53.v20231009 | 12.0.12 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-6790 | org.eclipse.jetty:jetty-server | 11.0.24 | 12.0.35, 12.1.9 | opt/spark/jars/spark-core_2.13-4.0.5.jar |
| MEDIUM | CVE-2026-77421 | org.jline:jline-builtins | 3.27.1 | 4.3.1, 3.30.15 | opt/spark/jars/jline-3.27.1-jdk8.jar |
| MEDIUM | CVE-2026-77421 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-77420 | org.jline:jline-reader | 3.27.1 | 4.3.1, 3.30.15 | opt/spark/jars/jline-3.27.1-jdk8.jar |
| MEDIUM | CVE-2026-77420 | org.jline:jline-reader | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-106450 | org.lz4:lz4-java | 1.8.0 | - | opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | CVE-2026-106452 | org.lz4:lz4-java | 1.8.0 | - | opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | CVE-2026-106453 | org.lz4:lz4-java | 1.8.0 | - | opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | CVE-2026-59949 | org.lz4:lz4-java | 1.8.0 | - | opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | CVE-2026-116590 | org.xerial.snappy:snappy-java | 1.1.10.7 | 1.1.10.9 | opt/spark/jars/snappy-java-1.1.10.7.jar |
| LOW | CVE-2025-58056 | io.netty:netty-codec-http | 4.1.118.Final | 4.1.125.Final, 4.2.5.Final | opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| LOW | CVE-2026-42578 | io.netty:netty-handler-proxy | 4.1.118.Final | 4.1.133.Final, 4.2.13.Final | opt/spark/jars/netty-handler-proxy-4.1.118.Final.jar |
| LOW | CVE-2025-11143 | org.eclipse.jetty:jetty-http | 11.0.24 | 12.0.31, 12.1.5 | opt/spark/jars/spark-core_2.13-4.0.5.jar |
| LOW | CVE-2025-11143 | org.eclipse.jetty:jetty-http | 9.4.53.v20231009 | 12.0.31, 12.1.5 | opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| LOW | CVE-2026-106449 | org.lz4:lz4-java | 1.8.0 | - | opt/spark/jars/lz4-java-1.8.0.jar |

## Grype

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| CRITICAL | GHSA-r7pg-v2c8-mfg3 | avro | 1.9.2 | 1.11.4 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| CRITICAL | GHSA-574f-3g2m-x479 | bcprov-jdk18on | 1.80 | 1.80.2 | /opt/spark/jars/bcprov-jdk18on-1.80.jar |
| CRITICAL | GHSA-9pwp-9qqc-pr26 | bcprov-jdk18on | 1.80 | 1.85 | /opt/spark/jars/bcprov-jdk18on-1.80.jar |
| CRITICAL | GHSA-rcjc-c4pj-xxrp | derby | 10.16.1.1 | 10.16.1.2 | /opt/spark/jars/derby-10.16.1.1.jar |
| CRITICAL | GHSA-c27h-mcmw-48hv | jackson-mapper-asl | 1.9.13 | - | /opt/spark/hive-jackson/jackson-mapper-asl-1.9.13.jar |
| CRITICAL | GHSA-c27h-mcmw-48hv | jackson-mapper-asl | 1.9.13 | - | /opt/spark/examples/jars/jackson-mapper-asl-1.9.13.jar |
| CRITICAL | GHSA-c4c3-7fpv-j4q5 | netty-handler | 4.1.118.Final | 4.1.137.Final | /opt/spark/jars/netty-handler-4.1.118.Final.jar |
| HIGH | GHSA-rhrv-645h-fjfh | avro | 1.9.2 | 1.11.3 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-p93r-85wp-75v3 | bcprov-jdk18on | 1.80 | 1.80.2 | /opt/spark/jars/bcprov-jdk18on-1.80.jar |
| HIGH | GHSA-qp49-qgx5-5m26 | bcprov-jdk18on | 1.80 | 1.85 | /opt/spark/jars/bcprov-jdk18on-1.80.jar |
| HIGH | GHSA-wxr5-93ph-8wr9 | commons-beanutils | 1.9.4 | 1.11.0 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.4.0-jre | 33.7.2 | /opt/spark/jars/spark-connect_2.13-4.0.5.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.4.0-jre | 33.7.2 | /opt/spark/jars/spark-network-common_2.13-4.0.5.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.4.0-jre | 33.7.2 | /opt/spark/jars/guava-33.4.0-jre.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 32.0.1-jre | 33.7.2 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.18.6 | 2.18.11 | /opt/spark/jars/jackson-core-2.18.6.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.18.1 | 2.18.11 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.12.7 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-h46c-h94j-95f3 | jackson-core | 2.12.7 | 2.15.0 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-p6pp-m3f8-5c89 | jackson-core | 2.18.1 | 2.18.11 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-p6pp-m3f8-5c89 | jackson-core | 2.18.6 | 2.18.11 | /opt/spark/jars/jackson-core-2.18.6.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.18.6 | 2.18.8 | /opt/spark/jars/jackson-core-2.18.6.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.18.1 | 2.18.8 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.12.7 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.18.1 | 2.18.11 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.18.6 | 2.18.11 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.12.7.1 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.12.7.1 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.18.1 | 2.18.8 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | GHSA-q4xh-88c3-wmh7 | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | GHSA-q4xh-88c3-wmh7 | jackson-databind | 2.18.1 | 2.18.10 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.18.1 | 2.18.8 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.12.7.1 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.12.7.1 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.18.6 | 2.18.11 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.18.1 | 2.18.11 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| HIGH | GHSA-r6j9-8759-g62w | jackson-mapper-asl | 1.9.13 | - | /opt/spark/examples/jars/jackson-mapper-asl-1.9.13.jar |
| HIGH | GHSA-r6j9-8759-g62w | jackson-mapper-asl | 1.9.13 | - | /opt/spark/hive-jackson/jackson-mapper-asl-1.9.13.jar |
| HIGH | GHSA-355h-qmc2-wpwf | jetty-http | 11.0.24 | 11.0.29 | /opt/spark/jars/spark-core_2.13-4.0.5.jar |
| HIGH | GHSA-355h-qmc2-wpwf | jetty-http | 9.4.53.v20231009 | 9.4.60 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-2fvj-hgj9-j2gr | jetty-security | 11.0.24 | 11.0.31 | /opt/spark/jars/spark-core_2.13-4.0.5.jar |
| HIGH | GHSA-2v9w-34q6-wpqx | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-2v9w-34q6-wpqx | jline-builtins | 3.27.1 | 3.30.15 | /opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | GHSA-r2xf-8xr9-62gw | jline-builtins | 3.27.1 | 3.30.15 | /opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | GHSA-r2xf-8xr9-62gw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-2r2c-cx56-8933 | jline-remote-telnet | 3.27.1 | 3.30.14 | /opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | GHSA-2r2c-cx56-8933 | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| HIGH | GHSA-47qp-hqvx-6r3f | jline-remote-telnet | 3.27.1 | 3.30.14 | /opt/spark/jars/jline-3.27.1-jdk8.jar |
| HIGH | GHSA-47qp-hqvx-6r3f | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
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
| HIGH | GHSA-cmp6-m4wj-q63q | lz4-java | 1.8.0 | - | /opt/spark/jars/lz4-java-1.8.0.jar |
| HIGH | GHSA-mcr4-qmvw-px4g | lz4-java | 1.8.0 | - | /opt/spark/jars/lz4-java-1.8.0.jar |
| HIGH | GHSA-vqf4-7m7x-wgfc | lz4-java | 1.8.0 | 1.8.1 | /opt/spark/jars/lz4-java-1.8.0.jar |
| HIGH | GHSA-558v-64gr-wgg4 | netty-codec | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-4.1.118.Final.jar |
| HIGH | GHSA-mj4r-2hfc-f8p6 | netty-codec | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-4.1.118.Final.jar |
| HIGH | GHSA-cm33-6792-r9fm | netty-codec-dns | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-dns-4.1.118.Final.jar |
| HIGH | GHSA-57rv-r2g8-2cj3 | netty-codec-http | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | GHSA-6jqx-86gh-f27w | netty-codec-http | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | GHSA-f6hv-jmp6-3vwv | netty-codec-http | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | GHSA-jppx-w49h-x2qq | netty-codec-http | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | GHSA-mvh2-crg5-v77c | netty-codec-http | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | GHSA-pwqr-wmgm-9rr8 | netty-codec-http | 4.1.118.Final | 4.1.132.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| HIGH | GHSA-93wv-jw9v-4972 | netty-codec-http2 | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | GHSA-f6hv-jmp6-3vwv | netty-codec-http2 | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | GHSA-prj3-ccx8-p6x4 | netty-codec-http2 | 4.1.118.Final | 4.1.124.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | GHSA-w9fj-cfpg-grvv | netty-codec-http2 | 4.1.118.Final | 4.1.132.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| HIGH | GHSA-3qp7-7mw8-wx86 | netty-handler | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-handler-4.1.118.Final.jar |
| HIGH | GHSA-c653-97m9-rcg9 | netty-handler | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-handler-4.1.118.Final.jar |
| HIGH | GHSA-x4gw-5cx5-pgmh | netty-handler | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-handler-4.1.118.Final.jar |
| HIGH | GHSA-5pvg-856g-cp85 | netty-resolver-dns | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-resolver-dns-4.1.118.Final.jar |
| HIGH | GHSA-676x-f7gg-47vc | netty-resolver-dns | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-resolver-dns-4.1.118.Final.jar |
| HIGH | CVE-2026-107494 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-107494 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-136440 | python-pip-wheel | 26.3-1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-14534 | python3.12 | 3.12.16-2.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | CVE-2026-14534 | python3.12-libs | 3.12.16-2.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| HIGH | GHSA-gwq9-9ffj-mvrv | snappy-java | 1.1.10.7 | 1.1.10.9 | /opt/spark/jars/snappy-java-1.1.10.7.jar |
| HIGH | GHSA-q233-g92q-qxp6 | snappy-java | 1.1.10.7 | 1.1.10.9 | /opt/spark/jars/snappy-java-1.1.10.7.jar |
| HIGH | GHSA-7xrh-hqfc-g7qr | zookeeper | 3.9.3 | 3.9.5 | /opt/spark/jars/zookeeper-3.9.3.jar |
| HIGH | GHSA-crhr-qqj8-rpxc | zookeeper | 3.9.3 | 3.9.5 | /opt/spark/jars/zookeeper-3.9.3.jar |
| MEDIUM | GHSA-c3fc-8qff-9hwx | bcprov-jdk18on | 1.80 | 1.80.2 | /opt/spark/jars/bcprov-jdk18on-1.80.jar |
| MEDIUM | GHSA-337m-mw94-2v6g | commons-configuration2 | 2.10.1 | 2.15.0 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-j288-q9x7-2f5v | commons-lang | 2.6 | - | /opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | GHSA-j288-q9x7-2f5v | commons-lang3 | 3.12.0 | 3.18.0 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-j288-q9x7-2f5v | commons-lang3 | 3.17.0 | 3.18.0 | /opt/spark/jars/commons-lang3-3.17.0.jar |
| MEDIUM | CVE-2026-115819 | glibc | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc-common | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-115819 | glibc-minimal-langpack | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-c476-j253-5rgq | hive-exec | 2.3.10 | 4.0.1 | /opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | GHSA-72hv-8253-57qq | jackson-core | 2.18.1 | 2.18.6 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-wf8f-6423-gfxg | jackson-core | 2.12.7 | 2.13.0 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.18.1 | 2.18.8 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-3wrr-7qpf-2prh | jackson-databind | 2.12.7.1 | 2.14.0 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.18.1 | 2.18.9 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.12.7.1 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.18.1 | 2.18.9 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.12.7.1 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.12.7.1 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.18.1 | 2.18.10 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.12.7.1 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.18.1 | 2.18.8 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.18.1 | 2.18.9 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.12.7.1 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.18.1 | 2.18.9 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.18.1 | 2.18.10 | /opt/spark/jars/parquet-jackson-1.15.2.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/jackson-databind-2.18.6.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.12.7.1 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-qh8g-58pp-2wxh | jetty-http | 9.4.53.v20231009 | 12.0.12 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-qh8g-58pp-2wxh | jetty-http | 11.0.24 | 12.0.12 | /opt/spark/jars/spark-core_2.13-4.0.5.jar |
| MEDIUM | GHSA-7p3p-8qv8-m2vh | jetty-server | 11.0.24 | - | /opt/spark/jars/spark-core_2.13-4.0.5.jar |
| MEDIUM | GHSA-ph9c-7hw9-vhhw | jline-builtins | 3.27.1 | 3.30.15 | /opt/spark/jars/jline-3.27.1-jdk8.jar |
| MEDIUM | GHSA-ph9c-7hw9-vhhw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-5q95-hrpc-m3w3 | jline-reader | 3.27.1 | 3.30.15 | /opt/spark/jars/jline-3.27.1-jdk8.jar |
| MEDIUM | GHSA-5q95-hrpc-m3w3 | jline-reader | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | GHSA-x6vc-x4v4-hjhr | kerby-asn1 | 2.0.3 | 2.1.2 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-104357 | libtirpc | 1.3.8-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-85231 | libtirpc | 1.3.8-0.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-qv9r-c865-cp47 | log4j-api | 2.24.3 | 2.25.5 | /opt/spark/jars/log4j-api-2.24.3.jar |
| MEDIUM | GHSA-3pxv-7cmr-fjr4 | log4j-core | 2.24.3 | 2.25.4 | /opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | GHSA-445c-vh5m-36rj | log4j-core | 2.24.3 | 2.25.4 | /opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | GHSA-6hg6-v5c8-fphq | log4j-core | 2.24.3 | 2.25.4 | /opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | GHSA-h383-gmxw-35v2 | log4j-core | 2.24.3 | 2.25.4 | /opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | GHSA-vc5p-v9hr-52mj | log4j-core | 2.24.3 | 2.25.3 | /opt/spark/jars/log4j-core-2.24.3.jar |
| MEDIUM | GHSA-w35j-pv5h-q9q9 | log4j-layout-template-json | 2.24.3 | 2.25.4 | /opt/spark/jars/log4j-layout-template-json-2.24.3.jar |
| MEDIUM | GHSA-4v53-57pg-c464 | lz4-java | 1.8.0 | - | /opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | GHSA-6cx8-rjf8-pr8g | lz4-java | 1.8.0 | - | /opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | GHSA-gm45-99xc-r7wv | lz4-java | 1.8.0 | - | /opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | GHSA-xx22-p4ch-683r | lz4-java | 1.8.0 | - | /opt/spark/jars/lz4-java-1.8.0.jar |
| MEDIUM | GHSA-3p8m-j85q-pgmj | netty-codec | 4.1.118.Final | 4.1.125.Final | /opt/spark/jars/netty-codec-4.1.118.Final.jar |
| MEDIUM | GHSA-mfg7-5gfp-c4w3 | netty-codec-dns | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-dns-4.1.118.Final.jar |
| MEDIUM | GHSA-38f8-5428-x5cv | netty-codec-http | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-4mp9-239f-g9hg | netty-codec-http | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-6cqp-g7gg-8hr5 | netty-codec-http | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-84h7-rjj3-6jx4 | netty-codec-http | 4.1.118.Final | 4.1.129.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-8c42-7qj2-3j46 | netty-codec-http | 4.1.118.Final | 4.1.137.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-gcjf-9mgh-3p7g | netty-codec-http | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-hvcg-qmg6-jm4c | netty-codec-http | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-m4cv-j2px-7723 | netty-codec-http | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-q4f6-jm68-57ww | netty-codec-http | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-v8h7-rr48-vmmv | netty-codec-http | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-xxqh-mfjm-7mv9 | netty-codec-http | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| MEDIUM | GHSA-563q-j3cm-6jxm | netty-codec-http2 | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | GHSA-5x3r-wrvg-rp6q | netty-codec-http2 | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | GHSA-c2gf-v879-257j | netty-codec-http2 | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | GHSA-c69g-56f8-xwqj | netty-codec-http2 | 4.1.118.Final | 4.1.136.Final | /opt/spark/jars/netty-codec-http2-4.1.118.Final.jar |
| MEDIUM | GHSA-fccg-mwvh-qqg4 | netty-handler | 4.1.118.Final | 4.1.137.Final | /opt/spark/jars/netty-handler-4.1.118.Final.jar |
| MEDIUM | GHSA-xmv7-r254-6q78 | netty-resolver-dns | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-resolver-dns-4.1.118.Final.jar |
| MEDIUM | GHSA-w573-9ffj-6ff9 | netty-transport-native-epoll | 4.1.118.Final | 4.1.135.Final | /opt/spark/jars/netty-transport-native-epoll-4.1.118.Final-linux-x86_64.jar |
| MEDIUM | GHSA-xwmg-2g98-w7v9 | nimbus-jose-jwt | 9.37.2 | 9.37.4 | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| MEDIUM | CVE-2026-121482 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84785 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84786 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95690 | openssl-fips-provider-upstream | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-121482 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84785 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-84786 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2026-95690 | openssl-libs | 1:3.5.9-0.5.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3.12 | 3.12.16-2.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | CVE-2025-12781 | python3.12-libs | 3.12.16-2.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| MEDIUM | GHSA-xqrx-qh46-34m7 | snappy-java | 1.1.10.7 | 1.1.10.9 | /opt/spark/jars/snappy-java-1.1.10.7.jar |
| MEDIUM | GHSA-3g76-f9xq-8vp6 | vertx-core | 4.5.12 | 4.5.27 | /opt/spark/jars/vertx-core-4.5.12.jar |
| MEDIUM | GHSA-cphf-4846-3xx9 | vertx-core | 4.5.12 | 4.5.24 | /opt/spark/jars/vertx-core-4.5.12.jar |
| MEDIUM | GHSA-2hmj-97jw-28jh | zookeeper | 3.9.3 | 3.9.4 | /opt/spark/jars/zookeeper-3.9.3.jar |
| LOW | CVE-2026-126765 | filesystem | 3.18-59.1.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc-common | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc-common | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-100290 | glibc-minimal-langpack | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | CVE-2026-126765 | glibc-minimal-langpack | 2.43-9.4.hum1 | - | /usr/lib/sysimage/rpm/rpmdb.sqlite |
| LOW | GHSA-wjpw-4j6x-6rwh | jetty-http | 9.4.53.v20231009 | - | /opt/spark/jars/hadoop-client-runtime-3.4.1.jar |
| LOW | GHSA-wjpw-4j6x-6rwh | jetty-http | 11.0.24 | - | /opt/spark/jars/spark-core_2.13-4.0.5.jar |
| LOW | GHSA-343h-94h5-c4wr | lz4-java | 1.8.0 | - | /opt/spark/jars/lz4-java-1.8.0.jar |
| LOW | GHSA-fghv-69vj-qj49 | netty-codec-http | 4.1.118.Final | 4.1.125.Final | /opt/spark/jars/netty-codec-http-4.1.118.Final.jar |
| LOW | GHSA-45q3-82m4-75jr | netty-handler-proxy | 4.1.118.Final | 4.1.133.Final | /opt/spark/jars/netty-handler-proxy-4.1.118.Final.jar |
