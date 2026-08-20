---
title: "pgwasm"
linkTitle: "pgwasm"
description: "Run sandboxed WebAssembly components as strongly typed PostgreSQL SQL functions."
weight: 3150
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jnicholls/pgwasm">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jnicholls/pgwasm</div>
    <div class="ext-card__desc">https://github.com/jnicholls/pgwasm</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgwasm-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgwasm-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pgwasm-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgwasm`**](/ext/e/pgwasm) | `0.1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3150  | [**`pgwasm`**](/ext/e/pgwasm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgwasm` |
{.ext-table}

| **Related** | [`plv8`](/ext/e/plv8) [`pljs`](/ext/e/pljs) [`pllua`](/ext/e/pllua) [`pg_tle`](/ext/e/pg_tle) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> No upstream tag or release; package pins commit 535b5336, ports pgrx 0.18 to 0.19.1, and supports PostgreSQL 14-18. Preloading is optional and enables shared metrics.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgwasm` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgwasm_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgwasm` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pgwasm_18 pgwasm_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgwasm_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgwasm_18 pgwasm_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgwasm_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgwasm_18 pgwasm_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgwasm_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgwasm_18 pgwasm_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 6.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgwasm_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgwasm_18 pgwasm_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgwasm_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgwasm_18 pgwasm_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgwasm_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgwasm postgresql-18-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-18-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgwasm_17 pgwasm_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgwasm_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgwasm_17 pgwasm_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgwasm_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgwasm_17 pgwasm_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgwasm_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgwasm_17 pgwasm_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 6.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgwasm_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgwasm_17 pgwasm_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgwasm_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgwasm_17 pgwasm_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgwasm_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgwasm postgresql-17-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-17-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgwasm_16 pgwasm_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgwasm_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgwasm_16 pgwasm_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgwasm_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgwasm_16 pgwasm_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgwasm_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgwasm_16 pgwasm_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 6.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgwasm_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgwasm_16 pgwasm_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgwasm_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgwasm_16 pgwasm_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgwasm_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgwasm postgresql-16-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-16-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgwasm_15 pgwasm_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgwasm_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgwasm_15 pgwasm_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgwasm_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgwasm_15 pgwasm_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgwasm_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgwasm_15 pgwasm_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 6.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgwasm_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgwasm_15 pgwasm_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgwasm_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgwasm_15 pgwasm_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgwasm_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgwasm postgresql-15-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-15-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgwasm_14 pgwasm_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgwasm_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgwasm_14 pgwasm_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgwasm_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgwasm_14 pgwasm_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgwasm_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgwasm_14 pgwasm_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 6.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgwasm_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgwasm_14 pgwasm_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgwasm_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgwasm_14 pgwasm_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgwasm_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 4.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgwasm postgresql-14-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgwasm/postgresql-14-pgwasm_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgwasm` using `pig build`:

```bash
pig build pkg pgwasm         # build RPM / DEB packages
```


## Install

You can install `pgwasm` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pgwasm;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgwasm -v 18  # PG 18
pig ext install -y pgwasm -v 17  # PG 17
pig ext install -y pgwasm -v 16  # PG 16
pig ext install -y pgwasm -v 15  # PG 15
pig ext install -y pgwasm -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgwasm_18       # PG 18
dnf install -y pgwasm_17       # PG 17
dnf install -y pgwasm_16       # PG 16
dnf install -y pgwasm_15       # PG 15
dnf install -y pgwasm_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgwasm   # PG 18
apt install -y postgresql-17-pgwasm   # PG 17
apt install -y postgresql-16-pgwasm   # PG 16
apt install -y postgresql-15-pgwasm   # PG 15
apt install -y postgresql-14-pgwasm   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgwasm;
```

## Usage

Sources:

- [pgwasm README at the documented revision](https://github.com/jnicholls/pgwasm/blob/535b53363f8208af139e757e508e66c46309ee29/README.md)
- [pgwasm architecture and SQL lifecycle](https://github.com/jnicholls/pgwasm/blob/535b53363f8208af139e757e508e66c46309ee29/docs/architecture.md)
- [pgwasm GUC reference](https://github.com/jnicholls/pgwasm/blob/535b53363f8208af139e757e508e66c46309ee29/docs/guc.md)
- [pgwasm WIT type mapping](https://github.com/jnicholls/pgwasm/blob/535b53363f8208af139e757e508e66c46309ee29/docs/wit-mapping.md)
- [pgwasm control file](https://github.com/jnicholls/pgwasm/blob/535b53363f8208af139e757e508e66c46309ee29/pgwasm/pgwasm.control)

`pgwasm` loads WebAssembly components into PostgreSQL and registers WIT exports as typed PostgreSQL functions. Compiled artifacts are stored under the cluster data directory and reused by backend-local instance pools. This document follows pinned revision `535b53363f8208af139e757e508e66c46309ee29`; the source declares version 0.1.0 but does not provide a tagged 0.1.0 release.

### Core Workflow

Create the extension as a superuser. The following file-based workflow must be enabled and confined by an administrator before a loader role can use it:

```sql
CREATE EXTENSION pgwasm;

ALTER SYSTEM SET pgwasm.allow_load_from_file = on;
ALTER SYSTEM SET pgwasm.module_path = '/srv/pgwasm';
ALTER SYSTEM SET pgwasm.allowed_path_prefixes = '/srv/pgwasm';
SELECT pg_reload_conf();

GRANT pgwasm_loader TO app_runtime;

SELECT pgwasm.pgwasm_load(
    'arith',
    '{"path":"arith.component.wasm"}'::json,
    '{}'::json
);

SELECT * FROM pgwasm.pgwasm_functions();
SELECT * FROM pgwasm.pgwasm_modules();

SELECT pgwasm.pgwasm_unload('arith');
```

`pgwasm_load(module_name text, bytes_or_path json, options json)` accepts exactly one `bytes` or `path` source. File loading is off by default. A module name becomes the durable catalog key and the prefix for sanitized generated SQL function names.

### Lifecycle and Type Mapping

- `pgwasm_load` validates, resolves policy, creates required PostgreSQL types and functions, compiles an AOT artifact, and records the module.
- `pgwasm_reload` replaces module bytes while preserving stable identities when signatures remain compatible.
- `pgwasm_reconfigure` narrows or changes policy and resource limits.
- `pgwasm_unload` removes generated functions, types, catalog rows, and artifacts; dependencies block removal unless cascade is explicitly selected.
- WIT records map to composite types, enums to PostgreSQL enums, lists to arrays or `bytea`, and supported variants, flags, options, results, and resources to documented PostgreSQL representations.
- `pgwasm_modules()`, `pgwasm_functions()`, `pgwasm_wit_types()`, `pgwasm_policy_effective()`, and `pgwasm_stats()` provide inspection.

Review the generated function signatures before granting execute privileges or calling a newly loaded component. Reloads with breaking WIT changes require an explicit policy decision and dependency review.

### Sandbox and Privileges

The extension creates `pgwasm_loader` for lifecycle mutation and `pgwasm_reader` for observability. Loading, reloading, reconfiguring, and unloading require superuser or loader-role membership.

WASI filesystem, environment, sockets, HTTP, and SPI host-query access are all disabled by default. An administrator sets the cluster ceiling through `pgwasm.*` GUCs; per-module options can narrow that ceiling but cannot broaden it. Keep `pgwasm.allowed_hosts`, path prefixes, and filesystem preopens explicit and minimal.

### Resource and Operational Boundaries

- The default module-size limit is 32 MiB, invocation memory is 1,024 WebAssembly pages, and the wall-clock deadline is 5 seconds. Fuel metering is available but off by default.
- Artifacts under `$PGDATA/pgwasm/<module_id>/` are derived from module bytes and the Wasmtime build. Recompile them after incompatible Wasmtime or PostgreSQL upgrades rather than copying them as authoritative data.
- Shared counters depend on postmaster-time shared-memory allocation. Preload `pgwasm` when shared metrics are required; otherwise observability can fall back to non-shared counters and reports that state.
- The source exposes build features for PostgreSQL 13 through 18 and defaults to PostgreSQL 17, but the pinned revision has no published support matrix. Validate the exact PostgreSQL-major build and all required WIT mappings before deployment.
- Treat guest code as privileged database-adjacent code even with sandboxing: limit who can load modules, bound every capability and resource, and test traps, cancellation, reload, restart, and rollback behavior.
