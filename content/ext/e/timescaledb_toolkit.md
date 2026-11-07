---
title: "timescaledb_toolkit"
linkTitle: "timescaledb_toolkit"
description: "Library of analytical hyperfunctions, time-series pipelining, and other SQL utilities"
weight: 1010
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/timescale/timescaledb-toolkit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">timescale/timescaledb-toolkit</div>
    <div class="ext-card__desc">https://github.com/timescale/timescaledb-toolkit</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/timescaledb-toolkit-1.27.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">timescaledb-toolkit-1.27.0.tar.gz</div>
    <div class="ext-card__desc">timescaledb-toolkit-1.27.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`timescaledb_toolkit`**](/ext/e/timescaledb_toolkit) | `1.27.0` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license timescale" href="/ext/license#timescale">Timescale</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1010  | [**`timescaledb_toolkit`**](/ext/e/timescaledb_toolkit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`timescaledb`](/ext/e/timescaledb) [`timeseries`](/ext/e/timeseries) [`pg_stl`](/ext/e/pg_stl) [`first_last_agg`](/ext/e/first_last_agg) [`extra_window_functions`](/ext/e/extra_window_functions) [`quantile`](/ext/e/quantile) [`tdigest`](/ext/e/tdigest) [`topn`](/ext/e/topn) [`tablefunc`](/ext/e/tablefunc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> 1.27: PG15-18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.27.0` | {{< pgvers "15,16,17,18" >}} | `timescaledb_toolkit` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.27.0` | {{< pgvers "18,17,16,15" >}} | `timescaledb-toolkit_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.27.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-timescaledb-toolkit` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.19.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.19.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.19.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.19.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.19.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.19.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | AVAIL PIGSTY 1.27.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 timescaledb-toolkit_18 timescaledb-toolkit_18-1.27.0-1PGSTY.el8.x86_64.rpm pigsty 1.27.0 4.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-toolkit_18-1.27.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 timescaledb-toolkit_18 timescaledb-toolkit_18-1.27.0-1PGSTY.el8.aarch64.rpm pigsty 1.27.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-toolkit_18-1.27.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 timescaledb-toolkit_18 timescaledb-toolkit_18-1.27.0-1PGSTY.el9.x86_64.rpm pigsty 1.27.0 4.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-toolkit_18-1.27.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 timescaledb-toolkit_18 timescaledb-toolkit_18-1.27.0-1PGSTY.el9.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-toolkit_18-1.27.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 timescaledb-toolkit_18 timescaledb-toolkit_18-1.27.0-1PGSTY.el10.x86_64.rpm pigsty 1.27.0 4.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-toolkit_18-1.27.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 timescaledb-toolkit_18 timescaledb-toolkit_18-1.27.0-1PGSTY.el10.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-toolkit_18-1.27.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-timescaledb-toolkit postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-18-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 timescaledb-toolkit_17 timescaledb-toolkit_17-1.27.0-1PGSTY.el8.x86_64.rpm pigsty 1.27.0 4.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-toolkit_17-1.27.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 timescaledb-toolkit_17 timescaledb-toolkit_17-1.27.0-1PGSTY.el8.aarch64.rpm pigsty 1.27.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-toolkit_17-1.27.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 timescaledb-toolkit_17 timescaledb-toolkit_17-1.27.0-1PGSTY.el9.x86_64.rpm pigsty 1.27.0 4.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-toolkit_17-1.27.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 timescaledb-toolkit_17 timescaledb-toolkit_17-1.27.0-1PGSTY.el9.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-toolkit_17-1.27.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 timescaledb-toolkit_17 timescaledb-toolkit_17-1.27.0-1PGSTY.el10.x86_64.rpm pigsty 1.27.0 4.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-toolkit_17-1.27.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 timescaledb-toolkit_17 timescaledb-toolkit_17-1.27.0-1PGSTY.el10.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-toolkit_17-1.27.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-timescaledb-toolkit postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb pigsty 1.27.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-17-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 timescaledb-toolkit_16 timescaledb-toolkit_16-1.27.0-1PGSTY.el8.x86_64.rpm pigsty 1.27.0 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-toolkit_16-1.27.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 timescaledb-toolkit_16 timescaledb-toolkit_16-1.27.0-1PGSTY.el8.aarch64.rpm pigsty 1.27.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-toolkit_16-1.27.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 timescaledb-toolkit_16 timescaledb-toolkit_16-1.27.0-1PGSTY.el9.x86_64.rpm pigsty 1.27.0 4.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-toolkit_16-1.27.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 timescaledb-toolkit_16 timescaledb-toolkit_16-1.27.0-1PGSTY.el9.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-toolkit_16-1.27.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 timescaledb-toolkit_16 timescaledb-toolkit_16-1.27.0-1PGSTY.el10.x86_64.rpm pigsty 1.27.0 4.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-toolkit_16-1.27.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 timescaledb-toolkit_16 timescaledb-toolkit_16-1.27.0-1PGSTY.el10.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-toolkit_16-1.27.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-timescaledb-toolkit postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb pigsty 1.27.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-16-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 timescaledb-toolkit_15 timescaledb-toolkit_15-1.27.0-1PGSTY.el8.x86_64.rpm pigsty 1.27.0 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/timescaledb-toolkit_15-1.27.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 timescaledb-toolkit_15 timescaledb-toolkit_15-1.27.0-1PGSTY.el8.aarch64.rpm pigsty 1.27.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/timescaledb-toolkit_15-1.27.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 timescaledb-toolkit_15 timescaledb-toolkit_15-1.27.0-1PGSTY.el9.x86_64.rpm pigsty 1.27.0 4.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/timescaledb-toolkit_15-1.27.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 timescaledb-toolkit_15 timescaledb-toolkit_15-1.27.0-1PGSTY.el9.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/timescaledb-toolkit_15-1.27.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 timescaledb-toolkit_15 timescaledb-toolkit_15-1.27.0-1PGSTY.el10.x86_64.rpm pigsty 1.27.0 4.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/timescaledb-toolkit_15-1.27.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 timescaledb-toolkit_15 timescaledb-toolkit_15-1.27.0-1PGSTY.el10.aarch64.rpm pigsty 1.27.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/timescaledb-toolkit_15-1.27.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb pigsty 1.27.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb pigsty 1.27.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb pigsty 1.27.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb pigsty 1.27.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb pigsty 1.27.0 3.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-timescaledb-toolkit postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb pigsty 1.27.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/timescaledb-toolkit/postgresql-15-timescaledb-toolkit_1.27.0-1PGSTY~resolute_arm64.deb
