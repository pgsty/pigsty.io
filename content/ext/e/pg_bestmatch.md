---
title: "pg_bestmatch"
linkTitle: "pg_bestmatch"
description: "Generate BM25 sparse vector inside PostgreSQL"
weight: 2140
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tensorchord/pg_bestmatch.rs">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tensorchord/pg_bestmatch.rs</div>
    <div class="ext-card__desc">https://github.com/tensorchord/pg_bestmatch.rs</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_bestmatch-0.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_bestmatch-0.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_bestmatch-0.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_bestmatch`**](/ext/e/pg_bestmatch) | `0.0.2` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2140  | [**`pg_bestmatch`**](/ext/e/pg_bestmatch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `bm_catalog` |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`pg_search`](/ext/e/pg_search) [`vchord_bm25`](/ext/e/vchord_bm25) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> manual updated pgrx by Vonng


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_bestmatch` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_bestmatch_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-bestmatch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
@ el8.x86_64 18 pg_bestmatch_18 pg_bestmatch_18-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 7.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bestmatch_18-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_bestmatch_18 pg_bestmatch_18-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bestmatch_18-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_bestmatch_18 pg_bestmatch_18-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bestmatch_18-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_bestmatch_18 pg_bestmatch_18-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bestmatch_18-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_bestmatch_18 pg_bestmatch_18-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bestmatch_18-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_bestmatch_18 pg_bestmatch_18-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bestmatch_18-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-bestmatch postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-18-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_bestmatch_17 pg_bestmatch_17-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 7.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bestmatch_17-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_bestmatch_17 pg_bestmatch_17-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bestmatch_17-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_bestmatch_17 pg_bestmatch_17-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bestmatch_17-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_bestmatch_17 pg_bestmatch_17-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bestmatch_17-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_bestmatch_17 pg_bestmatch_17-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bestmatch_17-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_bestmatch_17 pg_bestmatch_17-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bestmatch_17-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 5.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-bestmatch postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-17-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_bestmatch_16 pg_bestmatch_16-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 7.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bestmatch_16-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_bestmatch_16 pg_bestmatch_16-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bestmatch_16-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_bestmatch_16 pg_bestmatch_16-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bestmatch_16-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_bestmatch_16 pg_bestmatch_16-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bestmatch_16-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_bestmatch_16 pg_bestmatch_16-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bestmatch_16-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_bestmatch_16 pg_bestmatch_16-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bestmatch_16-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 5.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-bestmatch postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-16-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_bestmatch_15 pg_bestmatch_15-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 7.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bestmatch_15-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_bestmatch_15 pg_bestmatch_15-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bestmatch_15-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_bestmatch_15 pg_bestmatch_15-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bestmatch_15-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_bestmatch_15 pg_bestmatch_15-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bestmatch_15-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_bestmatch_15 pg_bestmatch_15-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bestmatch_15-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_bestmatch_15 pg_bestmatch_15-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bestmatch_15-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 5.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-bestmatch postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-15-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_bestmatch_14 pg_bestmatch_14-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 7.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bestmatch_14-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_bestmatch_14 pg_bestmatch_14-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bestmatch_14-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_bestmatch_14 pg_bestmatch_14-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bestmatch_14-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_bestmatch_14 pg_bestmatch_14-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bestmatch_14-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_bestmatch_14 pg_bestmatch_14-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bestmatch_14-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_bestmatch_14 pg_bestmatch_14-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bestmatch_14-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 5.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-bestmatch postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bestmatch/postgresql-14-pg-bestmatch_0.0.2-2PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_bestmatch` using `pig build`:

```bash
pig build pkg pg_bestmatch         # build RPM / DEB packages
```


## Install

