---
title: "timeseries"
linkTitle: "timeseries"
description: "Convenience API for time series stack"
weight: 1020
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ChuckHend/pg_timeseries">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ChuckHend/pg_timeseries</div>
    <div class="ext-card__desc">https://github.com/ChuckHend/pg_timeseries</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_timeseries-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_timeseries-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_timeseries-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_timeseries`**](/ext/e/timeseries) | `0.2.0` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1020  | [**`timeseries`**](/ext/e/timeseries) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_partman`](/ext/e/pg_partman) [`timescaledb`](/ext/e/timescaledb) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`table_version`](/ext/e/table_version) [`pg_task`](/ext/e/pg_task) [`pg_later`](/ext/e/pg_later) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_timeseries` | `pg_cron`, `pg_partman` |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_timeseries_$v` | `pg_cron_$v`, `pg_partman_$v` |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-timeseries` | `postgresql-$v-cron`, `postgresql-$v-partman` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
@ el8.x86_64 18 pg_timeseries_18 pg_timeseries_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_timeseries_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_timeseries_18 pg_timeseries_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_timeseries_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_timeseries_18 pg_timeseries_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_timeseries_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_timeseries_18 pg_timeseries_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_timeseries_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_timeseries_18 pg_timeseries_18-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_timeseries_18-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_timeseries_18 pg_timeseries_18-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_timeseries_18-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-timeseries postgresql-18-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-18-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_timeseries_17 pg_timeseries_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_timeseries_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_timeseries_17 pg_timeseries_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_timeseries_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_timeseries_17 pg_timeseries_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_timeseries_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_timeseries_17 pg_timeseries_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_timeseries_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_timeseries_17 pg_timeseries_17-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_timeseries_17-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_timeseries_17 pg_timeseries_17-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_timeseries_17-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-timeseries postgresql-17-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-17-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_timeseries_16 pg_timeseries_16-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_timeseries_16-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_timeseries_16 pg_timeseries_16-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_timeseries_16-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_timeseries_16 pg_timeseries_16-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_timeseries_16-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_timeseries_16 pg_timeseries_16-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_timeseries_16-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_timeseries_16 pg_timeseries_16-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_timeseries_16-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_timeseries_16 pg_timeseries_16-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_timeseries_16-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-timeseries postgresql-16-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-16-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_timeseries_15 pg_timeseries_15-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_timeseries_15-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_timeseries_15 pg_timeseries_15-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_timeseries_15-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_timeseries_15 pg_timeseries_15-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_timeseries_15-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_timeseries_15 pg_timeseries_15-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_timeseries_15-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_timeseries_15 pg_timeseries_15-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_timeseries_15-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_timeseries_15 pg_timeseries_15-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_timeseries_15-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-timeseries postgresql-15-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-15-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_timeseries_14 pg_timeseries_14-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_timeseries_14-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_timeseries_14 pg_timeseries_14-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_timeseries_14-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_timeseries_14 pg_timeseries_14-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_timeseries_14-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_timeseries_14 pg_timeseries_14-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_timeseries_14-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_timeseries_14 pg_timeseries_14-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_timeseries_14-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_timeseries_14 pg_timeseries_14-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_timeseries_14-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-timeseries postgresql-14-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-timeseries/postgresql-14-pg-timeseries_0.2.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_timeseries` using `pig build`:

```bash
pig build pkg pg_timeseries         # build RPM / DEB packages
```


## Install

You can install `pg_timeseries` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_timeseries;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_timeseries -v 18  # PG 18
pig ext install -y pg_timeseries -v 17  # PG 17
pig ext install -y pg_timeseries -v 16  # PG 16
pig ext install -y pg_timeseries -v 15  # PG 15
pig ext install -y pg_timeseries -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_timeseries_18       # PG 18
dnf install -y pg_timeseries_17       # PG 17
dnf install -y pg_timeseries_16       # PG 16
dnf install -y pg_timeseries_15       # PG 15
dnf install -y pg_timeseries_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-timeseries   # PG 18
apt install -y postgresql-17-pg-timeseries   # PG 17
apt install -y postgresql-16-pg-timeseries   # PG 16
apt install -y postgresql-15-pg-timeseries   # PG 15
apt install -y postgresql-14-pg-timeseries   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION timeseries CASCADE;  -- requires: pg_cron, pg_partman
```



## Usage

