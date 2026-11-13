---
title: "vchord_bm25"
linkTitle: "vchord_bm25"
description: "A postgresql extension for bm25 ranking algorithm"
weight: 2160
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://vchord.pgsty.com/docs/bm25/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://vchord.pgsty.com/docs/bm25/</div>
    <div class="ext-card__desc">https://vchord.pgsty.com/docs/bm25/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/vchord_bm25-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">vchord_bm25-1.1.0.tar.gz</div>
    <div class="ext-card__desc">vchord_bm25-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`vchord_bm25`**](/ext/e/vchord_bm25) | `1.1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30only" href="/ext/license#agpl30only">AGPL-3.0-only</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2160  | [**`vchord_bm25`**](/ext/e/vchord_bm25) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pg_fts`](/ext/e/pg_fts) [`pgroonga`](/ext/e/pgroonga) [`pg_rrf`](/ext/e/pg_rrf) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Preload; no in-place upgrade from 0.3.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `vchord_bm25` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `vchord_bm25_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-vchord-bm25` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
@ el8.x86_64 18 vchord_bm25_18 vchord_bm25_18-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_18-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 vchord_bm25_18 vchord_bm25_18-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_18-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 vchord_bm25_18 vchord_bm25_18-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_18-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 vchord_bm25_18 vchord_bm25_18-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_18-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 vchord_bm25_18 vchord_bm25_18-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_18-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 vchord_bm25_18 vchord_bm25_18-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_18-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 vchord_bm25_17 vchord_bm25_17-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_17-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 vchord_bm25_17 vchord_bm25_17-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_17-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 vchord_bm25_17 vchord_bm25_17-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_17-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 vchord_bm25_17 vchord_bm25_17-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_17-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 vchord_bm25_17 vchord_bm25_17-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_17-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 vchord_bm25_17 vchord_bm25_17-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_17-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 vchord_bm25_16 vchord_bm25_16-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_16-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 vchord_bm25_16 vchord_bm25_16-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_16-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 vchord_bm25_16 vchord_bm25_16-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_16-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 vchord_bm25_16 vchord_bm25_16-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_16-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 vchord_bm25_16 vchord_bm25_16-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_16-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 vchord_bm25_16 vchord_bm25_16-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_16-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 vchord_bm25_15 vchord_bm25_15-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_15-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 vchord_bm25_15 vchord_bm25_15-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_15-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 vchord_bm25_15 vchord_bm25_15-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_15-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 vchord_bm25_15 vchord_bm25_15-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_15-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 vchord_bm25_15 vchord_bm25_15-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_15-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 vchord_bm25_15 vchord_bm25_15-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_15-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 vchord_bm25_14 vchord_bm25_14-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_14-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 vchord_bm25_14 vchord_bm25_14-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_14-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 vchord_bm25_14 vchord_bm25_14-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_14-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 vchord_bm25_14 vchord_bm25_14-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_14-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 vchord_bm25_14 vchord_bm25_14-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_14-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 vchord_bm25_14 vchord_bm25_14-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_14-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_1.1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `vchord_bm25` using `pig build`:

```bash
pig build pkg vchord_bm25         # build RPM / DEB packages
```


## Install

You can install `vchord_bm25` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install vchord_bm25;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y vchord_bm25 -v 18  # PG 18
pig ext install -y vchord_bm25 -v 17  # PG 17
pig ext install -y vchord_bm25 -v 16  # PG 16
pig ext install -y vchord_bm25 -v 15  # PG 15
pig ext install -y vchord_bm25 -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y vchord_bm25_18       # PG 18
dnf install -y vchord_bm25_17       # PG 17
dnf install -y vchord_bm25_16       # PG 16
dnf install -y vchord_bm25_15       # PG 15
dnf install -y vchord_bm25_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-vchord-bm25   # PG 18
apt install -y postgresql-17-vchord-bm25   # PG 17
apt install -y postgresql-16-vchord-bm25   # PG 16
apt install -y postgresql-15-vchord-bm25   # PG 15
apt install -y postgresql-14-vchord-bm25   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'vchord_bm25';
```


**Create Extension**:

```sql
CREATE EXTENSION vchord_bm25;
```

## Usage

Sources:

- [Installation](https://vchord.pgsty.com/docs/bm25/getting-started/installation/)
- [Native tsvector quick start](https://vchord.pgsty.com/docs/bm25/getting-started/quick-start/)
- [1.0.0 migration and permissions](https://vchord.pgsty.com/docs/bm25/reference/migration/)
- [SQL reference](https://vchord.pgsty.com/docs/bm25/reference/sql/)
- [GUCs and index options](https://vchord.pgsty.com/docs/bm25/reference/gucs/)
- [Index maintenance](https://vchord.pgsty.com/docs/bm25/usage/indexing/)
- [1.0.0 control file](https://github.com/pgsty/vchord_bm25/blob/1.0.0/vchord_bm25.control)

`vchord_bm25` 1.0.0 adds BM25 relevance ranking over native PostgreSQL `tsvector` values on PostgreSQL 14–18. Its `bm25` access method and `bm25_ops` operator class use a new index format. Standard text search needs no tokenizer extension; `pg_tokenizer` 1.0.0 is optional for custom analyzers and multilingual models. Installation requires superuser privileges and shared preloading.

### Create and Query an Index

Add the library to the existing preload list and restart PostgreSQL:

```ini
shared_preload_libraries = 'vchord_bm25'
```

```sql
CREATE EXTENSION vchord_bm25;
CREATE TABLE documents (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    passage text NOT NULL,
    terms tsvector GENERATED ALWAYS AS (to_tsvector('english', passage)) STORED
);
INSERT INTO documents (passage) VALUES
    ('PostgreSQL provides full text search.'),
    ('BM25 ranks PostgreSQL documents by relevance.'),
    ('A guide to database indexing.');