@ d12.x86_64 14 postgresql-14-timescaledb-toolkit postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~bookworm_amd64.deb pigsty 1.19.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-timescaledb-toolkit postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~bookworm_arm64.deb pigsty 1.19.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/timescaledb-toolkit/postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~bookworm_arm64.deb
@ u22.x86_64 14 postgresql-14-timescaledb-toolkit postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~jammy_amd64.deb pigsty 1.19.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-timescaledb-toolkit postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~jammy_arm64.deb pigsty 1.19.0 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/timescaledb-toolkit/postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-timescaledb-toolkit postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~noble_amd64.deb pigsty 1.19.0 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-timescaledb-toolkit postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~noble_arm64.deb pigsty 1.19.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/timescaledb-toolkit/postgresql-14-timescaledb-toolkit_1.19.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `timescaledb_toolkit` using `pig build`:

```bash
pig build pkg timescaledb_toolkit         # build RPM / DEB packages
```


## Install

You can install `timescaledb_toolkit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install timescaledb_toolkit;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y timescaledb_toolkit -v 18  # PG 18
pig ext install -y timescaledb_toolkit -v 17  # PG 17
pig ext install -y timescaledb_toolkit -v 16  # PG 16
pig ext install -y timescaledb_toolkit -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y timescaledb-toolkit_18       # PG 18
dnf install -y timescaledb-toolkit_17       # PG 17
dnf install -y timescaledb-toolkit_16       # PG 16
dnf install -y timescaledb-toolkit_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-timescaledb-toolkit   # PG 18
apt install -y postgresql-17-timescaledb-toolkit   # PG 17
apt install -y postgresql-16-timescaledb-toolkit   # PG 16
apt install -y postgresql-15-timescaledb-toolkit   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION timescaledb_toolkit;
```

## Usage

Sources:

- [Documentation index](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/docs/README.md)
- [README](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/README.md)
- [Control](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/extension/timescaledb_toolkit.control)
- [Cargo version](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/extension/Cargo.toml)
- [Changelog](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/CHANGELOG.md)
- [Counter aggregates](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/docs/counter_agg.md)
- [Gauge aggregates](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/docs/gauge_agg.md)
- [UddSketch](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/docs/uddsketch.md)
- [Statistics](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/docs/stats_agg.md)
- [Timevector pipelines](https://github.com/timescale/timescaledb-toolkit/blob/1.27.0%2Bp2/docs/timeseries_pipeline_elements.md)
- [1.27.0+p2 release](https://github.com/timescale/timescaledb-toolkit/releases/tag/1.27.0%2Bp2)

TimescaleDB Toolkit provides specialized functions for time-series analytics using a **two-step aggregation pattern**. Most functions create intermediate representations that accessor functions then query, enabling efficient reuse and multiple analyses.

### Enablement and Compatibility

`timescaledb_toolkit` 1.27.0 is published under tag 1.27.0+p2; upstream CI covers PostgreSQL 16–18. After installing the matching library, enable it in each database:

```sql
CREATE EXTENSION timescaledb_toolkit;
```

The control file marks it trusted, permitting installation by a role with CREATE privilege on the database; shared preload is not required. Examples using `time_bucket` below also assume TimescaleDB is enabled. Upgrade existing installations with matching libraries and supplied SQL upgrade paths; experimental objects have no upgrade compatibility guarantee.

### Approximate Analytics

#### HyperLogLog - Distinct Count Estimation

Probabilistic distinct counting with configurable precision for high-cardinality datasets.

```sql
-- Estimate unique users per day
SELECT
    date_trunc('day', timestamp) as day,
    distinct_count(hyperloglog(64, user_id)) as unique_users
FROM events
GROUP BY day;

-- Combine counts across partitions
SELECT distinct_count(rollup(hll))
FROM (SELECT hyperloglog(32, session_id) as hll FROM events_2023
      UNION ALL
      SELECT hyperloglog(32, session_id) FROM events_2024) t;
```

#### T-Digest - Quantile Approximation

High-accuracy percentile estimation optimized for tail quantiles (P95, P99).

```sql
-- Track response time percentiles
SELECT
    service_name,
    approx_percentile(0.50, tdigest(100, response_time)) as p50,
    approx_percentile(0.95, tdigest(100, response_time)) as p95,
    approx_percentile(0.99, tdigest(100, response_time)) as p99
FROM api_metrics
GROUP BY service_name;

-- Store hourly percentiles in a materialized view
CREATE MATERIALIZED VIEW hourly_percentiles AS
SELECT
    time_bucket('1 hour', timestamp) as hour,
    tdigest(200, response_time) as digest
FROM requests GROUP BY hour;
```

#### UddSketch - Bounded Error Quantiles

Quantile estimation with a requested starting error bound. Too few buckets can increase the actual bound; check `error` on the resulting sketch.

```sql
-- CPU percentiles with a starting 1% error target
SELECT
    host_id,
    approx_percentile(0.95, uddsketch(100, 0.01, cpu_percent)) as p95_cpu,
    error(uddsketch(100, 0.01, cpu_percent)) as actual_error
FROM system_metrics
GROUP BY host_id;
```

### Counter Analytics

#### Counter Aggregates - Monotonic Metrics

Handle counters that increase monotonically with automatic reset detection.

```sql
-- Request rate calculation
SELECT
    time_bucket('5 min', timestamp) as bucket,
    rate(counter_agg(timestamp, request_count)) as requests_per_sec,
    delta(counter_agg(timestamp, request_count)) as total_requests
FROM metrics
GROUP BY bucket;

-- Extrapolated rate for each hourly bucket
SELECT bucket, extrapolated_rate(summary, method => 'prometheus') AS bytes_per_second
FROM (
    SELECT time_bucket('1 hour', timestamp) AS bucket,
           counter_agg(timestamp, bytes_sent,
                       bounds => time_bucket_range('1 hour', timestamp)) AS summary
    FROM network_stats
    GROUP BY time_bucket('1 hour', timestamp)
) hourly;
```

#### Gauge Aggregates - Varying Metrics

Analytics for metrics that vary up and down (temperature, memory usage).

```sql
-- Temperature change analysis
SELECT
    sensor_id,
    delta(gauge_agg(timestamp, temperature)) as temp_delta,
    rate(gauge_agg(timestamp, temperature)) as temp_rate_per_sec
FROM weather_data
GROUP BY sensor_id;
```

### Time-Weighted Analytics

#### Time-Weighted Averages

Handle irregularly sampled data with interpolation methods (LOCF, Linear).

```sql
-- Weighted average for irregular sensor readings
SELECT
    device_id,
    average(time_weight('LOCF', timestamp, sensor_value)) as weighted_avg,
    average(time_weight('Linear', timestamp, sensor_value)) as linear_avg
FROM iot_readings
GROUP BY device_id;

-- Combining multiple time ranges
SELECT average(rollup(tw))
FROM (SELECT time_weight('LOCF', ts, val) as tw FROM readings_2023
      UNION ALL
      SELECT time_weight('LOCF', ts, val) FROM readings_2024) t;
```

### Data Visualization

#### LTTB Downsampling

Downsample time series while preserving visual similarity for charts.

```sql
-- Reduce 100K points to 1K for visualization
SELECT time, value
FROM unnest((
    SELECT lttb(timestamp, price, 1000)
    FROM stock_prices
    WHERE symbol = 'AAPL'
));
```

#### ASAP Smoothing

Generate human-readable graphs by reducing noise while preserving trends.

```sql
-- Smooth daily data to weekly resolution
SELECT time, value
FROM unnest((
    SELECT asap_smooth(date, daily_sales, 52)
    FROM sales_data
    WHERE date >= '2023-01-01'
));
```

### Statistical Analysis

#### Stats Aggregates

Comprehensive statistical analysis with 1D and 2D regression capabilities.

```sql
-- Multi-variable analysis
SELECT
    -- Basic statistics
    average(stats_agg(response_time)) as avg_response,
    stddev(stats_agg(response_time)) as response_stddev,

    -- Regression analysis
    slope(stats_agg(response_time, request_size)) as size_impact,
    corr(stats_agg(response_time, request_size)) as correlation,
    determination_coeff(stats_agg(response_time, request_size)) as r_squared
FROM performance_data;
```

### Timevector Data Type

Timevectors hold intermediate time-series values. Pipeline operators such as `toolkit_experimental.lttb` remain experimental; sort before downsampling.

```sql
-- Create and manipulate timevector
CREATE VIEW cpu_series AS
SELECT host_id, timevector(timestamp, cpu_percent) as ts
FROM system_metrics GROUP BY host_id;

-- Chain operations on timevector
SELECT host_id, unnest(ts -> toolkit_experimental.sort()
                         -> toolkit_experimental.lttb(100))
FROM cpu_series;
```

### Integration Patterns

### Materialized Aggregates

The following is an ordinary materialized view; refresh it explicitly when source data changes. A TimescaleDB continuous aggregate additionally requires a hypertable, its continuous option and a suitable refresh policy.

```sql
CREATE MATERIALIZED VIEW hourly_analytics AS
SELECT
    time_bucket('1 hour', timestamp) as hour,
    service_name,
    tdigest(100, response_time) as response_digest,
    counter_agg(timestamp, request_count) as request_counter,
    hyperloglog(64, user_id) as unique_users
FROM api_events
GROUP BY hour, service_name;

-- Query pre-computed aggregates
SELECT
    hour,
    approx_percentile(0.95, response_digest) as p95_response,
    rate(request_counter) as req_per_sec,
    distinct_count(unique_users) as unique_users
FROM hourly_analytics
WHERE hour >= NOW() - INTERVAL '24 hours';
```

### Two-Step Analysis Pattern

Store intermediate aggregates for multiple analyses:

```sql
-- Step 1: Create aggregates
CREATE TABLE daily_summaries AS
SELECT
    date_trunc('day', timestamp) as day,
    tdigest(200, response_time) as response_digest,
    stats_agg(response_time, request_size) as stats
FROM requests GROUP BY day;

-- Step 2: Multiple analyses from same data
SELECT
    day,
    approx_percentile(0.50, response_digest) as median,
    approx_percentile(0.99, response_digest) as p99,
    average_y(stats) as avg_response,
    slope(stats) as size_correlation
FROM daily_summaries;
```

All functions in the **experimental** schema (`toolkit_experimental`) may change between versions. Use stable functions for production workloads requiring API stability.

### Version Notes

Since 1.23, `max_n`, `max_n_by`, `min_n` and `min_n_by` return empty results on empty input, while `stats_agg(bigint)` rejects values outside the exact double-precision integer range. Retain application tests for these behaviors when upgrading.

1.24 adds equality for `heartbeat_agg` and repairs empty frequency aggregates and statistical overflow handling. 1.25 stabilizes `gauge_agg` and fixes empty t-digest input and several type-handling defects. 1.26 removes combine/serialize/deserialize support from `time_weight` and its rollup, retaining their nonparallel aggregation boundary.

1.27 adds equality for `statssummary1d` and `statssummary2d`, fixes sparse HyperLogLog rollups and prevents an ignored counter point at the same timestamp from counting as a reset. It rejects invalid UTF-8 state names, lambdas longer than 1024 bytes or nested beyond 256 parenthesis levels, frequency rollups of different element types and a mismatched NULL type argument to `topn`. It also restores the pipeline map ACL check.
