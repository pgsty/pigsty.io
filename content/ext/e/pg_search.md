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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_search-0.26.4.tar.gz pg_search_collect_third_party_licenses-0.26.4.py">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_search-0.26.4.tar.gz pg_search_collect_third_party_licenses-0.26.4.py</div>
    <div class="ext-card__desc">pg_search-0.26.4.tar.gz pg_search_collect_third_party_licenses-0.26.4.py</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_search`**](/ext/e/pg_search) | `0.26.4` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2100  | [**`pg_search`**](/ext/e/pg_search) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `paradedb` |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_fts`](/ext/e/pg_fts) [`pgroonga`](/ext/e/pgroonga) [`pg_rrf`](/ext/e/pg_rrf) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) [`pgfaceting`](/ext/e/pgfaceting) [`roaringbitmap`](/ext/e/roaringbitmap) [`rum`](/ext/e/rum) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Preload required; needs pgvector; conflicts with pg_textsearch/vchord_bm25. 0.26.4 fixes partitioned-search/window cases; built with pgrx 0.19.3.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.4` | {{< pgvers "18,17,16,15" >}} | `pg_search` | `vector` |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.4` | {{< pgvers "18,17,16,15" >}} | `pg_search_$v` | `pgvector_$v` |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.3` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-search` | `postgresql-$v-pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | AVAIL PIGSTY 0.26.4 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | AVAIL PIGSTY 0.26.3 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_search_18 pg_search_18-0.26.4-1PGSTY.el8.x86_64.rpm pigsty 0.26.4 58.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_18-0.26.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_search_18 pg_search_18-0.26.4-1PGSTY.el8.aarch64.rpm pigsty 0.26.4 54.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_18-0.26.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_search_18 pg_search_18-0.26.4-1PGSTY.el9.x86_64.rpm pigsty 0.26.4 59.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_18-0.26.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_search_18 pg_search_18-0.26.4-1PGSTY.el9.aarch64.rpm pigsty 0.26.4 57.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_18-0.26.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_search_18 pg_search_18-0.26.4-1PGSTY.el10.x86_64.rpm pigsty 0.26.4 59.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_18-0.26.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_search_18 pg_search_18-0.26.4-1PGSTY.el10.aarch64.rpm pigsty 0.26.4 57.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_18-0.26.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb pigsty 0.26.3 50.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb pigsty 0.26.3 47.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~trixie_amd64.deb pigsty 0.26.3 50.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~trixie_arm64.deb pigsty 0.26.3 47.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~jammy_amd64.deb pigsty 0.26.3 57.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~jammy_arm64.deb pigsty 0.26.3 56.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~noble_amd64.deb pigsty 0.26.3 57.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~noble_arm64.deb pigsty 0.26.3 55.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~resolute_amd64.deb pigsty 0.26.3 56.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-search postgresql-18-pg-search_0.26.3-1PGSTY~resolute_arm64.deb pigsty 0.26.3 54.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-18-pg-search_0.26.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_search_17 pg_search_17-0.26.4-1PGSTY.el8.x86_64.rpm pigsty 0.26.4 58.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_17-0.26.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_search_17 pg_search_17-0.26.4-1PGSTY.el8.aarch64.rpm pigsty 0.26.4 54.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_17-0.26.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_search_17 pg_search_17-0.26.4-1PGSTY.el9.x86_64.rpm pigsty 0.26.4 59.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_17-0.26.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_search_17 pg_search_17-0.26.4-1PGSTY.el9.aarch64.rpm pigsty 0.26.4 57.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_17-0.26.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_search_17 pg_search_17-0.26.4-1PGSTY.el10.x86_64.rpm pigsty 0.26.4 59.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_17-0.26.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_search_17 pg_search_17-0.26.4-1PGSTY.el10.aarch64.rpm pigsty 0.26.4 57.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_17-0.26.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb pigsty 0.26.3 50.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb pigsty 0.26.3 47.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~trixie_amd64.deb pigsty 0.26.3 50.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~trixie_arm64.deb pigsty 0.26.3 47.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~jammy_amd64.deb pigsty 0.26.3 58.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~jammy_arm64.deb pigsty 0.26.3 56.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~noble_amd64.deb pigsty 0.26.3 57.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~noble_arm64.deb pigsty 0.26.3 56.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~resolute_amd64.deb pigsty 0.26.3 56.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-search postgresql-17-pg-search_0.26.3-1PGSTY~resolute_arm64.deb pigsty 0.26.3 54.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-17-pg-search_0.26.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_search_16 pg_search_16-0.26.4-1PGSTY.el8.x86_64.rpm pigsty 0.26.4 58.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_16-0.26.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_search_16 pg_search_16-0.26.4-1PGSTY.el8.aarch64.rpm pigsty 0.26.4 54.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_16-0.26.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_search_16 pg_search_16-0.26.4-1PGSTY.el9.x86_64.rpm pigsty 0.26.4 59.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_16-0.26.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_search_16 pg_search_16-0.26.4-1PGSTY.el9.aarch64.rpm pigsty 0.26.4 57.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_16-0.26.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_search_16 pg_search_16-0.26.4-1PGSTY.el10.x86_64.rpm pigsty 0.26.4 59.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_16-0.26.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_search_16 pg_search_16-0.26.4-1PGSTY.el10.aarch64.rpm pigsty 0.26.4 57.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_16-0.26.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb pigsty 0.26.3 50.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb pigsty 0.26.3 47.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~trixie_amd64.deb pigsty 0.26.3 50.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~trixie_arm64.deb pigsty 0.26.3 47.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~jammy_amd64.deb pigsty 0.26.3 58.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~jammy_arm64.deb pigsty 0.26.3 56.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~noble_amd64.deb pigsty 0.26.3 58.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~noble_arm64.deb pigsty 0.26.3 56.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~resolute_amd64.deb pigsty 0.26.3 56.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-search postgresql-16-pg-search_0.26.3-1PGSTY~resolute_arm64.deb pigsty 0.26.3 54.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-16-pg-search_0.26.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_search_15 pg_search_15-0.26.4-1PGSTY.el8.x86_64.rpm pigsty 0.26.4 58.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_search_15-0.26.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_search_15 pg_search_15-0.26.4-1PGSTY.el8.aarch64.rpm pigsty 0.26.4 54.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_search_15-0.26.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_search_15 pg_search_15-0.26.4-1PGSTY.el9.x86_64.rpm pigsty 0.26.4 59.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_search_15-0.26.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_search_15 pg_search_15-0.26.4-1PGSTY.el9.aarch64.rpm pigsty 0.26.4 57.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_search_15-0.26.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_search_15 pg_search_15-0.26.4-1PGSTY.el10.x86_64.rpm pigsty 0.26.4 59.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_search_15-0.26.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_search_15 pg_search_15-0.26.4-1PGSTY.el10.aarch64.rpm pigsty 0.26.4 57.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_search_15-0.26.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb pigsty 0.26.3 50.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb pigsty 0.26.3 47.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~trixie_amd64.deb pigsty 0.26.3 50.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~trixie_arm64.deb pigsty 0.26.3 47.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~jammy_amd64.deb pigsty 0.26.3 58.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~jammy_arm64.deb pigsty 0.26.3 56.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~noble_amd64.deb pigsty 0.26.3 57.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~noble_arm64.deb pigsty 0.26.3 56.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~resolute_amd64.deb pigsty 0.26.3 56.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-search postgresql-15-pg-search_0.26.3-1PGSTY~resolute_arm64.deb pigsty 0.26.3 54.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-search/postgresql-15-pg-search_0.26.3-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_search;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_search -v 18  # PG 18
pig ext install -y pg_search -v 17  # PG 17
pig ext install -y pg_search -v 16  # PG 16
pig ext install -y pg_search -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_search_18       # PG 18
dnf install -y pg_search_17       # PG 17
dnf install -y pg_search_16       # PG 16
dnf install -y pg_search_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-search   # PG 18
apt install -y postgresql-17-pg-search   # PG 17
apt install -y postgresql-16-pg-search   # PG 16
apt install -y postgresql-15-pg-search   # PG 15
```


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

