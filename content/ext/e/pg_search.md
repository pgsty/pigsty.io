---
title: "pg_search"
linkTitle: "pg_search"
description: "Full text search for PostgreSQL using BM25"
weight: 2100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/paradedb/paradedb/tree/dev/pg_search">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dev/pg_search</div>
    <div class="ext-card__desc">https://github.com/paradedb/paradedb/tree/dev/pg_search</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_search-0.24.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_search-0.24.0.tar.gz</div>
    <div class="ext-card__desc">pg_search-0.24.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_search`**](/ext/e/pg_search) | `0.24.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2100  | [**`pg_search`**](/ext/e/pg_search) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `paradedb` |
{.ext-table}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pgroonga_database`](/ext/e/pgroonga_database) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_trgm`](/ext/e/pg_trgm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> bm25 am conflicts with pg_textsearch and vchord_bm25


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.24.0` | {{< pgvers "18,17,16,15" >}} | `pg_search` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.24.0` | {{< pgvers "18,17,16,15" >}} | `pg_search_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.24.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-search` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.7 1 |
| d12.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.7 1 |
| d13.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.7 1 |
| u22.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.20.7 1 |
| u26.x86_64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | AVAIL PIGSTY 0.24.0 1 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_search_18 pg_search_18-0.24.0-1PIGSTY.el8.x86_64.rpm pigsty 0.24.0 70.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_18-0.24.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_search_18 pg_search_18-0.24.0-1PIGSTY.el8.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_18-0.24.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_search_18 pg_search_18-0.24.0-1PARADEDB.el9.x86_64.rpm pigsty 0.24.0 69.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_18-0.24.0-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 18 pg_search_18 pg_search_18-0.24.0-1PARADEDB.el9.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_18-0.24.0-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 18 pg_search_18 pg_search_18-0.24.0-1PARADEDB.el10.x86_64.rpm pigsty 0.24.0 69.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_18-0.24.0-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 18 pg_search_18 pg_search_18-0.24.0-1PARADEDB.el10.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_18-0.24.0-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.24.0_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.24.0_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.24.0_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.24.0_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb pigsty 0.24.0 67.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb pigsty 0.24.0 65.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.24.0_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.24.0_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb pigsty 0.24.0 66.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb pigsty 0.24.0 65.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_search_17 pg_search_17-0.24.0-1PIGSTY.el8.x86_64.rpm pigsty 0.24.0 70.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_17-0.24.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_search_17 pg_search_17-0.24.0-1PIGSTY.el8.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_17-0.24.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_search_17 pg_search_17-0.24.0-1PARADEDB.el9.x86_64.rpm pigsty 0.24.0 69.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_17-0.24.0-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 17 pg_search_17 pg_search_17-0.24.0-1PARADEDB.el9.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_17-0.24.0-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 17 pg_search_17 pg_search_17-0.24.0-1PARADEDB.el10.x86_64.rpm pigsty 0.24.0 69.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_17-0.24.0-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 17 pg_search_17 pg_search_17-0.24.0-1PARADEDB.el10.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_17-0.24.0-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.24.0_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.24.0_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.24.0_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.24.0_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb pigsty 0.24.0 67.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb pigsty 0.24.0 65.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.24.0_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.24.0_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb pigsty 0.24.0 66.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb pigsty 0.24.0 65.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_search_16 pg_search_16-0.24.0-1PIGSTY.el8.x86_64.rpm pigsty 0.24.0 70.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_16-0.24.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_search_16 pg_search_16-0.24.0-1PIGSTY.el8.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_16-0.24.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_search_16 pg_search_16-0.24.0-1PARADEDB.el9.x86_64.rpm pigsty 0.24.0 69.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_16-0.24.0-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 16 pg_search_16 pg_search_16-0.24.0-1PARADEDB.el9.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_16-0.24.0-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 16 pg_search_16 pg_search_16-0.24.0-1PARADEDB.el10.x86_64.rpm pigsty 0.24.0 69.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_16-0.24.0-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 16 pg_search_16 pg_search_16-0.24.0-1PARADEDB.el10.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_16-0.24.0-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.24.0_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.24.0_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.24.0_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.24.0_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb pigsty 0.24.0 67.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb pigsty 0.24.0 65.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.24.0_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.24.0_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb pigsty 0.24.0 66.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb pigsty 0.24.0 65.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_search_15 pg_search_15-0.24.0-1PIGSTY.el8.x86_64.rpm pigsty 0.24.0 70.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_15-0.24.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_search_15 pg_search_15-0.24.0-1PIGSTY.el8.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_15-0.24.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_search_15 pg_search_15-0.24.0-1PARADEDB.el9.x86_64.rpm pigsty 0.24.0 69.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_15-0.24.0-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 15 pg_search_15 pg_search_15-0.24.0-1PARADEDB.el9.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_15-0.24.0-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 15 pg_search_15 pg_search_15-0.24.0-1PARADEDB.el10.x86_64.rpm pigsty 0.24.0 69.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_15-0.24.0-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 15 pg_search_15 pg_search_15-0.24.0-1PARADEDB.el10.aarch64.rpm pigsty 0.24.0 68.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_15-0.24.0-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.24.0_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.24.0_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.24.0_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.24.0_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb pigsty 0.24.0 67.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.24.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb pigsty 0.24.0 65.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.24.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0_amd64.deb pigsty 0.24.0 67.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.24.0_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0_arm64.deb pigsty 0.24.0 64.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.24.0_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb pigsty 0.24.0 66.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.24.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb pigsty 0.24.0 65.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.24.0-2PIGSTY~resolute_arm64.deb
@ d12.x86_64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.7_amd64.deb pigsty 0.20.7 45.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-14-pg-search/postgresql-14-pg-search_0.20.7_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.7_arm64.deb pigsty 0.20.7 45.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-14-pg-search/postgresql-14-pg-search_0.20.7_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.5-1PIGSTY~trixie_amd64.deb pigsty 0.20.5 45.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-14-pg-search_0.20.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.5-1PIGSTY~trixie_arm64.deb pigsty 0.20.5 44.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-14-pg-search_0.20.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.7_amd64.deb pigsty 0.20.7 45.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-14-pg-search/postgresql-14-pg-search_0.20.7_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.7_arm64.deb pigsty 0.20.7 45.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-14-pg-search/postgresql-14-pg-search_0.20.7_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.7_amd64.deb pigsty 0.20.7 45.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-14-pg-search/postgresql-14-pg-search_0.20.7_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-search postgresql-14-pg-search_0.20.7_arm64.deb pigsty 0.20.7 45.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-14-pg-search/postgresql-14-pg-search_0.20.7_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_search` using `pig build`:

```bash
pig build pkg pg_search         # build RPM / DEB packages
```


## Install

You can install `pg_search` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_search;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_search -v 18  # PG 18
pig ext install -y pg_search -v 17  # PG 17
pig ext install -y pg_search -v 16  # PG 16
pig ext install -y pg_search -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_search_18       # PG 18
dnf install -y pg_search_17       # PG 17
dnf install -y pg_search_16       # PG 16
dnf install -y pg_search_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-search   # PG 18
apt install -y postgresql-17-pg-search   # PG 17
apt install -y postgresql-16-pg-search   # PG 16
apt install -y postgresql-15-pg-search   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_search';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_search;
```




## Usage

Sources: [ParadeDB extension install docs](https://docs.paradedb.com/deploy/self-hosted/extension), [create-index docs](https://docs.paradedb.com/documentation/indexing/create-index.md), [match docs](https://docs.paradedb.com/documentation/full-text/match.md), [score docs](https://docs.paradedb.com/documentation/sorting/score.md), [highlight docs](https://docs.paradedb.com/documentation/full-text/highlight.md), [v0.24.0 release](https://github.com/paradedb/paradedb/releases/tag/v0.24.0), [pg_search README](https://github.com/paradedb/paradedb/blob/v0.24.0/pg_search/README.md)

`pg_search` is ParadeDB's BM25-based search extension for PostgreSQL. The upstream README says support starts at PostgreSQL 15; Pigsty packages `0.24.0` for PostgreSQL 15-18 and builds it with `cargo-pgrx` 0.18.1.

### Enable And Create The Extension

```conf
shared_preload_libraries = 'pg_search'
```

```sql
CREATE EXTENSION pg_search;
```

The self-hosted extension docs require `shared_preload_libraries = 'pg_search'` before `CREATE EXTENSION`.

### Create A BM25 Index

Current examples use the `bm25` access method with a unique key field:

```sql
CREATE INDEX search_idx ON mock_items
USING bm25 (id, description, category, rating)
WITH (key_field = 'id');
```

Only one BM25 index is supported per table. `key_field` is mandatory, must be unique, and must be the first indexed column; text key fields must be untokenized.

### Query Operators And Helpers

The current docs use these query operators:

- `|||`: match disjunction, equivalent to `term1 OR term2`.
- `&&&`: match conjunction, equivalent to `term1 AND term2`.

Examples:

```sql
SELECT description, rating
FROM mock_items
WHERE description ||| 'running shoes'
ORDER BY rating
LIMIT 5;

SELECT description, pdb.score(id) AS score
FROM mock_items
WHERE description &&& 'running shoes'
ORDER BY score DESC
LIMIT 5;

SELECT description, pdb.snippet(description) AS snippet, pdb.score(id) AS score
FROM mock_items
WHERE description ||| 'running shoes'
ORDER BY score DESC
LIMIT 5;
```

Useful result helpers include `pdb.score(id)`, `pdb.snippet(field)`, `pdb.snippets(field)`, and `pdb.snippet_positions(field)`. Highlighting is relatively expensive and is not supported for fuzzy search queries.

### Notes

- The old quickstart URL was removed; use the versioned docs pages above for current `|||`, `&&&`, scoring, and highlighting syntax.
- Release `0.24.0` requires preloading `pg_search`, upgrades pgrx to 0.18.1, and documents crash-recovery, `ltree`, and inline-tokenizer work without changing the basic BM25 query examples above.
- The Pigsty metadata notes that the `bm25` access method conflicts with `pg_textsearch` and `vchord_bm25`; do not preload competing BM25 access-method extensions in the same cluster without testing the target combination.
