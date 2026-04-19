---
title: "pg_stat_ch"
linkTitle: "pg_stat_ch"
description: "Export PostgreSQL query telemetry to ClickHouse"
weight: 6020
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ClickHouse/pg_stat_ch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ClickHouse/pg_stat_ch</div>
    <div class="ext-card__desc">https://github.com/ClickHouse/pg_stat_ch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_stat_ch-0.3.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_stat_ch-0.3.6.tar.gz</div>
    <div class="ext-card__desc">pg_stat_ch-0.3.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stat_ch`**](/ext/e/pg_stat_ch) | `0.3.6` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6020  | [**`pg_stat_ch`**](/ext/e/pg_stat_ch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_tracing`](/ext/e/pg_tracing) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`powa`](/ext/e/powa) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> release 0.3.6; SQL v0.1


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.6` | {{< pgvers "18,17,16" >}} | `pg_stat_ch` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.6` | {{< pgvers "18,17,16" >}} | `pg_stat_ch_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.6` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-stat-ch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | AVAIL PIGSTY 0.3.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el9.x86_64 18 pg_stat_ch_18 pg_stat_ch_18-0.3.6-1PIGSTY.el9.x86_64.rpm pigsty 0.3.6 871.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_ch_18-0.3.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_stat_ch_18 pg_stat_ch_18-0.3.6-1PIGSTY.el9.aarch64.rpm pigsty 0.3.6 826.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_ch_18-0.3.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_stat_ch_18 pg_stat_ch_18-0.3.6-1PIGSTY.el10.x86_64.rpm pigsty 0.3.6 819.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_ch_18-0.3.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_stat_ch_18 pg_stat_ch_18-0.3.6-1PIGSTY.el10.aarch64.rpm pigsty 0.3.6 773.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_ch_18-0.3.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~bookworm_amd64.deb pigsty 0.3.6 720.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~bookworm_arm64.deb pigsty 0.3.6 649.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~trixie_amd64.deb pigsty 0.3.6 731.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~trixie_arm64.deb pigsty 0.3.6 656.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~jammy_amd64.deb pigsty 0.3.6 5.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~jammy_arm64.deb pigsty 0.3.6 5.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~noble_amd64.deb pigsty 0.3.6 716.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-stat-ch postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~noble_arm64.deb pigsty 0.3.6 683.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-ch/postgresql-18-pg-stat-ch_0.3.6-1PIGSTY~noble_arm64.deb
@ el9.x86_64 17 pg_stat_ch_17 pg_stat_ch_17-0.3.6-1PIGSTY.el9.x86_64.rpm pigsty 0.3.6 871.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_ch_17-0.3.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_stat_ch_17 pg_stat_ch_17-0.3.6-1PIGSTY.el9.aarch64.rpm pigsty 0.3.6 826.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_ch_17-0.3.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_stat_ch_17 pg_stat_ch_17-0.3.6-1PIGSTY.el10.x86_64.rpm pigsty 0.3.6 822.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_ch_17-0.3.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_stat_ch_17 pg_stat_ch_17-0.3.6-1PIGSTY.el10.aarch64.rpm pigsty 0.3.6 773.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_ch_17-0.3.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~bookworm_amd64.deb pigsty 0.3.6 719.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~bookworm_arm64.deb pigsty 0.3.6 648.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~trixie_amd64.deb pigsty 0.3.6 730.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~trixie_arm64.deb pigsty 0.3.6 655.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~jammy_amd64.deb pigsty 0.3.6 5.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~jammy_arm64.deb pigsty 0.3.6 5.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~noble_amd64.deb pigsty 0.3.6 716.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-stat-ch postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~noble_arm64.deb pigsty 0.3.6 683.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-ch/postgresql-17-pg-stat-ch_0.3.6-1PIGSTY~noble_arm64.deb
@ el9.x86_64 16 pg_stat_ch_16 pg_stat_ch_16-0.3.6-1PIGSTY.el9.x86_64.rpm pigsty 0.3.6 871.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_ch_16-0.3.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_stat_ch_16 pg_stat_ch_16-0.3.6-1PIGSTY.el9.aarch64.rpm pigsty 0.3.6 828.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_ch_16-0.3.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_stat_ch_16 pg_stat_ch_16-0.3.6-1PIGSTY.el10.x86_64.rpm pigsty 0.3.6 822.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_ch_16-0.3.6-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_stat_ch_16 pg_stat_ch_16-0.3.6-1PIGSTY.el10.aarch64.rpm pigsty 0.3.6 773.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_ch_16-0.3.6-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~bookworm_amd64.deb pigsty 0.3.6 719.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~bookworm_arm64.deb pigsty 0.3.6 649.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~trixie_amd64.deb pigsty 0.3.6 729.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~trixie_arm64.deb pigsty 0.3.6 656.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~jammy_amd64.deb pigsty 0.3.6 5.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~jammy_arm64.deb pigsty 0.3.6 5.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~noble_amd64.deb pigsty 0.3.6 716.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-stat-ch postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~noble_arm64.deb pigsty 0.3.6 681.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-ch/postgresql-16-pg-stat-ch_0.3.6-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_stat_ch` using `pig build`:

```bash
pig build pkg pg_stat_ch         # build RPM / DEB packages
```


## Install

You can install `pg_stat_ch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_stat_ch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_stat_ch -v 18  # PG 18
pig ext install -y pg_stat_ch -v 17  # PG 17
pig ext install -y pg_stat_ch -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_stat_ch_18       # PG 18
dnf install -y pg_stat_ch_17       # PG 17
dnf install -y pg_stat_ch_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-stat-ch   # PG 18
apt install -y postgresql-17-pg-stat-ch   # PG 17
apt install -y postgresql-16-pg-stat-ch   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_stat_ch';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_stat_ch;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION pg_stat_ch;
> SELECT pg_stat_ch_version();
> SELECT * FROM pg_stat_ch_stats();
> ```
>
> Sources: [README](https://github.com/ClickHouse/pg_stat_ch), [Blog post](https://clickhouse.com/blog/pg_stat_ch-postgres-extension-stats-to-clickhouse)

`pg_stat_ch` captures per-query execution telemetry in PostgreSQL and exports raw events to ClickHouse in real time. The upstream project contrasts this with `pg_stat_statements`: instead of aggregating inside PostgreSQL, it sends raw events to ClickHouse for downstream analysis.

## Architecture

The README describes a single pipeline:

```text
PostgreSQL hooks -> shared memory queue -> background worker -> ClickHouse
```

Design goals called out upstream include:

- no network I/O on the query path
- bounded memory via a fixed-size ring buffer
- raw event export instead of local aggregation
- graceful degradation when the queue overflows or ClickHouse is unavailable

## Setup

The extension must be preloaded and configured with ClickHouse connection settings:

```ini
shared_preload_libraries = 'pg_stat_ch'
track_io_timing = on

pg_stat_ch.clickhouse_host = 'localhost'
pg_stat_ch.clickhouse_port = 9000
pg_stat_ch.clickhouse_database = 'pg_stat_ch'
pg_stat_ch.clickhouse_use_tls = on
pg_stat_ch.clickhouse_skip_tls_verify = off
```

After PostgreSQL restart and ClickHouse schema setup:

```sql
CREATE EXTENSION pg_stat_ch;
```

## SQL API

The README documents these SQL functions:

- `pg_stat_ch_version()`
- `pg_stat_ch_stats()`
- `pg_stat_ch_reset()`

`pg_stat_ch_stats()` exposes queue and exporter counters so you can verify that events are being captured and flushed.

## What Gets Captured

The current README lists support for:

- query timing and row counts
- buffer usage and WAL usage
- CPU time
- DML, DDL, and utility statements
- SQLSTATE and error levels
- JIT instrumentation on PostgreSQL 15+
- parallel worker statistics on PostgreSQL 18+
- client context such as application name and client IP

The project currently states full support for PostgreSQL 16, 17, and 18.
