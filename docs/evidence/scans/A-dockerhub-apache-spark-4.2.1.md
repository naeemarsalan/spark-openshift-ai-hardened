| scanner | CRITICAL | HIGH | MEDIUM | LOW | NEGLIGIBLE | UNKNOWN | total |
|---|---|---|---|---|---|---|---|
| trivy | 33 | 660 | 1446 | 1280 | 0 | 0 | 3419 |
| grype | 3 | 81 | 1071 | 88 | 36 | 0 | 1279 |

secrets: 0   misconfigurations: 0   trivy findings with a fix available: 697
OS detected - trivy: ubuntu   grype: ubuntu

## Trivy

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| CRITICAL | CVE-2026-75595 | io.netty:netty-handler | 4.2.13.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| CRITICAL | CVE-2026-75595 | io.netty:netty-handler | 4.2.13.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/netty-handler-4.2.13.Final.jar |
| CRITICAL | CVE-2023-53867 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2024-50286 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2025-37777 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-63825 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-63940 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-203.213 | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-68426 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-72399 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-74345 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-89530 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-89652 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-89659 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-89708 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-90037 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-90162 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-93221 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-98365 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-98432 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-203.213 | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-98805 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99287 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99306 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99310 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99343 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99344 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99355 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99362 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99366 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99460 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99540 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99590 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2026-99676 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| CRITICAL | CVE-2022-46337 | org.apache.derby:derby | 10.16.1.1 | 10.14.2.1, 10.16.1.2, 10.15.2.1 | opt/spark/jars/derby-10.16.1.1.jar |
| HIGH | CVE-2026-109518 | apt | 2.4.14 | 2.4.15ubuntu0.1 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-106451 | at.yawk.lz4:lz4-java | 1.11.0 | 1.11.4 | opt/spark/jars/lz4-java-1.11.0.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.19.2 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68494 | com.fasterxml.jackson.core:jackson-core | 2.21.2 | 2.18.8, 2.21.4 | opt/spark/jars/jackson-core-2.21.2.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.21.2 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/jackson-core-2.21.2.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-89407 | com.fasterxml.jackson.core:jackson-core | 2.19.2 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.19.2 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.21.2 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/jackson-core-2.21.2.jar |
| HIGH | CVE-2026-89425 | com.fasterxml.jackson.core:jackson-core | 2.18.6 | 2.21.7, 2.22.3, 2.18.11 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-54512 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.8, 3.1.4, 2.21.4 | opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-54513 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4, 3.1.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-68497 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-91776 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.11, 2.21.7, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | CVE-2026-91777 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.21.7, 2.18.11, 2.22.3 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.6.0-jre | 33.7.2 | opt/spark/jars/spark-network-common_2.13-4.2.1.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.6.0-jre | 33.7.2 | opt/spark/jars/guava-33.6.0-jre.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.4.8-jre | 33.7.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-102554 | com.google.guava:guava | 33.6.0-jre | 33.7.2 | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-59901 | io.netty:netty-codec-compression | 4.2.13.Final | 4.2.16.Final | opt/spark/jars/netty-codec-compression-4.2.13.Final.jar |
| HIGH | CVE-2026-59901 | io.netty:netty-codec-compression | 4.2.13.Final | 4.2.16.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-55831 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| HIGH | CVE-2026-55831 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-55833 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-55833 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| HIGH | CVE-2026-56745 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-56745 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| HIGH | CVE-2026-56819 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-56819 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| HIGH | CVE-2026-44249 | io.netty:netty-handler | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-44249 | io.netty:netty-handler | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-handler-4.2.13.Final.jar |
| HIGH | CVE-2026-45416 | io.netty:netty-handler | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-handler-4.2.13.Final.jar |
| HIGH | CVE-2026-45416 | io.netty:netty-handler | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-50010 | io.netty:netty-handler | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-50010 | io.netty:netty-handler | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-handler-4.2.13.Final.jar |
| HIGH | CVE-2026-45674 | io.netty:netty-resolver-dns | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-resolver-dns-4.2.13.Final.jar |
| HIGH | CVE-2026-47691 | io.netty:netty-resolver-dns | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-resolver-dns-4.2.13.Final.jar |
| HIGH | CVE-2026-109518 | libapt-pkg6.0 | 2.4.14 | 2.4.15ubuntu0.1 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-3523 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-38457 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-40133 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-48673 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-48771 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-48887 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-48998 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-49203 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-49317 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-49531 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-49829 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-49910 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-49935 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-49997 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50095 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50167 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50212 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50234 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50240 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50350 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50554 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50746 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50815 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2022-50851 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-52452 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-52569 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-52857 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-52920 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-52926 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-52981 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-53072 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-53187 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-53382 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-53781 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-53785 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-53816 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-53846 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-54019 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-54035 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-54237 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-6610 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2023-7356 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-26656 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-26853 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-26954 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-27032 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-27062 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-35839 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-35971 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-36013 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-40954 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-40972 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-41013 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-41030 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-41045 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-43832 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-47736 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-49861 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-49988 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-49991 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-50164 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-50187 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-50211 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-50246 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-50285 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-52560 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-53079 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-53147 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-53179 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-53234 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-56591 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-56604 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-56692 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-57857 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-57893 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-58053 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-58098 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2024-58100 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21738 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21792 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21927 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21944 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21945 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21946 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21955 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-21967 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-22037 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-22040 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-22041 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-22043 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-22072 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-22113 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37776 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37856 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37879 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37899 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37926 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37947 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37952 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37956 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-37959 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38162 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38191 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38264 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38437 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38449 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38501 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38552 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38692 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38716 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38717 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-38728 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-39800 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-39933 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-39942 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-39952 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-39977 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-39978 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40025 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40039 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40064 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40074 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40075 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40099 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40135 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40137 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40139 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40158 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40168 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40170 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40190 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40286 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40307 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40333 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-40347 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-68246 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-68283 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-68315 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-68378 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-68745 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-68806 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-71073 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-71074 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-71202 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2025-71315 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-100081 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23004 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23050 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23111 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23171 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23208 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23226 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23239 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23240 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23245 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23265 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23271 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23347 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23378 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23385 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23393 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-23449 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31403 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31410 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31426 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31432 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31477 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31502 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31516 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31536 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31548 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31557 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31612 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31663 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31678 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31692 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31706 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-31729 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43009 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43016 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43042 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43048 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43049 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43091 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43116 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43153 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43214 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43318 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43379 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43490 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-45940 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-45944 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-46012 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-46181 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-46218 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-52946 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-52968 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-52991 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53005 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53024 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53033 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53036 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53178 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53185 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53198 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53262 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53375 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-53401 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-63819 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-63958 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64015 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64025 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64026 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64077 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64078 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64098 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64138 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64257 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64320 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64392 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64393 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64394 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64395 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64396 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64397 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64398 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64399 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64556 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64557 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-64580 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68081 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68083 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68085 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68098 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68100 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68103 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68108 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68136 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68245 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68257 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68259 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68323 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68329 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68343 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68401 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68404 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68427 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68445 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68447 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-68470 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72162 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72196 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72198 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72284 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72288 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72338 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72369 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72373 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72375 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72380 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72383 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72390 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72405 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72413 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72434 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72464 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72470 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72472 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72478 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72493 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-72494 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74257 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74302 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74310 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74317 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74334 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74341 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74347 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74350 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-203.213 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74386 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74387 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74388 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74454 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74506 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74510 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74522 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74537 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74565 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74677 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74684 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74700 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74714 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74723 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74724 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74744 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-74752 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80551 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80554 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80631 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80634 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80637 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80710 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80837 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80841 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80852 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80864 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80883 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80891 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80905 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80937 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80980 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80982 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-80991 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89448 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89481 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89492 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89520 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89526 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89528 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89531 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89537 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89544 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89550 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89564 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89565 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89580 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89622 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89631 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89633 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89637 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89638 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89675 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89676 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89680 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89685 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89707 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89788 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89803 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89810 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89837 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89913 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-89922 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90003 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90048 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90057 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90092 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90093 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90104 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90108 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90111 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90148 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90149 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90150 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90152 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90155 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90167 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90169 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90199 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90200 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90204 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90205 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90227 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90237 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90313 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90320 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90321 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90343 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90375 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90392 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90398 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-90417 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-92499 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-92507 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-92509 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-92510 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-92511 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-92512 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93105 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93154 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93175 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93192 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93196 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93199 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93210 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93282 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93787 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93790 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93792 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93796 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93806 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93817 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93824 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-93828 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97415 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97429 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97442 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97493 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97497 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97513 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97530 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97555 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97557 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97562 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97564 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97565 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97581 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97615 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97906 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-97988 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98017 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98019 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98033 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98041 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98056 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98085 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98104 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98107 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98164 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98167 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98171 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98222 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98229 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98260 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98283 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98332 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98333 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98341 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98359 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98364 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98420 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98439 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98454 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98456 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98490 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98503 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98568 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98589 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98634 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98652 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98701 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98704 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98706 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98707 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98708 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98709 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98734 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98735 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98738 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98739 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98741 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98742 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98752 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98754 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98763 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98792 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98794 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98799 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98800 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98803 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98823 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98824 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98827 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98829 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98836 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98837 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98846 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98862 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98863 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98870 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98890 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98901 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98930 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98964 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98993 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-98996 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99002 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99015 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99027 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99032 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99039 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99053 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99054 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99056 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99083 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99109 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99117 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99126 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99128 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99138 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99152 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99153 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99154 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99166 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99167 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99203 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99212 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99213 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99218 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99236 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99239 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99260 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99270 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99272 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99274 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99275 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99282 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99284 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99288 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99292 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99302 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99304 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99312 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99317 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99320 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99345 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99350 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99352 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99357 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99361 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99369 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99377 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99380 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99383 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99384 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99388 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99389 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99395 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99396 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99400 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99422 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99423 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99424 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99425 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99429 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99432 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99448 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99454 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99471 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99484 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99489 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99507 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99510 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99522 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99526 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99528 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99531 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99532 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99535 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99542 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99544 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99546 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99549 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99554 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99556 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99565 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99573 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99574 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99575 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99582 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99583 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99586 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99591 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99599 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99601 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99602 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99657 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99659 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99661 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99672 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99675 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99677 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99678 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99679 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99688 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99690 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99709 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99710 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99722 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99725 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99730 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99744 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99754 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99758 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99760 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99761 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99773 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99775 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99784 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99792 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99794 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99804 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-99999 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-203.213 | /r/image.tar (ubuntu 22.04) |
| HIGH | CVE-2026-43869 | org.apache.thrift:libthrift | 0.16.0 | 0.23.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-43871 | org.apache.thrift:libthrift | 0.16.0 | 0.24.0 | opt/spark/jars/libthrift-0.16.0.jar |
| HIGH | CVE-2026-2332 | org.eclipse.jetty:jetty-http | 9.4.58.v20250814 | 12.1.7, 12.0.33, 11.0.29, 10.0.28, 9.4.60 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-10050 | org.eclipse.jetty:jetty-security | 12.1.8 | 9.4.63, 10.0.31, 11.0.31, 12.0.36, 12.1.10 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| HIGH | CVE-2026-77422 | org.jline:jline-builtins | 3.29.0 | 4.3.1, 3.30.15 | opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | CVE-2026-77422 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-77423 | org.jline:jline-builtins | 3.9.0 | 3.30.15, 4.3.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-77423 | org.jline:jline-builtins | 3.29.0 | 3.30.15, 4.3.1 | opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | CVE-2026-56740 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-56740 | org.jline:jline-remote-telnet | 3.29.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | CVE-2026-56741 | org.jline:jline-remote-telnet | 3.29.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | CVE-2026-56741 | org.jline:jline-remote-telnet | 3.9.0 | 4.2.1, 4.0.16, 3.30.14 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | CVE-2026-108106 | org.xerial.snappy:snappy-java | 1.1.10.8 | 1.1.10.9 | opt/spark/jars/snappy-java-1.1.10.8.jar |
| HIGH | CVE-2026-93451 | org.xerial.snappy:snappy-java | 1.1.10.8 | 1.1.10.9 | opt/spark/jars/snappy-java-1.1.10.8.jar |
| MEDIUM | CVE-2026-106450 | at.yawk.lz4:lz4-java | 1.11.0 | 1.11.4 | opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | CVE-2026-106452 | at.yawk.lz4:lz4-java | 1.11.0 | 1.11.2 | opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | CVE-2026-106453 | at.yawk.lz4:lz4-java | 1.11.0 | 1.11.2 | opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | CVE-2026-59949 | at.yawk.lz4:lz4-java | 1.11.0 | 1.11.1 | opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | CVE-2026-19630 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-94300 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-96888 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97313 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-19630 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-94300 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-96888 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97313 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-11495 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69645 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69652 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-15003 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-19548 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3441 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3442 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-4647 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6844 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6845 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6846 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90801 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90802 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90803 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90804 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90829 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90830 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90831 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91779 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91780 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91781 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91782 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-11495 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69645 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69652 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-15003 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-19548 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3441 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3442 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-4647 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6844 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6845 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6846 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90801 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90802 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90803 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90804 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90829 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90830 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90831 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91779 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91780 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91781 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91782 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-11495 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69645 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69652 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-15003 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-19548 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3441 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3442 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-4647 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6844 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6845 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6846 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90801 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90802 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90803 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90804 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90829 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90830 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90831 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91779 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91780 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91781 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91782 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18401 | com.fasterxml.jackson.core:jackson-core | 2.19.2 | 2.21.1, 2.18.6 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | CVE-2026-19032 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.8, 2.21.4 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-54514 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | CVE-2026-54515 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 3.1.4, 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-54516 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.21.4, 3.1.4 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-54517 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.21.4, 3.1.4 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-54518 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.21.4 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.8, 2.21.4 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.8, 2.21.4 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | CVE-2026-59888 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.8, 2.21.4 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | CVE-2026-59889 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.21.5, 2.18.9, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-77310 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5, 2.22.1 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2026-83557 | com.fasterxml.jackson.core:jackson-databind | 2.19.2 | 2.18.10, 2.21.6, 2.22.2 | opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.18.6 | 2.18.9, 2.21.5 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | com.fasterxml.jackson.core:jackson-databind | 2.21.2 | 2.18.9, 2.21.5 | opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | CVE-2025-48924 | commons-lang:commons-lang | 2.6 | - | opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | CVE-2026-102010 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102473 | dash | 0.5.11+git20210903+057cd650a4ed-3build1 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102474 | dash | 0.5.11+git20210903+057cd650a4ed-3build1 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102010 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102010 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102010 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-73508 | io.netty:netty-codec-dns | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-dns-4.2.13.Final.jar |
| MEDIUM | CVE-2026-50020 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | CVE-2026-50020 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-56746 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-56746 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | CVE-2026-59898 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-59898 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | CVE-2026-59899 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | CVE-2026-59899 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-59903 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | CVE-2026-59903 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-59921 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | CVE-2026-59921 | io.netty:netty-codec-http | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-47244 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | CVE-2026-47244 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-48043 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.1.135.Final, 4.2.15.Final | opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | CVE-2026-48043 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.1.135.Final, 4.2.15.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-50560 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-50560 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | CVE-2026-59900 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | CVE-2026-59900 | io.netty:netty-codec-http2 | 4.2.13.Final | 4.2.16.Final, 4.1.136.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-75596 | io.netty:netty-handler | 4.2.13.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/netty-handler-4.2.13.Final.jar |
| MEDIUM | CVE-2026-75596 | io.netty:netty-handler | 4.2.13.Final | 4.2.17.Final, 4.1.137.Final | opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-45673 | io.netty:netty-resolver-dns | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-resolver-dns-4.2.13.Final.jar |
| MEDIUM | CVE-2026-45536 | io.netty:netty-transport-native-epoll | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-transport-native-epoll-4.2.13.Final-linux-x86_64.jar |
| MEDIUM | CVE-2026-45536 | io.netty:netty-transport-native-epoll | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-transport-native-epoll-4.2.13.Final-linux-riscv64.jar |
| MEDIUM | CVE-2026-45536 | io.netty:netty-transport-native-epoll | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-transport-native-epoll-4.2.13.Final-linux-aarch_64.jar |
| MEDIUM | CVE-2026-45536 | io.netty:netty-transport-native-kqueue | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-transport-native-kqueue-4.2.13.Final-osx-aarch_64.jar |
| MEDIUM | CVE-2026-45536 | io.netty:netty-transport-native-kqueue | 4.2.13.Final | 4.2.15.Final, 4.1.135.Final | opt/spark/jars/netty-transport-native-kqueue-4.2.13.Final-osx-x86_64.jar |
| MEDIUM | CVE-2026-6860 | io.vertx:vertx-core | 4.5.26 | 4.5.27, 5.0.12 | opt/spark/jars/vertx-core-4.5.26.jar |
| MEDIUM | CVE-2026-107364 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | krb5-user | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102010 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-11495 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69645 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69652 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-15003 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-19548 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3441 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3442 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-4647 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6844 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6845 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6846 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90801 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90802 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90803 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90804 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90829 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90830 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90831 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91779 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91780 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91781 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91782 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18374 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-84243 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-8674 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-86805 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95818 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97399 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18374 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-84243 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-8674 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-86805 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95818 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97399 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18374 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-84243 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-8674 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-86805 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95818 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97399 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18374 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-84243 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-8674 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-86805 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95818 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97399 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18374 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-84243 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-8674 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-86805 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95818 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97399 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-11495 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69645 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69652 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-15003 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-19548 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3441 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3442 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-4647 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6844 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6845 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6846 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90801 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90802 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90803 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90804 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90829 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90830 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90831 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91779 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91780 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91781 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91782 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-11495 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69645 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-69652 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-15003 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-19548 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3441 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-3442 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-4647 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6844 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6845 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-6846 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90801 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90802 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90803 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90804 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90829 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90830 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90831 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91779 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91780 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91781 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-91782 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-66382 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-115506 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-117610 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118370 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-124317 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-128241 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-134703 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-77214 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93990 | libexpat1 | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-66382 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-115506 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-117610 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118370 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-124317 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-128241 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-134703 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-77214 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93990 | libexpat1-dev | 2.4.7-1ubuntu0.9 | 2.4.7-1ubuntu0.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102010 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-67693 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-88647 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-88648 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95184 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95210 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libgssrpc4 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libk5crypto3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libkdb5-10 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libkrb5-3 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107364 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107778 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107884 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112314 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112315 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112316 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112317 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112318 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112319 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112320 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112321 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112322 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-112323 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-118380 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119079 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71199 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-71200 | libkrb5support0 | 1.19.2-2ubuntu0.10 | 1.19.2-2ubuntu0.12 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-22185 | liblmdb0 | 0.9.24-1build2 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-103111 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-86145 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89156 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89157 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89158 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89160 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89161 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-48962 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-82560 | libperl5.34 | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-9538 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-7210 | libpython3.10 | 3.10.12-1~22.04.18 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-7210 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-7210 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-7210 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107161 | libsasl2-2 | 2.1.27+dfsg2-3ubuntu1.2 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107161 | libsasl2-modules-db | 2.1.27+dfsg2-3ubuntu1.2 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119371 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119372 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119373 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119375 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119376 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119378 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119379 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-119586 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107493 | libssl3 | 3.0.2-0ubuntu1.30 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102010 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-121876 | libsystemd0 | 249.11-0ubuntu3.23 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-12912 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18495 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-4775 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-102010 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95619 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-121876 | libudev1 | 249.11-0ubuntu3.23 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2013-7445 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2015-7837 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2016-8660 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2018-17977 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2019-15794 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2020-14356 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2021-3714 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2021-3864 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2021-4095 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2021-47432 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-0400 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-0480 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-1247 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-25836 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-2961 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-3238 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-4543 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-48667 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-48668 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-48766 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-48979 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49069 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49133 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49178 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49303 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49469 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49504 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49516 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49534 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49547 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49552 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49622 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49699 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49759 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49764 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49783 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49810 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49932 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-4994 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-49940 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50090 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50163 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50224 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50380 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50425 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50527 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50551 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50721 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50811 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2022-50871 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-0030 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-0160 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-1193 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-26242 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-31082 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52481 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52582 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52586 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52589 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52590 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52591 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52625 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52632 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52671 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52700 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-52732 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53002 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53037 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53068 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53149 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53218 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53221 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53240 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53247 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53248 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53323 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53366 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53401 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53538 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53540 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53561 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53584 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53588 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53620 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53635 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53685 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53733 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53742 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53748 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53822 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53829 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-53992 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54071 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54081 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54145 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54151 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54181 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54185 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54187 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54263 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2023-54280 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-14040 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-26691 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-26740 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-26759 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-26844 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-26948 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-26953 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-27014 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-27025 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-27400 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-27418 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35784 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35799 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35826 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35908 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35932 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35939 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35946 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36000 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36012 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36021 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36024 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36244 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36350 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36357 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36900 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36914 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36915 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-36949 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-38554 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-38556 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-38564 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-38628 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-39508 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-41001 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-41008 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-41023 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-41036 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-41088 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-41935 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-42107 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-42239 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-42273 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-43872 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-43899 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-43912 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-44963 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-45010 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-45015 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-46720 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-46727 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-46728 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-46765 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-46802 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-46848 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-46870 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47141 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47658 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47678 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47683 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47703 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47728 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47738 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47745 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-47794 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49859 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49893 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49898 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49899 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49905 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49906 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49908 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49912 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49914 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49918 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49920 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49921 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49922 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49923 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49940 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-49978 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-50063 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-50106 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-50138 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-50271 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-50298 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-52559 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-53091 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-53190 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-53195 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-53196 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-53216 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-53687 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-56592 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-56611 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-56641 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-56647 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-56665 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-56703 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-56709 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-57876 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-57895 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-57974 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-57975 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-57976 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-58089 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-58097 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-58241 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21682 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21696 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21732 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21768 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21825 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21891 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21972 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-21985 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-22038 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-22042 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-22090 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-22105 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-22109 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-22125 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-23130 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-23155 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37747 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37775 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37806 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37820 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37852 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37880 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37903 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37928 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37931 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37951 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-37961 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38029 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38039 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38040 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38041 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38080 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38166 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38215 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38225 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38234 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38261 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38272 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38300 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38331 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38333 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38359 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38369 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38436 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38520 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38524 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38544 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38590 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38644 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38679 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-38734 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39677 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39716 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39720 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39732 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39747 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39754 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39825 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39850 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39851 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39886 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39927 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-39947 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40071 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40077 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40084 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40104 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40107 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40196 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40198 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40206 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40247 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40268 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40285 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40288 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40289 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40311 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40337 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40339 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40354 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-40355 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68219 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68223 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68322 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68334 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68342 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68343 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68379 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68736 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68742 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68768 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68772 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68786 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-68822 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-71080 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-71160 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-71184 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-71227 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-71285 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-71289 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-71297 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-100071 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-100076 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-100077 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-100080 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-22979 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-22996 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23000 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23035 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23054 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23086 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23110 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23154 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23207 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23212 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23247 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23255 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23264 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23276 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23315 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23334 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23371 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23389 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23447 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23448 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-23468 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31492 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31503 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31519 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31531 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31537 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31568 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31579 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31592 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31611 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31675 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31677 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31707 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31767 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-31768 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43025 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43036 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43067 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43107 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43115 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43161 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43162 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43167 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43170 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43172 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43173 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43204 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43234 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43244 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43250 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43253 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43271 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43299 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43310 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43359 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43361 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43362 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43377 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43416 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43419 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43436 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43448 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-43483 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45855 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45859 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45893 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45917 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45934 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45942 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45949 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46000 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46014 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46032 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46059 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46068 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46153 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46157 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46199 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46229 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46235 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46247 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46302 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-46324 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-52936 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-52937 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-52956 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-52972 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-52975 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-52981 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-52990 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53000 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53009 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53018 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53034 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53056 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53066 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53076 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53083 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53091 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53107 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53108 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53122 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53179 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53220 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53267 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53317 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53327 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53353 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-53376 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63805 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63846 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63847 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63848 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63854 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63855 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63856 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63858 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63882 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63959 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63962 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63963 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63973 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63983 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-63999 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64006 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64076 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64079 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64097 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64106 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64190 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64210 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64341 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64345 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64348 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64389 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64400 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-64405 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68097 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68109 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68110 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68112 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68113 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68114 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68118 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68161 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68206 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68235 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68241 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68242 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68246 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68251 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68252 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68289 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68312 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68337 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68374 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68386 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68412 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68418 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68453 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-68457 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72017 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72098 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72168 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72200 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72203 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72236 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72243 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72290 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72318 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72320 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72321 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72333 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72376 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72379 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72382 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72398 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72402 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72404 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72416 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72420 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72438 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72444 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72473 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-72488 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74261 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74278 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74290 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74294 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74296 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74308 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74318 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74337 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74342 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74377 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74406 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74417 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74445 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74474 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74484 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74550 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74592 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74695 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74735 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74739 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74740 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-74747 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80526 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80576 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80669 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80670 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80684 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80694 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80695 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80697 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80739 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80847 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80861 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80866 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80901 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80904 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80907 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80925 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80947 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80989 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80992 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-80996 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89484 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89527 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89545 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89553 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89561 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89566 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89567 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89598 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89601 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89623 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89625 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89640 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89642 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89644 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89645 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89647 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89666 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89671 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89672 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89686 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89693 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89759 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89761 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89794 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89808 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89813 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89818 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89832 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89833 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89840 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89987 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-89995 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90016 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90029 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90041 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90061 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90076 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90083 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90090 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90098 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90099 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90109 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90110 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90119 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90125 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90138 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90139 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90146 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90153 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90154 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90156 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90166 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90179 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90183 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90207 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90234 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90250 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90263 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90264 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90273 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90289 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90300 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90330 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90333 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90345 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90347 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-90407 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-92480 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-92500 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-92520 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-92525 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93149 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93179 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93184 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93228 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93241 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93243 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93269 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93275 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93781 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93791 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93793 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93794 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93799 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93801 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93804 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93823 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-93826 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97422 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97432 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97433 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97498 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97500 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97511 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97514 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97515 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97516 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97517 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97518 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97520 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97529 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97558 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97561 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97563 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97566 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97597 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97939 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97953 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97965 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97975 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97984 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97985 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97997 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98021 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98026 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98043 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98044 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98058 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98079 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98087 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98092 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98097 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98099 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98103 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98111 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98114 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98126 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98127 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98162 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98170 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98176 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98177 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98180 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98193 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98227 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98254 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98265 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98266 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98269 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98279 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98284 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98288 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98292 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98303 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98304 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98312 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98316 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98321 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98327 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98328 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98329 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98330 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98331 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98334 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98335 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98337 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98377 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98386 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98389 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98393 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98394 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98401 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98421 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98427 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98428 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98436 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98451 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98452 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98453 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98507 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98538 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98549 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98556 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98598 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98628 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98655 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98681 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98686 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98694 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98698 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98700 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98705 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98716 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98726 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98750 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98753 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98760 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98761 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98769 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98772 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98785 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98802 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98808 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98810 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98811 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98812 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98816 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98822 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98828 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98838 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98840 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98850 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98853 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98857 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98859 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98914 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98917 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98924 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98926 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98929 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98933 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98935 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98937 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98944 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98947 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98950 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98954 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98955 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98956 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98959 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98966 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98967 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98969 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98975 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98977 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98978 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98983 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98984 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98985 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98989 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98990 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-98992 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99006 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99008 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99009 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99010 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99019 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99025 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99026 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99031 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99033 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99038 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99041 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99072 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99074 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99076 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99077 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99080 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99081 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99082 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99101 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99112 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99113 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99114 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99115 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99121 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99127 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99133 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99139 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99165 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99169 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99175 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99176 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99178 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99179 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99180 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99201 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99211 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99215 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99220 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99223 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99225 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99228 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99246 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99249 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99254 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99255 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99261 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99271 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99273 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99281 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99283 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99296 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99297 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99298 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99299 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99300 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99303 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99305 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99308 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99309 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99314 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99315 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99316 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99323 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99324 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99327 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99328 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99331 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99333 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99334 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99339 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99342 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99346 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99347 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99358 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99363 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99365 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99370 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99371 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99375 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99376 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99379 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99382 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99399 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99414 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99415 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99416 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99417 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99418 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99419 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99420 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99427 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99428 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99438 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99464 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99469 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99490 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99491 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99492 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99512 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99516 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99534 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99537 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99538 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99547 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99548 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99555 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99557 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99566 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99567 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99569 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99576 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99587 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99598 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99600 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99603 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99604 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99606 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99608 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99609 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99610 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99611 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99613 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99616 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99617 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99618 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99620 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99628 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99629 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99633 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99634 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99637 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99638 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99643 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99646 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99658 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99662 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99665 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99669 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99670 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99671 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99673 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99689 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99694 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99695 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99696 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99711 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99712 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99713 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99719 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99721 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99729 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99731 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99734 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99742 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99743 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99749 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99751 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99756 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99770 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99774 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-99799 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18374 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-84243 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-8674 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-86805 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-95818 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-97399 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-107493 | openssl | 3.0.2-0ubuntu1.30 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-45205 | org.apache.commons:commons-configuration2 | 2.10.1 | 2.15.0 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2024-29869 | org.apache.hive:hive-exec | 2.3.10 | 4.0.1 | opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | CVE-2026-57914 | org.apache.kerby:kerby-asn1 | 2.0.3 | 2.1.2 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-49844 | org.apache.logging.log4j:log4j-api | 2.25.4 | 2.25.5, 2.26.1 | opt/spark/jars/log4j-api-2.25.4.jar |
| MEDIUM | CVE-2024-6763 | org.eclipse.jetty:jetty-http | 9.4.58.v20250814 | 12.0.12 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-10051 | org.eclipse.jetty:jetty-server | 12.1.8 | 12.0.36, 12.1.10 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-6790 | org.eclipse.jetty:jetty-server | 12.1.8 | 12.0.35, 12.1.9 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-8384 | org.eclipse.jetty:jetty-util | 12.1.8 | 12.0.35, 12.1.9 | opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | CVE-2026-77421 | org.jline:jline-builtins | 3.29.0 | 4.3.1, 3.30.15 | opt/spark/jars/jline-3.29.0-jdk8.jar |
| MEDIUM | CVE-2026-77421 | org.jline:jline-builtins | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77420 | org.jline:jline-reader | 3.9.0 | 4.3.1, 3.30.15 | opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-77420 | org.jline:jline-reader | 3.29.0 | 4.3.1, 3.30.15 | opt/spark/jars/jline-3.29.0-jdk8.jar |
| MEDIUM | CVE-2026-116590 | org.xerial.snappy:snappy-java | 1.1.10.8 | 1.1.10.9 | opt/spark/jars/snappy-java-1.1.10.8.jar |
| MEDIUM | CVE-2026-48962 | perl | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-82560 | perl | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-9538 | perl | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-48962 | perl-base | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-82560 | perl-base | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-9538 | perl-base | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-48962 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-82560 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-9538 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2024-35195 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-66418 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2025-66471 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-21441 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-8643 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-59890 | python3-pkg-resources | 59.6.0-1.2ubuntu0.22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-59890 | python3-setuptools | 59.6.0-1.2ubuntu0.22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-7210 | python3.10 | 3.10.12-1~22.04.18 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-7210 | python3.10-dev | 3.10.12-1~22.04.18 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-7210 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18477 | tar | 1.34+dfsg-1ubuntu0.1.22.04.6 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2026-18508 | tar | 1.34+dfsg-1ubuntu0.1.22.04.6 | - | /r/image.tar (ubuntu 22.04) |
| MEDIUM | CVE-2021-31879 | wget | 1.21.2-2ubuntu1.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-106449 | at.yawk.lz4:lz4-java | 1.11.0 | 1.11.4 | opt/spark/jars/lz4-java-1.11.0.jar |
| LOW | CVE-2019-1010204 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48064 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-1150 | binutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-1010204 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48064 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-1150 | binutils-common | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-1010204 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48064 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-1150 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | dirmngr | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gnupg | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gnupg-l10n | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gnupg-utils | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gnupg2 | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gpg | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gpg-agent | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gpg-wks-client | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gpg-wks-server | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gpgconf | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gpgsm | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-105712 | gpgv | 2.2.27-3ubuntu2.5 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-1010204 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48064 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-1150 | libbinutils | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-1010204 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48064 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-1150 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-1010204 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48064 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-1150 | libctf0 | 2.38-4ubuntu2.12 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-5222 | libicu70 | 70.1-2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2018-10126 | libjpeg-turbo8 | 2.1.2-0ubuntu1 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-50495 | libncurses6 | 6.3-2ubuntu0.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-50495 | libncursesw6 | 6.3-2ubuntu0.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-41409 | libpcre2-8-0 | 10.39-3ubuntu0.1 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-40228 | libsystemd0 | 249.11-0ubuntu3.23 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-50495 | libtinfo6 | 6.3-2ubuntu0.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-46195 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-27943 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-40228 | libudev1 | 249.11-0ubuntu3.23 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-4899 | libzstd1 | 1.4.8+dfsg-3build1 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2017-0537 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2017-13165 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2017-13693 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2018-1121 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2018-12928 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2018-12929 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2018-12930 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2018-12931 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-14899 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-15213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-19378 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-19814 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2019-20426 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2020-14304 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2020-35501 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-26934 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-47658 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-41848 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-44032 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-44033 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-44034 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-45885 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-45888 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48628 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48646 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48744 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48929 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-48976 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49108 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49124 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49134 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49138 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49161 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49172 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49173 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49177 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49218 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49306 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49333 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49342 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49420 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49471 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49476 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49484 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49518 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49533 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49543 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49722 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49766 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49833 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49901 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49955 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49967 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-49980 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50002 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50166 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50178 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50195 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50230 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50232 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50236 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50256 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50260 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50266 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50284 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50304 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50316 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50357 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50390 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50407 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50461 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50464 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50467 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50492 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50500 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50518 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50550 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50571 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50616 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50628 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50634 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50700 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50704 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50708 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50720 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50748 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50759 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2022-50772 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-2007 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-33053 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-4133 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52561 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52576 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52624 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52653 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52660 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52749 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52761 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52837 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52879 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52888 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52905 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52916 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-52939 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53008 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53009 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53010 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53042 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53052 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53093 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53105 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53115 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53152 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53168 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53178 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53254 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53261 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53332 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53347 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53348 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53353 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53355 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53367 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53370 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53371 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53376 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53383 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53424 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53429 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53438 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53447 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53452 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53460 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53466 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53491 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53509 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53510 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53529 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53544 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53562 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53574 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53602 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53627 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53647 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53651 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53682 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53694 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53743 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53751 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53753 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53765 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53780 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53794 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53806 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53849 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53850 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-53855 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54023 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54028 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54047 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54052 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54067 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54088 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54105 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54121 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54129 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54180 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54190 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54201 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54234 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54253 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54323 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-54324 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-0564 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26595 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26605 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26662 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26672 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26714 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26742 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26756 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26757 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26758 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26807 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26866 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26869 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26876 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-26983 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27002 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27005 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27010 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27011 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27035 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27041 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27056 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27408 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-27435 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35794 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35801 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35803 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35808 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35868 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35870 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35875 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35924 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35931 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35945 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35956 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35995 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-35999 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36009 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36347 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36478 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36479 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36917 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36920 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36924 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-36951 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-37021 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-38543 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-38557 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-38594 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-38608 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-38625 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-40966 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-40977 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-40989 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-40998 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-40999 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-41069 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-41082 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42110 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42118 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42122 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42128 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42129 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42139 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42147 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42155 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42253 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42319 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42320 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-42321 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-43823 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-43824 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-43831 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-43842 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-43866 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-44950 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46678 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46681 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46716 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46726 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46729 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46730 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46733 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46775 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46806 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46808 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46811 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46813 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46834 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46857 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-46860 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-47661 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-47662 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-47664 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-47704 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49569 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49855 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49891 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49901 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49910 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49911 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49915 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49916 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49917 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49919 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49929 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49932 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49934 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49939 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49945 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49970 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-49992 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50009 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50028 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50057 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50098 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50135 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50146 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50166 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50183 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50217 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50284 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-50289 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-53056 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-53093 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-53095 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-53175 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-53219 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-53224 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56544 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56565 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56566 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56583 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56588 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56609 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56660 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56707 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56712 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56718 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56722 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-57795 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-57809 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-57872 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-57887 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-57888 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-57924 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-57993 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-58012 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-58237 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21629 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21634 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21635 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21645 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21656 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-203.213 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21658 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21673 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21693 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21714 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21723 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21734 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21750 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21816 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21831 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21838 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21872 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21881 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21885 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21894 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21899 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21915 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21918 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21931 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-21976 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-22028 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-22053 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-22104 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-22127 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-23132 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-23133 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37800 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37807 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37833 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37834 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37842 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37853 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37938 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37945 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37957 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-37980 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38014 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38015 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38038 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38042 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38059 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38062 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38063 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38064 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38071 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38081 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38096 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38117 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38118 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38126 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38127 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38131 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38140 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38207 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38275 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38334 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38409 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38422 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38426 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38438 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38485 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38491 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38595 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38665 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38702 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38705 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-38709 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39692 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39705 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39706 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39707 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39744 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39746 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39759 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39762 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39763 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39770 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39789 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39797 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39819 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39826 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39827 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39829 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39833 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39859 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39901 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39932 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39940 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39961 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39989 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-39990 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40003 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40032 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40036 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40057 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40080 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40093 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40095 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40097 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40100 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40146 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40160 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40180 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40193 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40242 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40251 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40266 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40303 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40325 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40341 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-40358 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-62626 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68171 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68173 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68183 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68188 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68231 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68236 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68296 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68310 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68324 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68345 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68363 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68371 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68755 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68778 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68781 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-68809 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71067 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71095 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71109 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71152 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71183 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71192 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71193 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71198 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71225 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71268 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71269 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71272 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71273 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2025-71313 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-100072 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-100082 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23068 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23069 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23088 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23118 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23126 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23137 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23138 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23214 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23267 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23287 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23292 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23302 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23310 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23330 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23348 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23361 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23374 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23465 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-23472 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31391 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31392 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31412 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31441 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31453 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31462 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31486 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31487 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31493 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31496 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31500 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31527 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31560 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31595 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31606 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31702 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31704 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31722 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31723 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31724 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31725 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31771 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-31777 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43053 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43072 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43073 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43101 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43118 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43119 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43126 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43143 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43249 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43288 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43308 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43309 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43317 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43338 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43344 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43352 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43353 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43409 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43410 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43413 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43421 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-43424 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45858 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45872 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45877 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45894 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45905 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45923 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45957 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45961 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45981 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-45997 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46054 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46075 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46083 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46147 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46175 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46200 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46225 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46226 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46241 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46245 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46254 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46265 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46280 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-46312 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53015 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53017 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53025 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53035 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53053 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53063 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53070 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53106 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53111 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53115 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53117 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53120 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53129 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53147 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53156 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53207 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53226 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53229 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53230 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53232 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53236 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53237 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53258 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53284 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53289 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53292 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53303 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53313 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53314 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53330 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53349 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53368 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53374 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-53384 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-63826 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-63862 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64001 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64109 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64112 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64144 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64231 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64241 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64305 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64378 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64388 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64391 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64424 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64449 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64463 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-64513 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68084 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68086 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68093 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68102 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68105 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68107 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68203 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68207 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68210 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68233 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68238 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68258 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68280 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68286 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68287 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68288 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68303 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68396 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68436 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68441 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68448 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-68454 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72028 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72062 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72075 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72106 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72144 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72147 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72179 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72312 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72324 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72329 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72335 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72336 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72337 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72342 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72384 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72397 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72425 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72436 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72439 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72454 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72469 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-72487 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74271 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74289 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74291 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74307 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74365 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74374 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74380 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74389 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74391 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74397 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74401 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74405 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74441 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74450 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74509 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74514 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74515 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74521 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74527 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74543 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74544 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74553 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74653 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74672 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74687 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74689 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74690 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74713 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74725 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74729 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-74754 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80556 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80572 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80579 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80580 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80611 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80616 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80623 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80628 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80629 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80635 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80643 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80650 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80653 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80654 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80660 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80676 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80698 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80704 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80738 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80747 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80755 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80764 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80785 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80786 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80820 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80851 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80884 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80948 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80974 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80990 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-80999 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89437 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89441 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89452 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89462 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89465 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89468 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89472 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89539 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89543 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89552 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89574 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89632 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89636 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89648 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89654 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89682 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89702 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89709 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89713 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89718 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89719 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89722 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89738 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89740 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89744 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89756 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89762 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89763 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89795 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89797 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89799 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89822 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89824 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89834 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89835 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89838 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89848 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89859 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89860 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89862 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89870 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89877 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89899 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89912 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89920 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89921 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89929 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89938 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89944 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89960 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89962 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89972 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89988 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-89996 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90002 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90013 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90021 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90023 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90036 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90044 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90045 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90060 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90084 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90097 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90105 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90106 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90112 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90116 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90174 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90180 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90182 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90184 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90185 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90186 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90187 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90188 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90189 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90194 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90196 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90206 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90208 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90235 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90247 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90259 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90267 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90301 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90311 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90315 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90322 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90328 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90335 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90336 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90337 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90359 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90365 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90379 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90383 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90385 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90389 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90401 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90410 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90418 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90421 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-90433 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-92481 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-92482 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93042 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93047 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93050 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93058 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93062 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93072 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93081 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93091 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93093 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93099 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93100 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93104 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93117 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93128 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93142 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93146 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93150 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93155 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93163 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93168 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93172 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93186 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93200 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93202 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93205 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93231 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93235 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93237 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93239 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93240 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93251 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93260 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93272 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93285 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93786 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93788 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93809 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93810 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93814 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93818 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93827 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-93829 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97409 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97410 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97412 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97414 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97423 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97424 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97425 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97426 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97427 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97428 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97431 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97447 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97473 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97474 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97477 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97478 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97479 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97480 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97494 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97495 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97496 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97499 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97501 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97503 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97504 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97505 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97512 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97519 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97521 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97531 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97532 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97534 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97535 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97536 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97537 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97540 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97541 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97554 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97556 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97559 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97599 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97600 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97609 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97616 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97619 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97901 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97908 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97918 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97922 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97925 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97929 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97933 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97935 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97938 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97949 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97950 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97973 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97978 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97986 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97987 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97989 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97992 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-97994 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98003 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98008 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98046 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98067 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98073 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98101 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98102 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98124 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98131 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98142 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98148 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98156 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98161 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98169 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98172 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98174 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98175 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98182 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98192 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98198 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98212 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98213 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98245 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98248 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98264 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98271 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98273 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98285 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98286 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98294 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98307 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98309 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98325 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98326 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98338 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98375 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98387 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98399 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98400 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98403 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98409 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98423 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98424 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98425 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98430 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98435 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98449 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98450 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98484 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98486 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98493 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98502 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98506 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98519 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98539 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98544 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98565 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98620 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98656 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98657 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98662 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98663 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98664 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98665 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98666 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98669 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98670 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98671 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98679 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98684 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98687 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98688 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98695 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98696 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98697 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98703 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98710 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98711 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98714 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98715 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98721 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98722 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98732 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98740 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98748 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98749 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98751 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98755 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98756 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98757 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98762 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98764 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98765 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98766 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98767 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98771 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98775 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98779 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98784 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98790 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98796 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98798 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98814 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98815 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98819 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98826 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98830 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98831 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98833 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98834 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98839 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98847 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98851 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98854 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98855 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98856 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98880 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98903 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98904 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98913 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98915 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98932 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98934 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98936 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98940 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98957 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98970 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98971 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98972 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98979 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98980 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-98981 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99005 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99007 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99022 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99024 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99034 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99035 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99036 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99037 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99040 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99045 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99049 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99052 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99057 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99058 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99059 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99061 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99063 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99067 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99070 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99071 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99087 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99088 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99089 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99090 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99095 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99100 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99118 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99122 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99123 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99124 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99132 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99135 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99136 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99140 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99146 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99150 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99156 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99161 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99163 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99172 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99181 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99192 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99204 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99206 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99216 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99221 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99222 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99224 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99226 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99233 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99234 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99235 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99240 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99244 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99245 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99256 | linux-libc-dev | 5.15.0-202.212 | 5.15.0-204.214 | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99285 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99318 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99319 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99332 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99348 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99349 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99351 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99353 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99354 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99360 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99367 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99368 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99378 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99381 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99385 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99387 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99403 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99404 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99421 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99426 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99430 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99431 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99433 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99434 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99444 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99446 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99449 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99452 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99453 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99455 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99456 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99465 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99467 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99470 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99474 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99475 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99479 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99488 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99495 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99496 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99497 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99503 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99505 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99509 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99511 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99513 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99514 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99521 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99529 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99543 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99545 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99550 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99551 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99552 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99570 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99588 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99589 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99593 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99594 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99650 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99651 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99654 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99655 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99656 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99680 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99682 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99683 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99684 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99685 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99691 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99692 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99693 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99701 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99717 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99723 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99732 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99750 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99757 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99759 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99763 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99764 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99765 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99771 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99785 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99786 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99788 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99791 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-99793 | linux-libc-dev | 5.15.0-202.212 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-29383 | login | 1:4.8.1-2ubuntu2.2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56433 | login | 1:4.8.1-2ubuntu2.2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-50495 | ncurses-base | 6.3-2ubuntu0.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-50495 | ncurses-bin | 6.3-2ubuntu0.3 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2023-29383 | passwd | 1:4.8.1-2ubuntu2.2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2024-56433 | passwd | 1:4.8.1-2ubuntu2.2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2021-45261 | patch | 2.7.6-7build2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-56288 | patch | 2.7.6-7build2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-56289 | patch | 2.7.6-7build2 | - | /r/image.tar (ubuntu 22.04) |
| LOW | CVE-2026-1703 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /r/image.tar (ubuntu 22.04) |

