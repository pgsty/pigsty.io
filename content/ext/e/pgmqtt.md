---
title: "pgmqtt"
linkTitle: "pgmqtt"
description: "CDC-to-MQTT broker for PostgreSQL"
weight: 9620
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/RayElg/pgmqtt">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">RayElg/pgmqtt</div>
    <div class="ext-card__desc">https://github.com/RayElg/pgmqtt</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmqtt-0.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmqtt-0.4.1.tar.gz</div>
    <div class="ext-card__desc">pgmqtt-0.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmqtt`**](/ext/e/pgmqtt) | `0.4.1` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license elastic20" href="/ext/license#elastic20">Elastic-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9620  | [**`pgmqtt`**](/ext/e/pgmqtt) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`wal2json`](/ext/e/wal2json) [`decoderbufs`](/ext/e/decoderbufs) [`pgq`](/ext/e/pgq) [`kafka_fdw`](/ext/e/kafka_fdw) [`pgmq`](/ext/e/pgmq) [`pgmb`](/ext/e/pgmb) [`ulak`](/ext/e/ulak) [`tcn`](/ext/e/tcn) [`redis`](/ext/e/redis) [`test_decoding`](/ext/e/test_decoding) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> requires wal_level = logical for CDC.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pgmqtt` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pgmqtt_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmqtt` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
@ el8.x86_64 18 pgmqtt_18 pgmqtt_18-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_18-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmqtt_18 pgmqtt_18-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_18-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmqtt_18 pgmqtt_18-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_18-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmqtt_18 pgmqtt_18-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_18-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmqtt_18 pgmqtt_18-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_18-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgmqtt_18 pgmqtt_18-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_18-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgmqtt_17 pgmqtt_17-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_17-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmqtt_17 pgmqtt_17-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_17-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmqtt_17 pgmqtt_17-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_17-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmqtt_17 pgmqtt_17-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_17-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmqtt_17 pgmqtt_17-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_17-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgmqtt_17 pgmqtt_17-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_17-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgmqtt_16 pgmqtt_16-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_16-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgmqtt_16 pgmqtt_16-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_16-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgmqtt_16 pgmqtt_16-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_16-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgmqtt_16 pgmqtt_16-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_16-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgmqtt_16 pgmqtt_16-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_16-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgmqtt_16 pgmqtt_16-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_16-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgmqtt_15 pgmqtt_15-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_15-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgmqtt_15 pgmqtt_15-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_15-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmqtt_15 pgmqtt_15-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_15-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgmqtt_15 pgmqtt_15-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_15-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgmqtt_15 pgmqtt_15-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_15-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgmqtt_15 pgmqtt_15-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_15-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgmqtt_14 pgmqtt_14-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_14-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgmqtt_14 pgmqtt_14-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_14-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmqtt_14 pgmqtt_14-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_14-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgmqtt_14 pgmqtt_14-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_14-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgmqtt_14 pgmqtt_14-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_14-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgmqtt_14 pgmqtt_14-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_14-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.4.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmqtt` using `pig build`:

```bash
pig build pkg pgmqtt         # build RPM / DEB packages
```


## Install

