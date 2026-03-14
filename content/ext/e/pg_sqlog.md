---
title: "pg_sqlog"
linkTitle: "pg_sqlog"
description: "Provide SQL interface to logs"
weight: 6500
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/kouber/pg_sqlog">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">kouber/pg_sqlog</div>
    <div class="ext-card__desc">https://github.com/kouber/pg_sqlog</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_sqlog-1.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_sqlog-1.6.tar.gz</div>
    <div class="ext-card__desc">pg_sqlog-1.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_sqlog`**](/ext/e/pg_sqlog) | `1.6` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6500  | [**`pg_sqlog`**](/ext/e/pg_sqlog) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `sqlog` |
{.ext-table}

| **Related** | [`file_fdw`](/ext/e/file_fdw) [`pg_profile`](/ext/e/pg_profile) [`pg_tracing`](/ext/e/pg_tracing) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_store_plans`](/ext/e/pg_store_plans) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require certain params


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `pg_sqlog` | `file_fdw` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `pg_sqlog_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-sqlog` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el8.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el9.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el9.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el10.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el10.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| d12.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| d12.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| d13.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| d13.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| u22.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| u22.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| u24.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| u24.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
@ el8.x86_64 18 pg_sqlog_18 pg_sqlog_18-1.6-1PIGSTY.el8.x86_64.rpm pigsty 1.6 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sqlog_18-1.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_sqlog_18 pg_sqlog_18-1.6-1PIGSTY.el8.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sqlog_18-1.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_sqlog_18 pg_sqlog_18-1.6-1PIGSTY.el9.x86_64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sqlog_18-1.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_sqlog_18 pg_sqlog_18-1.6-1PIGSTY.el9.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sqlog_18-1.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_sqlog_18 pg_sqlog_18-1.6-1PIGSTY.el10.x86_64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sqlog_18-1.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_sqlog_18 pg_sqlog_18-1.6-1PIGSTY.el10.aarch64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sqlog_18-1.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-sqlog postgresql-18-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-18-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_sqlog_17 pg_sqlog_17-1.6-1PIGSTY.el8.x86_64.rpm pigsty 1.6 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sqlog_17-1.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_sqlog_17 pg_sqlog_17-1.6-1PIGSTY.el8.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sqlog_17-1.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_sqlog_17 pg_sqlog_17-1.6-1PIGSTY.el9.x86_64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sqlog_17-1.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_sqlog_17 pg_sqlog_17-1.6-1PIGSTY.el9.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sqlog_17-1.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_sqlog_17 pg_sqlog_17-1.6-1PIGSTY.el10.x86_64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sqlog_17-1.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_sqlog_17 pg_sqlog_17-1.6-1PIGSTY.el10.aarch64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sqlog_17-1.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-sqlog postgresql-17-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-17-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_sqlog_16 pg_sqlog_16-1.6-1PIGSTY.el8.x86_64.rpm pigsty 1.6 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sqlog_16-1.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_sqlog_16 pg_sqlog_16-1.6-1PIGSTY.el8.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sqlog_16-1.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_sqlog_16 pg_sqlog_16-1.6-1PIGSTY.el9.x86_64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sqlog_16-1.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_sqlog_16 pg_sqlog_16-1.6-1PIGSTY.el9.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sqlog_16-1.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_sqlog_16 pg_sqlog_16-1.6-1PIGSTY.el10.x86_64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sqlog_16-1.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_sqlog_16 pg_sqlog_16-1.6-1PIGSTY.el10.aarch64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sqlog_16-1.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-sqlog postgresql-16-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-16-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_sqlog_15 pg_sqlog_15-1.6-1PIGSTY.el8.x86_64.rpm pigsty 1.6 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sqlog_15-1.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_sqlog_15 pg_sqlog_15-1.6-1PIGSTY.el8.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sqlog_15-1.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_sqlog_15 pg_sqlog_15-1.6-1PIGSTY.el9.x86_64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sqlog_15-1.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_sqlog_15 pg_sqlog_15-1.6-1PIGSTY.el9.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sqlog_15-1.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_sqlog_15 pg_sqlog_15-1.6-1PIGSTY.el10.x86_64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sqlog_15-1.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_sqlog_15 pg_sqlog_15-1.6-1PIGSTY.el10.aarch64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sqlog_15-1.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-sqlog postgresql-15-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-15-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_sqlog_14 pg_sqlog_14-1.6-1PIGSTY.el8.x86_64.rpm pigsty 1.6 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sqlog_14-1.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_sqlog_14 pg_sqlog_14-1.6-1PIGSTY.el8.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sqlog_14-1.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_sqlog_14 pg_sqlog_14-1.6-1PIGSTY.el9.x86_64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sqlog_14-1.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_sqlog_14 pg_sqlog_14-1.6-1PIGSTY.el9.aarch64.rpm pigsty 1.6 15.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sqlog_14-1.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_sqlog_14 pg_sqlog_14-1.6-1PIGSTY.el10.x86_64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sqlog_14-1.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_sqlog_14 pg_sqlog_14-1.6-1PIGSTY.el10.aarch64.rpm pigsty 1.6 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sqlog_14-1.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb pigsty 1.6 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-sqlog postgresql-14-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb pigsty 1.6 9.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sqlog/postgresql-14-pg-sqlog_1.6-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_sqlog` using `pig build`:

```bash
pig build pkg pg_sqlog         # build RPM / DEB packages
```


## Install

You can install `pg_sqlog` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_sqlog;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_sqlog -v 18  # PG 18
pig ext install -y pg_sqlog -v 17  # PG 17
pig ext install -y pg_sqlog -v 16  # PG 16
pig ext install -y pg_sqlog -v 15  # PG 15
pig ext install -y pg_sqlog -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_sqlog_18       # PG 18
dnf install -y pg_sqlog_17       # PG 17
dnf install -y pg_sqlog_16       # PG 16
dnf install -y pg_sqlog_15       # PG 15
dnf install -y pg_sqlog_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-sqlog   # PG 18
apt install -y postgresql-17-pg-sqlog   # PG 17
apt install -y postgresql-16-pg-sqlog   # PG 16
apt install -y postgresql-15-pg-sqlog   # PG 15
apt install -y postgresql-14-pg-sqlog   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_sqlog CASCADE;  -- requires: file_fdw
```