You can install `pg_bestmatch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_bestmatch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_bestmatch -v 18  # PG 18
pig ext install -y pg_bestmatch -v 17  # PG 17
pig ext install -y pg_bestmatch -v 16  # PG 16
pig ext install -y pg_bestmatch -v 15  # PG 15
pig ext install -y pg_bestmatch -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_bestmatch_18       # PG 18
dnf install -y pg_bestmatch_17       # PG 17
dnf install -y pg_bestmatch_16       # PG 16
dnf install -y pg_bestmatch_15       # PG 15
dnf install -y pg_bestmatch_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-bestmatch   # PG 18
apt install -y postgresql-17-pg-bestmatch   # PG 17
apt install -y postgresql-16-pg-bestmatch   # PG 16
apt install -y postgresql-15-pg-bestmatch   # PG 15
apt install -y postgresql-14-pg-bestmatch   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_bestmatch';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_bestmatch;
```


## Usage

- repo: https://github.com/tensorchord/pg_bestmatch.rs
- benchmark: https://hazyresearch.stanford.edu/blog/2024-05-20-m2-bert-retrieval


### How does it work?

- Create an BM25 statistics based on your document set by `bm25_create(table_name, column_name, statistic_name);`. It will create a materilized view to record the stats.
- Generate document sparse vector by `bm25_document_to_svector(statistic_name, passage)`
- For query, generate query sparse vector `bm25_query_to_svector(statistic_name, query)`
- Calculate the score by dot product between the query sparse vector and the document sparse vector
- Currently we use huggingface tokenizer with `bert-base-uncased` vocabulary set to tokenize words. Might support more configuration on tokenizer in the future.


### Install

```sql
CREATE EXTENSION pg_bestmatch;
SET search_path TO public, bm_catalog;
```



--------

## Example

