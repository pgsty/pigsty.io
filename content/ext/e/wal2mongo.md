---
title: "wal2mongo"
linkTitle: "wal2mongo"
description: "PostgreSQL logical decoding output plugin for MongoDB"
weight: 9640
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HighgoSoftware/wal2mongo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HighgoSoftware/wal2mongo</div>
    <div class="ext-card__desc">https://github.com/HighgoSoftware/wal2mongo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/wal2mongo-1.0.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">wal2mongo-1.0.7.tar.gz</div>
    <div class="ext-card__desc">wal2mongo-1.0.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`wal2mongo`**](/ext/e/wal2mongo) | `1.0.7` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9640  | [**`wal2mongo`**](/ext/e/wal2mongo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`wal2json`](/ext/e/wal2json) [`decoderbufs`](/ext/e/decoderbufs) [`test_decoding`](/ext/e/test_decoding) [`pgoutput`](/ext/e/pgoutput) [`decoder_raw`](/ext/e/decoder_raw) [`pgmqtt`](/ext/e/pgmqtt) [`kafka_fdw`](/ext/e/kafka_fdw) [`pgq`](/ext/e/pgq) [`pg_protobuf`](/ext/e/pg_protobuf) [`pgproto`](/ext/e/pgproto) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.7` | {{< pgvers "18,17,16,15,14" >}} | `wal2mongo` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0.7` | {{< pgvers "18,17,16,15,14" >}} | `wal2mongo_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-wal2mongo` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PGDG 1.0.7 1 | AVAIL PGDG 1.0.7 1 | AVAIL PGDG 1.0.7 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PGDG 1.0.7 1 | AVAIL PGDG 1.0.7 1 | AVAIL PGDG 1.0.7 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 |