CREATE INDEX documents_bm25 ON documents USING bm25 (terms bm25_ops)
WITH (options = $$
k1 = 1.2
b = 0.75
$$, limit = 100);

SELECT id, passage,
       terms <&> to_bm25query(to_tsvector('english', 'PostgreSQL'), 'documents_bm25') AS rank
FROM documents
WHERE terms @@ plainto_tsquery('english', 'PostgreSQL')
ORDER BY rank LIMIT 10;
```

`to_bm25query(tsvector, regclass)` takes the query vector first and the target index second. `<&>` returns a negative BM25 score as `double precision`: ascending order puts greater relevance first. Negate the result only for display if a positive score is preferred. Ordering alone also includes zero-score nonmatches and NULLs; the example uses an explicit match predicate.

Keep positions in stored vectors: `strip(tsvector)` and `array_to_tsvector` cannot provide the term frequencies required by the index. Document weights are ignored, and native position limits can reduce frequency detail for long documents. Use the same analyzer for documents and queries. With custom tokenization, `analyze_to_tsvector` stores string lexemes and `tokenize_to_tsvector` stores model IDs as lexemes; both are `STABLE`, so maintain an ordinary column through the application or a trigger.

### Search Controls and Maintenance

| Setting or function | Meaning in 1.0.0 |
| --- | --- |
| `bm25.enable_scan` | Allow BM25 index plans; default true. |
| `bm25.limit`, index `limit` | Initial scan batch size, default 100; zero also selects 100. Scans continue for SQL limits, offsets, and filtering. |
| `bm25.prefilter`, index `prefilter` | Apply supported predicates before ranking candidates; default false. |
| `k1`, `b` | TOML scoring parameters; defaults 1.2 and 0.75, ranges 1.2–2.0 and 0–1. |
| `maintenance_min_rows`, `maintenance_scale_factor` | Automatic merge thresholds; defaults 1000 and 0.1. |
| `bm25_maintain(regclass)` | Request a merge without the automatic thresholds; returns whether a segment was published. |

Explicit GUC values, including false or the nominal default, override index options. Server, database, role, and startup settings also take precedence. Index defaults apply only when the GUC source is the built-in default.

```sql
SET "bm25.limit" = 200;
SET bm25.prefilter = true;
VACUUM documents;
SELECT bm25_maintain('documents_bm25');
```

`VACUUM` marks dead records and can merge segments; `ANALYZE` alone does not merge them. Manual maintenance requires table ownership or, on PostgreSQL 17+, `MAINTAIN` privilege, and does not replace dead-tuple detection. Deleted records stop appearing in results immediately but remain in corpus statistics until compaction. Long snapshots can delay page reuse and further merges. Standby readers encountering recycled pages can receive SQLSTATE `40001` and need to retry.

### Permissions and Migration

The extension is relocatable; applications need access to the selected installation schema and indexed data. Scoring requires `SELECT` on the indexed table, or column-level access for an ordinary non-partial single-column index. Expression and partial indexes require table-level access. Both scalar scoring and native scans reject queries when row-level security applies to the current role, because scores use global corpus statistics.

The index supports one indexed column and does not support unlogged tables. The access-method name is database-wide, so another extension defining `bm25` cannot coexist in that database.

Upgrades from 0.3.x are deliberately blocked. Keep the old database and library available, export source text, and create a fresh 1.0.0 installation with its own library directory. Recompute native vectors, rebuild indexes, and adapt query argument order, types, settings, and triggers before switching the application. Another database or port sharing the old library directory is insufficient isolation. Neither a binary index copy nor `REINDEX` on an old `bm25vector` column migrates the API.