Here is an example workflow demonstrating the usage of this extension with the example of [Stanford LoCo benchmark](https://hazyresearch.stanford.edu/blog/2024-05-20-m2-bert-retrieval).

0. Load the dataset. Here is a script for you if you want to experience `pg_bestmatch` with the dataset.

```sh
wget https://huggingface.co/api/datasets/hazyresearch/LoCoV1-Documents/parquet/default/test/0.parquet -O documents.parquet
wget https://huggingface.co/api/datasets/hazyresearch/LoCoV1-Queries/parquet/default/test/0.parquet -O queries.parquet
```

```python
import pandas as pd
from sqlalchemy import create_engine
import numpy as np
from psycopg2.extensions import register_adapter, AsIs

def adapter_numpy_float64(numpy_float64):
    return AsIs(numpy_float64)

def adapter_numpy_int64(numpy_int64):
    return AsIs(numpy_int64)

def adapter_numpy_float32(numpy_float32):
    return AsIs(numpy_float32)

def adapter_numpy_int32(numpy_int32):
    return AsIs(numpy_int32)

def adapter_numpy_array(numpy_array):
    return AsIs(tuple(numpy_array))

register_adapter(np.float64, adapter_numpy_float64)
register_adapter(np.int64, adapter_numpy_int64)
register_adapter(np.float32, adapter_numpy_float32)
register_adapter(np.int32, adapter_numpy_int32)
register_adapter(np.ndarray, adapter_numpy_array)

db_url = "postgresql://localhost:5432/pg_bestmatch_test"
engine = create_engine(db_url)

def load_documents():
    df = pd.read_parquet("documents.parquet")
    df.to_sql("documents", engine, if_exists='replace', index=False)

def load_queries():
    df = pd.read_parquet("queries.parquet")
    df['answer_pids'] = df['answer_pids'].apply(lambda x: str(x[0]))    
    df.to_sql("queries", engine, if_exists='replace', index=False)

load_documents()
load_queries()
```

1. Create BM25 statistics for the `documents` table.

```sql
SELECT bm25_create('documents', 'passage', 'documents_passage_bm25', 0.75, 1.2);
```

2. Add an embedding column to the `documents` and `queries` tables and update the embeddings for documents and queries.

```sql
ALTER TABLE documents ADD COLUMN embedding svector; -- for pgvecto.rs users
ALTER TABLE documents ADD COLUMN embedding sparsevec; -- for pgvector users

UPDATE documents SET embedding = bm25_document_to_svector('documents_passage_bm25', passage)::svector; -- for pgvecto.rs users
UPDATE documents SET embedding = bm25_document_to_svector('documents_passage_bm25', passage, 'pgvector')::sparsevec; -- for pgvector users
```

3. (Optional) Create a vector index on the sparse vector column.

```sql
CREATE INDEX ON documents USING vectors (embedding svector_dot_ops); -- for pgvecto.rs users
CREATE INDEX ON documents USING ivfflat (embedding sparsevec_ip_ops); -- for pgvector users
```

4. Perform a vector search to find the most relevant documents for each query.

```sql
ALTER TABLE queries ADD COLUMN embedding svector; -- for pgvecto.rs users
ALTER TABLE queries ADD COLUMN embedding sparsevec; -- for pgvector users

UPDATE queries SET embedding = bm25_query_to_svector('documents_passage_bm25', query)::svector; -- for pgvecto.rs users
UPDATE queries SET embedding = bm25_query_to_svector('documents_passage_bm25', query, 'pgvector')::sparsevec; -- for pgvector users

SELECT sum((array[answer_pids] = array(SELECT pid FROM documents WHERE queries.dataset = documents.dataset ORDER BY queries.embedding <#> documents.embedding LIMIT 1))::int) FROM queries;
```

This workflow showcases how to leverage BM25 text queries and vector search in PostgreSQL using this extension. The Top 1 recall of BM25 on this dataset is `0.77`. If you reproduce the result, your operations are correct.


--------

## Comparison with pg_search

- `pg_bestmatch.rs` only provides methods for generating sparse vectors and does not support index-based search (which can be achieved by pgvecto.rs or pgvector).
- `pg_search` performs BM25 retrieval via the external `tantivy` engine, which may have limitations when combined with transactions, filters, or JOIN operations. Since `pg_bestmatch.rs` is entirely native to Postgres, it offers full compatibility with these operations inside postgres.


--------

## Reference

- `tokenize`
    - Description: Tokenizes an input string into individual tokens.
    - Example:
      ```sql
      SELECT tokenize('i have an apple'); -- result: {i,have,an,apple}
      ```
- `bm25_create`
    - Description: Creates BM25 statistics for a specified table and column.
    - Usage:
      ```sql
      SELECT bm25_create('documents', 'passage', 'documents_passage_bm25');
      ```
    - Parameters:
        - `table_name`: Name of the table.
        - `column_name`: Name of the column.
        - `stat_name`: Name of the BM25 statistics.
        - `b`: BM25 parameter (default 0.75).
        - `k`: BM25 parameter (default 1.2).
- `bm25_refresh`
    - Description: Updates the BM25 statistics to reflect any changes in the underlying data.
    - Usage:
      ```sql
      SELECT bm25_refresh('documents_passage_bm25');
      ```
    - Parameters:
        - `stat_name`: Name of the BM25 statistics to update.
- `bm25_drop`
    - Description: Deletes the BM25 statistics for a specified table and column.
    - Usage:
      ```sql
      SELECT bm25_drop('documents_passage_bm25');
      ```
    - Parameters:
        - `stat_name`: Name of the BM25 statistics to delete.
- `bm25_document_to_svector`
    - Description: Converts document text into a sparse vector representation.
    - Usage:
      ```sql
      SELECT bm25_document_to_svector('documents_passage_bm25', 'document_text');
      ```
    - Parameters:
        - `stat_name`: Name of the BM25 statistics.
        - `document_text`: The text of the document.
        - `style`: Emits `pgvecto.rs`-style sparse vector or `pgvector`-style sparse vector.
- `bm25_query_to_svector`
    - Description: Converts query text into a sparse vector representation.
    - Usage:
      ```sql
      SELECT bm25_query_to_svector('documents_passage_bm25', 'We begin, as always, with the text.');
      ```
    - Parameters:
        - `stat_name`: Name of the BM25 statistics.
        - `query_text`: The text of the query.
        - `style`: Emits `pgvecto.rs`-style sparse vector or `pgvector`-style sparse vector.