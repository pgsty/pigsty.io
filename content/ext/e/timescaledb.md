---
title: "timescaledb"
linkTitle: "timescaledb"
description: "Enables scalable inserts and complex queries for time-series data"
weight: 1000
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/timescale/timescaledb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">timescale/timescaledb</div>
    <div class="ext-card__desc">https://github.com/timescale/timescaledb</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/timescaledb-2.32.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">timescaledb-2.32.1.tar.gz</div>
    <div class="ext-card__desc">timescaledb-2.32.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`timescaledb`**](/ext/e/timescaledb) | `2.32.1` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license timescale" href="/ext/license#timescale">Timescale</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1000  | [**`timescaledb`**](/ext/e/timescaledb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `timescaledb_information` |
{.ext-table .wide .expand}

| **Related** | [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`pg_stl`](/ext/e/pg_stl) [`pg_partman`](/ext/e/pg_partman) [`pg_ttl_index`](/ext/e/pg_ttl_index) [`citus`](/ext/e/citus) [`pg_cron`](/ext/e/pg_cron) [`pg_ivm`](/ext/e/pg_ivm) [`pg_incremental`](/ext/e/pg_incremental) [`pg_trickle`](/ext/e/pg_trickle) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> TimescaleDB 2.29 removes PostgreSQL 15 support


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.32.1` | {{< pgvers "18,17,16" >}} | `timescaledb` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.32.1` | {{< pgvers "18,17,16,15" >}} | `timescaledb-tsl_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.32.1` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-timescaledb-tsl` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 27 | AVAIL PIGSTY 2.32.1 46 | AVAIL PIGSTY 2.32.1 52 | AVAIL PIGSTY 2.28.3 42 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| el9.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 3 | AVAIL PIGSTY 2.32.1 3 | AVAIL PIGSTY 2.32.1 3 | AVAIL PIGSTY 2.28.3 1 |
| el9.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| el10.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 3 | AVAIL PIGSTY 2.32.1 3 | AVAIL PIGSTY 2.32.1 3 | AVAIL PIGSTY 2.28.3 1 |
| el10.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| d12.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| d12.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| d13.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| d13.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| u22.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| u22.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| u24.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| u24.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| u26.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
| u26.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.32.1 1 | AVAIL PIGSTY 2.28.3 1 |
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGSTY.el8.x86_64.rpm pigsty 2.32.1 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-tsl_18-2.32.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.32.1 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.32.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.32.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.32.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.31.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.31.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.31.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.30.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.30.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.30.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.30.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.30.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.30.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.29.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.29.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.29.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.29.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.29.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.29.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.28.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.3 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.28.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.28.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.28.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.28.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.28.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.28.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.28.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.27.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.2 770.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.27.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.27.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.1 769.9KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.27.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.27.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.0 768.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.27.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.26.4-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.4 753.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.26.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.26.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.3 750.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.26.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.26.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.2 751.5KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.26.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.26.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.1 750.5KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.26.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.26.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.0 749.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.26.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.25.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.2 730.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.25.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.25.1-2PGDG.rhel8.10.x86_64.rpm pgdg 2.25.1 727.5KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.25.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.25.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.0 726.5KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.25.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.23.1-1PGDG.rhel8.x86_64.rpm pgdg 2.23.1 733.6KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.23.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.23.0-1PGDG.rhel8.x86_64.rpm pgdg 2.23.0 733.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/timescaledb-tsl_18-2.23.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGSTY.el8.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-tsl_18-2.32.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGSTY.el9.x86_64.rpm pigsty 2.32.1 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-tsl_18-2.32.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGDG.rhel9.x86_64.rpm pgdg 2.32.1 1.5MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/timescaledb-tsl_18-2.32.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.0-1PGDG.rhel9.x86_64.rpm pgdg 2.32.0 1.5MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/timescaledb-tsl_18-2.32.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGSTY.el9.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-tsl_18-2.32.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGSTY.el10.x86_64.rpm pigsty 2.32.1 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-tsl_18-2.32.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGDG.rhel10.x86_64.rpm pgdg 2.32.1 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/timescaledb-tsl_18-2.32.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.0-1PGDG.rhel10.x86_64.rpm pgdg 2.32.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/timescaledb-tsl_18-2.32.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 timescaledb-tsl_18 timescaledb-tsl_18-2.32.1-1PGSTY.el10.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-tsl_18-2.32.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~bookworm_amd64.deb pigsty 2.32.1 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~bookworm_arm64.deb pigsty 2.32.1 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~trixie_amd64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~trixie_arm64.deb pigsty 2.32.1 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~jammy_amd64.deb pigsty 2.32.1 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~jammy_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~noble_amd64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~noble_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~resolute_amd64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-timescaledb-tsl postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~resolute_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-18-timescaledb-tsl_2.32.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGSTY.el8.x86_64.rpm pigsty 2.32.1 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-tsl_17-2.32.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.32.1 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.32.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.32.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.32.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.31.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.31.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.31.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.30.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.30.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.30.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.30.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.30.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.30.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.29.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.29.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.29.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.29.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.29.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.29.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.28.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.3 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.28.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.28.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.28.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.28.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.28.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.28.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.28.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.27.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.2 769.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.27.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.27.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.1 769.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.27.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.27.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.0 767.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.27.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.26.4-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.4 752.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.26.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.26.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.3 749.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.26.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.26.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.2 750.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.26.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.26.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.1 749.7KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.26.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.26.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.0 748.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.26.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.25.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.2 729.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.25.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.25.1-2PGDG.rhel8.10.x86_64.rpm pgdg 2.25.1 726.5KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.25.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.25.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.0 726.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.25.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.23.1-1PGDG.rhel8.x86_64.rpm pgdg 2.23.1 733.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.23.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.23.0-1PGDG.rhel8.x86_64.rpm pgdg 2.23.0 732.7KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.23.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.22.1-1PGDG.rhel8.x86_64.rpm pgdg 2.22.1 733.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.22.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.22.0-1PGDG.rhel8.x86_64.rpm pgdg 2.22.0 730.7KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.22.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.21.3-1PGDG.rhel8.x86_64.rpm pgdg 2.21.3 738.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.21.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.21.2-1PGDG.rhel8.x86_64.rpm pgdg 2.21.2 738.7KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.21.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.21.1-1PGDG.rhel8.x86_64.rpm pgdg 2.21.1 737.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.21.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.21.0-1PGDG.rhel8.x86_64.rpm pgdg 2.21.0 737.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.21.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.20.3-1PGDG.rhel8.x86_64.rpm pgdg 2.20.3 722.7KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.20.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.20.2-1PGDG.rhel8.x86_64.rpm pgdg 2.20.2 721.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.20.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.20.1-1PGDG.rhel8.x86_64.rpm pgdg 2.20.1 720.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.20.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.19.3-1PGDG.rhel8.x86_64.rpm pgdg 2.19.3 700.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.19.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.19.2-1PGDG.rhel8.x86_64.rpm pgdg 2.19.2 698.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.19.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.19.1-1PGDG.rhel8.x86_64.rpm pgdg 2.19.1 698.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.19.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.19.0-1PGDG.rhel8.x86_64.rpm pgdg 2.19.0 773.5KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.19.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.18.2-1PGDG.rhel8.x86_64.rpm pgdg 2.18.2 746.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.18.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.18.1-1PGDG.rhel8.x86_64.rpm pgdg 2.18.1 745.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.18.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.18.0-1PGDG.rhel8.x86_64.rpm pgdg 2.18.0 743.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.18.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.17.2-1PGDG.rhel8.x86_64.rpm pgdg 2.17.2 686.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.17.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.17.1-1PGDG.rhel8.x86_64.rpm pgdg 2.17.1 685.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.17.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.17.0-1PGDG.rhel8.x86_64.rpm pgdg 2.17.0 683.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/timescaledb-tsl_17-2.17.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGSTY.el8.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-tsl_17-2.32.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGSTY.el9.x86_64.rpm pigsty 2.32.1 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-tsl_17-2.32.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGDG.rhel9.x86_64.rpm pgdg 2.32.1 1.5MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/timescaledb-tsl_17-2.32.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.0-1PGDG.rhel9.x86_64.rpm pgdg 2.32.0 1.5MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/timescaledb-tsl_17-2.32.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGSTY.el9.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-tsl_17-2.32.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGSTY.el10.x86_64.rpm pigsty 2.32.1 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-tsl_17-2.32.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGDG.rhel10.x86_64.rpm pgdg 2.32.1 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/timescaledb-tsl_17-2.32.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.0-1PGDG.rhel10.x86_64.rpm pgdg 2.32.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/timescaledb-tsl_17-2.32.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 timescaledb-tsl_17 timescaledb-tsl_17-2.32.1-1PGSTY.el10.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-tsl_17-2.32.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~bookworm_amd64.deb pigsty 2.32.1 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~bookworm_arm64.deb pigsty 2.32.1 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~trixie_amd64.deb pigsty 2.32.1 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~trixie_arm64.deb pigsty 2.32.1 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~jammy_amd64.deb pigsty 2.32.1 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~jammy_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~noble_amd64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~noble_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~resolute_amd64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-timescaledb-tsl postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~resolute_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-17-timescaledb-tsl_2.32.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGSTY.el8.x86_64.rpm pigsty 2.32.1 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-tsl_16-2.32.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.32.1 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.32.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.32.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.32.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.31.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.31.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.31.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.30.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.30.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.30.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.30.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.30.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.30.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.30.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.29.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.29.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.29.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.29.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.29.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.29.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.29.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.28.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.3 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.28.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.28.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.28.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.28.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.28.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.28.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.28.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.27.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.2 769.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.27.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.27.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.1 769.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.27.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.27.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.0 768.1KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.27.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.26.4-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.4 753.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.26.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.26.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.3 750.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.26.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.26.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.2 750.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.26.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.26.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.1 749.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.26.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.26.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.0 748.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.26.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.25.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.2 729.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.25.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.25.1-2PGDG.rhel8.10.x86_64.rpm pgdg 2.25.1 726.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.25.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.25.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.0 725.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.25.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.23.1-1PGDG.rhel8.x86_64.rpm pgdg 2.23.1 732.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.23.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.23.0-1PGDG.rhel8.x86_64.rpm pgdg 2.23.0 731.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.23.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.22.1-1PGDG.rhel8.x86_64.rpm pgdg 2.22.1 732.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.22.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.22.0-1PGDG.rhel8.x86_64.rpm pgdg 2.22.0 730.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.22.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.21.3-1PGDG.rhel8.x86_64.rpm pgdg 2.21.3 737.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.21.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.21.2-1PGDG.rhel8.x86_64.rpm pgdg 2.21.2 736.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.21.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.21.1-1PGDG.rhel8.x86_64.rpm pgdg 2.21.1 735.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.21.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.21.0-1PGDG.rhel8.x86_64.rpm pgdg 2.21.0 735.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.21.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.20.3-1PGDG.rhel8.x86_64.rpm pgdg 2.20.3 721.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.20.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.20.2-1PGDG.rhel8.x86_64.rpm pgdg 2.20.2 720.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.20.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.20.1-1PGDG.rhel8.x86_64.rpm pgdg 2.20.1 719.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.20.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.19.3-1PGDG.rhel8.x86_64.rpm pgdg 2.19.3 699.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.19.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.19.2-1PGDG.rhel8.x86_64.rpm pgdg 2.19.2 698.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.19.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.19.1-1PGDG.rhel8.x86_64.rpm pgdg 2.19.1 697.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.19.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.19.0-1PGDG.rhel8.x86_64.rpm pgdg 2.19.0 772.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.19.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.18.2-1PGDG.rhel8.x86_64.rpm pgdg 2.18.2 745.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.18.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.18.1-1PGDG.rhel8.x86_64.rpm pgdg 2.18.1 744.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.18.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.18.0-1PGDG.rhel8.x86_64.rpm pgdg 2.18.0 742.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.18.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.17.2-1PGDG.rhel8.x86_64.rpm pgdg 2.17.2 686.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.17.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.17.1-1PGDG.rhel8.x86_64.rpm pgdg 2.17.1 686.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.17.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.17.0-1PGDG.rhel8.x86_64.rpm pgdg 2.17.0 683.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.17.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.16.0-1PGDG.rhel8.x86_64.rpm pgdg 2.16.0 641.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.16.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.15.3-1PGDG.rhel8.x86_64.rpm pgdg 2.15.3 638.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.15.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.15.2-1PGDG.rhel8.x86_64.rpm pgdg 2.15.2 637.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.15.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.15.0-1PGDG.rhel8.x86_64.rpm pgdg 2.15.0 635.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.15.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.13.1-1PGDG.rhel8.x86_64.rpm pgdg 2.13.1 758.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.13.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.13.0-1PGDG.rhel8.x86_64.rpm pgdg 2.13.0 757.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/timescaledb-tsl_16-2.13.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGSTY.el8.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-tsl_16-2.32.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGSTY.el9.x86_64.rpm pigsty 2.32.1 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-tsl_16-2.32.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGDG.rhel9.x86_64.rpm pgdg 2.32.1 1.5MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/timescaledb-tsl_16-2.32.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.0-1PGDG.rhel9.x86_64.rpm pgdg 2.32.0 1.5MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/timescaledb-tsl_16-2.32.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGSTY.el9.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-tsl_16-2.32.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGSTY.el10.x86_64.rpm pigsty 2.32.1 1.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-tsl_16-2.32.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGDG.rhel10.x86_64.rpm pgdg 2.32.1 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/timescaledb-tsl_16-2.32.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.0-1PGDG.rhel10.x86_64.rpm pgdg 2.32.0 1.4MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/timescaledb-tsl_16-2.32.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 timescaledb-tsl_16 timescaledb-tsl_16-2.32.1-1PGSTY.el10.aarch64.rpm pigsty 2.32.1 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-tsl_16-2.32.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~bookworm_amd64.deb pigsty 2.32.1 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~bookworm_arm64.deb pigsty 2.32.1 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~trixie_amd64.deb pigsty 2.32.1 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~trixie_arm64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~jammy_amd64.deb pigsty 2.32.1 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~jammy_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~noble_amd64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~noble_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~resolute_amd64.deb pigsty 2.32.1 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-timescaledb-tsl postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~resolute_arm64.deb pigsty 2.32.1 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-16-timescaledb-tsl_2.32.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.3-1PIGSTY.el8.x86_64.rpm pigsty 2.28.3 1.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-tsl_15-2.28.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.3 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.28.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.2 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.28.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.1 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.28.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.28.0 1.3MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.28.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.27.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.2 764.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.27.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.27.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.1 763.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.27.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.27.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.27.0 762.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.27.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.26.4-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.4 751.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.26.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.26.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.3 748.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.26.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.26.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.2 749.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.26.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.26.1-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.1 748.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.26.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.26.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.26.0 747.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.26.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.25.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.2 727.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.25.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.25.1-2PGDG.rhel8.10.x86_64.rpm pgdg 2.25.1 725.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.25.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.25.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.25.0 724.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.25.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.23.1-1PGDG.rhel8.x86_64.rpm pgdg 2.23.1 731.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.23.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.23.0-1PGDG.rhel8.x86_64.rpm pgdg 2.23.0 731.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.23.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.22.1-1PGDG.rhel8.x86_64.rpm pgdg 2.22.1 730.8KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.22.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.22.0-1PGDG.rhel8.x86_64.rpm pgdg 2.22.0 728.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.22.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.21.3-1PGDG.rhel8.x86_64.rpm pgdg 2.21.3 736.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.21.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.21.2-1PGDG.rhel8.x86_64.rpm pgdg 2.21.2 735.8KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.21.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.21.1-1PGDG.rhel8.x86_64.rpm pgdg 2.21.1 734.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.21.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.21.0-1PGDG.rhel8.x86_64.rpm pgdg 2.21.0 734.1KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.21.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.20.3-1PGDG.rhel8.x86_64.rpm pgdg 2.20.3 719.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.20.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.20.2-1PGDG.rhel8.x86_64.rpm pgdg 2.20.2 718.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.20.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.20.1-1PGDG.rhel8.x86_64.rpm pgdg 2.20.1 718.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.20.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.19.3-1PGDG.rhel8.x86_64.rpm pgdg 2.19.3 699.1KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.19.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.19.2-1PGDG.rhel8.x86_64.rpm pgdg 2.19.2 697.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.19.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.19.1-1PGDG.rhel8.x86_64.rpm pgdg 2.19.1 696.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.19.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.19.0-1PGDG.rhel8.x86_64.rpm pgdg 2.19.0 772.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.19.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.18.2-1PGDG.rhel8.x86_64.rpm pgdg 2.18.2 744.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.18.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.18.1-1PGDG.rhel8.x86_64.rpm pgdg 2.18.1 743.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.18.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.18.0-1PGDG.rhel8.x86_64.rpm pgdg 2.18.0 742.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.18.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.17.2-1PGDG.rhel8.x86_64.rpm pgdg 2.17.2 686.1KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.17.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.17.1-1PGDG.rhel8.x86_64.rpm pgdg 2.17.1 685.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.17.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.17.0-1PGDG.rhel8.x86_64.rpm pgdg 2.17.0 682.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.17.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.16.0-1PGDG.rhel8.x86_64.rpm pgdg 2.16.0 640.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.16.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.15.3-1PGDG.rhel8.x86_64.rpm pgdg 2.15.3 637.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.15.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.15.2-1PGDG.rhel8.x86_64.rpm pgdg 2.15.2 637.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.15.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.15.0-1PGDG.rhel8.x86_64.rpm pgdg 2.15.0 633.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.15.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.13.1-1PGDG.rhel8.x86_64.rpm pgdg 2.13.1 768.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/timescaledb-tsl_15-2.13.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.3-1PIGSTY.el8.aarch64.rpm pigsty 2.28.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-tsl_15-2.28.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.3-1PIGSTY.el9.x86_64.rpm pigsty 2.28.3 778.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-tsl_15-2.28.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.3-1PIGSTY.el9.aarch64.rpm pigsty 2.28.3 738.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-tsl_15-2.28.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.3-1PIGSTY.el10.x86_64.rpm pigsty 2.28.3 804.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-tsl_15-2.28.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 timescaledb-tsl_15 timescaledb-tsl_15-2.28.3-1PIGSTY.el10.aarch64.rpm pigsty 2.28.3 758.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-tsl_15-2.28.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~bookworm_amd64.deb pigsty 2.28.3 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~bookworm_arm64.deb pigsty 2.28.3 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~trixie_amd64.deb pigsty 2.28.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~trixie_arm64.deb pigsty 2.28.3 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~jammy_amd64.deb pigsty 2.28.3 810.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~jammy_arm64.deb pigsty 2.28.3 778.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~noble_amd64.deb pigsty 2.28.3 800.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~noble_arm64.deb pigsty 2.28.3 777.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~resolute_amd64.deb pigsty 2.28.3 804.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-timescaledb-tsl postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~resolute_arm64.deb pigsty 2.28.3 796.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-tsl/postgresql-15-timescaledb-tsl_2.28.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `timescaledb` using `pig build`:

```bash
pig build pkg timescaledb         # build RPM / DEB packages
```


## Install

You can install `timescaledb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install timescaledb;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y timescaledb -v 18  # PG 18
pig ext install -y timescaledb -v 17  # PG 17
pig ext install -y timescaledb -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y timescaledb-tsl_18       # PG 18
dnf install -y timescaledb-tsl_17       # PG 17
dnf install -y timescaledb-tsl_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-timescaledb-tsl   # PG 18
apt install -y postgresql-17-timescaledb-tsl   # PG 17
apt install -y postgresql-16-timescaledb-tsl   # PG 16
```


**Preload**:

```bash
shared_preload_libraries = 'timescaledb';
```


**Create Extension**:

```sql
CREATE EXTENSION timescaledb;
```

## Usage

Sources:

- [Official source](https://github.com/timescale/timescaledb/releases/tag/2.32.1)
- [Official source](https://github.com/timescale/timescaledb/blob/2.32.1/version.config)
- [Official source](https://github.com/timescale/timescaledb/blob/2.32.1/CHANGELOG.md)

- [TimescaleDB v2.30.2 README](https://github.com/timescale/timescaledb/blob/2.30.2/README.md)
- [TimescaleDB 2.29.0 release](https://github.com/timescale/timescaledb/releases/tag/2.29.0)
- [TimescaleDB 2.30.2 release](https://github.com/timescale/timescaledb/releases/tag/2.30.2)
- [Version 2.30.2 changelog](https://github.com/timescale/timescaledb/blob/2.30.2/CHANGELOG.md)
- [TimescaleDB v2.30.2 control file](https://github.com/timescale/timescaledb/blob/2.30.2/timescaledb.control.in)
- [CREATE TABLE API](https://www.tigerdata.com/docs/reference/timescaledb/hypertables/create_table/)
- [create_hypertable() API](https://www.tigerdata.com/docs/reference/timescaledb/hypertables/create_hypertable/)
- [Continuous aggregate API](https://www.tigerdata.com/docs/reference/timescaledb/continuous-aggregates/create_materialized_view/)
- [add_columnstore_policy() API](https://www.tigerdata.com/docs/reference/timescaledb/hypercore/add_columnstore_policy/)
- [TimescaleDB GUCs](https://www.tigerdata.com/docs/reference/timescaledb/configuration/gucs/)
- [2.32.0 release and compatibility limits](https://github.com/timescale/timescaledb/releases/tag/2.32.0)
- [2.32.0 version declaration](https://github.com/timescale/timescaledb/blob/2.32.0/version.config)
- [2.31 to 2.32 SQL upgrade](https://github.com/timescale/timescaledb/blob/2.32.0/sql/updates/2.31.0--2.32.0.sql)

`timescaledb` is a PostgreSQL extension for time-series and event analytics. The current docs emphasize `CREATE TABLE ... WITH (tsdb.hypertable)`, continuous aggregates, automation jobs, and moving chunks into the columnstore.

### Enable the Extension

Append `timescaledb` to the existing preload list and restart PostgreSQL before creating the extension. Version `2.30.2` supports PostgreSQL 16, 17, and 18.

```ini
shared_preload_libraries = 'timescaledb'
```

### Hypertables

```sql
CREATE EXTENSION timescaledb;