- [0.26.4 release]
- [0.26.4 changelog](https://github.com/paradedb/paradedb/blob/v0.26.4/docs/project/changelog/0.26.4.mdx)
- [pg_search 0.26.4 control](https://github.com/paradedb/paradedb/blob/v0.26.4/pg_search/pg_search.control)
- [pg_search 0.26.4 Cargo.toml](https://github.com/paradedb/paradedb/blob/v0.26.4/pg_search/Cargo.toml)(https://github.com/paradedb/paradedb/releases/tag/v0.26.4)

- [docs/project/changelog/0.26.2.mdx](https://api.pgxn.org/src/pg_search/pg_search-0.26.2/docs/project/changelog/0.26.2.mdx)
- [pg_search/sql/pg_search--0.26.1--0.26.2.sql](https://api.pgxn.org/src/pg_search/pg_search-0.26.2/pg_search/sql/pg_search--0.26.1--0.26.2.sql)
- [pg_search/Cargo.toml](https://api.pgxn.org/src/pg_search/pg_search-0.26.2/pg_search/Cargo.toml)

- [Release 0.26.1](https://github.com/paradedb/paradedb/releases/tag/v0.26.1)
- [Control](https://github.com/paradedb/paradedb/blob/529c77e9dffe4bd86b6b7971c019bb26b8eadbfa/pg_search/pg_search.control)

- [0.26.0 migration notes](https://github.com/paradedb/paradedb/blob/aa7f9dd407018036d144a54a3f875c5a00d20cda/docs/project/changelog/0.26.0.mdx)
- [0.26.0 SQL upgrade](https://github.com/paradedb/paradedb/blob/aa7f9dd407018036d144a54a3f875c5a00d20cda/pg_search/sql/pg_search--0.25.11--0.26.0.sql)
- [pg_search v0.25.11 README](https://github.com/paradedb/paradedb/blob/v0.25.11/pg_search/README.md)
- [pg_search v0.25.11 release](https://github.com/paradedb/paradedb/releases/tag/v0.25.11)
- [PGXN 0.25.11 metadata](https://api.pgxn.org/src/pg_search/pg_search-0.25.11/META.json)
- [pg_search v0.25.1 migration notes](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/changelog/0.25.1.mdx)
- [Create a ParadeDB index](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/documentation/indexing/create-index.mdx)
- [Full-text match operators](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/documentation/full-text/match.mdx)
- [BM25 scoring](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/documentation/sorting/score.mdx)
- [Highlighting and snippets](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/documentation/full-text/highlight.mdx)
- [Index vectors](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/documentation/indexing/indexing-vectors.mdx)
- [Query vectors](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/documentation/vector/querying.mdx)
- [Hybrid-search overview](https://github.com/paradedb/paradedb/blob/v0.25.11/docs/documentation/hybrid/overview.mdx)

`pg_search` 0.26.4 adds ParadeDB's full-text, structured, vector, and hybrid search index to PostgreSQL. Version 0.25 uses the `paradedb` index access method; the older `bm25` access-method name remains a compatibility alias. The extension requires `vector`, supports PostgreSQL 15-18 upstream, and must be loaded through `shared_preload_libraries`.

### Install and Build an Index

```ini
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

### Version 0.25.11 and Caveats

- Version 0.25 renamed the primary index access method from `bm25` to `paradedb`. Existing `USING bm25` definitions remain supported, but new examples should use `USING paradedb`.
- Version 0.25.1 supports deterministic vector tie breakers and pushes the vector arm of reciprocal-rank-fusion queries into the index. It also adds `paradedb.vector_clustering_threshold`, whose default is 500, and caps vector-index build parallelism at four workers.
- Version 0.25.1 removes `paradedb.vector_cluster_probe_epsilon` and changes the vector-index bounds gate. After upgrading a database from 0.25.0, `REINDEX` every ParadeDB index that contains a vector field; installing the new shared library and running `ALTER EXTENSION` alone is not sufficient for those indexes.
- Version 0.25.2 is a stability and correctness release. It fixes fieldless `more_like_this` with vector columns, `pdb.fuzzy` under generic prepared plans, orphaned dynamic filters, several parallel subplan and MPP plan-shape errors, and tightens access controls for typemod definitions. It adds no further index migration beyond the inherited 0.25.0 vector-index rebuild.
- Versions 0.25.4 through 0.25.6 add `paradedb.vector_clusters`, partition-aware index builds, aggregate score joins, unified planner-warning controls, and bitmap-scan intersection. They also fix dropped bitmap-intersection children and sortable encoding for negative high-precision `numeric` values. Validate plans and ordering after the upgrade even when no explicit new index migration is documented.
- Versions 0.25.7–0.25.10 extend partition-aware concurrent builds, lateral array unnest and join aggregates, and parallel aggregation. Version 0.25.10 restores parallel top-K planning and fixes HOT-redirect row loss, missing JSON-path values, and aggregate defaults whose types cannot preserve the requested value. Review result correctness and query plans after upgrading.
- Version 0.25.11 fixes a backend crash when a search scan is cancelled or terminated and treats a null `STRING_AGG` delimiter as an empty separator.
- `CREATE EXTENSION pg_search CASCADE` can install the required `vector` extension, but every server process still needs the preload configuration and restart first. Loading it only with `LOAD` or `session_preload_libraries` is insufficient.
- Query plans, tokenization, and ranking can change when an index is rebuilt with different field options. Test relevance and vector recall with production-shaped data before rollout.

### 0.26.0 Migration

Version 0.26.0 changes vector storage to format 4. After updating the library and SQL extension, rebuild every index containing a vector field, including indexes with quantization disabled. Until rebuilt, vector queries fail with a rebuild-required error; writes continue and `REINDEX CONCURRENTLY` is supported. Quantization defaults on for vectors with at least 64 dimensions. Its settings take effect only during index creation or rebuilding. Indexes storing `centroid_ratio` or `training_samples_per_centroid` must be recreated using `training_sample_ratio` and `max_leaf_size`. Rebuild indexes with multiple regex-tokenized fields to correct pattern selection as well.

The release adds beta `partition_by` index partitioning, window-aggregate pushdown over joins, and opt-in `paradedb.spill_to_disk`. Aggregate `visibility` defaults to `transaction`; `raw` skips MVCC checks and must not be mistaken for transaction-visible results. Recheck ranking, recall, plans and storage requirements before application rollout.

### Version 0.26.1

Version 0.26.1 fixes aggregate/filter correctness, RLS behaviour in generic plans and cache handling. It does not remove the 0.26.0 migration requirement: when crossing that release, rebuild every index containing a vector field and recreate indexes using removed vector options. Keep the required vector dependency and server preload/restart configuration.

### Aggregates and Bitmaps in 0.26.2

`pdb.combine_agg(pdb.agg(...)) OVER ()` computes global facets and aggregates across GROUP BY groups, and search operators in aggregate FILTER clauses can be pushed down. New posting bitmaps are enabled by default for eligible count queries combining common terms with AND/OR. The field option `bitmap_postings=false` controls storage; `paradedb.enable_bitmap_postings = off` disables their query use without rebuilding the index.

This release fixes search operators in generic prepared plans, wrong results or crashes when parallel scans are rescanned, and background merges blocking fast primary shutdown when a synchronous standby is missing. Corrected range-filter scores can also change ranking. Install matching libraries, update the SQL extension and restart through the normal preload-library maintenance procedure. Crossing 0.26.0 still requires the vector-index migration described above.

### 0.26.3 Behavior Fixes

0.26.3 fixes integer range boundaries, empty relations, larger LIMIT values, MPP join facets, and cancellation during scans, vector training and VACUUM. Index creation and inserts now reject out-of-range dates. The upgrade restores legacy range tokenizers and corrects configured emoji removal. Join scans add support for window-function FILTERs and volatile projections. Review queries that depend on these boundary behaviors and follow the upstream SQL-extension upgrade procedure in each database. Check upstream and currently built package versions separately.

### 0.26.4 Performance and Stability

Version 0.26.4 adds late materialization for array columns, makes eligible join scans use iterative rank-join for `ORDER BY` and `LIMIT`, and avoids quadratic CJK Lindera token consumption. It fixes wrong file paths in partitioned-table append searches, window-function cases, and helpers for partitioned indexes. The release notes do not introduce a new index-format migration; the 0.26.0 vector-index rebuild requirement still applies.
