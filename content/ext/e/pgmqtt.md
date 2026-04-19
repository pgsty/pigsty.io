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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmqtt-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmqtt-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pgmqtt-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmqtt`**](/ext/e/pgmqtt) | `0.1.0` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license elastic license 20" href="/ext/license#elasticlicense20">Elastic License 2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9620  | [**`pgmqtt`**](/ext/e/pgmqtt) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


> manually upgraded PGRX from 0.16.1 to 0.17.0 by Vonng; requires wal_level = logical for CDC.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14,13" >}} | `pgmqtt` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14,13" >}} | `pgmqtt_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14,13" >}} | `postgresql-$v-pgmqtt` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pgmqtt_18 pgmqtt_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmqtt_18 pgmqtt_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmqtt_18 pgmqtt_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmqtt_18 pgmqtt_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmqtt_18 pgmqtt_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgmqtt_18 pgmqtt_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmqtt postgresql-18-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-18-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgmqtt_17 pgmqtt_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmqtt_17 pgmqtt_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmqtt_17 pgmqtt_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmqtt_17 pgmqtt_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmqtt_17 pgmqtt_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgmqtt_17 pgmqtt_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmqtt postgresql-17-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-17-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgmqtt_16 pgmqtt_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgmqtt_16 pgmqtt_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgmqtt_16 pgmqtt_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgmqtt_16 pgmqtt_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgmqtt_16 pgmqtt_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgmqtt_16 pgmqtt_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmqtt postgresql-16-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-16-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgmqtt_15 pgmqtt_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgmqtt_15 pgmqtt_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmqtt_15 pgmqtt_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgmqtt_15 pgmqtt_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgmqtt_15 pgmqtt_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgmqtt_15 pgmqtt_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmqtt postgresql-15-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-15-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgmqtt_14 pgmqtt_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmqtt_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgmqtt_14 pgmqtt_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmqtt_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmqtt_14 pgmqtt_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmqtt_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgmqtt_14 pgmqtt_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmqtt_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgmqtt_14 pgmqtt_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmqtt_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgmqtt_14 pgmqtt_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmqtt_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmqtt postgresql-14-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmqtt/postgresql-14-pgmqtt_0.1.0-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmqtt;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmqtt -v 18  # PG 18
pig ext install -y pgmqtt -v 17  # PG 17
pig ext install -y pgmqtt -v 16  # PG 16
pig ext install -y pgmqtt -v 15  # PG 15
pig ext install -y pgmqtt -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmqtt_18       # PG 18
dnf install -y pgmqtt_17       # PG 17
dnf install -y pgmqtt_16       # PG 16
dnf install -y pgmqtt_15       # PG 15
dnf install -y pgmqtt_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmqtt   # PG 18
apt install -y postgresql-17-pgmqtt   # PG 17
apt install -y postgresql-16-pgmqtt   # PG 16
apt install -y postgresql-15-pgmqtt   # PG 15
apt install -y postgresql-14-pgmqtt   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmqtt;
```

## Usage

Sources: [official README](https://github.com/RayElg/pgmqtt/blob/main/README.md), [official repo](https://github.com/RayElg/pgmqtt)

`pgmqtt` is a `pgrx` extension that embeds an MQTT broker into PostgreSQL and uses change data capture to turn table changes into MQTT messages. It also supports inbound topic mappings so MQTT publishes can insert rows into PostgreSQL tables.

```sql
CREATE EXTENSION pgmqtt;
```

### Outbound Mapping

Publish table changes to topics:

```sql
SELECT pgmqtt_add_outbound_mapping(
  'public',
  'my_table',
  'topics/{{ op | lower }}',
  '{{ columns | tojson }}'
);
```

With that mapping, `INSERT`, `UPDATE`, and `DELETE` publish JSON payloads to topics such as `topics/insert`.

### Inbound Mapping

Insert rows from MQTT publishes:

```sql
SELECT pgmqtt_add_inbound_mapping(
  'sensor/{site_id}/temperature',
  'sensor_readings',
  '{"site_id": "{site_id}", "value": "$.temperature"}'::jsonb
);
```

Publishing `{"temperature": 22.5}` to `sensor/site-1/temperature` inserts a row into `sensor_readings`.

### MQTT Client Examples

```bash
mosquitto_sub -h localhost -t 'topics/#'
mosquitto_pub -h localhost -t 'sensor/site-1/temperature' -m '{"temperature": 22.5}'
```

### Caveats

- The README requires `wal_level = logical`; without logical decoding the CDC side will not work.
- Upstream documentation is currently README-level only, so the documented SQL surface is limited to the inbound and outbound mapping workflow.
