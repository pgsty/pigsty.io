---
title: "pg_search"
linkTitle: "pg_search"
description: "Full text search for PostgreSQL using BM25"
weight: 2100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/paradedb/paradedb/tree/main/pg_search">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">main/pg_search</div>
    <div class="ext-card__desc">https://github.com/paradedb/paradedb/tree/main/pg_search</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_search-0.25.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_search-0.25.1.tar.gz</div>
    <div class="ext-card__desc">pg_search-0.25.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_search`**](/ext/e/pg_search) | `0.25.1` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2100  | [**`pg_search`**](/ext/e/pg_search) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `paradedb` |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_fts`](/ext/e/pg_fts) [`pgroonga`](/ext/e/pgroonga) [`pg_rrf`](/ext/e/pg_rrf) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) [`pgfaceting`](/ext/e/pgfaceting) [`roaringbitmap`](/ext/e/roaringbitmap) [`rum`](/ext/e/rum) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires shared_preload_libraries=pg_search and pgvector; bm25 access method conflicts with pg_textsearch and vchord_bm25; PIGSTY uses pgrx 0.19.1 for upstream pgrx 0.19.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.25.1` | {{< pgvers "15,16,17,18" >}} | `pg_search` | `vector` |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.25.1` | {{< pgvers "18,17,16,15" >}} | `pg_search_$v` | `pgvector_$v`, `openblas` |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.25.1` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-search` | `postgresql-$v-pgvector`, `libopenblas0` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.7 1 |
| d12.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.7 1 |
| d13.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.7 1 |
| u22.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.7 1 |
| u24.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.20.7 1 |
| u26.x86_64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | AVAIL PIGSTY 0.25.1 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_search_18 pg_search_18-0.25.1-1PIGSTY.el8.x86_64.rpm pigsty 0.25.1 72.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_18-0.25.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_search_18 pg_search_18-0.25.1-1PIGSTY.el8.aarch64.rpm pigsty 0.25.1 69.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_18-0.25.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_search_18 pg_search_18-0.25.1-1PIGSTY.el9.x86_64.rpm pigsty 0.25.1 70.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_18-0.25.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_search_18 pg_search_18-0.25.1-1PIGSTY.el9.aarch64.rpm pigsty 0.25.1 69.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_18-0.25.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_search_18 pg_search_18-0.25.1-1PIGSTY.el10.x86_64.rpm pigsty 0.25.1 70.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_18-0.25.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_search_18 pg_search_18-0.25.1-1PIGSTY.el10.aarch64.rpm pigsty 0.25.1 69.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_18-0.25.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb pigsty 0.25.1 63.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb pigsty 0.25.1 63.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb pigsty 0.25.1 69.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb pigsty 0.25.1 67.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~noble_amd64.deb pigsty 0.25.1 68.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~noble_arm64.deb pigsty 0.25.1 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb pigsty 0.25.1 68.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_search_17 pg_search_17-0.25.1-1PIGSTY.el8.x86_64.rpm pigsty 0.25.1 72.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_17-0.25.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_search_17 pg_search_17-0.25.1-1PIGSTY.el8.aarch64.rpm pigsty 0.25.1 69.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_17-0.25.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_search_17 pg_search_17-0.25.1-1PIGSTY.el9.x86_64.rpm pigsty 0.25.1 70.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_17-0.25.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_search_17 pg_search_17-0.25.1-1PIGSTY.el9.aarch64.rpm pigsty 0.25.1 69.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_17-0.25.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_search_17 pg_search_17-0.25.1-1PIGSTY.el10.x86_64.rpm pigsty 0.25.1 70.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_17-0.25.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_search_17 pg_search_17-0.25.1-1PIGSTY.el10.aarch64.rpm pigsty 0.25.1 69.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_17-0.25.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb pigsty 0.25.1 63.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb pigsty 0.25.1 63.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb pigsty 0.25.1 69.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb pigsty 0.25.1 67.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~noble_amd64.deb pigsty 0.25.1 68.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~noble_arm64.deb pigsty 0.25.1 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb pigsty 0.25.1 68.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb pigsty 0.25.1 67.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_search_16 pg_search_16-0.25.1-1PIGSTY.el8.x86_64.rpm pigsty 0.25.1 72.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_16-0.25.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_search_16 pg_search_16-0.25.1-1PIGSTY.el8.aarch64.rpm pigsty 0.25.1 69.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_16-0.25.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_search_16 pg_search_16-0.25.1-1PIGSTY.el9.x86_64.rpm pigsty 0.25.1 70.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_16-0.25.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_search_16 pg_search_16-0.25.1-1PIGSTY.el9.aarch64.rpm pigsty 0.25.1 69.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_16-0.25.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_search_16 pg_search_16-0.25.1-1PIGSTY.el10.x86_64.rpm pigsty 0.25.1 70.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_16-0.25.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_search_16 pg_search_16-0.25.1-1PIGSTY.el10.aarch64.rpm pigsty 0.25.1 69.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_16-0.25.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb pigsty 0.25.1 63.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb pigsty 0.25.1 63.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb pigsty 0.25.1 69.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb pigsty 0.25.1 67.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~noble_amd64.deb pigsty 0.25.1 68.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~noble_arm64.deb pigsty 0.25.1 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb pigsty 0.25.1 68.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_search_15 pg_search_15-0.25.1-1PIGSTY.el8.x86_64.rpm pigsty 0.25.1 72.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_15-0.25.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_search_15 pg_search_15-0.25.1-1PIGSTY.el8.aarch64.rpm pigsty 0.25.1 69.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_15-0.25.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_search_15 pg_search_15-0.25.1-1PIGSTY.el9.x86_64.rpm pigsty 0.25.1 70.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_15-0.25.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_search_15 pg_search_15-0.25.1-1PIGSTY.el9.aarch64.rpm pigsty 0.25.1 69.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_15-0.25.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_search_15 pg_search_15-0.25.1-1PIGSTY.el10.x86_64.rpm pigsty 0.25.1 70.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_15-0.25.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_search_15 pg_search_15-0.25.1-1PIGSTY.el10.aarch64.rpm pigsty 0.25.1 69.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_15-0.25.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb pigsty 0.25.1 63.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb pigsty 0.25.1 63.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb pigsty 0.25.1 69.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb pigsty 0.25.1 67.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~noble_amd64.deb pigsty 0.25.1 68.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~noble_arm64.deb pigsty 0.25.1 67.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb pigsty 0.25.1 68.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb pigsty 0.25.1 67.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.25.1-1PIGSTY~resolute_arm64.deb
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
CREATE EXTENSION pg_search CASCADE;  -- requires: vector
```

## Usage

Sources:

- [pg_search v0.25.1 README](https://github.com/paradedb/paradedb/blob/v0.25.1/pg_search/README.md)
- [pg_search v0.25.1 release](https://github.com/paradedb/paradedb/releases/tag/v0.25.1)
- [pg_search v0.25.1 changelog](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/changelog/0.25.1.mdx)
- [Create a ParadeDB index](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/documentation/indexing/create-index.mdx)
- [Full-text match operators](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/documentation/full-text/match.mdx)
- [BM25 scoring](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/documentation/sorting/score.mdx)
- [Highlighting and snippets](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/documentation/full-text/highlight.mdx)
- [Index vectors](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/documentation/indexing/indexing-vectors.mdx)
- [Query vectors](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/documentation/vector/querying.mdx)
- [Hybrid-search overview](https://github.com/paradedb/paradedb/blob/v0.25.1/docs/documentation/hybrid/overview.mdx)

`pg_search` adds ParadeDB's full-text, structured, vector, and hybrid search index to PostgreSQL. Version 0.25 uses the `paradedb` index access method; the older `bm25` access-method name remains a compatibility alias. The extension requires `vector`, supports PostgreSQL 15-18 upstream, and must be loaded through `shared_preload_libraries`.

### Install and Build an Index

```conf
shared_preload_libraries = 'pg_search'
```

Restart PostgreSQL, then create the extension and a table with a stable unique key:

```sql
CREATE EXTENSION pg_search CASCADE;