CREATE TABLE ts_test (
  ts timestamptz NOT NULL,
  id bigint,
  v integer
) WITH (
  tsdb.hypertable,
  tsdb.orderby = 'ts DESC'
);
```

To convert an existing PostgreSQL table, use the generalized hypertable API:

```sql
CREATE TABLE ts_existing (
  ts timestamptz NOT NULL,
  id bigint,
  v integer
);
SELECT create_hypertable('ts_existing', by_range('ts'));
```

- `CREATE TABLE ... WITH (tsdb.hypertable)` has been documented since TimescaleDB 2.20.0 and is the best-practice path for new hypertables.
- For TimescaleDB 2.23.0 and later, the first `TIMESTAMP` or `TIMESTAMPTZ` column is selected automatically as the partition column unless more than one candidate makes the choice ambiguous.
- `create_hypertable()` still works for converting existing tables.

### Continuous aggregates and jobs

```sql
CREATE MATERIALIZED VIEW ts_hourly
WITH (timescaledb.continuous) AS
SELECT time_bucket('1 hour', ts) AS bucket,
       count(*) AS cnt,
       avg(v)   AS avg_v
FROM ts_test
GROUP BY bucket;

SELECT add_continuous_aggregate_policy(
  'ts_hourly',
  start_offset => INTERVAL '3 hours',
  end_offset => INTERVAL '1 hour',
  schedule_interval => INTERVAL '1 hour'
);

