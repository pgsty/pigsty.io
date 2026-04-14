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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_regresql-2.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_regresql-2.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_regresql-2.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_regresql`**](/ext/e/pg_regresql) | `2.0.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3230  | [**`pg_regresql`**](/ext/e/pg_regresql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) [`plan_filter`](/ext/e/plan_filter) [`auto_explain`](/ext/e/auto_explain) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Activate it with LOAD pg_regresql or session_preload_libraries.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_regresql` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_regresql_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-regresql` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
@ el8.x86_64 18 pg_regresql_18 pg_regresql_18-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_18-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_regresql_18 pg_regresql_18-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_18-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_regresql_18 pg_regresql_18-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_18-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_regresql_18 pg_regresql_18-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_18-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_regresql_18 pg_regresql_18-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_18-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_regresql_18 pg_regresql_18-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 10.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_18-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 8.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 8.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-regresql postgresql-18-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-18-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_regresql_17 pg_regresql_17-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_17-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_regresql_17 pg_regresql_17-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_17-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_regresql_17 pg_regresql_17-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_17-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_regresql_17 pg_regresql_17-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_17-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_regresql_17 pg_regresql_17-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_17-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_regresql_17 pg_regresql_17-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 10.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_17-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 9.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 9.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-regresql postgresql-17-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-17-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_regresql_16 pg_regresql_16-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_16-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_regresql_16 pg_regresql_16-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_16-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_regresql_16 pg_regresql_16-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_16-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_regresql_16 pg_regresql_16-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_16-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_regresql_16 pg_regresql_16-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_16-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_regresql_16 pg_regresql_16-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 10.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_16-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 9.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 9.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-regresql postgresql-16-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-16-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_regresql_15 pg_regresql_15-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_15-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_regresql_15 pg_regresql_15-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_15-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_regresql_15 pg_regresql_15-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_15-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_regresql_15 pg_regresql_15-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_15-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_regresql_15 pg_regresql_15-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_15-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_regresql_15 pg_regresql_15-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 10.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_15-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 9.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 9.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-regresql postgresql-15-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-15-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_regresql_14 pg_regresql_14-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_regresql_14-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_regresql_14 pg_regresql_14-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_regresql_14-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_regresql_14 pg_regresql_14-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_regresql_14-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_regresql_14 pg_regresql_14-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_regresql_14-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_regresql_14 pg_regresql_14-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_regresql_14-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_regresql_14 pg_regresql_14-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 10.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_regresql_14-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 9.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 9.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-regresql postgresql-14-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-regresql/postgresql-14-pg-regresql_2.0.0-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_regresql;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_regresql -v 18  # PG 18
pig ext install -y pg_regresql -v 17  # PG 17
pig ext install -y pg_regresql -v 16  # PG 16
pig ext install -y pg_regresql -v 15  # PG 15
pig ext install -y pg_regresql -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_regresql_18       # PG 18
dnf install -y pg_regresql_17       # PG 17
dnf install -y pg_regresql_16       # PG 16
dnf install -y pg_regresql_15       # PG 15
dnf install -y pg_regresql_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-regresql   # PG 18
apt install -y postgresql-17-pg-regresql   # PG 17
apt install -y postgresql-16-pg-regresql   # PG 16
apt install -y postgresql-15-pg-regresql   # PG 15
apt install -y postgresql-14-pg-regresql   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_regresql';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_regresql;
```


## Usage

> Syntax:
>
> ```bash
> regresql init postgres://localhost/mydb
> regresql add src/sql/
> regresql update
> regresql test
> ```
>
> Sources: [README](https://github.com/boringsql/regresql), [Product page](https://boringsql.com/products/regresql/)

`RegreSQL` is documented upstream as a language-agnostic SQL regression testing tool for PostgreSQL, not as a `CREATE EXTENSION`-style in-database module. It discovers `.sql` files, runs them against PostgreSQL, snapshots expected output, and tracks query plan changes.

## Quick Start

The README's basic workflow is:

```bash
regresql init postgres://localhost/mydb
regresql discover
regresql add src/sql/
regresql update
regresql test
```

This initializes a test suite, discovers query files, creates plan definitions, captures expected output, and runs regression checks.

## What It Tracks

The upstream docs emphasize:

- expected query output snapshots
- `EXPLAIN` plan baselines
- sequential scan warnings
- migration-related query regressions
- CI-oriented output formats such as `junit`, `json`, `pgtap`, and `github-actions`

## Query Files and Plans

RegreSQL works with normal SQL files and supports multiple queries per file using `-- name:` annotations:

```sql
-- name: get-user-by-id
SELECT * FROM users WHERE id = :id;
```

Plan files provide test parameters:

```yaml
"1":
  id: 42
"2":
  id: 100
```

## Snapshots and Migrations

The tool can build and restore database snapshots and compare query behavior across migrations:

```bash
regresql snapshot build
regresql snapshot restore
regresql migrate --script db/migrations/001_add_column.sql
```

## Installation

The README documents installation via Homebrew or Go:

```bash
brew tap boringsql/boringsql
brew install regresql
```

or

```bash
go install github.com/boringsql/regresql@latest
```

PostgreSQL client tools such as `pg_dump`, `pg_restore`, and `psql` are required for snapshot commands.
