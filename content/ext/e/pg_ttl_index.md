---
title: "pg_ttl_index"
linkTitle: "pg_ttl_index"
description: "Automatic data expiration with TTL indexes"
weight: 2730
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ibrahimkarimeddin/postgres-extensions-pg_ttl">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ibrahimkarimeddin/postgres-extensions-pg_ttl</div>
    <div class="ext-card__desc">https://github.com/ibrahimkarimeddin/postgres-extensions-pg_ttl</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgres-extensions-pg_ttl-3.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgres-extensions-pg_ttl-3.0.0.tar.gz</div>
    <div class="ext-card__desc">postgres-extensions-pg_ttl-3.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_ttl_index`**](/ext/e/pg_ttl_index) | `3.0.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2730  | [**`pg_ttl_index`**](/ext/e/pg_ttl_index) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`temporal_tables`](/ext/e/temporal_tables) [`periods`](/ext/e/periods) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_partman`](/ext/e/pg_partman) [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`timescaledb`](/ext/e/timescaledb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg 14 breaks; rm README from RPM/DEB


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.0` | {{< pgvers "18,17,16,15" >}} | `pg_ttl_index` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.0` | {{< pgvers "18,17,16,15" >}} | `pg_ttl_index_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-ttl-index` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_ttl_index_18 pg_ttl_index_18-3.0.0-1PIGSTY.el8.x86_64.rpm pigsty 3.0.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ttl_index_18-3.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_ttl_index_18 pg_ttl_index_18-3.0.0-1PIGSTY.el8.aarch64.rpm pigsty 3.0.0 21.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ttl_index_18-3.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_ttl_index_18 pg_ttl_index_18-3.0.0-1PIGSTY.el9.x86_64.rpm pigsty 3.0.0 20.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ttl_index_18-3.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_ttl_index_18 pg_ttl_index_18-3.0.0-1PIGSTY.el9.aarch64.rpm pigsty 3.0.0 20.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ttl_index_18-3.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_ttl_index_18 pg_ttl_index_18-3.0.0-1PIGSTY.el10.x86_64.rpm pigsty 3.0.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ttl_index_18-3.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_ttl_index_18 pg_ttl_index_18-3.0.0-1PIGSTY.el10.aarch64.rpm pigsty 3.0.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ttl_index_18-3.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-ttl-index postgresql-18-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb pigsty 3.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-18-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_ttl_index_17 pg_ttl_index_17-3.0.0-1PIGSTY.el8.x86_64.rpm pigsty 3.0.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ttl_index_17-3.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_ttl_index_17 pg_ttl_index_17-3.0.0-1PIGSTY.el8.aarch64.rpm pigsty 3.0.0 21.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ttl_index_17-3.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_ttl_index_17 pg_ttl_index_17-3.0.0-1PIGSTY.el9.x86_64.rpm pigsty 3.0.0 20.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ttl_index_17-3.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_ttl_index_17 pg_ttl_index_17-3.0.0-1PIGSTY.el9.aarch64.rpm pigsty 3.0.0 20.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ttl_index_17-3.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_ttl_index_17 pg_ttl_index_17-3.0.0-1PIGSTY.el10.x86_64.rpm pigsty 3.0.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ttl_index_17-3.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_ttl_index_17 pg_ttl_index_17-3.0.0-1PIGSTY.el10.aarch64.rpm pigsty 3.0.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ttl_index_17-3.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb pigsty 3.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-ttl-index postgresql-17-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-17-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_ttl_index_16 pg_ttl_index_16-3.0.0-1PIGSTY.el8.x86_64.rpm pigsty 3.0.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ttl_index_16-3.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_ttl_index_16 pg_ttl_index_16-3.0.0-1PIGSTY.el8.aarch64.rpm pigsty 3.0.0 21.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ttl_index_16-3.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_ttl_index_16 pg_ttl_index_16-3.0.0-1PIGSTY.el9.x86_64.rpm pigsty 3.0.0 20.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ttl_index_16-3.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_ttl_index_16 pg_ttl_index_16-3.0.0-1PIGSTY.el9.aarch64.rpm pigsty 3.0.0 20.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ttl_index_16-3.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_ttl_index_16 pg_ttl_index_16-3.0.0-1PIGSTY.el10.x86_64.rpm pigsty 3.0.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ttl_index_16-3.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_ttl_index_16 pg_ttl_index_16-3.0.0-1PIGSTY.el10.aarch64.rpm pigsty 3.0.0 20.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ttl_index_16-3.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb pigsty 3.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb pigsty 3.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-ttl-index postgresql-16-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb pigsty 3.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-16-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_ttl_index_15 pg_ttl_index_15-3.0.0-1PIGSTY.el8.x86_64.rpm pigsty 3.0.0 21.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ttl_index_15-3.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_ttl_index_15 pg_ttl_index_15-3.0.0-1PIGSTY.el8.aarch64.rpm pigsty 3.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ttl_index_15-3.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_ttl_index_15 pg_ttl_index_15-3.0.0-1PIGSTY.el9.x86_64.rpm pigsty 3.0.0 21.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ttl_index_15-3.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_ttl_index_15 pg_ttl_index_15-3.0.0-1PIGSTY.el9.aarch64.rpm pigsty 3.0.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ttl_index_15-3.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_ttl_index_15 pg_ttl_index_15-3.0.0-1PIGSTY.el10.x86_64.rpm pigsty 3.0.0 21.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ttl_index_15-3.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_ttl_index_15 pg_ttl_index_15-3.0.0-1PIGSTY.el10.aarch64.rpm pigsty 3.0.0 21.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ttl_index_15-3.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb pigsty 3.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb pigsty 3.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb pigsty 3.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb pigsty 3.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb pigsty 3.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb pigsty 3.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb pigsty 3.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb pigsty 3.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-ttl-index postgresql-15-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb pigsty 3.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/ttl-index/postgresql-15-ttl-index_3.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_ttl_index` using `pig build`:

```bash
pig build pkg pg_ttl_index         # build RPM / DEB packages
```


## Install

You can install `pg_ttl_index` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_ttl_index;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_ttl_index -v 18  # PG 18
pig ext install -y pg_ttl_index -v 17  # PG 17
pig ext install -y pg_ttl_index -v 16  # PG 16
pig ext install -y pg_ttl_index -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_ttl_index_18       # PG 18
dnf install -y pg_ttl_index_17       # PG 17
dnf install -y pg_ttl_index_16       # PG 16
dnf install -y pg_ttl_index_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-ttl-index   # PG 18
apt install -y postgresql-17-ttl-index   # PG 17
apt install -y postgresql-16-ttl-index   # PG 16
apt install -y postgresql-15-ttl-index   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_ttl_index';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_ttl_index;
```




## Usage

> [pg_ttl_index: Automatic data expiration with TTL indexes](https://github.com/ibrahimkarimeddin/postgres-extensions-pg_ttl)

`pg_ttl_index` provides automatic data expiration by associating a TTL (time-to-live) with a timestamp column. A background worker periodically deletes rows whose timestamp exceeds the configured expiration interval.

### Quick Start

```sql
-- Start the background worker
SELECT ttl_start_worker();

-- Create a table with a timestamp column
CREATE TABLE user_sessions (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    session_data JSONB,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Expire rows after 1 hour (3600 seconds)
SELECT ttl_create_index('user_sessions', 'created_at', 3600);
```

### Functions

| Function | Description |
|----------|-------------|
| `ttl_start_worker()` | Start the background worker for automatic cleanup |
| `ttl_worker_status()` | Check if the worker is running |
| `ttl_runner()` | Manually trigger cleanup |
| `ttl_create_index(table, column, expire_seconds [, batch_size])` | Configure TTL expiration |
| `ttl_drop_index(table, column)` | Remove TTL configuration |
| `ttl_summary()` | List all TTL indexes with stats |

### Examples

Session management with 24-hour expiry:

```sql
SELECT ttl_create_index('sessions', 'created_at', 86400, 5000);
```

Log retention for 7 days:

```sql
SELECT ttl_create_index('app_logs', 'logged_at', 604800);
```

Cache entries with custom expiry column (0 means the column itself holds the absolute expiry time):

```sql
SELECT ttl_create_index('cache_entries', 'expires_at', 0);
```

### Monitoring

```sql
SELECT * FROM ttl_summary();
```

Pause cleanup for a specific table:

```sql
UPDATE ttl_index_table SET active = false WHERE table_name = 'user_sessions';
```

### Configuration

| Parameter | Description | Default |
|-----------|-------------|---------|
| `pg_ttl_index.naptime` | Cleanup interval in seconds | 60 |
| `pg_ttl_index.enabled` | Enable/disable worker globally | on |

```sql
ALTER SYSTEM SET pg_ttl_index.naptime = 30;
SELECT pg_reload_conf();
```
