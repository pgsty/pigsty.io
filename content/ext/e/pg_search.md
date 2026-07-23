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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_search-0.24.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_search-0.24.3.tar.gz</div>
    <div class="ext-card__desc">pg_search-0.24.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_search`**](/ext/e/pg_search) | `0.24.3` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2100  | [**`pg_search`**](/ext/e/pg_search) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `paradedb` |
{.ext-table}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pgroonga_database`](/ext/e/pgroonga_database) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_trgm`](/ext/e/pg_trgm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> bm25 access method conflicts with pg_textsearch and vchord_bm25; PIGSTY packaging uses pgrx 0.19.1 and the pinned builder Rust toolchain instead of upstream rolling stable.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.24.3` | {{< pgvers "18,17,16,15" >}} | `pg_search` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.24.3` | {{< pgvers "18,17,16,15" >}} | `pg_search_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.24.3` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-search` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.7 1 |
| d12.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.7 1 |
| d13.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.7 1 |
| u22.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.20.7 1 |
| u26.x86_64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | AVAIL PIGSTY 0.24.3 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_search_18 pg_search_18-0.24.3-1PIGSTY.el8.x86_64.rpm pigsty 0.24.3 70.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_18-0.24.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_search_18 pg_search_18-0.24.3-1PIGSTY.el8.aarch64.rpm pigsty 0.24.3 68.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_18-0.24.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_search_18 pg_search_18-0.24.3-1PIGSTY.el9.x86_64.rpm pigsty 0.24.3 69.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_18-0.24.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_search_18 pg_search_18-0.24.3-1PIGSTY.el9.aarch64.rpm pigsty 0.24.3 68.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_18-0.24.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_search_18 pg_search_18-0.24.3-1PIGSTY.el10.x86_64.rpm pigsty 0.24.3 69.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_18-0.24.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_search_18 pg_search_18-0.24.3-1PIGSTY.el10.aarch64.rpm pigsty 0.24.3 68.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_18-0.24.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb pigsty 0.24.3 67.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb pigsty 0.24.3 65.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~noble_amd64.deb pigsty 0.24.3 67.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~noble_arm64.deb pigsty 0.24.3 65.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb pigsty 0.24.3 67.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb pigsty 0.24.3 65.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_search_17 pg_search_17-0.24.3-1PIGSTY.el8.x86_64.rpm pigsty 0.24.3 71.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_17-0.24.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_search_17 pg_search_17-0.24.3-1PIGSTY.el8.aarch64.rpm pigsty 0.24.3 68.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_17-0.24.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_search_17 pg_search_17-0.24.3-1PIGSTY.el9.x86_64.rpm pigsty 0.24.3 69.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_17-0.24.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_search_17 pg_search_17-0.24.3-1PIGSTY.el9.aarch64.rpm pigsty 0.24.3 68.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_17-0.24.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_search_17 pg_search_17-0.24.3-1PIGSTY.el10.x86_64.rpm pigsty 0.24.3 69.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_17-0.24.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_search_17 pg_search_17-0.24.3-1PIGSTY.el10.aarch64.rpm pigsty 0.24.3 68.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_17-0.24.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb pigsty 0.24.3 67.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb pigsty 0.24.3 65.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~noble_amd64.deb pigsty 0.24.3 67.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~noble_arm64.deb pigsty 0.24.3 65.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb pigsty 0.24.3 67.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb pigsty 0.24.3 65.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_search_16 pg_search_16-0.24.3-1PIGSTY.el8.x86_64.rpm pigsty 0.24.3 71.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_16-0.24.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_search_16 pg_search_16-0.24.3-1PIGSTY.el8.aarch64.rpm pigsty 0.24.3 68.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_16-0.24.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_search_16 pg_search_16-0.24.3-1PIGSTY.el9.x86_64.rpm pigsty 0.24.3 69.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_16-0.24.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_search_16 pg_search_16-0.24.3-1PIGSTY.el9.aarch64.rpm pigsty 0.24.3 68.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_16-0.24.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_search_16 pg_search_16-0.24.3-1PIGSTY.el10.x86_64.rpm pigsty 0.24.3 69.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_16-0.24.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_search_16 pg_search_16-0.24.3-1PIGSTY.el10.aarch64.rpm pigsty 0.24.3 68.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_16-0.24.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb pigsty 0.24.3 67.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb pigsty 0.24.3 65.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~noble_amd64.deb pigsty 0.24.3 67.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~noble_arm64.deb pigsty 0.24.3 65.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb pigsty 0.24.3 67.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb pigsty 0.24.3 65.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_search_15 pg_search_15-0.24.3-1PIGSTY.el8.x86_64.rpm pigsty 0.24.3 70.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_15-0.24.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_search_15 pg_search_15-0.24.3-1PIGSTY.el8.aarch64.rpm pigsty 0.24.3 68.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_15-0.24.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_search_15 pg_search_15-0.24.3-1PIGSTY.el9.x86_64.rpm pigsty 0.24.3 69.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_15-0.24.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_search_15 pg_search_15-0.24.3-1PIGSTY.el9.aarch64.rpm pigsty 0.24.3 68.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_15-0.24.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_search_15 pg_search_15-0.24.3-1PIGSTY.el10.x86_64.rpm pigsty 0.24.3 69.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_15-0.24.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_search_15 pg_search_15-0.24.3-1PIGSTY.el10.aarch64.rpm pigsty 0.24.3 68.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_15-0.24.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb pigsty 0.24.3 65.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb pigsty 0.24.3 62.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb pigsty 0.24.3 67.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb pigsty 0.24.3 65.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~noble_amd64.deb pigsty 0.24.3 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~noble_arm64.deb pigsty 0.24.3 65.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb pigsty 0.24.3 67.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb pigsty 0.24.3 65.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.24.3-1PIGSTY~resolute_arm64.deb
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

