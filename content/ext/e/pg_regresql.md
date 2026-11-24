---
title: "pg_regresql"
linkTitle: "pg_regresql"
description: "Trust pg_class statistics for planning instead of physical relation size"
weight: 3230
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/boringsql/regresql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">boringsql/regresql</div>
    <div class="ext-card__desc">https://github.com/boringsql/regresql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_regresql-2.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_regresql-2.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_regresql-2.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_regresql`**](/ext/e/pg_regresql) | `2.2.1` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3230  | [**`pg_regresql`**](/ext/e/pg_regresql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`hypopg`](/ext/e/hypopg) [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`online_advisor`](/ext/e/online_advisor) [`index_advisor`](/ext/e/index_advisor) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`plan_filter`](/ext/e/plan_filter) [`pg_track_optimizer`](/ext/e/pg_track_optimizer) [`pg_strom`](/ext/e/pg_strom) [`pg_orca`](/ext/e/pg_orca) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Load via LOAD or session_preload_libraries.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_regresql` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16,15" >}} | `pg_regresql_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-regresql` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el9.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el9.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el10.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el10.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d12.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d12.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d13.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d13.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u22.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u22.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u24.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u24.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u26.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
@ el8.x86_64 18 pg_regresql_18 pg_regresql_18-2.2.0-1PGSTY.el8.x86_64.rpm pigsty 2.2.0 90.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_18-2.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_regresql_18 pg_regresql_18-2.2.0-1PGSTY.el8.aarch64.rpm pigsty 2.2.0 88.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_18-2.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_regresql_18 pg_regresql_18-2.2.0-1PGSTY.el9.x86_64.rpm pigsty 2.2.0 91.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_18-2.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_regresql_18 pg_regresql_18-2.2.0-1PGSTY.el9.aarch64.rpm pigsty 2.2.0 89.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_18-2.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_regresql_18 pg_regresql_18-2.2.0-1PGSTY.el10.x86_64.rpm pigsty 2.2.0 91.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_18-2.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_regresql_18 pg_regresql_18-2.2.0-1PGSTY.el10.aarch64.rpm pigsty 2.2.0 89.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_18-2.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb pigsty 2.2.0 75.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb pigsty 2.2.0 73.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb pigsty 2.2.0 75.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb pigsty 2.2.0 73.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb pigsty 2.2.0 81.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb pigsty 2.2.0 79.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb pigsty 2.2.0 78.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb pigsty 2.2.0 76.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb pigsty 2.2.0 77.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb pigsty 2.2.0 76.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_regresql_17 pg_regresql_17-2.2.0-1PGSTY.el8.x86_64.rpm pigsty 2.2.0 106.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_17-2.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_regresql_17 pg_regresql_17-2.2.0-1PGSTY.el8.aarch64.rpm pigsty 2.2.0 103.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_17-2.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_regresql_17 pg_regresql_17-2.2.0-1PGSTY.el9.x86_64.rpm pigsty 2.2.0 107.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_17-2.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_regresql_17 pg_regresql_17-2.2.0-1PGSTY.el9.aarch64.rpm pigsty 2.2.0 105.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_17-2.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_regresql_17 pg_regresql_17-2.2.0-1PGSTY.el10.x86_64.rpm pigsty 2.2.0 108.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_17-2.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_regresql_17 pg_regresql_17-2.2.0-1PGSTY.el10.aarch64.rpm pigsty 2.2.0 105.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_17-2.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb pigsty 2.2.0 91.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb pigsty 2.2.0 88.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb pigsty 2.2.0 91.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb pigsty 2.2.0 88.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb pigsty 2.2.0 116.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb pigsty 2.2.0 114.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb pigsty 2.2.0 95.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb pigsty 2.2.0 93.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb pigsty 2.2.0 94.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb pigsty 2.2.0 92.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_regresql_16 pg_regresql_16-2.2.0-1PGSTY.el8.x86_64.rpm pigsty 2.2.0 106.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_16-2.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_regresql_16 pg_regresql_16-2.2.0-1PGSTY.el8.aarch64.rpm pigsty 2.2.0 103.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_16-2.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_regresql_16 pg_regresql_16-2.2.0-1PGSTY.el9.x86_64.rpm pigsty 2.2.0 107.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_16-2.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_regresql_16 pg_regresql_16-2.2.0-1PGSTY.el9.aarch64.rpm pigsty 2.2.0 105.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_16-2.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_regresql_16 pg_regresql_16-2.2.0-1PGSTY.el10.x86_64.rpm pigsty 2.2.0 107.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_16-2.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_regresql_16 pg_regresql_16-2.2.0-1PGSTY.el10.aarch64.rpm pigsty 2.2.0 105.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_16-2.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb pigsty 2.2.0 91.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb pigsty 2.2.0 87.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb pigsty 2.2.0 91.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb pigsty 2.2.0 88.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb pigsty 2.2.0 114.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb pigsty 2.2.0 112.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb pigsty 2.2.0 95.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb pigsty 2.2.0 92.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb pigsty 2.2.0 94.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb pigsty 2.2.0 92.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_regresql_15 pg_regresql_15-2.2.0-1PGSTY.el8.x86_64.rpm pigsty 2.2.0 25.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_15-2.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_regresql_15 pg_regresql_15-2.2.0-1PGSTY.el8.aarch64.rpm pigsty 2.2.0 25.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_15-2.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_regresql_15 pg_regresql_15-2.2.0-1PGSTY.el9.x86_64.rpm pigsty 2.2.0 25.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_15-2.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_regresql_15 pg_regresql_15-2.2.0-1PGSTY.el9.aarch64.rpm pigsty 2.2.0 25.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_15-2.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_regresql_15 pg_regresql_15-2.2.0-1PGSTY.el10.x86_64.rpm pigsty 2.2.0 25.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_15-2.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_regresql_15 pg_regresql_15-2.2.0-1PGSTY.el10.aarch64.rpm pigsty 2.2.0 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_15-2.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb pigsty 2.2.0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb pigsty 2.2.0 12.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb pigsty 2.2.0 12.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb pigsty 2.2.0 12.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb pigsty 2.2.0 14.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb pigsty 2.2.0 14.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb pigsty 2.2.0 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb pigsty 2.2.0 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb pigsty 2.2.0 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb pigsty 2.2.0 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.2.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_regresql` using `pig build`:

```bash
pig build pkg pg_regresql         # build RPM / DEB packages
```


## Install

You can install `pg_regresql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_regresql;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_regresql -v 19  # PG 19
pig ext install -y pg_regresql -v 18  # PG 18
pig ext install -y pg_regresql -v 17  # PG 17
pig ext install -y pg_regresql -v 16  # PG 16
pig ext install -y pg_regresql -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_regresql_19       # PG 19
dnf install -y pg_regresql_18       # PG 18
dnf install -y pg_regresql_17       # PG 17
dnf install -y pg_regresql_16       # PG 16
dnf install -y pg_regresql_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-regresql   # PG 19
apt install -y postgresql-18-pg-regresql   # PG 18
apt install -y postgresql-17-pg-regresql   # PG 17
apt install -y postgresql-16-pg-regresql   # PG 16
apt install -y postgresql-15-pg-regresql   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_regresql';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_regresql;
```

## Usage

Sources:

- [README.md](https://api.pgxn.org/src/pg_regresql/pg_regresql-2.2.1/README.md)
- [pg_regresql.control](https://api.pgxn.org/src/pg_regresql/pg_regresql-2.2.1/pg_regresql.control)
- [Installation SQL](https://api.pgxn.org/src/pg_regresql/pg_regresql-2.2.1/pg_regresql--2.2.1.sql)
- [Upgrade SQL from 2.2](https://api.pgxn.org/src/pg_regresql/pg_regresql-2.2.1/pg_regresql--2.2--2.2.1.sql)

`pg_regresql` makes query planning use catalog statistics instead of rescaling them from physical file size. This supports plan regression tests in databases with representative statistics but little data. Release 2.2.1 installs its SQL objects in the fixed `pg_catalog` schema.

### Activate the Planner Hook

The hook supports PostgreSQL 15 or later. Load it as a superuser in the test session:

```sql
LOAD 'pg_regresql';
CREATE TABLE test_orders (created_at date);
EXPLAIN SELECT * FROM test_orders WHERE created_at > DATE '2024-06-01';
```

For new sessions on a test instance, add the library to the existing session preload list:

```ini
session_preload_libraries = 'pg_regresql'
```

The hook replaces table and index page/tuple estimates with `pg_class` values and computes visibility from catalog statistics. Inject useful statistics before comparing plans; an empty table alone is not a production workload.

### Restore Statistics

On PostgreSQL 16 and 17, create the extension before loading statistics emitted by a recent pg_dump:

```sql
CREATE EXTENSION pg_regresql;
SELECT pg_restore_relation_stats(
    'schemaname', 'public', 'relname', 'test_orders',
    'relpages', 123513::integer, 'reltuples', 50000000::real,
    'relallvisible', 123513::integer
);
```

Version 2.2 adds `pg_restore_extended_stats()` and `pg_clear_extended_stats()` for those servers, and supports the JSON input emitted by pg_dump 19 for `pg_ndistinct` and `pg_dependencies`. On PostgreSQL 16 remove the dump's unsupported transaction_timeout setting. PostgreSQL 18 already supplies relation/attribute restoration in core; extended restoration is in core from 19. The extension does not install these backports on 18 or later.

### Upgrade and Cleanup

From SQL version 2.0, upstream requires dropping and recreating the extension. From 2.1, use `ALTER EXTENSION pg_regresql UPDATE`. Review dependencies before removing it. The extension is not relocatable and its install requires a superuser.

The replacement input functions named `regresql_pg_*_in` are deliberately detached from the extension on 16/17. `DROP EXTENSION` leaves them behind so the installed casts keep working; dropping the extension is therefore not a complete return to the original catalog state. Use this tool in controlled planning tests, and do not assume compatibility with other planner hooks has been tested.

### PostgreSQL 19 Planner Hook

Release 2.2.1 uses `build_simple_rel_hook` on PostgreSQL 19 and `get_relation_info_hook` on earlier supported majors. After installing the matching files, run `ALTER EXTENSION pg_regresql UPDATE TO '2.2.1';` on installations using 2.2. This update advances the recorded extension version and preserves the existing SQL definitions.
