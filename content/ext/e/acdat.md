---
title: "acdat"
linkTitle: "acdat"
description: "Compiled Aho-Corasick double-array machines for exact multi-pattern matching and replacement in PostgreSQL"
weight: 2250
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgsty/acdat">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgsty/acdat</div>
    <div class="ext-card__desc">https://github.com/pgsty/acdat</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/acdat-0.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">acdat-0.1.1.tar.gz</div>
    <div class="ext-card__desc">acdat-0.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`acdat`**](/ext/e/acdat) | `0.1.1` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2250  | [**`acdat`**](/ext/e/acdat) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `acdat` |
{.ext-table}

| **Related** | [`pg_trgm`](/ext/e/pg_trgm) [`pg_bigm`](/ext/e/pg_bigm) [`pgroonga`](/ext/e/pgroonga) [`pg_search`](/ext/e/pg_search) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> 0.1.1 preserves the 0.1.0 SQL API and format-major-1 machine compatibility; fixed acdat schema; no preload required.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `acdat` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `acdat_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-acdat` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
@ el8.x86_64 18 acdat_18 acdat_18-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 118.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acdat_18-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 acdat_18 acdat_18-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 116.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acdat_18-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 acdat_18 acdat_18-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 118.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acdat_18-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 acdat_18 acdat_18-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 117.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acdat_18-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 acdat_18 acdat_18-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 121.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acdat_18-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 acdat_18 acdat_18-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 120.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acdat_18-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 109.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 107.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 111.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 109.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 116.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 114.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 111.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 110.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 112.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-acdat postgresql-18-acdat_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 111.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-18-acdat_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 acdat_17 acdat_17-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 118.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acdat_17-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 acdat_17 acdat_17-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 116.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acdat_17-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 acdat_17 acdat_17-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 118.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acdat_17-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 acdat_17 acdat_17-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 117.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acdat_17-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 acdat_17 acdat_17-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 121.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acdat_17-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 acdat_17 acdat_17-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 119.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acdat_17-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 110.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 107.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 111.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 109.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 122.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 121.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 111.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 110.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 112.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-acdat postgresql-17-acdat_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 111.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-17-acdat_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 acdat_16 acdat_16-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 118.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acdat_16-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 acdat_16 acdat_16-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 116.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acdat_16-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 acdat_16 acdat_16-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 118.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acdat_16-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 acdat_16 acdat_16-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 117.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acdat_16-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 acdat_16 acdat_16-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 121.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acdat_16-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 acdat_16 acdat_16-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 119.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acdat_16-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 110.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 107.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 111.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 109.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 122.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 120.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 111.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 110.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 112.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-acdat postgresql-16-acdat_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 111.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-16-acdat_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 acdat_15 acdat_15-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 119.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acdat_15-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 acdat_15 acdat_15-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 117.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acdat_15-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 acdat_15 acdat_15-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 120.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acdat_15-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 acdat_15 acdat_15-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 119.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acdat_15-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 acdat_15 acdat_15-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 122.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acdat_15-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 acdat_15 acdat_15-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 121.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acdat_15-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 110.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 108.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 111.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 109.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 123.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 122.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 113.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 112.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 114.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-acdat postgresql-15-acdat_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 113.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-15-acdat_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 acdat_14 acdat_14-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 119.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acdat_14-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 acdat_14 acdat_14-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 117.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acdat_14-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 acdat_14 acdat_14-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 120.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acdat_14-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 acdat_14 acdat_14-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 119.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acdat_14-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 acdat_14 acdat_14-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 122.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acdat_14-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 acdat_14 acdat_14-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 121.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acdat_14-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 110.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 108.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 111.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 109.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 123.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 122.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 113.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 112.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 114.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-acdat postgresql-14-acdat_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 113.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acdat/postgresql-14-acdat_0.1.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `acdat` using `pig build`:

```bash
pig build pkg acdat         # build RPM / DEB packages
```


## Install

You can install `acdat` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install acdat;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y acdat -v 18  # PG 18
pig ext install -y acdat -v 17  # PG 17
pig ext install -y acdat -v 16  # PG 16
pig ext install -y acdat -v 15  # PG 15
pig ext install -y acdat -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y acdat_18       # PG 18
dnf install -y acdat_17       # PG 17
dnf install -y acdat_16       # PG 16
dnf install -y acdat_15       # PG 15
dnf install -y acdat_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-acdat   # PG 18
apt install -y postgresql-17-acdat   # PG 17
apt install -y postgresql-16-acdat   # PG 16
apt install -y postgresql-15-acdat   # PG 15
apt install -y postgresql-14-acdat   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION acdat;
```

## Usage

Sources:

- [Official release v0.1.1](https://github.com/pgsty/acdat/releases/tag/v0.1.1)
- [Official README v0.1.1](https://github.com/pgsty/acdat/blob/v0.1.1/README.md)
- [Extension control file](https://github.com/pgsty/acdat/blob/v0.1.1/acdat.control)
- [Versioned installation SQL](https://github.com/pgsty/acdat/blob/v0.1.1/sql/acdat--0.1.1.sql)
- [Official usage guide](https://github.com/pgsty/acdat/blob/v0.1.1/docs/USAGE.md)
- [Runnable SQL demonstration](https://github.com/pgsty/acdat/blob/v0.1.1/examples/demo.sql)

`acdat` 0.1.1 compiles a large dictionary of exact literal patterns into an immutable Aho-Corasick Double-Array machine, then scans each `text` or `bytea` value once for matching or replacement. It is designed for stable, repeatedly used dictionaries such as policy rules, indicators of compromise, entity names, and redaction aliases.

### Core Workflow

Create the extension, compile a dictionary, and reuse the resulting `acdat.machine` value across many inputs:

```sql
CREATE EXTENSION acdat;

