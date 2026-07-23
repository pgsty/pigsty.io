---
title: "decoderbufs"
linkTitle: "decoderbufs"
description: "Logical decoding plugin that delivers WAL stream changes using a Protocol Buffer format"
weight: 9650
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/debezium/postgres-decoderbufs">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">debezium/postgres-decoderbufs</div>
    <div class="ext-card__desc">https://github.com/debezium/postgres-decoderbufs</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`decoderbufs`**](/ext/e/decoderbufs) | `3.6.0` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9650  | [**`decoderbufs`**](/ext/e/decoderbufs) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pglogical`](/ext/e/pglogical) [`wal2json`](/ext/e/wal2json) [`decoder_raw`](/ext/e/decoder_raw) [`test_decoding`](/ext/e/test_decoding) [`kafka_fdw`](/ext/e/kafka_fdw) [`pglogical_origin`](/ext/e/pglogical_origin) [`pglogical_ticker`](/ext/e/pglogical_ticker) [`pg_failover_slots`](/ext/e/pg_failover_slots) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.0` | {{< pgvers "18,17,16,15,14" >}} | `decoderbufs` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgres-decoderbufs_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-decoderbufs` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 3.5.0 4 | AVAIL PGDG 3.5.0 6 | AVAIL PGDG 3.5.0 10 | AVAIL PGDG 3.5.0 10 | AVAIL PGDG 3.5.0 15 |