```

- Continuous aggregates require `time_bucket(...)` on the hypertable's time dimension.
- The continuous aggregate `WITH` clause supports `timescaledb.materialized_only`; the current API default is `TRUE`, so real-time aggregation is not enabled unless configured otherwise.
- TimescaleDB 2.28.0 lets manual `refresh_continuous_aggregate()` calls run incrementally in batches. Use `buckets_per_batch`, `max_batches_per_execution`, and `refresh_newest_first` to break large manual refreshes into smaller work units.
- TimescaleDB 2.28.0 also allows adding a new generated aggregate column to an existing continuous aggregate with `ALTER MATERIALIZED VIEW ... ADD COLUMN ... GENERATED ALWAYS AS (...) STORED`; existing rows are `NULL` until refreshed.

### Columnstore

```sql
CREATE TABLE crypto_ticks (
  "time" timestamptz,
  symbol text,
  price double precision,
  day_volume numeric
) WITH (
  tsdb.hypertable,
  tsdb.segmentby = 'symbol',
  tsdb.orderby = 'time DESC'
);

CALL add_columnstore_policy('crypto_ticks', after => INTERVAL '60 days');
```

- `CREATE TABLE ... WITH (tsdb.hypertable)` enables columnstore by default unless `tsdb.columnstore = false`.
- `add_columnstore_policy()` replaces the older `add_compression_policy()` API and requires either `after` or `created_before`, not both.
- Bloom filters are enabled by default for new columnstore chunks. Existing chunks need recompression before they have bloom indexes.

### Relevant GUCs

```sql
SET timescaledb.enable_direct_compress_insert = on;
SET timescaledb.enable_cagg_rewrites = on;
SET timescaledb.enable_columnar_scan_filter_pushdown = on;
```

`timescaledb.enable_direct_compress_insert` and `timescaledb.enable_direct_compress_copy` enable tech-preview direct compression during ingestion. TimescaleDB 2.27.0 adds `timescaledb.enable_cagg_rewrites` and `timescaledb.cagg_rewrites_debug_info`, and documents `timescaledb.enable_columnar_scan_filter_pushdown` as enabled by default.

### Version 2.30.2 and Upgrades

- TimescaleDB 2.29 supports PostgreSQL 16, 17, and 18. PostgreSQL 15 support ended with the 2.28 line, so upgrade PostgreSQL before moving a PG15 database to 2.29.
- Version 2.29.0 adds `compact_chunk()` and a compaction policy for merging small columnstore batches, plus optimized DML chunk exclusion and small-`LIMIT` columnstore scans. Review the release notes before enabling compaction policies on existing workloads.
- The 2.29 line adds `alter_job(..., config_merge => ...)`, direct-compression and unordered-recompression controls, and concurrent refresh policies for hierarchical continuous aggregates.
- The 2.30 line adds `DeferredChunkAppend` for LIMIT queries and concurrent compaction DML. Version 2.30.2 fixes chunk-merge and compressed-query crashes, orphaned compressed chunks after schema removal, and non-deterministic text-collation handling. Granular-refresh option names now use the `timescaledb.cagg_granular_refresh_*` prefix; review any existing granular-refresh configuration.
- The control file marks `timescaledb` trusted and non-relocatable. The server library still has to be preloaded and PostgreSQL restarted according to the packaged deployment configuration.

Install the matching package, then use a fresh `psql -X` connection for the migration so startup commands do not load an older library first. Apply the update in each database and verify its SQL version:

```sql
ALTER EXTENSION timescaledb UPDATE TO '2.30.2';
SELECT extversion FROM pg_extension WHERE extname = 'timescaledb';
```

### Version 2.32.0 upgrade boundaries

The 2.32.0 release is compatible only up to PostgreSQL 18.6, 17.11 and 16.15. Upstream instructs users to reach TimescaleDB 2.32.1 before upgrading beyond those PostgreSQL minor versions; do not use 2.32.0 to approve an unrestricted PostgreSQL minor upgrade. Install matching extension files and restart PostgreSQL for the loader changes, then update each database's extension through its supported path.

This release checks database ownership before stopping or restarting background workers and runs the scheduler and telemetry jobs as the database owner. Review that role's privileges. It also fixes concurrent `UPDATE`/`DELETE` skipping rows under `READ COMMITTED`, missing final continuous-aggregate buckets, and compression crashes. Adaptive Integer Compression is enabled by default. The upgrade removes the internal `bloom1_contains` helper; application code should not depend on internal APIs.

```sql
ALTER EXTENSION timescaledb UPDATE TO '2.32.0';
SELECT extversion FROM pg_extension WHERE extname = 'timescaledb';
```

### Version 2.32.1

Upgrade TimescaleDB to 2.32.1 before moving PostgreSQL to 16.16, 17.12 or 18.7 and later minor versions. Earlier TimescaleDB patches can fail every scheduler job on those server versions. Version 2.32.1 also remains compatible with the preceding minor releases; it supersedes the 2.32.0 restriction above.

The release repairs job-crash backoff and commits inside `run_job`, and performs chunk/index/continuous-aggregate operations using the appropriate caller or owner instead of unnecessarily switching to the catalog owner. Ownership is checked before validating a unique index on a compressed chunk. Review application-role permissions and scheduled-job results after the upgrade.

Install matching files, follow the preload-library restart procedure, and use a fresh `psql -X` session in each database:

```sql
ALTER EXTENSION timescaledb UPDATE TO '2.32.1';
SELECT extversion FROM pg_extension WHERE extname = 'timescaledb';
```