WITH machine AS (
    SELECT acdat.compile(
        ARRAY['he', 'she', 'his', 'hers'],
        ARRAY[1, 2, 3, 4]::bigint[]
    ) AS value
)
SELECT acdat.contains('ushers', value) AS matched,
       acdat.info(value)->>'pattern_count' AS patterns
FROM machine;
```

For production dictionaries, the source rules should stay in an application-owned table. The aggregate overload of `acdat.compile()` can build one deterministic machine directly from pattern, ID, replacement, and priority rows; compile once and scan many values.

### Matching and Replacement

`acdat.contains()` stops after the first hit. `acdat.matches()` returns `acdat.hit` rows with the pattern ID, byte and character coordinates, and priority. `acdat.replace()` applies literal, non-recursive replacements:

```sql
WITH machine AS (
    SELECT acdat.compile(
        ARRAY['病毒', '特征码', '病毒特征码'],
        ARRAY[10, 11, 12]::bigint[],
        ARRAY['[VIRUS]', '[SIGNATURE]', '[IOC]'],
        ARRAY[20, 20, 5]::integer[]
    ) AS value
)
SELECT *
FROM acdat.matches('发现病毒特征码', (SELECT value FROM machine), 'all_overlapping');

SELECT acdat.replace(
    'aaa',
    acdat.compile(
        ARRAY['a', 'aa', 'aaa'],
        ARRAY[1, 2, 3]::bigint[],
        ARRAY['[x]', '[yy]', '[zzz]']
    ),
    'leftmost_longest'
);
```

The match policies are `all_overlapping`, `leftmost_longest`, and `leftmost_priority`. Replacement accepts only a non-overlapping policy. Use `acdat.info()` to inspect a compiled machine and the export, validation, import, and fingerprint functions when moving or checking artifacts.

`acdat.matches()` defaults `max_matches` to 10000, and `acdat.replace()` defaults `max_output_bytes` to 268435456. Set tighter limits for untrusted or high-hit inputs so match enumeration and replacement output stay bounded.

### Managed Dictionaries

The optional catalog layer publishes immutable, content-addressed builds and atomically selects one active build. Its control functions use `SECURITY INVOKER` and are not executable by `PUBLIC`:

```sql
WITH machine AS (
    SELECT acdat.compile(pattern, pattern_id)
    FROM app_keyword
    WHERE enabled
), published AS (
    SELECT acdat.publish('moderation', 1, machine) AS build_id
    FROM machine
)
SELECT acdat.activate('moderation', build_id)
FROM published;

SELECT name, version, build_id, machine
FROM acdat.active_machine
WHERE name = 'moderation';
```

Application tables remain the source of truth. Logical dumps include catalog metadata and active machine payloads, but not every historical artifact, so retain the source patterns required to rebuild retired or inactive versions.

### Compatibility and Safety

Version 0.1.1 is tested on PostgreSQL 14 through 18. It needs no preload or server restart, has no external extension dependency, and defines no GUC. The control file fixes the schema to `acdat`, sets `relocatable = false` and `trusted = false`, so `CREATE EXTENSION` requires a superuser.

The 0.1.1 release preserves the 0.1.0 SQL API and format-major-1 machine compatibility and ships the `0.1.0 -> 0.1.1` extension update path. It also adds cancellable compilation, a conservative build-work budget, and a faster materialized scan path without changing the stored machine contract.

ACDAT indexes the pattern dictionary, not the document table: scanning a large existing table still reads its candidate rows. Matching is exact and case-sensitive; the extension does not provide regular expressions, fuzzy matching, tokenization, automatic case folding, Unicode normalization, or a document-side index. The text engine supports UTF-8 and single-byte server encodings, while binary data should use the bytea interface. Materialize `(document_id, pattern_id)` hits into an application table when repeated reverse lookup is required.

The compiled format is self-describing and checksummed, and imported artifacts are validated before use. Inventory dependencies before uninstalling: `DROP EXTENSION acdat` removes managed dictionary state, while adding `CASCADE` can also remove user columns or other objects that depend on `acdat.machine`.