| el8.aarch64 | AVAIL PGDG 3.5.0 4 | AVAIL PGDG 3.5.0 6 | AVAIL PGDG 3.5.0 10 | AVAIL PGDG 3.5.0 10 | AVAIL PGDG 3.5.0 14 |
| el9.x86_64 | AVAIL PGDG 3.5.0 7 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 13 | AVAIL PGDG 3.5.0 13 | AVAIL PGDG 3.5.0 17 |
| el9.aarch64 | AVAIL PGDG 3.5.0 7 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 13 | AVAIL PGDG 3.5.0 13 | AVAIL PGDG 3.5.0 17 |
| el10.x86_64 | AVAIL PGDG 3.5.0 7 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 9 |
| el10.aarch64 | AVAIL PGDG 3.5.0 7 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 9 | AVAIL PGDG 3.5.0 9 |
| d12.x86_64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| d12.aarch64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| d13.x86_64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| d13.aarch64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| u22.x86_64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| u22.aarch64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| u24.x86_64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| u24.aarch64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| u26.x86_64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
| u26.aarch64 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 | AVAIL PGDG 3.6.0 3 |
@ el8.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 3.5.0 25.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.4.1 24.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.3.0 24.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgres-decoderbufs_18-3.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.2.0-1PGDG.rhel8.x86_64.rpm pgdg 3.2.0 24.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgres-decoderbufs_18-3.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 3.5.0 24.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.3.0 24.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgres-decoderbufs_18-3.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.2.0-1PGDG.rhel8.aarch64.rpm pgdg 3.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgres-decoderbufs_18-3.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.7.x86_64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.6.x86_64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.3.0 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgres-decoderbufs_18-3.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.2.0-1PGDG.rhel9.x86_64.rpm pgdg 3.2.0 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgres-decoderbufs_18-3.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 3.5.0 23.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.7.aarch64.rpm pgdg 3.5.0 23.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.6.aarch64.rpm pgdg 3.5.0 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.4.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.4.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.3.0 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgres-decoderbufs_18-3.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.2.0-1PGDG.rhel9.aarch64.rpm pgdg 3.2.0 22.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgres-decoderbufs_18-3.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 3.5.0 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.1.x86_64.rpm pgdg 3.5.0 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.0.x86_64.rpm pgdg 3.5.0 24.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.4.1 24.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.3.0-1PGDG.rhel10.x86_64.rpm pgdg 3.3.0 24.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgres-decoderbufs_18-3.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.2.0-1PGDG.rhel10.x86_64.rpm pgdg 3.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgres-decoderbufs_18-3.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 3.5.0 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.1.aarch64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.0.aarch64.rpm pgdg 3.5.0 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgres-decoderbufs_18-3.5.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.4.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.4.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgres-decoderbufs_18-3.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.3.0-1PGDG.rhel10.aarch64.rpm pgdg 3.3.0 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgres-decoderbufs_18-3.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 postgres-decoderbufs_18 postgres-decoderbufs_18-3.2.0-1PGDG.rhel10.aarch64.rpm pgdg 3.2.0 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgres-decoderbufs_18-3.2.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb pgdg 3.6.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb pgdg 3.5.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb pgdg 3.4.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb pgdg 3.6.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb pgdg 3.5.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb pgdg 3.4.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb pgdg 3.6.0 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb pgdg 3.5.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb pgdg 3.4.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb pgdg 3.6.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb pgdg 3.5.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb pgdg 3.4.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb pgdg 3.6.0 39.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb pgdg 3.5.0 39.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb pgdg 3.4.0 39.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb pgdg 3.6.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb pgdg 3.5.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb pgdg 3.4.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb pgdg 3.5.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb pgdg 3.4.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb pgdg 3.6.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb pgdg 3.5.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb pgdg 3.4.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb pgdg 3.6.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb pgdg 3.5.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb pgdg 3.4.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb pgdg 3.6.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb pgdg 3.5.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-decoderbufs postgresql-18-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb pgdg 3.4.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-18-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 3.5.0 25.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.4.1 25.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.3.0 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgres-decoderbufs_17-3.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.2.0-1PGDG.rhel8.x86_64.rpm pgdg 3.2.0 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgres-decoderbufs_17-3.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.1.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1.1 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgres-decoderbufs_17-3.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.0.2-1PGDG.rhel8.x86_64.rpm pgdg 3.0.2 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgres-decoderbufs_17-3.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 3.5.0 24.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.3.0 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgres-decoderbufs_17-3.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.2.0-1PGDG.rhel8.aarch64.rpm pgdg 3.2.0 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgres-decoderbufs_17-3.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.1.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1.1 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgres-decoderbufs_17-3.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.0.2-1PGDG.rhel8.aarch64.rpm pgdg 3.0.2 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgres-decoderbufs_17-3.0.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 3.5.0 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.7.x86_64.rpm pgdg 3.5.0 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.6.x86_64.rpm pgdg 3.5.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.4.1 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.3.0 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.2.0-1PGDG.rhel9.x86_64.rpm pgdg 3.2.0 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.1.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1.1 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.0.2-1PGDG.rhel9.x86_64.rpm pgdg 3.0.2 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgres-decoderbufs_17-3.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 3.5.0 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.7.aarch64.rpm pgdg 3.5.0 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.6.aarch64.rpm pgdg 3.5.0 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.4.1 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.4.1 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.3.0 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.2.0-1PGDG.rhel9.aarch64.rpm pgdg 3.2.0 23.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.1.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1.1 23.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.0.2-1PGDG.rhel9.aarch64.rpm pgdg 3.0.2 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgres-decoderbufs_17-3.0.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 3.5.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.1.x86_64.rpm pgdg 3.5.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.0.x86_64.rpm pgdg 3.5.0 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.4.1 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.3.0-1PGDG.rhel10.x86_64.rpm pgdg 3.3.0 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.2.0-1PGDG.rhel10.x86_64.rpm pgdg 3.2.0 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.1.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1.1 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.1.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgres-decoderbufs_17-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.1.aarch64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.0.aarch64.rpm pgdg 3.5.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.5.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.3.0-1PGDG.rhel10.aarch64.rpm pgdg 3.3.0 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.2.0-1PGDG.rhel10.aarch64.rpm pgdg 3.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.2.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.1.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1.1 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.1.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 postgres-decoderbufs_17 postgres-decoderbufs_17-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgres-decoderbufs_17-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb pgdg 3.6.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb pgdg 3.5.0 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb pgdg 3.4.0 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb pgdg 3.6.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb pgdg 3.5.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb pgdg 3.4.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb pgdg 3.6.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb pgdg 3.5.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb pgdg 3.4.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb pgdg 3.6.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb pgdg 3.5.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb pgdg 3.4.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb pgdg 3.6.0 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb pgdg 3.5.0 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb pgdg 3.4.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb pgdg 3.6.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb pgdg 3.5.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb pgdg 3.4.0 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb pgdg 3.6.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb pgdg 3.5.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb pgdg 3.4.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb pgdg 3.6.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb pgdg 3.5.0 38.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb pgdg 3.4.0 38.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb pgdg 3.6.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb pgdg 3.5.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb pgdg 3.4.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb pgdg 3.6.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb pgdg 3.5.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-decoderbufs postgresql-17-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb pgdg 3.4.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-17-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 3.5.0 25.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.4.1 25.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.3.0 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-3.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.2.0-1PGDG.rhel8.x86_64.rpm pgdg 3.2.0 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-3.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.1.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1.1 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-3.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.0.2-1PGDG.rhel8.x86_64.rpm pgdg 3.0.2 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-3.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.7.0-1PGDG.rhel8.x86_64.rpm pgdg 2.7.0 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-2.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.6.1-1PGDG.rhel8.x86_64.rpm pgdg 2.6.1 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-2.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.5.2-1PGDG.rhel8.x86_64.rpm pgdg 2.5.2 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-2.5.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.4.0-1PGDG.rhel8.x86_64.rpm pgdg 2.4.0 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgres-decoderbufs_16-2.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 3.5.0 24.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.4.1 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.3.0 24.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-3.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.2.0-1PGDG.rhel8.aarch64.rpm pgdg 3.2.0 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-3.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.1.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1.1 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-3.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.0.2-1PGDG.rhel8.aarch64.rpm pgdg 3.0.2 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-3.0.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.7.0-1PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-2.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.6.1-1PGDG.rhel8.aarch64.rpm pgdg 2.6.1 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-2.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.5.2-1PGDG.rhel8.aarch64.rpm pgdg 2.5.2 22.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-2.5.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.4.0-1PGDG.rhel8.aarch64.rpm pgdg 2.4.0 22.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgres-decoderbufs_16-2.4.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 3.5.0 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.7.x86_64.rpm pgdg 3.5.0 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.6.x86_64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.4.1 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.3.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.2.0-1PGDG.rhel9.x86_64.rpm pgdg 3.2.0 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.1.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1.1 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.0.2-1PGDG.rhel9.x86_64.rpm pgdg 3.0.2 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-3.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.7.0-1PGDG.rhel9.x86_64.rpm pgdg 2.7.0 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-2.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.6.1-1PGDG.rhel9.x86_64.rpm pgdg 2.6.1 22.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-2.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.5.2-1PGDG.rhel9.x86_64.rpm pgdg 2.5.2 22.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-2.5.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.4.0-1PGDG.rhel9.x86_64.rpm pgdg 2.4.0 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgres-decoderbufs_16-2.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 3.5.0 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.7.aarch64.rpm pgdg 3.5.0 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.6.aarch64.rpm pgdg 3.5.0 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.4.1 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.4.1 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.3.0 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.2.0-1PGDG.rhel9.aarch64.rpm pgdg 3.2.0 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.1.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1.1 23.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.0.2-1PGDG.rhel9.aarch64.rpm pgdg 3.0.2 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-3.0.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.7.0-1PGDG.rhel9.aarch64.rpm pgdg 2.7.0 22.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-2.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.6.1-1PGDG.rhel9.aarch64.rpm pgdg 2.6.1 22.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-2.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.5.2-1PGDG.rhel9.aarch64.rpm pgdg 2.5.2 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-2.5.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-2.4.0-1PGDG.rhel9.aarch64.rpm pgdg 2.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgres-decoderbufs_16-2.4.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 3.5.0 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.1.x86_64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.0.x86_64.rpm pgdg 3.5.0 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.4.1 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.4.1 24.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.3.0-1PGDG.rhel10.x86_64.rpm pgdg 3.3.0 24.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.2.0-1PGDG.rhel10.x86_64.rpm pgdg 3.2.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.1.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1.1 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.1.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgres-decoderbufs_16-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.1.aarch64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.0.aarch64.rpm pgdg 3.5.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.5.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.4.1 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.3.0-1PGDG.rhel10.aarch64.rpm pgdg 3.3.0 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.2.0-1PGDG.rhel10.aarch64.rpm pgdg 3.2.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.2.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.1.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1.1 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.1.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 postgres-decoderbufs_16 postgres-decoderbufs_16-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgres-decoderbufs_16-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb pgdg 3.6.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb pgdg 3.5.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb pgdg 3.4.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb pgdg 3.6.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb pgdg 3.5.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb pgdg 3.4.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb pgdg 3.6.0 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb pgdg 3.5.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb pgdg 3.4.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb pgdg 3.6.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb pgdg 3.5.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb pgdg 3.4.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb pgdg 3.6.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb pgdg 3.5.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb pgdg 3.4.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb pgdg 3.6.0 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb pgdg 3.5.0 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb pgdg 3.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb pgdg 3.5.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb pgdg 3.4.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb pgdg 3.6.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb pgdg 3.5.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb pgdg 3.4.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb pgdg 3.6.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb pgdg 3.5.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb pgdg 3.4.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb pgdg 3.6.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb pgdg 3.5.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-decoderbufs postgresql-16-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb pgdg 3.4.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-16-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 3.5.0 25.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.4.1 25.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.3.0 24.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-3.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.2.0-1PGDG.rhel8.x86_64.rpm pgdg 3.2.0 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-3.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.1.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1.1 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-3.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.0.2-1PGDG.rhel8.x86_64.rpm pgdg 3.0.2 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-3.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.7.0-1PGDG.rhel8.x86_64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-2.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.6.1-1PGDG.rhel8.x86_64.rpm pgdg 2.6.1 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-2.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.5.2-1PGDG.rhel8.x86_64.rpm pgdg 2.5.2 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-2.5.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.4.0-1PGDG.rhel8.x86_64.rpm pgdg 2.4.0 23.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgres-decoderbufs_15-2.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 3.5.0 25.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.4.1 24.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.3.0 24.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-3.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.2.0-1PGDG.rhel8.aarch64.rpm pgdg 3.2.0 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-3.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.1.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1.1 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-3.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.0.2-1PGDG.rhel8.aarch64.rpm pgdg 3.0.2 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-3.0.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.7.0-1PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-2.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.6.1-1PGDG.rhel8.aarch64.rpm pgdg 2.6.1 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-2.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.5.2-1PGDG.rhel8.aarch64.rpm pgdg 2.5.2 23.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-2.5.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.4.0-1PGDG.rhel8.aarch64.rpm pgdg 2.4.0 22.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgres-decoderbufs_15-2.4.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 3.5.0 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.7.x86_64.rpm pgdg 3.5.0 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.6.x86_64.rpm pgdg 3.5.0 24.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.4.1 24.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.3.0 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.2.0-1PGDG.rhel9.x86_64.rpm pgdg 3.2.0 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.1.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1.1 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.0.2-1PGDG.rhel9.x86_64.rpm pgdg 3.0.2 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-3.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.7.0-1PGDG.rhel9.x86_64.rpm pgdg 2.7.0 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-2.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.6.1-1PGDG.rhel9.x86_64.rpm pgdg 2.6.1 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-2.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.5.2-1PGDG.rhel9.x86_64.rpm pgdg 2.5.2 23.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-2.5.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.4.0-1PGDG.rhel9.x86_64.rpm pgdg 2.4.0 23.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgres-decoderbufs_15-2.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 3.5.0 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.7.aarch64.rpm pgdg 3.5.0 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.6.aarch64.rpm pgdg 3.5.0 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.4.1 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.4.1 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.3.0 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.2.0-1PGDG.rhel9.aarch64.rpm pgdg 3.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.1.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1.1 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.0.2-1PGDG.rhel9.aarch64.rpm pgdg 3.0.2 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-3.0.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.7.0-1PGDG.rhel9.aarch64.rpm pgdg 2.7.0 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-2.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.6.1-1PGDG.rhel9.aarch64.rpm pgdg 2.6.1 23.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-2.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.5.2-1PGDG.rhel9.aarch64.rpm pgdg 2.5.2 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-2.5.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-2.4.0-1PGDG.rhel9.aarch64.rpm pgdg 2.4.0 22.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgres-decoderbufs_15-2.4.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.1.x86_64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.0.x86_64.rpm pgdg 3.5.0 24.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.4.1 25.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.3.0-1PGDG.rhel10.x86_64.rpm pgdg 3.3.0 24.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.2.0-1PGDG.rhel10.x86_64.rpm pgdg 3.2.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.1.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1.1 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.1.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgres-decoderbufs_15-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.1.aarch64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.0.aarch64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.5.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.4.1 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.4.1 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.3.0-1PGDG.rhel10.aarch64.rpm pgdg 3.3.0 24.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.2.0-1PGDG.rhel10.aarch64.rpm pgdg 3.2.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.2.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.1.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1.1 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.1.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 postgres-decoderbufs_15 postgres-decoderbufs_15-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgres-decoderbufs_15-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb pgdg 3.6.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb pgdg 3.5.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb pgdg 3.4.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb pgdg 3.6.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb pgdg 3.5.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb pgdg 3.4.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb pgdg 3.6.0 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb pgdg 3.5.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb pgdg 3.4.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb pgdg 3.5.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb pgdg 3.4.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb pgdg 3.6.0 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb pgdg 3.5.0 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb pgdg 3.4.0 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb pgdg 3.6.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb pgdg 3.5.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb pgdg 3.4.0 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb pgdg 3.6.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb pgdg 3.5.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb pgdg 3.4.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb pgdg 3.5.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb pgdg 3.4.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb pgdg 3.5.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb pgdg 3.4.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb pgdg 3.5.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-decoderbufs postgresql-15-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb pgdg 3.4.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-15-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 3.5.0 25.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.4.1 25.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.3.0 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-3.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.2.0-1PGDG.rhel8.x86_64.rpm pgdg 3.2.0 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-3.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.1.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1.1 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-3.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.0.2-1PGDG.rhel8.x86_64.rpm pgdg 3.0.2 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-3.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.7.0-1PGDG.rhel8.x86_64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.6.1-1PGDG.rhel8.x86_64.rpm pgdg 2.6.1 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.5.2-1PGDG.rhel8.x86_64.rpm pgdg 2.5.2 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.5.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.4.0-1PGDG.rhel8.x86_64.rpm pgdg 2.4.0 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.3.0-1PGDG.rhel8.x86_64.rpm pgdg 2.3.0 22.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.1-1.rhel8.x86_64.rpm pgdg 2.2.1 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.0-1.rhel8.x86_64.rpm pgdg 2.2.0 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.1.2-1.rhel8.x86_64.rpm pgdg 2.1.2 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-2.1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-1.5.2-1.rhel8.x86_64.rpm pgdg 1.5.2 51.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgres-decoderbufs_14-1.5.2-1.rhel8.x86_64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 3.5.0 25.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.4.1 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.3.0 24.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-3.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.2.0-1PGDG.rhel8.aarch64.rpm pgdg 3.2.0 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-3.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.1.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1.1 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-3.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.0.2-1PGDG.rhel8.aarch64.rpm pgdg 3.0.2 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-3.0.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.7.0-1PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.6.1-1PGDG.rhel8.aarch64.rpm pgdg 2.6.1 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.5.2-1PGDG.rhel8.aarch64.rpm pgdg 2.5.2 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.5.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.4.0-1PGDG.rhel8.aarch64.rpm pgdg 2.4.0 22.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.3.0-1PGDG.rhel8.aarch64.rpm pgdg 2.3.0 22.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.1-1.rhel8.aarch64.rpm pgdg 2.2.1 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.2.1-1.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.0-1.rhel8.aarch64.rpm pgdg 2.2.0 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.1.2-1.rhel8.aarch64.rpm pgdg 2.1.2 22.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgres-decoderbufs_14-2.1.2-1.rhel8.aarch64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 3.5.0 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.7.x86_64.rpm pgdg 3.5.0 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.6.x86_64.rpm pgdg 3.5.0 24.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.4.1 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.3.0 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.2.0-1PGDG.rhel9.x86_64.rpm pgdg 3.2.0 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.1.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1.1 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.0.2-1PGDG.rhel9.x86_64.rpm pgdg 3.0.2 24.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-3.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.7.0-1PGDG.rhel9.x86_64.rpm pgdg 2.7.0 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.6.1-1PGDG.rhel9.x86_64.rpm pgdg 2.6.1 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.5.2-1PGDG.rhel9.x86_64.rpm pgdg 2.5.2 23.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.5.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.4.0-1PGDG.rhel9.x86_64.rpm pgdg 2.4.0 22.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.3.0-1PGDG.rhel9.x86_64.rpm pgdg 2.3.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.1-1.rhel9.x86_64.rpm pgdg 2.2.1 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.2.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.0-1.rhel9.x86_64.rpm pgdg 2.2.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.1.2-1.rhel9.x86_64.rpm pgdg 2.1.2 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgres-decoderbufs_14-2.1.2-1.rhel9.x86_64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 3.5.0 24.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.7.aarch64.rpm pgdg 3.5.0 24.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.6.aarch64.rpm pgdg 3.5.0 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.4.1 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.4.1 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.3.0 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.2.0-1PGDG.rhel9.aarch64.rpm pgdg 3.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.1.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1.1 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.0.2-1PGDG.rhel9.aarch64.rpm pgdg 3.0.2 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-3.0.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.7.0-1PGDG.rhel9.aarch64.rpm pgdg 2.7.0 23.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.6.1-1PGDG.rhel9.aarch64.rpm pgdg 2.6.1 23.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.5.2-1PGDG.rhel9.aarch64.rpm pgdg 2.5.2 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.5.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.4.0-1PGDG.rhel9.aarch64.rpm pgdg 2.4.0 22.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.3.0-1PGDG.rhel9.aarch64.rpm pgdg 2.3.0 22.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.1-1.rhel9.aarch64.rpm pgdg 2.2.1 22.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.2.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.2.0-1.rhel9.aarch64.rpm pgdg 2.2.0 22.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-2.1.2-1.rhel9.aarch64.rpm pgdg 2.1.2 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgres-decoderbufs_14-2.1.2-1.rhel9.aarch64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.1.x86_64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.0.x86_64.rpm pgdg 3.5.0 24.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.4.1 25.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.3.0-1PGDG.rhel10.x86_64.rpm pgdg 3.3.0 24.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.2.0-1PGDG.rhel10.x86_64.rpm pgdg 3.2.0 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.1.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1.1 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.1.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgres-decoderbufs_14-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.1.aarch64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.0.aarch64.rpm pgdg 3.5.0 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.5.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.4.1 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.3.0-1PGDG.rhel10.aarch64.rpm pgdg 3.3.0 24.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.2.0-1PGDG.rhel10.aarch64.rpm pgdg 3.2.0 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.2.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.1.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1.1 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.1.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 postgres-decoderbufs_14 postgres-decoderbufs_14-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgres-decoderbufs_14-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb pgdg 3.6.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb pgdg 3.5.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb pgdg 3.4.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb pgdg 3.6.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb pgdg 3.5.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb pgdg 3.4.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb pgdg 3.6.0 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb pgdg 3.5.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb pgdg 3.4.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb pgdg 3.5.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb pgdg 3.4.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb pgdg 3.6.0 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb pgdg 3.5.0 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb pgdg 3.4.0 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb pgdg 3.6.0 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb pgdg 3.5.0 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb pgdg 3.4.0 43.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb pgdg 3.6.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb pgdg 3.5.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb pgdg 3.4.0 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb pgdg 3.5.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb pgdg 3.4.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb pgdg 3.5.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb pgdg 3.4.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb pgdg 3.6.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.6.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb pgdg 3.5.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-decoderbufs postgresql-14-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb pgdg 3.4.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgres-decoderbufs/postgresql-14-decoderbufs_3.4.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `decoderbufs` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install decoderbufs;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y decoderbufs -v 18  # PG 18
pig ext install -y decoderbufs -v 17  # PG 17
pig ext install -y decoderbufs -v 16  # PG 16
pig ext install -y decoderbufs -v 15  # PG 15
pig ext install -y decoderbufs -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y postgres-decoderbufs_18       # PG 18
dnf install -y postgres-decoderbufs_17       # PG 17
dnf install -y postgres-decoderbufs_16       # PG 16
dnf install -y postgres-decoderbufs_15       # PG 15
dnf install -y postgres-decoderbufs_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-decoderbufs   # PG 18
apt install -y postgresql-17-decoderbufs   # PG 17
apt install -y postgresql-16-decoderbufs   # PG 16
apt install -y postgresql-15-decoderbufs   # PG 15
apt install -y postgresql-14-decoderbufs   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'decoderbufs';
```


## Usage

Sources:

- [Debezium decoderbufs 3.6.0.Final README](https://github.com/debezium/postgres-decoderbufs/blob/v3.6.0.Final/README.md)
- [Output-plugin control file](https://github.com/debezium/postgres-decoderbufs/blob/v3.6.0.Final/decoderbufs.control)
- [Protocol Buffers schema](https://github.com/debezium/postgres-decoderbufs/blob/v3.6.0.Final/proto/pg_logicaldec.proto)

`decoderbufs` is a headless PostgreSQL logical-decoding output plugin used by the Debezium PostgreSQL connector. It turns WAL changes into Protocol Buffers messages; it does not create a user SQL schema and does not require `CREATE EXTENSION`.

### Configure PostgreSQL

Enable the plugin and logical replication in `postgresql.conf`, size the sender and slot limits for the expected consumers, then restart PostgreSQL:

```conf
shared_preload_libraries = 'decoderbufs'
wal_level = logical
max_wal_senders = 8
max_replication_slots = 4
```

The replication login also needs the `REPLICATION` attribute and a matching `pg_hba.conf` rule. Use authentication appropriate for the network rather than the README's local demonstration settings.

### Core Workflow

Create a logical slot whose output plugin is `decoderbufs`:

```sql
SELECT *
FROM pg_create_logical_replication_slot('decoderbufs_demo', 'decoderbufs');
```

For inspection in `psql`, ask the plugin for debug text:

```sql
SELECT data
FROM pg_logical_slot_peek_changes(
  'decoderbufs_demo', NULL, NULL, 'debug-mode', '1'
);

SELECT data
FROM pg_logical_slot_get_changes(
  'decoderbufs_demo', NULL, NULL, 'debug-mode', '1'
);
```

`peek` leaves the confirmed position unchanged; `get` advances it. Normal Debezium operation consumes the binary messages defined by `pg_logicaldec.proto` rather than enabling debug mode.

### Important Objects and Boundaries

- `decoderbufs` is the logical-decoding output-plugin name passed when a slot is created.
- `debug-mode = 1` provides human-readable output for troubleshooting only.
- The Protobuf message carries transaction metadata, relation and column information, operation kind, old keys, and typed values.
- Tables that must emit sufficient data for `UPDATE` and `DELETE` require an appropriate `REPLICA IDENTITY`.

Logical slots retain WAL until a consumer confirms progress. Monitor `pg_replication_slots` and remove abandoned slots deliberately to prevent disk exhaustion. Schema changes, replica identity, unsupported data-type mappings, and large transactions should be tested with the matching Debezium connector version.

The upstream build requires PostgreSQL 9.6 or newer and protobuf-c; PostGIS support is compiled when available. The package release moves with Debezium to 3.6.0.Final, while the plugin control metadata remains SQL version 0.1.0 because this is an output plugin rather than a migration-based SQL extension.