You can install `pgmqtt` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pgmqtt;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgmqtt -v 18  # PG 18
pig ext install -y pgmqtt -v 17  # PG 17
pig ext install -y pgmqtt -v 16  # PG 16
pig ext install -y pgmqtt -v 15  # PG 15
pig ext install -y pgmqtt -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgmqtt_18       # PG 18
dnf install -y pgmqtt_17       # PG 17
dnf install -y pgmqtt_16       # PG 16
dnf install -y pgmqtt_15       # PG 15
dnf install -y pgmqtt_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgmqtt   # PG 18
apt install -y postgresql-17-pgmqtt   # PG 17
apt install -y postgresql-16-pgmqtt   # PG 16
apt install -y postgresql-15-pgmqtt   # PG 15
apt install -y postgresql-14-pgmqtt   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgmqtt;
```

## Usage

Sources:

- [pgmqtt 0.4.1 README](https://github.com/RayElg/pgmqtt/blob/0.4.1/README.md)
- [pgmqtt 0.4.1 interfaces](https://github.com/RayElg/pgmqtt/blob/0.4.1/docs/interfaces.md)
- [pgmqtt 0.4.1 configuration](https://github.com/RayElg/pgmqtt/blob/0.4.1/docs/configuration.md)
- [pgmqtt 0.4.1 limitations](https://github.com/RayElg/pgmqtt/blob/0.4.1/docs/limitations.md)
- [pgmqtt 0.4.1 release notes](https://github.com/RayElg/pgmqtt/releases/tag/0.4.1)

pgmqtt embeds an MQTT broker in PostgreSQL. It can publish INSERT, UPDATE, and DELETE changes through logical decoding and can map inbound MQTT topics and JSON payloads to table writes. Use it when database and MQTT integration justify running a network broker inside the PostgreSQL server process.

### Preload and Create the Extension

Set logical WAL and preload the worker, then restart PostgreSQL:

    wal_level = logical
    shared_preload_libraries = 'pgmqtt'

Create the extension after restart:

    CREATE EXTENSION pgmqtt;

Listener addresses, ports, authentication, and TLS settings are read by the background worker. Settings documented as startup-only require a worker/server restart, not just pg_reload_conf().

### Publish Table Changes

Create an outbound mapping:

    SELECT pgmqtt_add_outbound_mapping(
      'public',
      'orders',
      'orders/{{ op | lower }}',
      '{{ columns | tojson }}',
      1
    );

The mapping publishes row changes to topics such as orders/insert. The interface also accepts a QoS and template type where supported. Version 0.4.1 drains CDC changes in batches of up to 4096 records.

Inspect or remove outbound mappings:

    SELECT * FROM pgmqtt_list_outbound_mappings();
    SELECT pgmqtt_remove_outbound_mapping('public', 'orders');

### Write Rows from MQTT

Map captured topic segments and JSON fields to a target table:

    SELECT pgmqtt_add_inbound_mapping(
      'sensor/{site_id}/temperature',
      'sensor_readings',
      '{"site_id":"{site_id}","value":"$.temperature"}'::jsonb
    );

Inbound mappings support insert and documented upsert/delete modes with options such as target_schema, conflict_columns, mapping_name, and template_type. Grant the worker role only the required table privileges and validate payload types and constraints.

    SELECT * FROM pgmqtt_list_inbound_mappings();
    SELECT pgmqtt_remove_inbound_mapping('temp_readings');

### Administration and Status

    SELECT * FROM pgmqtt_status();
    SELECT pgmqtt_disconnect_client('device-42');
    SELECT pgmqtt_disconnect_role('mqtt_devices');
    SELECT pgmqtt_reload_acls('*');

pgmqtt_status reports listener, client, subscription, retained-message, CDC, inbound-write, and dead-letter state. Administrative calls are queued for asynchronous processing by the worker.

### Configuration Index

- pgmqtt.mqtt_enabled and pgmqtt.mqtt_port: TCP MQTT listener.
- pgmqtt.ws_enabled and pgmqtt.ws_port: WebSocket listener.
- pgmqtt.tick_interval_ms and pgmqtt.cdc_every_n_ticks: worker cadence.
- pgmqtt.max_client_buffer_bytes: per-client flow-control boundary.
- pgmqtt.debug_log and pgmqtt.metrics_*: diagnostics and metrics integration.
- pgmqtt TLS, JWT, password-authentication, and ACL settings: transport and client access controls; availability differs between community and enterprise features.

### Protocol and CDC Boundaries

- MQTT 5.0 and 3.1.1 are supported. QoS 0 and 1 are implemented; requested QoS 2 is downgraded to QoS 1.
- CDC covers INSERT, UPDATE, and DELETE, not DDL or TRUNCATE. DELETE payloads may require REPLICA IDENTITY FULL.
- The CDC ring has a finite capacity of 8192 and drops the oldest records on overflow. The QoS 0 topic buffer is capped at 4096 and also drops oldest entries; QoS 1 buffering can grow without a fixed bound.
- The community edition documents TLS through a proxy, while native TLS and some JWT features are enterprise boundaries. Verify the edition before setting listener expectations.

### Version 0.4.1 and Operations

The 0.4 line consolidates HTTP/worker handling and reduces panic paths; 0.4.1 raises CDC batch processing to 4096. These changes improve throughput and structure but do not make the embedded broker lossless under every overload or crash.

Running a broker inside PostgreSQL expands the database network and resource boundary. Isolate listener interfaces, enforce authentication and topic ACLs, monitor worker lag and dropped buffers, and test failover and restart behavior before production use.