| el9.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 |
| el10.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 |
| el10.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 | AVAIL PGDG 1.0.7 2 |
| d12.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
@ el8.x86_64 18 wal2mongo_18 wal2mongo_18-1.0.7-1PIGSTY.el8.x86_64.rpm pigsty 1.0.7 26.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wal2mongo_18-1.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 wal2mongo_18 wal2mongo_18-1.0.7-1PIGSTY.el8.aarch64.rpm pigsty 1.0.7 26.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wal2mongo_18-1.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 wal2mongo_18 wal2mongo_18-1.0.7-1PIGSTY.el9.x86_64.rpm pigsty 1.0.7 26.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wal2mongo_18-1.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 wal2mongo_18 wal2mongo_18-1.0.7-1PIGSTY.el9.aarch64.rpm pigsty 1.0.7 25.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wal2mongo_18-1.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 wal2mongo_18 wal2mongo_18-1.0.7-1PIGSTY.el10.x86_64.rpm pigsty 1.0.7 26.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wal2mongo_18-1.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 wal2mongo_18 wal2mongo_18-1.0.7-1PIGSTY.el10.aarch64.rpm pigsty 1.0.7 26.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wal2mongo_18-1.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~bookworm_amd64.deb pigsty 1.0.7 34.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~bookworm_arm64.deb pigsty 1.0.7 34.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~trixie_amd64.deb pigsty 1.0.7 34.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~trixie_arm64.deb pigsty 1.0.7 34.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~jammy_amd64.deb pigsty 1.0.7 37.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~jammy_arm64.deb pigsty 1.0.7 36.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~noble_amd64.deb pigsty 1.0.7 35.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~noble_arm64.deb pigsty 1.0.7 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~resolute_amd64.deb pigsty 1.0.7 35.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-wal2mongo postgresql-18-wal2mongo_1.0.7-2PIGSTY~resolute_arm64.deb pigsty 1.0.7 35.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-18-wal2mongo_1.0.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 wal2mongo_17 wal2mongo_17-1.0.7-1PIGSTY.el8.x86_64.rpm pigsty 1.0.7 26.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wal2mongo_17-1.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 wal2mongo_17 wal2mongo_17-1.0.7-1PIGSTY.el8.aarch64.rpm pigsty 1.0.7 26.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wal2mongo_17-1.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 wal2mongo_17 wal2mongo_17-1.0.7-1PIGSTY.el9.x86_64.rpm pigsty 1.0.7 26.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wal2mongo_17-1.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 wal2mongo_17 wal2mongo_17-1.0.7-1PIGSTY.el9.aarch64.rpm pigsty 1.0.7 26.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wal2mongo_17-1.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 wal2mongo_17 wal2mongo_17-1.0.7-1PIGSTY.el10.x86_64.rpm pigsty 1.0.7 26.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wal2mongo_17-1.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 wal2mongo_17 wal2mongo_17-1.0.7-1PIGSTY.el10.aarch64.rpm pigsty 1.0.7 26.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wal2mongo_17-1.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~bookworm_amd64.deb pigsty 1.0.7 34.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~bookworm_arm64.deb pigsty 1.0.7 34.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~trixie_amd64.deb pigsty 1.0.7 34.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~trixie_arm64.deb pigsty 1.0.7 34.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~jammy_amd64.deb pigsty 1.0.7 39.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~jammy_arm64.deb pigsty 1.0.7 39.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~noble_amd64.deb pigsty 1.0.7 35.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~noble_arm64.deb pigsty 1.0.7 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~resolute_amd64.deb pigsty 1.0.7 35.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-wal2mongo postgresql-17-wal2mongo_1.0.7-2PIGSTY~resolute_arm64.deb pigsty 1.0.7 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-17-wal2mongo_1.0.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 wal2mongo_16 wal2mongo_16-1.0.7-1PGDG.rhel8.x86_64.rpm pgdg 1.0.7 20.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/wal2mongo_16-1.0.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 wal2mongo_16 wal2mongo_16-1.0.7-1PGDG.rhel8.aarch64.rpm pgdg 1.0.7 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/wal2mongo_16-1.0.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 wal2mongo_16 wal2mongo_16-1.0.7-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0.7 20.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/wal2mongo_16-1.0.7-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 wal2mongo_16 wal2mongo_16-1.0.7-1PGDG.rhel9.x86_64.rpm pgdg 1.0.7 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/wal2mongo_16-1.0.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 wal2mongo_16 wal2mongo_16-1.0.7-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0.7 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/wal2mongo_16-1.0.7-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 wal2mongo_16 wal2mongo_16-1.0.7-1PGDG.rhel9.aarch64.rpm pgdg 1.0.7 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/wal2mongo_16-1.0.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 wal2mongo_16 wal2mongo_16-1.0.7-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0.7 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/wal2mongo_16-1.0.7-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 wal2mongo_16 wal2mongo_16-1.0.7-3PGDG.rhel10.x86_64.rpm pgdg 1.0.7 20.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/wal2mongo_16-1.0.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 wal2mongo_16 wal2mongo_16-1.0.7-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0.7 20.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/wal2mongo_16-1.0.7-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 wal2mongo_16 wal2mongo_16-1.0.7-3PGDG.rhel10.aarch64.rpm pgdg 1.0.7 20.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/wal2mongo_16-1.0.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 34.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 34.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 34.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 34.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 39.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 39.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 35.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~resolute_amd64.deb pigsty 1.0.7 35.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-wal2mongo postgresql-16-wal2mongo_1.0.7-1PIGSTY~resolute_arm64.deb pigsty 1.0.7 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-16-wal2mongo_1.0.7-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 wal2mongo_15 wal2mongo_15-1.0.7-1PGDG.rhel8.x86_64.rpm pgdg 1.0.7 20.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/wal2mongo_15-1.0.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 wal2mongo_15 wal2mongo_15-1.0.7-1PGDG.rhel8.aarch64.rpm pgdg 1.0.7 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/wal2mongo_15-1.0.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 wal2mongo_15 wal2mongo_15-1.0.7-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0.7 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/wal2mongo_15-1.0.7-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 wal2mongo_15 wal2mongo_15-1.0.7-1PGDG.rhel9.x86_64.rpm pgdg 1.0.7 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/wal2mongo_15-1.0.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 wal2mongo_15 wal2mongo_15-1.0.7-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0.7 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/wal2mongo_15-1.0.7-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 wal2mongo_15 wal2mongo_15-1.0.7-1PGDG.rhel9.aarch64.rpm pgdg 1.0.7 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/wal2mongo_15-1.0.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 wal2mongo_15 wal2mongo_15-1.0.7-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0.7 20.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/wal2mongo_15-1.0.7-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 wal2mongo_15 wal2mongo_15-1.0.7-3PGDG.rhel10.x86_64.rpm pgdg 1.0.7 20.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/wal2mongo_15-1.0.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 wal2mongo_15 wal2mongo_15-1.0.7-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0.7 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/wal2mongo_15-1.0.7-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 wal2mongo_15 wal2mongo_15-1.0.7-3PGDG.rhel10.aarch64.rpm pgdg 1.0.7 20.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/wal2mongo_15-1.0.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 34.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 33.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 34.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 39.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 38.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 35.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~resolute_amd64.deb pigsty 1.0.7 35.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-wal2mongo postgresql-15-wal2mongo_1.0.7-1PIGSTY~resolute_arm64.deb pigsty 1.0.7 34.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-15-wal2mongo_1.0.7-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 wal2mongo_14 wal2mongo_14-1.0.7-1PGDG.rhel8.x86_64.rpm pgdg 1.0.7 20.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/wal2mongo_14-1.0.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 wal2mongo_14 wal2mongo_14-1.0.7-1PGDG.rhel8.aarch64.rpm pgdg 1.0.7 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/wal2mongo_14-1.0.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 wal2mongo_14 wal2mongo_14-1.0.7-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0.7 20.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/wal2mongo_14-1.0.7-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 wal2mongo_14 wal2mongo_14-1.0.7-1PGDG.rhel9.x86_64.rpm pgdg 1.0.7 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/wal2mongo_14-1.0.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 wal2mongo_14 wal2mongo_14-1.0.7-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0.7 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/wal2mongo_14-1.0.7-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 wal2mongo_14 wal2mongo_14-1.0.7-1PGDG.rhel9.aarch64.rpm pgdg 1.0.7 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/wal2mongo_14-1.0.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 wal2mongo_14 wal2mongo_14-1.0.7-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0.7 20.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/wal2mongo_14-1.0.7-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 wal2mongo_14 wal2mongo_14-1.0.7-3PGDG.rhel10.x86_64.rpm pgdg 1.0.7 20.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/wal2mongo_14-1.0.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 wal2mongo_14 wal2mongo_14-1.0.7-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0.7 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/wal2mongo_14-1.0.7-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 wal2mongo_14 wal2mongo_14-1.0.7-3PGDG.rhel10.aarch64.rpm pgdg 1.0.7 20.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/wal2mongo_14-1.0.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 34.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 33.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 34.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 39.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 38.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 35.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 34.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~resolute_amd64.deb pigsty 1.0.7 35.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-wal2mongo postgresql-14-wal2mongo_1.0.7-1PIGSTY~resolute_arm64.deb pigsty 1.0.7 34.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wal2mongo/postgresql-14-wal2mongo_1.0.7-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `wal2mongo` using `pig build`:

```bash
pig build pkg wal2mongo         # build DEB packages
```


## Install

You can install `wal2mongo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install wal2mongo;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y wal2mongo -v 18  # PG 18
pig ext install -y wal2mongo -v 17  # PG 17
pig ext install -y wal2mongo -v 16  # PG 16
pig ext install -y wal2mongo -v 15  # PG 15
pig ext install -y wal2mongo -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y wal2mongo_18       # PG 18
dnf install -y wal2mongo_17       # PG 17
dnf install -y wal2mongo_16       # PG 16
dnf install -y wal2mongo_15       # PG 15
dnf install -y wal2mongo_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-wal2mongo   # PG 18
apt install -y postgresql-17-wal2mongo   # PG 17
apt install -y postgresql-16-wal2mongo   # PG 16
apt install -y postgresql-15-wal2mongo   # PG 15
apt install -y postgresql-14-wal2mongo   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}

> This extension does not require `CREATE EXTENSION`




## Usage

> [wal2mongo: PostgreSQL logical decoding output plugin for MongoDB](https://github.com/HighgoSoftware/wal2mongo)

A logical decoding output plugin that formats PostgreSQL WAL changes as MongoDB-compatible commands, enabling data replication from PostgreSQL to MongoDB.

### Configuration

In `postgresql.conf`:

```ini
wal_level = logical
max_replication_slots = 10
```

### Using with SQL Functions

```sql
-- Create a logical replication slot
SELECT * FROM pg_create_logical_replication_slot('w2m_slot', 'wal2mongo');

-- Perform DML operations
CREATE TABLE books (id SERIAL PRIMARY KEY, title VARCHAR(100), author VARCHAR(100));
INSERT INTO books (id, title, author) VALUES (123, 'My Book', 'Author');

-- Peek at changes (MongoDB format)
SELECT * FROM pg_logical_slot_peek_changes('w2m_slot', NULL, NULL);
-- Output: db.books.insertOne( { id:123, title:"My Book", author:"Author" } )

-- Consume changes
SELECT * FROM pg_logical_slot_get_changes('w2m_slot', NULL, NULL);

-- Drop the slot
SELECT pg_drop_replication_slot('w2m_slot');
```

### Using with pg_recvlogical

```bash
pg_recvlogical -d postgres --slot w2m_slot --create-slot -P wal2mongo
pg_recvlogical -d postgres --slot w2m_slot --start -f -
```

### Replicating to MongoDB

The output can be applied directly in the MongoDB shell:

```javascript
// Copy the output from pg_logical_slot_get_changes
db.books.insertOne( { id:123, title:"My Book", author:"Author" } )
```

Or save to a `.js` file and import:

```bash
mongo < changes.js
```

### Output Format

- **INSERT**: `db.<table>.insertOne( { <columns> } )`
- **UPDATE**: `db.<table>.updateOne( { <key> }, { $set: { <changes> } } )`
- **DELETE**: `db.<table>.deleteOne( { <key> } )`

Tables need a primary key or replica identity for UPDATE/DELETE operations to be captured.