## Usage

> [pg_sqlog: access PostgreSQL CSV logs via SQL](https://github.com/kouber/pg_sqlog)

pg_sqlog provides a SQL interface for querying PostgreSQL CSV log files using a foreign table backed by `file_fdw`.

### Querying Logs

```sql
-- Current day's log
SELECT * FROM sqlog.log();

-- Specific day's log
SELECT * FROM sqlog.log('yesterday');
SELECT * FROM sqlog.log('2024-01-15');

-- Error summary
SELECT error_severity, COUNT(*) FROM sqlog.log() GROUP BY 1;
```

### Slow Query Analysis

```sql
-- Top 3 slowest query patterns
SELECT
  AVG(sqlog.duration(message)) AS avg_duration,
  COUNT(*) AS count,
  sqlog.preparable_query(message) AS query_pattern
FROM sqlog.log()
WHERE message ~ '^duration'
GROUP BY 3
ORDER BY 1 DESC
LIMIT 3;

-- Query summary with timing
SELECT
  log_time::time,
  sqlog.duration(message),
  sqlog.summary(message)
FROM sqlog.log('yesterday')
WHERE message ~ '^duration';
```

### Functions

| Function | Description |
|----------|-------------|
| `sqlog.log([timestamp])` | Returns log contents for a given day |
| `sqlog.set_date([timestamp])` | Set the date for `sqlog.log` table queries |
| `sqlog.duration(text)` | Extract query duration from message (ms) |
| `sqlog.preparable_query(text)` | Replace arguments with `?` for grouping |
| `sqlog.summary(text, int, int)` | Strip metadata, show first/last N chars |
| `sqlog.temporary_file_size(text)` | Extract temp file size from message |
| `sqlog.autovacuum([timestamp])` | Autovacuum report for a given day |
| `sqlog.autoanalyze([timestamp])` | Autoanalyze report for a given day |

### Autovacuum Reports

```sql
SELECT * FROM sqlog.autovacuum() LIMIT 5;
SELECT * FROM sqlog.autoanalyze() LIMIT 5;
```

### Prerequisites

Required `postgresql.conf` settings:

```
log_destination = 'syslog,csvlog'
log_filename = 'postgresql.%F'
logging_collector = 'on'
log_rotation_age = '1d'
log_rotation_size = 0
log_truncate_on_rotation = 'on'
log_min_duration_statement = 1000
```
