---
title: "pg_datasentinel"
linkTitle: "pg_datasentinel"
description: "Observability and activity monitoring extension for PostgreSQL"
weight: 6400
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/datasentinel/pg_datasentinel">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">datasentinel/pg_datasentinel</div>
    <div class="ext-card__desc">https://github.com/datasentinel/pg_datasentinel</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_datasentinel-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_datasentinel-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_datasentinel-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_datasentinel`**](/ext/e/pg_datasentinel) | `1.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6400  | [**`pg_datasentinel`**](/ext/e/pg_datasentinel) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgsentinel`](/ext/e/pgsentinel) [`system_stats`](/ext/e/system_stats) [`pg_profile`](/ext/e/pg_profile) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`powa`](/ext/e/powa) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> shared_preload_libraries = pg_datasentinel is required because the extension allocates shared memory and hooks into activity logging.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15" >}} | `pg_datasentinel` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15" >}} | `pg_datasentinel_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-datasentinel` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_datasentinel_18 pg_datasentinel_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_datasentinel_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_datasentinel_18 pg_datasentinel_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_datasentinel_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_datasentinel_18 pg_datasentinel_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_datasentinel_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_datasentinel_18 pg_datasentinel_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 34.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_datasentinel_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_datasentinel_18 pg_datasentinel_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_datasentinel_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_datasentinel_18 pg_datasentinel_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 35.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_datasentinel_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 58.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 58.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 59.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 59.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 63.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 63.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 61.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-datasentinel postgresql-18-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 62.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-18-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_datasentinel_17 pg_datasentinel_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_datasentinel_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_datasentinel_17 pg_datasentinel_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_datasentinel_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_datasentinel_17 pg_datasentinel_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_datasentinel_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_datasentinel_17 pg_datasentinel_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 34.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_datasentinel_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_datasentinel_17 pg_datasentinel_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_datasentinel_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_datasentinel_17 pg_datasentinel_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 35.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_datasentinel_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 58.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 58.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 59.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 59.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 71.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 72.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 61.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-datasentinel postgresql-17-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 62.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-17-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_datasentinel_16 pg_datasentinel_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_datasentinel_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_datasentinel_16 pg_datasentinel_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_datasentinel_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_datasentinel_16 pg_datasentinel_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_datasentinel_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_datasentinel_16 pg_datasentinel_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 34.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_datasentinel_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_datasentinel_16 pg_datasentinel_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_datasentinel_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_datasentinel_16 pg_datasentinel_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 35.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_datasentinel_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 58.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 58.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 58.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 59.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 71.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 72.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 61.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-datasentinel postgresql-16-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 62.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-16-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_datasentinel_15 pg_datasentinel_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 34.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_datasentinel_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_datasentinel_15 pg_datasentinel_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 34.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_datasentinel_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_datasentinel_15 pg_datasentinel_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_datasentinel_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_datasentinel_15 pg_datasentinel_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_datasentinel_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_datasentinel_15 pg_datasentinel_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 35.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_datasentinel_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_datasentinel_15 pg_datasentinel_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_datasentinel_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 59.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 59.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 59.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 59.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 71.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 72.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 61.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-datasentinel postgresql-15-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 62.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-datasentinel/postgresql-15-pg-datasentinel_1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_datasentinel` using `pig build`:

```bash
pig build pkg pg_datasentinel         # build RPM / DEB packages
```


## Install

You can install `pg_datasentinel` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_datasentinel;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_datasentinel -v 18  # PG 18
pig ext install -y pg_datasentinel -v 17  # PG 17
pig ext install -y pg_datasentinel -v 16  # PG 16
pig ext install -y pg_datasentinel -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_datasentinel_18       # PG 18
dnf install -y pg_datasentinel_17       # PG 17
dnf install -y pg_datasentinel_16       # PG 16
dnf install -y pg_datasentinel_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-datasentinel   # PG 18
apt install -y postgresql-17-pg-datasentinel   # PG 17
apt install -y postgresql-16-pg-datasentinel   # PG 16
apt install -y postgresql-15-pg-datasentinel   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_datasentinel';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_datasentinel;
```
