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
  <a class="ext-card ext-card--source" href="pg_search-0.21.8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_search-0.21.8.tar.gz</div>
    <div class="ext-card__desc">pg_search-0.21.8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_search`**](/ext/e/pg_search) | `0.21.12` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2100  | [**`pg_search`**](/ext/e/pg_search) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `paradedb` |
{.ext-table}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pgroonga_database`](/ext/e/pgroonga_database) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_trgm`](/ext/e/pg_trgm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG 17+ does not require dynamic loading 


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.21.12` | {{< pgvers "18,17,16,15" >}} | `pg_search` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.21.12` | {{< pgvers "18,17,16,15" >}} | `pg_search_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.21.12` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-search` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.20.10 1 |
| el8.aarch64 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.21.6 1 | AVAIL PIGSTY 0.20.10 1 |
| el9.x86_64 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.20.10 1 |
| el9.aarch64 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.20.10 1 |
| el10.x86_64 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | AVAIL PIGSTY 0.21.12 2 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.7 1 |
| d12.aarch64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.7 1 |
| d13.x86_64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.7 1 |
| u22.aarch64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.x86_64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.aarch64 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.21.12 1 | AVAIL PIGSTY 0.20.7 1 |
@ el8.x86_64 18 pg_search_18 pg_search_18-0.21.6-1PIGSTY.el8.x86_64.rpm pigsty 0.21.6 49.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_18-0.21.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_search_18 pg_search_18-0.21.6-1PIGSTY.el8.aarch64.rpm pigsty 0.21.6 49.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_18-0.21.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_search_18 pg_search_18-0.21.12-1PARADEDB.el9.x86_64.rpm pigsty 0.21.12 49.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_18-0.21.12-1PARADEDB.el9.x86_64.rpm
@ el9.x86_64 18 pg_search_18 pg_search_18-0.21.9-1PARADEDB.el9.x86_64.rpm pigsty 0.21.9 49.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_18-0.21.9-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 18 pg_search_18 pg_search_18-0.21.12-1PARADEDB.el9.aarch64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_18-0.21.12-1PARADEDB.el9.aarch64.rpm
@ el9.aarch64 18 pg_search_18 pg_search_18-0.21.9-1PARADEDB.el9.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_18-0.21.9-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 18 pg_search_18 pg_search_18-0.21.12-1PARADEDB.el10.x86_64.rpm pigsty 0.21.12 49.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_18-0.21.12-1PARADEDB.el10.x86_64.rpm
@ el10.x86_64 18 pg_search_18 pg_search_18-0.21.9-1PARADEDB.el10.x86_64.rpm pigsty 0.21.9 49.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_18-0.21.9-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 18 pg_search_18 pg_search_18-0.21.12-1PARADEDB.el10.aarch64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_18-0.21.12-1PARADEDB.el10.aarch64.rpm
@ el10.aarch64 18 pg_search_18 pg_search_18-0.21.9-1PARADEDB.el10.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_18-0.21.9-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_amd64.deb pigsty 0.21.12 48.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_amd64.deb pigsty 0.21.12 48.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-18-pg-search/postgresql-18-pg-search_0.21.12_arm64.deb
@ el8.x86_64 17 pg_search_17 pg_search_17-0.21.6-1PIGSTY.el8.x86_64.rpm pigsty 0.21.6 49.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_17-0.21.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_search_17 pg_search_17-0.21.6-1PIGSTY.el8.aarch64.rpm pigsty 0.21.6 49.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_17-0.21.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_search_17 pg_search_17-0.21.12-1PARADEDB.el9.x86_64.rpm pigsty 0.21.12 49.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_17-0.21.12-1PARADEDB.el9.x86_64.rpm
@ el9.x86_64 17 pg_search_17 pg_search_17-0.21.9-1PARADEDB.el9.x86_64.rpm pigsty 0.21.9 49.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_17-0.21.9-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 17 pg_search_17 pg_search_17-0.21.12-1PARADEDB.el9.aarch64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_17-0.21.12-1PARADEDB.el9.aarch64.rpm
@ el9.aarch64 17 pg_search_17 pg_search_17-0.21.9-1PARADEDB.el9.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_17-0.21.9-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 17 pg_search_17 pg_search_17-0.21.12-1PARADEDB.el10.x86_64.rpm pigsty 0.21.12 49.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_17-0.21.12-1PARADEDB.el10.x86_64.rpm
@ el10.x86_64 17 pg_search_17 pg_search_17-0.21.9-1PARADEDB.el10.x86_64.rpm pigsty 0.21.9 49.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_17-0.21.9-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 17 pg_search_17 pg_search_17-0.21.12-1PARADEDB.el10.aarch64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_17-0.21.12-1PARADEDB.el10.aarch64.rpm
@ el10.aarch64 17 pg_search_17 pg_search_17-0.21.9-1PARADEDB.el10.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_17-0.21.9-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-17-pg-search/postgresql-17-pg-search_0.21.12_arm64.deb
@ el8.x86_64 16 pg_search_16 pg_search_16-0.21.6-1PIGSTY.el8.x86_64.rpm pigsty 0.21.6 49.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_16-0.21.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_search_16 pg_search_16-0.21.6-1PIGSTY.el8.aarch64.rpm pigsty 0.21.6 49.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_16-0.21.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_search_16 pg_search_16-0.21.12-1PARADEDB.el9.x86_64.rpm pigsty 0.21.12 49.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_16-0.21.12-1PARADEDB.el9.x86_64.rpm
@ el9.x86_64 16 pg_search_16 pg_search_16-0.21.9-1PARADEDB.el9.x86_64.rpm pigsty 0.21.9 49.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_16-0.21.9-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 16 pg_search_16 pg_search_16-0.21.12-1PARADEDB.el9.aarch64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_16-0.21.12-1PARADEDB.el9.aarch64.rpm
@ el9.aarch64 16 pg_search_16 pg_search_16-0.21.9-1PARADEDB.el9.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_16-0.21.9-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 16 pg_search_16 pg_search_16-0.21.12-1PARADEDB.el10.x86_64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_16-0.21.12-1PARADEDB.el10.x86_64.rpm
@ el10.x86_64 16 pg_search_16 pg_search_16-0.21.9-1PARADEDB.el10.x86_64.rpm pigsty 0.21.9 49.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_16-0.21.9-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 16 pg_search_16 pg_search_16-0.21.12-1PARADEDB.el10.aarch64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_16-0.21.12-1PARADEDB.el10.aarch64.rpm
@ el10.aarch64 16 pg_search_16 pg_search_16-0.21.9-1PARADEDB.el10.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_16-0.21.9-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-16-pg-search/postgresql-16-pg-search_0.21.12_arm64.deb
@ el8.x86_64 15 pg_search_15 pg_search_15-0.21.6-1PIGSTY.el8.x86_64.rpm pigsty 0.21.6 49.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_15-0.21.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_search_15 pg_search_15-0.21.6-1PIGSTY.el8.aarch64.rpm pigsty 0.21.6 49.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_15-0.21.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_search_15 pg_search_15-0.21.12-1PARADEDB.el9.x86_64.rpm pigsty 0.21.12 49.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_15-0.21.12-1PARADEDB.el9.x86_64.rpm
@ el9.x86_64 15 pg_search_15 pg_search_15-0.21.9-1PARADEDB.el9.x86_64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_15-0.21.9-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 15 pg_search_15 pg_search_15-0.21.12-1PARADEDB.el9.aarch64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_15-0.21.12-1PARADEDB.el9.aarch64.rpm
@ el9.aarch64 15 pg_search_15 pg_search_15-0.21.9-1PARADEDB.el9.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_15-0.21.9-1PARADEDB.el9.aarch64.rpm
@ el10.x86_64 15 pg_search_15 pg_search_15-0.21.12-1PARADEDB.el10.x86_64.rpm pigsty 0.21.12 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_15-0.21.12-1PARADEDB.el10.x86_64.rpm
@ el10.x86_64 15 pg_search_15 pg_search_15-0.21.9-1PARADEDB.el10.x86_64.rpm pigsty 0.21.9 49.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_15-0.21.9-1PARADEDB.el10.x86_64.rpm
@ el10.aarch64 15 pg_search_15 pg_search_15-0.21.12-1PARADEDB.el10.aarch64.rpm pigsty 0.21.12 49.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_15-0.21.12-1PARADEDB.el10.aarch64.rpm
@ el10.aarch64 15 pg_search_15 pg_search_15-0.21.9-1PARADEDB.el10.aarch64.rpm pigsty 0.21.9 49.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_15-0.21.9-1PARADEDB.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_amd64.deb pigsty 0.21.12 49.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.21.12_arm64.deb pigsty 0.21.12 48.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-15-pg-search/postgresql-15-pg-search_0.21.12_arm64.deb
@ el8.x86_64 14 pg_search_14 pg_search_14-0.20.10-1PARADEDB.el8.x86_64.rpm pigsty 0.20.10 46.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_14-0.20.10-1PARADEDB.el8.x86_64.rpm
@ el8.aarch64 14 pg_search_14 pg_search_14-0.20.10-1PARADEDB.el8.aarch64.rpm pigsty 0.20.10 45.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_14-0.20.10-1PARADEDB.el8.aarch64.rpm
@ el9.x86_64 14 pg_search_14 pg_search_14-0.20.10-1PARADEDB.el9.x86_64.rpm pigsty 0.20.10 46.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_14-0.20.10-1PARADEDB.el9.x86_64.rpm
@ el9.aarch64 14 pg_search_14 pg_search_14-0.20.10-1PARADEDB.el9.aarch64.rpm pigsty 0.20.10 46.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_14-0.20.10-1PARADEDB.el9.aarch64.rpm
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