CREATE TABLE documents (
  id          bigint PRIMARY KEY,
  title       text,
  body        text,
  category    text,
  embedding   vector(768)
);

CREATE INDEX documents_search_idx ON documents
USING paradedb (
  id,
  title,
  body,
  category,
  embedding vector_cosine_ops
)
WITH (key_field = 'id');
```

The `key_field` must be the first indexed column and uniquely identify every row. A text key must be indexed without tokenization. A table can have only one ParadeDB index, so include every searchable field in that index.

### Full-Text Search

Use `|||` to match any token and `&&&` to require all tokens:

```sql
SELECT id, title, pdb.score(id) AS score
FROM documents
WHERE body ||| 'postgresql search'
ORDER BY score DESC, id;

SELECT id, pdb.snippet(body) AS excerpt
FROM documents
WHERE body &&& 'postgresql indexing';
```

`pdb.score(key_field)` exposes the relevance score for the current row. `pdb.snippet(indexed_text_column)` returns a highlighted excerpt. These helpers are meaningful only in a query driven by a ParadeDB search predicate.

### Vector Search

Vector indexing is beta in the 0.25 line and uses the `vector` type from pgvector. Choose the operator class when the index is created; changing the metric requires rebuilding the index.

```sql
SELECT id, title, embedding <=> $1::vector AS distance
FROM documents
WHERE id @@@ pdb.all()
ORDER BY embedding <=> $1::vector, id
LIMIT 20;
```

Supported index operator classes are `vector_l2_ops`, `vector_ip_ops`, and `vector_cosine_ops`. The 0.25 vector index does not index `halfvec`, `sparsevec`, or `bit` columns.

### Hybrid Search

A single ParadeDB index can combine lexical predicates, structured filters, and vector ordering. For more elaborate fusion, use the documented RRF and weighted hybrid-search functions instead of adding scores from unrelated scales directly.

```sql
SELECT id, title, pdb.score(id) AS lexical_score
FROM documents
WHERE body ||| 'postgresql extension'
  AND category === 'database'
ORDER BY embedding <=> $1::vector, id
LIMIT 20;
```

### Version 0.25.1 and Caveats

- Version 0.25 renamed the primary index access method from `bm25` to `paradedb`. Existing `USING bm25` definitions remain supported, but new examples should use `USING paradedb`.
- Version 0.25.1 supports deterministic vector tie breakers and pushes the vector arm of reciprocal-rank-fusion queries into the index. It also adds `paradedb.vector_clustering_threshold`, whose default is 500, and caps vector-index build parallelism at four workers.
- Version 0.25.1 removes `paradedb.vector_cluster_probe_epsilon` and changes the vector-index bounds gate. After upgrading a database from 0.25.0, `REINDEX` every ParadeDB index that contains a vector field; installing the new shared library and running `ALTER EXTENSION` alone is not sufficient for those indexes.
- `CREATE EXTENSION pg_search CASCADE` can install the required `vector` extension, but every server process still needs the preload configuration and restart first.
- Query plans, tokenization, and ranking can change when an index is rebuilt with different field options. Test relevance and vector recall with production-shaped data before rollout.