Sources:

- [pg_search v0.24.3 README](https://github.com/paradedb/paradedb/blob/v0.24.3/pg_search/README.md)
- [pg_search v0.24.3 release notes](https://github.com/paradedb/paradedb/releases/tag/v0.24.3)
- [ParadeDB documentation](https://docs.paradedb.com/)

pg_search adds ParadeDB's BM25 access method and query operators to PostgreSQL for ranked full-text, structured, and hybrid search. Use it when search must remain transactional with PostgreSQL data and must support BM25 scoring, highlighting, filters, aggregates, and joins.

### Create the Extension

    CREATE EXTENSION pg_search;

Upstream v0.24.3 supports PostgreSQL 15 and later. Use a build packaged for the exact PostgreSQL major version. The extension participates in planner and executor paths, so test query plans and resource use before production upgrades.

### Build a BM25 Index

Create a BM25 index with a stable unique key field:

    CREATE INDEX products_search_idx
    ON products
    USING bm25 (
      id,
      title,
      description,
      category,
      rating
    )
    WITH (key_field = 'id');

Keep the key field unique and non-null. Index only fields used by search or filtering; every indexed field increases build time, disk use, and write amplification.

### Query, Rank, and Highlight

The @@@ operator matches a field or indexed row against a ParadeDB query:

    SELECT id,
           title,
           paradedb.score(id) AS score,
           paradedb.snippet(description) AS snippet
    FROM products
    WHERE description @@@ 'wireless keyboard'
      AND category = 'electronics'
    ORDER BY score DESC
    LIMIT 20;

Use field-qualified query strings or the paradedb query constructors when user input must be constrained. Do not concatenate untrusted input into query syntax without validation.

For boolean queries, paradedb.boolean() can combine must, should, and must_not clauses and can set minimum_should_match. The extension also exposes index_created_at() for inspecting index creation time.

### User-Facing Object Index

- bm25: index access method for text and structured fields.
- @@@: search-match operator used in WHERE clauses.
- paradedb.score(key): BM25 relevance score for a matching row.
- paradedb.snippet(field): highlighted excerpt for the current match.
- paradedb.parse(...), paradedb.term(...), paradedb.boolean(...): typed query constructors.
- paradedb.index_info(...): index metadata and field configuration.
- paradedb.index_created_at(...): index creation timestamp.

### Version 0.24.3 Operational Changes

The 0.24.x line enables more aggregate and join scan paths and adds time and timetz support. Version 0.24.3 also bounds sequential-scan buffering, caps index-build worker memory, checks available disk space earlier, fixes GROUP BY cardinality routing, and raises an error when Tantivy would truncate a value.

These safeguards reduce runaway resource use but do not eliminate capacity planning. Monitor temporary space, index size, build duration, and query memory. Re-run representative EXPLAIN ANALYZE plans after upgrading because planner behavior can change.

### Compatibility and Caveats

- pg_search uses its own BM25 index implementation. Do not assume an index created by another extension is interchangeable.
- Local catalog metadata reports a bm25 access-method conflict with pg_textsearch and vchord_bm25; avoid loading competing implementations in the same database unless their documentation explicitly supports coexistence.
- Search indexes must be maintained with the table and can materially increase update cost.
- Ranking is query- and corpus-dependent. Benchmark with production-like text and filters rather than treating example scores as portable.