You can build the DEB packages for `pg_search` using `pig build`:

```bash
pig build pkg pg_search         # build DEB packages
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


**Create Extension**:

```sql
CREATE EXTENSION pg_search;
```


> [!NOTE] THIS EXTENSION is built by ParadeDB team and delivered by the PIGSTY repo

## Usage

https://docs.paradedb.com/documentation/getting-started/quickstart

```sql
CREATE EXTENSION pg_search;

ALTER SYSTEM SET paradedb.pg_search_telemetry TO 'off';

CALL paradedb.create_bm25_test_table(
  schema_name => 'public',
  table_name => 'mock_items'
);

SELECT description, rating, category FROM mock_items LIMIT 3;

-- Create a BM25 index (key_field must be UNIQUE, one BM25 index per table)
CREATE INDEX search_idx ON mock_items
USING bm25 (id, description, category, rating, in_stock, created_at, metadata, weight_range)
WITH (key_field='id');

-- Full-text search with @@@ operator
SELECT description, rating, category
FROM mock_items
WHERE description @@@ 'keyboard' AND rating > 2
ORDER BY rating
LIMIT 5;

-- BM25 relevance scoring
SELECT description, paradedb.score(id)
FROM mock_items
WHERE description @@@ 'keyboard'
ORDER BY paradedb.score(id) DESC
LIMIT 5;

-- Highlighting matched terms
SELECT description, paradedb.snippet(description), paradedb.score(id)
FROM mock_items
WHERE description @@@ 'keyboard'
ORDER BY paradedb.score(id) DESC
LIMIT 5;

-- Exact phrase search (use double quotes inside single quotes)
SELECT description, rating, category
FROM mock_items
WHERE description @@@ '"metal keyboard"';

-- Configure text fields with tokenizers (e.g., English stemming)
DROP INDEX search_idx;
CREATE INDEX search_idx ON mock_items
USING bm25 (id, (description::pdb.simple('stemmer=english')), category)
WITH (key_field='id');
```
