---
title: "kafka_fdw"
linkTitle: "kafka_fdw"
description: "kafka Foreign Data Wrapper for CSV formatted messages"
weight: 8730
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/adjust/kafka_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">adjust/kafka_fdw</div>
    <div class="ext-card__desc">https://github.com/adjust/kafka_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/kafka_fdw-0.0.3+git20251030.8615082.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">kafka_fdw-0.0.3+git20251030.8615082.tar.gz</div>
    <div class="ext-card__desc">kafka_fdw-0.0.3+git20251030.8615082.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`kafka_fdw`**](/ext/e/kafka_fdw) | `0.0.3` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8730  | [**`kafka_fdw`**](/ext/e/kafka_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgmqtt`](/ext/e/pgmqtt) [`wal2json`](/ext/e/wal2json) [`decoderbufs`](/ext/e/decoderbufs) [`pgq`](/ext/e/pgq) [`test_decoding`](/ext/e/test_decoding) [`pgoutput`](/ext/e/pgoutput) [`pg_protobuf`](/ext/e/pg_protobuf) [`pgproto`](/ext/e/pgproto) [`hdfs_fdw`](/ext/e/hdfs_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "19,18,17,16,15" >}} | `kafka_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "19,18,17,16,15" >}} | `kafka_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-kafka-fdw` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
@ el9.x86_64 19 kafka_fdw_19 kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm pigsty 0.0.3 87.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 kafka_fdw_19 kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm pigsty 0.0.3 86.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 kafka_fdw_19 kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm pigsty 0.0.3 88.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 kafka_fdw_19 kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm pigsty 0.0.3 87.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/kafka_fdw_19-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb pigsty 0.0.3 79.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb pigsty 0.0.3 76.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb pigsty 0.0.3 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb pigsty 0.0.3 77.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb pigsty 0.0.3 85.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb pigsty 0.0.3 83.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb pigsty 0.0.3 82.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb pigsty 0.0.3 81.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb pigsty 0.0.3 82.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-kafka-fdw postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb pigsty 0.0.3 80.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-19-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 kafka_fdw_18 kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm pigsty 0.0.3 86.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 kafka_fdw_18 kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm pigsty 0.0.3 84.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 kafka_fdw_18 kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm pigsty 0.0.3 87.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 kafka_fdw_18 kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm pigsty 0.0.3 86.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 kafka_fdw_18 kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm pigsty 0.0.3 88.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 kafka_fdw_18 kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm pigsty 0.0.3 87.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/kafka_fdw_18-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb pigsty 0.0.3 79.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb pigsty 0.0.3 76.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb pigsty 0.0.3 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb pigsty 0.0.3 77.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb pigsty 0.0.3 85.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb pigsty 0.0.3 83.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb pigsty 0.0.3 82.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb pigsty 0.0.3 81.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb pigsty 0.0.3 82.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-kafka-fdw postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb pigsty 0.0.3 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-18-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 kafka_fdw_17 kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm pigsty 0.0.3 85.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 kafka_fdw_17 kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm pigsty 0.0.3 83.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 kafka_fdw_17 kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm pigsty 0.0.3 86.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 kafka_fdw_17 kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm pigsty 0.0.3 85.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 kafka_fdw_17 kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm pigsty 0.0.3 88.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 kafka_fdw_17 kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm pigsty 0.0.3 87.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/kafka_fdw_17-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb pigsty 0.0.3 79.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb pigsty 0.0.3 76.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb pigsty 0.0.3 79.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb pigsty 0.0.3 77.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb pigsty 0.0.3 106.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb pigsty 0.0.3 104.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb pigsty 0.0.3 82.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb pigsty 0.0.3 81.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb pigsty 0.0.3 81.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-kafka-fdw postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb pigsty 0.0.3 80.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-17-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 kafka_fdw_16 kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm pigsty 0.0.3 92.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 kafka_fdw_16 kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm pigsty 0.0.3 89.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 kafka_fdw_16 kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm pigsty 0.0.3 93.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 kafka_fdw_16 kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm pigsty 0.0.3 92.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 kafka_fdw_16 kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm pigsty 0.0.3 94.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 kafka_fdw_16 kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm pigsty 0.0.3 93.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/kafka_fdw_16-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb pigsty 0.0.3 84.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb pigsty 0.0.3 82.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb pigsty 0.0.3 84.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb pigsty 0.0.3 82.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb pigsty 0.0.3 112.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb pigsty 0.0.3 110.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb pigsty 0.0.3 88.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb pigsty 0.0.3 87.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb pigsty 0.0.3 87.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-kafka-fdw postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb pigsty 0.0.3 86.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-16-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 kafka_fdw_15 kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm pigsty 0.0.3 92.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 kafka_fdw_15 kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm pigsty 0.0.3 89.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 kafka_fdw_15 kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm pigsty 0.0.3 93.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 kafka_fdw_15 kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm pigsty 0.0.3 92.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 kafka_fdw_15 kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm pigsty 0.0.3 94.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 kafka_fdw_15 kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm pigsty 0.0.3 93.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/kafka_fdw_15-0.0.3-2.git20251030.8615082PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb pigsty 0.0.3 84.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb pigsty 0.0.3 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb pigsty 0.0.3 84.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb pigsty 0.0.3 82.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb pigsty 0.0.3 112.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb pigsty 0.0.3 110.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb pigsty 0.0.3 88.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb pigsty 0.0.3 87.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb pigsty 0.0.3 87.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-kafka-fdw postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb pigsty 0.0.3 86.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafka-fdw/postgresql-15-kafka-fdw_0.0.3+git20251030.8615082-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `kafka_fdw` using `pig build`:

```bash
pig build pkg kafka_fdw         # build RPM / DEB packages
```


## Install

You can install `kafka_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install kafka_fdw;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y kafka_fdw -v 19  # PG 19
pig ext install -y kafka_fdw -v 18  # PG 18
pig ext install -y kafka_fdw -v 17  # PG 17
pig ext install -y kafka_fdw -v 16  # PG 16
pig ext install -y kafka_fdw -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y kafka_fdw_19       # PG 19
dnf install -y kafka_fdw_18       # PG 18
dnf install -y kafka_fdw_17       # PG 17
dnf install -y kafka_fdw_16       # PG 16
dnf install -y kafka_fdw_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-kafka-fdw   # PG 19
apt install -y postgresql-18-kafka-fdw   # PG 18
apt install -y postgresql-17-kafka-fdw   # PG 17
apt install -y postgresql-16-kafka-fdw   # PG 16
apt install -y postgresql-15-kafka-fdw   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION kafka_fdw;
```




## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION kafka_fdw;
> CREATE SERVER kafka_server FOREIGN DATA WRAPPER kafka_fdw
>   OPTIONS (brokers 'localhost:9092');
> ```
>
> Source: [README](https://github.com/adjust/kafka_fdw)

`kafka_fdw` is a foreign data wrapper that exposes Kafka messages as PostgreSQL foreign tables. The upstream README explicitly warns that the project is not yet production ready.

### Server and Mapping

Define a foreign server with the Kafka broker list, then add a user mapping:

```sql
CREATE EXTENSION kafka_fdw;

CREATE SERVER kafka_server
FOREIGN DATA WRAPPER kafka_fdw
OPTIONS (brokers 'localhost:9092');

CREATE USER MAPPING FOR PUBLIC SERVER kafka_server;
```

## Foreign Tables

Kafka foreign tables must declare two metadata columns, one marked with `partition 'true'` and one marked with `offset 'true'`. The remaining columns describe the message payload.

### CSV Messages

```sql
CREATE FOREIGN TABLE kafka_test (
    part int OPTIONS (partition 'true'),
    offs bigint OPTIONS (offset 'true'),
    some_int int,
    some_text text,
    some_date date,
    some_time timestamp
)
SERVER kafka_server
OPTIONS (
    format 'csv',
    topic 'contrib_regress',
    batch_size '30',
    buffer_delay '100'
);
```

For CSV, columns are mapped by position. Upstream notes that schema enforcement depends on the message writer, so strict parsing and junk-handling options matter when input quality is uncertain.

### JSON Messages

```sql
CREATE FOREIGN TABLE kafka_test_json (
    part int OPTIONS (partition 'true'),
    offs bigint OPTIONS (offset 'true'),
    some_int int OPTIONS (json 'int_val'),
    some_text text OPTIONS (json 'text_val'),
    some_date date OPTIONS (json 'date_val'),
    some_time timestamp OPTIONS (json 'time_val')
)
SERVER kafka_server
OPTIONS (
    format 'json',
    topic 'contrib_regress_json',
    batch_size '30',
    buffer_delay '100'
);
```

For JSON, each column can map to an object key with the `json` option. The current implementation supports JSON objects, not top-level JSON arrays.

## Querying and Producing

The offset and partition columns are special, and the upstream README recommends specifying them in queries whenever possible:

```sql
SELECT * FROM kafka_test WHERE part = 0 AND offs > 1000 LIMIT 60;

SELECT *
FROM kafka_test
WHERE (part = 0 AND offs > 100)
   OR (part = 1 AND offs > 300)
   OR (part = 3 AND offs > 700);
```

Messages can also be produced with `INSERT` statements. If a partition value is supplied, it is used; otherwise Kafka's builtin partitioner chooses one:

```sql
INSERT INTO kafka_test(part, some_int, some_text)
VALUES
    (0, 5464565, 'some text goes into partition 0'),
    (NULL, 5464565, 'some text goes into partition selected by kafka');
```

## Error Handling

The default behavior is permissive:

- missing trailing columns are treated as `NULL`
- extra fields are ignored
- unparsable values still raise errors by default

Relevant table options and helper columns include:

- `strict 'true'` to reject column count mismatches
- `ignore_junk 'true'` to set malformed values to `NULL`
- columns marked `junk 'true'` to capture the original payload
- columns marked `junk_error 'true'` to capture parsing errors

## Build Notes

The extension uses `librdkafka` and the upstream build instructions are the standard:

```bash
make && make install
make installcheck
```

The test setup assumes Kafka on `localhost:9092` and ZooKeeper on `localhost:2181`.