> [pg_timeseries: Convenience API for time series stack](https://github.com/ChuckHend/pg_timeseries)

This extension provides a cohesive user experience around the creation, maintenance, and use of time-series tables.

### Getting Started

Assuming you already have a partitioned table created, simply call the `enable_ts_table` function with your table name.

```sql
CREATE EXTENSION timeseries CASCADE;

SELECT enable_ts_table('sensor_readings');
```

With this one call, several things will happen:

  * The table will be restructured as a series of partitions using PostgreSQL's [native PARTITION features](https://www.postgresql.org/docs/current/ddl-partitioning.html)
  * Each partition covers a particular range of time (one week by default)
  * New partitions will be created for some time in the future (one month by default)
  * Once an hour, a maintenance job will create any missing partitions as well as needed future ones


## Using Your Tables

### Indexes

The time-series tables you create start out life as little more than typical [partitioned PostgreSQL tables](https://www.postgresql.org/docs/current/ddl-partitioning.html). All of PostgreSQL's existing functionality will "just work" with them.

[Traditional B-Tree indexes](https://www.postgresql.org/docs/current/btree-intro.html) work well for time-series data, but you may wish to benchmark [BRIN indexes](https://www.postgresql.org/docs/current/brin-intro.html) as well, as they may perform better in specific query scenarios (often queries with _many_ results). Start with B-Tree if you don't anticipate more than a million records in each partition (by default, partitions are one week long).

### Partition Sizing

Because calculating the total size of partitioned tables can be tedious, this extension provides several easy-to-use views surfacing this information.

To examine the table (data), index, and total size for each of your partitions, query the time-series partition information view, `ts_part_info`. A general rule of thumb is that each partition should be able to fit within roughly one quarter of your available memory.

### Retention

Call `set_ts_retention_policy` with your time-series table and an interval (say, `'90 days'`) to establish a retention policy. Once an hour, any partitions falling entirely outside the retention window will be dropped. Use `clear_ts_retention_policy` to revert to the default behavior (infinite retention). Each of these functions will return the previous retention policy when called.

### Compression

By calling `set_ts_compression_policy` on a time-series table with an appropriate interval (perhaps `'1 month'`), this extension will compress partitions (using a columnar storage method) older than the specified interval, once an hour. A function is also provided for clearing any existing policy (existing partitions will not be decompressed, however).

The compression features depend on the [citus](https://github.com/citusdata/citus/tree/main) and [citus_columnar](https://github.com/citusdata/citus/tree/main/src/backend/columnar) extensions:

```sql
CREATE EXTENSION citus;
CREATE EXTENSION citus_columnar;
```


## Analytics Helpers

### `first` and `last`

These two functions help clean up the syntax of a fairly common pattern: a query is grouped by one dimension, but a user wants to know what the first or last row in a group is when ordered by a _different_ dimension.

```sql
SELECT machine_id,
       last(cpu_util, recorded_at)
FROM events
GROUP BY machine_id;
```

### `date_bin_table`

This function automates the tedium of aligning time-series values to a given width, or "stride", and makes sure to include NULL rows for any time periods where the source table has no data points.

```sql
SELECT * FROM date_bin_table(NULL::target_table, '1 hour', '[2024-02-01 00:00, 2024-02-02 15:00]');
```

The output of this query will differ from simply hitting the target table directly in three ways:

  * Rows will be sorted by time, ascending
  * The time column's values will be binned to the provided width
  * Extra rows will be added for periods with no data. They will include the time stamp for that bin and NULL in all other columns

### `make_view_incremental`

This function accepts a view and converts it into a materialized view which is kept up-to-date after every modification. This removes the need for users to pick between always up-to-date `VIEW`s and having to call `REFRESH` on `MATERIALIZED VIEW`s.

The underlying functionality is provided by [a fork](https://github.com/ChuckHend/pg_ivm) of [`pg_ivm`](https://github.com/sraoss/pg_ivm). Enable the `pg_ivm` extension if you want to use this feature:

```sql
CREATE EXTENSION pg_ivm;
```


## Requirements

* [pg_cron](https://github.com/citusdata/pg_cron)
* [pg_partman](https://github.com/pgpartman/pg_partman)

### Optional Dependencies

* [pg_ivm](https://github.com/sraoss/pg_ivm) — for incremental materialized views
* [Citus & Citus Columnar](https://github.com/citusdata/citus) — for compression features
