---
title: "pg_stl"
linkTitle: "pg_stl"
description: "Time series analysis functions for PostgreSQL"
weight: 1130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/nadyaloseva/pg_ts_analysis">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">nadyaloseva/pg_ts_analysis</div>
    <div class="ext-card__desc">https://github.com/nadyaloseva/pg_ts_analysis</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_stl-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_stl-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_stl-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stl`**](/ext/e/pg_stl) | `1.0.0` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1130  | [**`pg_stl`**](/ext/e/pg_stl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`timescaledb`](/ext/e/timescaledb) [`first_last_agg`](/ext/e/first_last_agg) [`extra_window_functions`](/ext/e/extra_window_functions) [`quantile`](/ext/e/quantile) [`tdigest`](/ext/e/tdigest) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> ACF, PACF, STL decomposition, and Holt-Winters forecasting.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "16,17,18" >}} | `pg_stl` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "16,17,18" >}} | `pg_stl_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "16,17,18" >}} | `postgresql-$v-pg-stl` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_stl_18 pg_stl_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stl_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_stl_18 pg_stl_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stl_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_stl_18 pg_stl_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stl_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_stl_18 pg_stl_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stl_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_stl_18 pg_stl_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stl_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_stl_18 pg_stl_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stl_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 24.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 24.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 24.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 25.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 25.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-stl postgresql-18-pg-stl_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 25.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stl/postgresql-18-pg-stl_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_stl_17 pg_stl_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stl_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_stl_17 pg_stl_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stl_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_stl_17 pg_stl_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stl_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_stl_17 pg_stl_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stl_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_stl_17 pg_stl_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stl_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_stl_17 pg_stl_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stl_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 24.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 24.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 26.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 25.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-stl postgresql-17-pg-stl_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 25.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stl/postgresql-17-pg-stl_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_stl_16 pg_stl_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stl_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_stl_16 pg_stl_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stl_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_stl_16 pg_stl_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stl_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_stl_16 pg_stl_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stl_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_stl_16 pg_stl_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stl_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_stl_16 pg_stl_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stl_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 24.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 24.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 26.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 25.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-stl postgresql-16-pg-stl_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 25.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stl/postgresql-16-pg-stl_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_stl` using `pig build`:

```bash
pig build pkg pg_stl         # build RPM / DEB packages
```


## Install

You can install `pg_stl` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_stl;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_stl -v 18  # PG 18
pig ext install -y pg_stl -v 17  # PG 17
pig ext install -y pg_stl -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_stl_18       # PG 18
dnf install -y pg_stl_17       # PG 17
dnf install -y pg_stl_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-stl   # PG 18
apt install -y postgresql-17-pg-stl   # PG 17
apt install -y postgresql-16-pg-stl   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_stl;
```




## Usage

Sources: [pg_ts_analysis README](https://github.com/nadyaloseva/pg_ts_analysis), [SQL definitions](https://github.com/nadyaloseva/pg_ts_analysis/blob/main/pg_stl--1.0.sql), [control file](https://github.com/nadyaloseva/pg_ts_analysis/blob/main/pg_stl.control).

`pg_stl` provides time-series analysis functions for PostgreSQL: autocorrelation, partial autocorrelation, STL decomposition, and Holt-Winters forecasting. The upstream README and SQL definitions target PostgreSQL 16+.

### Autocorrelation

`acf_array(data double precision[], lags integer)` returns autocorrelation values for lags `1..lags`:

```sql
CREATE EXTENSION pg_stl;

SELECT acf_array(
  array_agg(revenue ORDER BY date)::double precision[],
  28
)
FROM daily_sales;
```

The README describes using peaks at lags such as `7`, `14`, and `21` as a signal for weekly seasonality. The function returns `NULL` when the series is too short, `lags < 1`, or `lags >= n`.

### Partial Autocorrelation

`pacf_array(data double precision[], lags integer)` returns partial autocorrelation values using the Durbin-Levinson recursion:

```sql
WITH series AS (
  SELECT array_agg(value ORDER BY ts)::double precision[] AS values
  FROM measurements
)
SELECT
  unnest(acf_array(values, 20)) AS acf,
  unnest(pacf_array(values, 20)) AS pacf
FROM series;
```

Use PACF when you want the direct lag relationship after accounting for shorter lags.

### STL Decomposition

`stl_decompose` decomposes a series into trend, seasonal, and residual arrays:

```sql
WITH data AS (
  SELECT array_agg(revenue ORDER BY month)::double precision[] AS values
  FROM monthly_revenue
),
decomposed AS (
  SELECT (stl_decompose(values, 12)).*
  FROM data
)
SELECT
  unnest(trend) AS trend,
  unnest(seasonal) AS seasonal,
  unnest(residual) AS residual
FROM decomposed;
```

Signature from the SQL definition:

```sql
stl_decompose(
  y double precision[],
  period integer,
  seasonal integer DEFAULT 7,
  robust boolean DEFAULT true,
  trend integer DEFAULT 0,
  low_pass integer DEFAULT 0,
  inner_iter integer DEFAULT 2,
  outer_iter integer DEFAULT 0
) RETURNS stl_result
```

Use the convenience functions when only one component is needed:

```sql
SELECT stl_trend(values, 12) FROM series;
SELECT stl_seasonal(values, 12) FROM series;
SELECT stl_residual(values, 12) FROM series;
```

### Ordered Collection Helper

The SQL file also defines `stl_collect_ordered(tbl regclass, val text, ord text)` to collect a column into an ordered `double precision[]`:

```sql
SELECT stl_decompose(
  stl_collect_ordered('monthly_revenue'::regclass, 'revenue', 'month'),
  12
);
```

### Holt-Winters Forecasting

`holt_winters_predict(seasonal_type text, period_length int, start_data_array real[])` forecasts one seasonal cycle ahead. `seasonal_type` is `'mult'` for multiplicative seasonality or `'add'` for additive seasonality:

```sql
SELECT *
FROM holt_winters_predict(
  'mult',
  4,
  (SELECT array_agg(revenue ORDER BY date)::real[] FROM sales)
);
```

The SQL implementation chooses smoothing coefficients automatically: first by 500 random initializations, then by refinement in `0.001` steps to minimize squared error. The helper `holt_winters_mse(...)` is present as the error-calculation routine used by the predictor.

### Caveats

- `stl_decompose` expects a `double precision[]` with no `NULL` values.
- The README states the series length must be at least `2 * period`.
- `seasonal` must be an odd integer greater than or equal to `3`.
- Holt-Winters expects a `real[]` input and supports only `'mult'` and `'add'` seasonal types.