## Grype

| severity | id | package | installed | fixed | path |
|---|---|---|---|---|---|
| CRITICAL | GHSA-rcjc-c4pj-xxrp | derby | 10.16.1.1 | 10.16.1.2 | /opt/spark/jars/derby-10.16.1.1.jar |
| CRITICAL | GHSA-c4c3-7fpv-j4q5 | netty-handler | 4.2.13.Final | 4.2.17.Final | /opt/spark/jars/netty-handler-4.2.13.Final.jar |
| CRITICAL | GHSA-c4c3-7fpv-j4q5 | netty-handler | 4.2.13.Final | 4.2.17.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | CVE-2026-109518 | apt | 2.4.14 | 2.4.15ubuntu0.1 | /var/lib/dpkg/status |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.6.0-jre | 33.7.2 | /opt/spark/jars/spark-network-common_2.13-4.2.1.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.6.0-jre | 33.7.2 | /opt/spark/jars/guava-33.6.0-jre.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.4.8-jre | 33.7.2 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-xxph-c9ww-hj94 | guava | 33.6.0-jre | 33.7.2 | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.21.2 | 2.21.7 | /opt/spark/jars/jackson-core-2.21.2.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.19.2 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-7hhh-6rmp-j9qf | jackson-core | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-p6pp-m3f8-5c89 | jackson-core | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-p6pp-m3f8-5c89 | jackson-core | 2.21.2 | 2.21.7 | /opt/spark/jars/jackson-core-2.21.2.jar |
| HIGH | GHSA-p6pp-m3f8-5c89 | jackson-core | 2.19.2 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.19.2 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-core-2.21.2.jar |
| HIGH | GHSA-r7wm-3cxj-wff9 | jackson-core | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.19.2 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.21.2 | 2.21.7 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | GHSA-cxp5-3px4-pw24 | jackson-databind | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.19.2 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-j3rv-43j4-c7qm | jackson-databind | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | GHSA-q4xh-88c3-wmh7 | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-q4xh-88c3-wmh7 | jackson-databind | 2.19.2 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-q4xh-88c3-wmh7 | jackson-databind | 2.21.2 | 2.21.6 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-rmj7-2vxq-3g9f | jackson-databind | 2.19.2 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.19.2 | 2.21.7 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.21.2 | 2.21.7 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| HIGH | GHSA-wv8q-qhhj-9h54 | jackson-databind | 2.18.6 | 2.18.11 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-355h-qmc2-wpwf | jetty-http | 9.4.58.v20250814 | 9.4.60 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-2fvj-hgj9-j2gr | jetty-security | 12.1.8 | 12.1.10 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| HIGH | GHSA-2v9w-34q6-wpqx | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-2v9w-34q6-wpqx | jline-builtins | 3.29.0 | 3.30.15 | /opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | GHSA-r2xf-8xr9-62gw | jline-builtins | 3.29.0 | 3.30.15 | /opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | GHSA-r2xf-8xr9-62gw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-2r2c-cx56-8933 | jline-remote-telnet | 3.29.0 | 3.30.14 | /opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | GHSA-2r2c-cx56-8933 | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-47qp-hqvx-6r3f | jline-remote-telnet | 3.9.0 | 3.30.14 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| HIGH | GHSA-47qp-hqvx-6r3f | jline-remote-telnet | 3.29.0 | 3.30.14 | /opt/spark/jars/jline-3.29.0-jdk8.jar |
| HIGH | CVE-2026-109518 | libapt-pkg6.0 | 2.4.14 | 2.4.15ubuntu0.1 | /var/lib/dpkg/status |
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
| HIGH | GHSA-mcr4-qmvw-px4g | lz4-java | 1.11.0 | 1.11.4 | /opt/spark/jars/lz4-java-1.11.0.jar |
| HIGH | GHSA-558v-64gr-wgg4 | netty-codec-compression | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-compression-4.2.13.Final.jar |
| HIGH | GHSA-558v-64gr-wgg4 | netty-codec-compression | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-6jqx-86gh-f27w | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| HIGH | GHSA-6jqx-86gh-f27w | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-jppx-w49h-x2qq | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-jppx-w49h-x2qq | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| HIGH | GHSA-mvh2-crg5-v77c | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| HIGH | GHSA-mvh2-crg5-v77c | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-93wv-jw9v-4972 | netty-codec-http2 | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-93wv-jw9v-4972 | netty-codec-http2 | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| HIGH | GHSA-3qp7-7mw8-wx86 | netty-handler | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-handler-4.2.13.Final.jar |
| HIGH | GHSA-3qp7-7mw8-wx86 | netty-handler | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-c653-97m9-rcg9 | netty-handler | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-c653-97m9-rcg9 | netty-handler | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-handler-4.2.13.Final.jar |
| HIGH | GHSA-x4gw-5cx5-pgmh | netty-handler | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| HIGH | GHSA-x4gw-5cx5-pgmh | netty-handler | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-handler-4.2.13.Final.jar |
| HIGH | GHSA-5pvg-856g-cp85 | netty-resolver-dns | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-resolver-dns-4.2.13.Final.jar |
| HIGH | GHSA-676x-f7gg-47vc | netty-resolver-dns | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-resolver-dns-4.2.13.Final.jar |
| HIGH | CVE-2026-114938 | openjdk | 21.0.13+9-LTS | 17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| HIGH | CVE-2026-114939 | openjdk | 21.0.13+9-LTS | 1.8.0_513,8.0.513,11.0.33.1,17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| HIGH | CVE-2026-114940 | openjdk | 21.0.13+9-LTS | 1.8.0_513,8.0.513,11.0.33.1,17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| HIGH | CVE-2026-114941 | openjdk | 21.0.13+9-LTS | 21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| HIGH | CVE-2026-114942 | openjdk | 21.0.13+9-LTS | 17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| HIGH | GHSA-gwq9-9ffj-mvrv | snappy-java | 1.1.10.8 | 1.1.10.9 | /opt/spark/jars/snappy-java-1.1.10.8.jar |
| HIGH | GHSA-q233-g92q-qxp6 | snappy-java | 1.1.10.8 | 1.1.10.9 | /opt/spark/jars/snappy-java-1.1.10.8.jar |
| HIGH | GO-2022-0533 | stdlib | go1.18.1 | 1.17.11,1.18.3 | /usr/sbin/gosu |
| HIGH | GO-2023-1568 | stdlib | go1.18.1 | 1.19.6,1.20.1 | /usr/sbin/gosu |
| HIGH | GO-2023-1840 | stdlib | go1.18.1 | 1.19.10,1.20.5 | /usr/sbin/gosu |
| HIGH | GO-2023-2185 | stdlib | go1.18.1 | 1.20.11,1.21.4 | /usr/sbin/gosu |
| MEDIUM | CVE-2026-19630 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-94300 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-96888 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97313 | bind9-host | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2022-2795 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-2828 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-4408 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-50387 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-50868 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-0760 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-11187 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-12705 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-1737 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-1975 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-40778 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-40780 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-8677 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-10723 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-10822 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11331 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11622 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11721 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12617 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-13204 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-13321 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-1519 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19033 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19630 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19662 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19666 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19667 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19668 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19941 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3039 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3104 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3119 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3591 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3592 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-5946 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-5950 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-75029 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-76163 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-77119 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-77692 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-78301 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-80274 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-94300 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-96888 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97313 | bind9-libs | 1:9.18.39-0ubuntu0.22.04.7 | 1:9.18.39-0ubuntu0.22.04.8 | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-1149 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-11495 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69645 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69652 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15003 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19548 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3441 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3442 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-4647 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6844 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6845 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6846 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90801 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90802 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90803 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90804 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90829 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90830 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90831 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91779 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91780 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91781 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91782 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-1149 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-11495 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69645 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69652 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15003 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19548 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3441 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3442 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-4647 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6844 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6845 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6846 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90801 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90802 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90803 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90804 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90829 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90830 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90831 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91779 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91780 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91781 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91782 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-1149 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-11495 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69645 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69652 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15003 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19548 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3441 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3442 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-4647 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6844 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6845 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6846 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90801 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90802 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90803 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90804 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90829 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90830 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90831 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91779 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91780 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91781 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91782 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | GHSA-337m-mw94-2v6g | commons-configuration2 | 2.10.1 | 2.15.0 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-j288-q9x7-2f5v | commons-lang | 2.6 | - | /opt/spark/jars/commons-lang-2.6.jar |
| MEDIUM | CVE-2026-102010 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102473 | dash | 0.5.11+git20210903+057cd650a4ed-3build1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102474 | dash | 0.5.11+git20210903+057cd650a4ed-3build1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91094 | dpkg | 1.21.1ubuntu2.6 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91094 | dpkg-dev | 1.21.1ubuntu2.6 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | GHSA-c476-j253-5rgq | hive-exec | 2.3.10 | 4.0.1 | /opt/spark/jars/hive-exec-2.3.10-core.jar |
| MEDIUM | GHSA-72hv-8253-57qq | jackson-core | 2.19.2 | 2.21.1 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.19.2 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-3pjw-73gf-8qr5 | jackson-databind | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.21.2 | 2.21.5 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.19.2 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-5gvw-p9qm-jgwh | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5hh8-q8hv-fr38 | jackson-databind | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.19.2 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-5jmj-h7xm-6q6v | jackson-databind | 2.21.2 | 2.21.5 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-9fxm-vc8v-hj55 | jackson-databind | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.19.2 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-gx83-3vf8-gh7j | jackson-databind | 2.21.2 | 2.21.6 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.18.6 | 2.18.8 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-hgj6-7826-r7m5 | jackson-databind | 2.19.2 | 2.21.4 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-mhm7-754m-9p8w | jackson-databind | 2.21.2 | 2.21.5 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-rcqc-6cw3-h962 | jackson-databind | 2.21.2 | 2.21.4 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.21.2 | 2.21.5 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.18.6 | 2.18.9 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-vvgp-rfg2-7rr6 | jackson-databind | 2.19.2 | 2.21.5 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.21.2 | 2.21.6 | /opt/spark/jars/jackson-databind-2.21.2.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.19.2 | 2.21.6 | /opt/spark/jars/parquet-jackson-1.17.0.jar |
| MEDIUM | GHSA-wjgm-6hv5-3cvf | jackson-databind | 2.18.6 | 2.18.10 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-qh8g-58pp-2wxh | jetty-http | 9.4.58.v20250814 | 12.0.12 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-7p3p-8qv8-m2vh | jetty-server | 12.1.8 | 12.1.9 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | GHSA-f4v5-65jj-pcr2 | jetty-server | 12.1.8 | 12.1.10 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | GHSA-w7x5-g22v-xqhr | jetty-util | 12.1.8 | 12.1.9 | /opt/spark/jars/spark-core_2.13-4.2.1.jar |
| MEDIUM | GHSA-ph9c-7hw9-vhhw | jline-builtins | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-ph9c-7hw9-vhhw | jline-builtins | 3.29.0 | 3.30.15 | /opt/spark/jars/jline-3.29.0-jdk8.jar |
| MEDIUM | GHSA-5q95-hrpc-m3w3 | jline-reader | 3.29.0 | 3.30.15 | /opt/spark/jars/jline-3.29.0-jdk8.jar |
| MEDIUM | GHSA-5q95-hrpc-m3w3 | jline-reader | 3.9.0 | 3.30.15 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | GHSA-x6vc-x4v4-hjhr | kerby-asn1 | 2.0.3 | 2.1.2 | /opt/spark/jars/hadoop-client-runtime-3.5.0.jar |
| MEDIUM | CVE-2026-107364 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-54369 | libacl1 | 2.3.1-1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-54370 | libacl1 | 2.3.1-1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-1149 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-11495 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69645 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69652 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15003 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19548 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3441 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3442 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-4647 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6844 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6845 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6846 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90801 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90802 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90803 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90804 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90829 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90830 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90831 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91779 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91780 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91781 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91782 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-100290 | libc-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115819 | libc-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121757 | libc-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121758 | libc-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124024 | libc-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-126765 | libc-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18374 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84243 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-8674 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-86805 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95818 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97399 | libc-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-100290 | libc-dev-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115819 | libc-dev-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121757 | libc-dev-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121758 | libc-dev-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124024 | libc-dev-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-126765 | libc-dev-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18374 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84243 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-8674 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-86805 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95818 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97399 | libc-dev-bin | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-100290 | libc-devtools | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115819 | libc-devtools | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121757 | libc-devtools | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121758 | libc-devtools | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124024 | libc-devtools | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-126765 | libc-devtools | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18374 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84243 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-8674 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-86805 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95818 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97399 | libc-devtools | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-100290 | libc6 | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115819 | libc6 | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121757 | libc6 | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121758 | libc6 | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124024 | libc6 | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-126765 | libc6 | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18374 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84243 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-8674 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-86805 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95818 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97399 | libc6 | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-100290 | libc6-dev | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115819 | libc6-dev | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121757 | libc6-dev | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121758 | libc6-dev | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124024 | libc6-dev | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-126765 | libc6-dev | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18374 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84243 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-8674 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-86805 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95818 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97399 | libc6-dev | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-1149 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-11495 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69645 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69652 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15003 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19548 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3441 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3442 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-4647 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6844 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6845 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6846 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90801 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90802 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90803 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90804 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90829 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90830 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90831 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91779 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91780 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91781 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91782 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-1149 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-11495 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69645 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-69652 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15003 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19548 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3441 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3442 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-4647 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6844 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6845 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6846 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90801 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90802 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90803 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90804 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90829 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90830 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-90831 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91779 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91780 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91781 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91782 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-91094 | libdpkg-perl | 1.21.1ubuntu2.6 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-59375 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-66382 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115506 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-117610 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118370 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124317 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-128241 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-134703 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-41080 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-45186 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-77214 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-93990 | libexpat1 | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-59375 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-66382 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115506 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-117610 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118370 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124317 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-128241 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-134703 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-41080 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-45186 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-77214 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-93990 | libexpat1-dev | 2.4.7-1ubuntu0.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-9672 | libgd3 | 2.3.0-2ubuntu2.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-127039 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-127040 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-127231 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-67693 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-88647 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-88648 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95184 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95210 | libgnutls30 | 3.7.3-4ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107364 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107778 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107884 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112314 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112315 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112316 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112317 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112318 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112319 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112320 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112321 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112322 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112323 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118380 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119079 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71199 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-71200 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-22185 | liblmdb0 | 0.9.24-1build2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-10041 | libpam-modules | 1.4.0-11ubuntu2.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-10041 | libpam-modules-bin | 1.4.0-11ubuntu2.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-10041 | libpam-runtime | 1.4.0-11ubuntu2.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-10041 | libpam0g | 1.4.0-11ubuntu2.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103111 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-86145 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-89156 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-89157 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-89158 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-89160 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-89161 | libpcre2-8-0 | 10.39-3ubuntu0.1 | 10.39-3ubuntu0.2 | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-31486 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15649 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48959 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48961 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48962 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7017 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82560 | libperl5.34 | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-9538 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-12781 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15366 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15367 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-0864 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103995 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114583 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115557 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115559 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115791 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-116566 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118444 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118447 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118448 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119170 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11940 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11972 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12345 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124249 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15310 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15806 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-16052 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-17084 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18503 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19445 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19552 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19553 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19672 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3446 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57175 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57176 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57177 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57178 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57179 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6879 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7210 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82049 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84366 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-87910 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-12781 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15366 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15367 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-0864 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103995 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114583 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115557 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115559 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115791 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-116566 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118444 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118447 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118448 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119170 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11940 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11972 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12345 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124249 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15310 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15806 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-16052 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-17084 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18503 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19445 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19552 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19553 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19672 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3446 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57175 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57176 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57177 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57178 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57179 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6879 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7210 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82049 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84366 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-87910 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-12781 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15366 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15367 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-0864 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103995 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114583 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115557 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115559 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115791 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-116566 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118444 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118447 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118448 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119170 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11940 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11972 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12345 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124249 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15310 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15806 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-16052 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-17084 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18503 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19445 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19552 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19553 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19672 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3446 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57175 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57176 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57177 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57178 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57179 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6879 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7210 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82049 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84366 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-87910 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-12781 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15366 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15367 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-0864 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103995 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114583 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115557 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115559 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115791 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-116566 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118444 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118447 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118448 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119170 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11940 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11972 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12345 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124249 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15310 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15806 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-16052 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-17084 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18503 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19445 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19552 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19553 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19672 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3446 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57175 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57176 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57177 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57178 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57179 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6879 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7210 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82049 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84366 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-87910 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112060 | librtmp1 | 2.4+20151223.gitfa8646d.1-2build4 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-112061 | librtmp1 | 2.4+20151223.gitfa8646d.1-2build4 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107161 | libsasl2-2 | 2.1.27+dfsg2-3ubuntu1.2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-129483 | libsasl2-2 | 2.1.27+dfsg2-3ubuntu1.2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-132138 | libsasl2-2 | 2.1.27+dfsg2-3ubuntu1.2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107161 | libsasl2-modules-db | 2.1.27+dfsg2-3ubuntu1.2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-129483 | libsasl2-modules-db | 2.1.27+dfsg2-3ubuntu1.2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-132138 | libsasl2-modules-db | 2.1.27+dfsg2-3ubuntu1.2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119371 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119372 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119373 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119375 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119376 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119378 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119379 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119586 | libsqlite3-0 | 3.37.2-2ubuntu0.8 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107493 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107494 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107496 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121481 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121482 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124709 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-35190 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84786 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-88822 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-88823 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95690 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95691 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95692 | libssl3 | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121876 | libsystemd0 | 249.11-0ubuntu3.23 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12912 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18495 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-36849 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-4775 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-104357 | libtirpc-common | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-85231 | libtirpc-common | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-85977 | libtirpc-common | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-104357 | libtirpc-dev | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-85231 | libtirpc-dev | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-85977 | libtirpc-dev | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-104357 | libtirpc3 | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-85231 | libtirpc3 | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-85977 | libtirpc3 | 1.3.2-2ubuntu0.1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-102010 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114690 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114691 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115455 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115456 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-125709 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95619 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121876 | libudev1 | 249.11-0ubuntu3.23 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124851 | libzstd1 | 1.4.8+dfsg-3build1 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-100290 | locales | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115819 | locales | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121757 | locales | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121758 | locales | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124024 | locales | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-126765 | locales | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18374 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84243 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-8674 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-86805 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95818 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97399 | locales | 2.35-0ubuntu3.15 | 2.35-0ubuntu3.18 | /var/lib/dpkg/status |
| MEDIUM | GHSA-qv9r-c865-cp47 | log4j-api | 2.25.4 | 2.25.5 | /opt/spark/jars/log4j-api-2.25.4.jar |
| MEDIUM | GHSA-4v53-57pg-c464 | lz4-java | 1.11.0 | 1.11.2 | /opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | GHSA-6cx8-rjf8-pr8g | lz4-java | 1.11.0 | 1.11.2 | /opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | GHSA-gm45-99xc-r7wv | lz4-java | 1.11.0 | 1.11.4 | /opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | GHSA-xx22-p4ch-683r | lz4-java | 1.11.0 | 1.11.1 | /opt/spark/jars/lz4-java-1.11.0.jar |
| MEDIUM | GHSA-mfg7-5gfp-c4w3 | netty-codec-dns | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-dns-4.2.13.Final.jar |
| MEDIUM | GHSA-4mp9-239f-g9hg | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-4mp9-239f-g9hg | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | GHSA-6cqp-g7gg-8hr5 | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | GHSA-6cqp-g7gg-8hr5 | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-8c42-7qj2-3j46 | netty-codec-http | 4.2.13.Final | 4.2.17.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-8c42-7qj2-3j46 | netty-codec-http | 4.2.13.Final | 4.2.17.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | GHSA-gcjf-9mgh-3p7g | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-gcjf-9mgh-3p7g | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | GHSA-hvcg-qmg6-jm4c | netty-codec-http | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | GHSA-hvcg-qmg6-jm4c | netty-codec-http | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-q4f6-jm68-57ww | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-q4f6-jm68-57ww | netty-codec-http | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http-4.2.13.Final.jar |
| MEDIUM | GHSA-563q-j3cm-6jxm | netty-codec-http2 | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-563q-j3cm-6jxm | netty-codec-http2 | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | GHSA-5x3r-wrvg-rp6q | netty-codec-http2 | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | GHSA-5x3r-wrvg-rp6q | netty-codec-http2 | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-c2gf-v879-257j | netty-codec-http2 | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | GHSA-c2gf-v879-257j | netty-codec-http2 | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-c69g-56f8-xwqj | netty-codec-http2 | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-c69g-56f8-xwqj | netty-codec-http2 | 4.2.13.Final | 4.2.16.Final | /opt/spark/jars/netty-codec-http2-4.2.13.Final.jar |
| MEDIUM | GHSA-fccg-mwvh-qqg4 | netty-handler | 4.2.13.Final | 4.2.17.Final | /opt/spark/jars/netty-handler-4.2.13.Final.jar |
| MEDIUM | GHSA-fccg-mwvh-qqg4 | netty-handler | 4.2.13.Final | 4.2.17.Final | /opt/spark/jars/connect-repl/spark-connect-client-jvm_2.13-4.2.1.jar |
| MEDIUM | GHSA-xmv7-r254-6q78 | netty-resolver-dns | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-resolver-dns-4.2.13.Final.jar |
| MEDIUM | GHSA-w573-9ffj-6ff9 | netty-transport-native-epoll | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-transport-native-epoll-4.2.13.Final-linux-x86_64.jar |
| MEDIUM | GHSA-w573-9ffj-6ff9 | netty-transport-native-epoll | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-transport-native-epoll-4.2.13.Final-linux-aarch_64.jar |
| MEDIUM | GHSA-w573-9ffj-6ff9 | netty-transport-native-epoll | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-transport-native-epoll-4.2.13.Final-linux-riscv64.jar |
| MEDIUM | GHSA-w573-9ffj-6ff9 | netty-transport-native-kqueue | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-transport-native-kqueue-4.2.13.Final-osx-x86_64.jar |
| MEDIUM | GHSA-w573-9ffj-6ff9 | netty-transport-native-kqueue | 4.2.13.Final | 4.2.15.Final | /opt/spark/jars/netty-transport-native-kqueue-4.2.13.Final-osx-aarch_64.jar |
| MEDIUM | CVE-2026-114943 | openjdk | 21.0.13+9-LTS | 1.8.0_513,8.0.513,11.0.33.1,17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| MEDIUM | CVE-2026-114944 | openjdk | 21.0.13+9-LTS | 1.8.0_513,8.0.513,11.0.33.1,17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| MEDIUM | CVE-2026-114945 | openjdk | 21.0.13+9-LTS | 17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| MEDIUM | CVE-2026-114946 | openjdk | 21.0.13+9-LTS | 1.8.0_513,8.0.513,11.0.33.1,17.0.21.1,21.0.13.1,25.0.5.1,27.0.1.1 | /opt/java/openjdk/release |
| MEDIUM | CVE-2026-107493 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107494 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-107496 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121481 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-121482 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124709 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-35190 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84786 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-88822 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-88823 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95690 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95691 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-95692 | openssl | 3.0.2-0ubuntu1.30 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115207 | patch | 2.7.6-7build2 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-31486 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15649 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48959 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48961 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48962 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7017 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82560 | perl | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-9538 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-31486 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15649 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48959 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48961 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48962 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7017 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82560 | perl-base | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-9538 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2023-31486 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15649 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48959 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48961 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-48962 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7017 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82560 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | 5.34.0-3ubuntu1.10 | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-9538 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2024-35195 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-66418 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-66471 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114613 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-13346 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-133949 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-21441 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3219 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-44431 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-44432 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-45409 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57585 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6357 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-8643 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97687 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97688 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-97689 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-59890 | python3-pkg-resources | 59.6.0-1.2ubuntu0.22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-59890 | python3-setuptools | 59.6.0-1.2ubuntu0.22.04.3 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-12781 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15366 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15367 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-0864 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103995 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114583 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115557 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115559 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115791 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-116566 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118444 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118447 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118448 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119170 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11940 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11972 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12345 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124249 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15310 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15806 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-16052 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-17084 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18503 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19445 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19552 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19553 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19672 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3446 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57175 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57176 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57177 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57178 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57179 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6879 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7210 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82049 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84366 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-87910 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-12781 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15366 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15367 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-0864 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103995 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114583 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115557 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115559 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115791 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-116566 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118444 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118447 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118448 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119170 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11940 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11972 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12345 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124249 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15310 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15806 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-16052 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-17084 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18503 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19445 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19552 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19553 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19672 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3446 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57175 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57176 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57177 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57178 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57179 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6879 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7210 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82049 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84366 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-87910 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-12781 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15366 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2025-15367 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-0864 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-103995 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-114583 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115557 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115559 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-115791 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-116566 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118444 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118447 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-118448 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-119170 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11940 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-11972 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-12345 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-124249 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15310 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-15806 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-16052 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-17084 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18503 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19445 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19552 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19553 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-19672 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-3446 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57175 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57176 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57177 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57178 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-57179 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-6879 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-7210 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-82049 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-84366 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-87910 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| MEDIUM | GHSA-xqrx-qh46-34m7 | snappy-java | 1.1.10.8 | 1.1.10.9 | /opt/spark/jars/snappy-java-1.1.10.8.jar |
| MEDIUM | GO-2025-3750 | stdlib | go1.18.1 | 1.23.10,1.24.4 | /usr/sbin/gosu |
| MEDIUM | GO-2025-3956 | stdlib | go1.18.1 | 1.23.12,1.24.6 | /usr/sbin/gosu |
| MEDIUM | CVE-2026-18477 | tar | 1.34+dfsg-1ubuntu0.1.22.04.6 | - | /var/lib/dpkg/status |
| MEDIUM | CVE-2026-18508 | tar | 1.34+dfsg-1ubuntu0.1.22.04.6 | - | /var/lib/dpkg/status |
| MEDIUM | GHSA-3g76-f9xq-8vp6 | vertx-core | 4.5.26 | 4.5.27 | /opt/spark/jars/vertx-core-4.5.26.jar |
| MEDIUM | CVE-2021-31879 | wget | 1.21.2-2ubuntu1.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2019-1010204 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2025-1150 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2019-1010204 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2025-1150 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2019-1010204 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2025-1150 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2016-2781 | coreutils | 8.32-4.1ubuntu1.4 | - | /var/lib/dpkg/status |
| LOW | CVE-2020-23026 | cpp | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | cpp-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | dirmngr | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | dirmngr | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2020-23026 | g++ | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | g++-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2020-23026 | gcc | 4:11.2.0-1ubuntu1 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | gcc-11 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | gcc-11-base | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | gcc-12-base | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gnupg | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gnupg | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gnupg-l10n | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gnupg-l10n | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gnupg-utils | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gnupg-utils | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gnupg2 | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gnupg2 | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gpg | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gpg | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gpg-agent | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gpg-agent | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gpg-wks-client | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gpg-wks-client | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gpg-wks-server | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gpg-wks-server | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gpgconf | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gpgconf | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gpgsm | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gpgsm | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-3219 | gpgv | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-105712 | gpgv | 2.2.27-3ubuntu2.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | libasan6 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libatomic1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2019-1010204 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2025-1150 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libcc1-0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2019-1010204 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2025-1150 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2019-1010204 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2025-1150 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | libgcc-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libgcc-s1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libgomp1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2025-5222 | libicu70 | 70.1-2 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libitm1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2018-10126 | libjpeg-turbo8 | 2.1.2-0ubuntu1 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | liblsan0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2023-50495 | libncurses6 | 6.3-2ubuntu0.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2023-50495 | libncursesw6 | 6.3-2ubuntu0.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-41409 | libpcre2-8-0 | 10.39-3ubuntu0.1 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libquadmath0 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | libstdc++-11-dev | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libstdc++6 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-40228 | libsystemd0 | 249.11-0ubuntu3.23 | - | /var/lib/dpkg/status |
| LOW | CVE-2023-50495 | libtinfo6 | 6.3-2ubuntu0.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2021-46195 | libtsan0 | 11.4.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-27943 | libubsan1 | 12.3.0-1ubuntu1~22.04.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-40228 | libudev1 | 249.11-0ubuntu3.23 | - | /var/lib/dpkg/status |
| LOW | CVE-2020-25697 | libx11-6 | 2:1.7.5-1ubuntu0.4 | - | /var/lib/dpkg/status |
| LOW | CVE-2020-25697 | libx11-data | 2:1.7.5-1ubuntu0.4 | - | /var/lib/dpkg/status |
| LOW | CVE-2022-4899 | libzstd1 | 1.4.8+dfsg-3build1 | - | /var/lib/dpkg/status |
| LOW | CVE-2023-29383 | login | 1:4.8.1-2ubuntu2.2 | - | /var/lib/dpkg/status |
| LOW | CVE-2024-56433 | login | 1:4.8.1-2ubuntu2.2 | - | /var/lib/dpkg/status |
| LOW | GHSA-343h-94h5-c4wr | lz4-java | 1.11.0 | 1.11.4 | /opt/spark/jars/lz4-java-1.11.0.jar |
| LOW | CVE-2023-50495 | ncurses-base | 6.3-2ubuntu0.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2023-50495 | ncurses-bin | 6.3-2ubuntu0.3 | - | /var/lib/dpkg/status |
| LOW | CVE-2023-29383 | passwd | 1:4.8.1-2ubuntu2.2 | - | /var/lib/dpkg/status |
| LOW | CVE-2024-56433 | passwd | 1:4.8.1-2ubuntu2.2 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-56288 | patch | 2.7.6-7build2 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-56289 | patch | 2.7.6-7build2 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-1703 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-25645 | python3-pip | 22.0.2+dfsg-1ubuntu0.7 | - | /var/lib/dpkg/status |
| LOW | CVE-2024-10524 | wget | 1.21.2-2ubuntu1.5 | - | /var/lib/dpkg/status |
| LOW | CVE-2026-16599 | wget | 1.21.2-2ubuntu1.5 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2022-48064 | binutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2022-48064 | binutils-common | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2022-48064 | binutils-x86-64-linux-gnu | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | krb5-user | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2022-48064 | libbinutils | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2016-20013 | libc-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2016-20013 | libc-dev-bin | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2016-20013 | libc-devtools | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2016-20013 | libc6 | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2016-20013 | libc6-dev | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2022-48064 | libctf-nobfd0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2022-48064 | libctf0 | 2.38-4ubuntu2.12 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libgssapi-krb5-2 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libgssrpc4 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libk5crypto3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libkadm5clnt-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libkadm5srv-mit12 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libkdb5-10 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libkrb5-3 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2018-5709 | libkrb5support0 | 1.19.2-2ubuntu0.10 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2017-11164 | libpcre3 | 2:8.39-13ubuntu0.22.04.1 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2023-47039 | libperl5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2020-10735 | libpython3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2020-10735 | libpython3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2020-10735 | libpython3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2020-10735 | libpython3.10-stdlib | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2023-52355 | libtiff5 | 4.3.0-6ubuntu0.13 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2026-11979 | libxml2 | 2.9.13+dfsg-1ubuntu0.14 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2016-20013 | locales | 2.35-0ubuntu3.15 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2021-45261 | patch | 2.7.6-7build2 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2023-47039 | perl | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2023-47039 | perl-base | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2023-47039 | perl-modules-5.34 | 5.34.0-3ubuntu1.9 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2020-10735 | python3.10 | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2020-10735 | python3.10-dev | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
| NEGLIGIBLE | CVE-2020-10735 | python3.10-minimal | 3.10.12-1~22.04.18 | - | /var/lib/dpkg/status |
