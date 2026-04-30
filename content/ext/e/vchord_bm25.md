---
title: "vchord_bm25"
linkTitle: "vchord_bm25"
description: "A postgresql extension for bm25 ranking algorithm"
weight: 2150
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tensorchord/VectorChord-bm25">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tensorchord/VectorChord-bm25</div>
    <div class="ext-card__desc">https://github.com/tensorchord/VectorChord-bm25</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/VectorChord-bm25-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">VectorChord-bm25-0.3.0.tar.gz</div>
    <div class="ext-card__desc">VectorChord-bm25-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`vchord_bm25`**](/ext/e/vchord_bm25) | `0.3.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2150  | [**`vchord_bm25`**](/ext/e/vchord_bm25) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `bm25_catalog` |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`pg_search`](/ext/e/pg_search) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vectorscale`](/ext/e/vectorscale) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pgroonga`](/ext/e/pgroonga) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `vchord_bm25` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `vchord_bm25_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-vchord-bm25` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 519.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_18-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 403.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_18-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 536.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_18-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 433.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_18-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 536.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_18-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 433.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_18-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb pigsty 0.3.0 425.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb pigsty 0.3.0 318.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb pigsty 0.3.0 425.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb pigsty 0.3.0 318.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb pigsty 0.3.0 478.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb pigsty 0.3.0 376.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb pigsty 0.3.0 474.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb pigsty 0.3.0 371.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 520.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_17-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 403.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_17-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 536.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_17-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 433.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_17-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 536.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_17-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 433.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_17-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb pigsty 0.3.0 425.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb pigsty 0.3.0 317.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb pigsty 0.3.0 424.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb pigsty 0.3.0 317.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb pigsty 0.3.0 478.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb pigsty 0.3.0 376.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb pigsty 0.3.0 474.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb pigsty 0.3.0 371.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 519.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_16-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 403.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_16-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 536.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_16-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 433.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_16-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 536.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_16-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 433.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_16-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb pigsty 0.3.0 425.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb pigsty 0.3.0 318.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb pigsty 0.3.0 425.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb pigsty 0.3.0 317.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb pigsty 0.3.0 478.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb pigsty 0.3.0 376.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb pigsty 0.3.0 474.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb pigsty 0.3.0 371.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 522.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_15-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 404.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_15-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 538.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_15-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 435.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_15-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 538.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_15-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 434.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_15-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb pigsty 0.3.0 427.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb pigsty 0.3.0 319.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb pigsty 0.3.0 426.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb pigsty 0.3.0 319.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb pigsty 0.3.0 480.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb pigsty 0.3.0 378.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb pigsty 0.3.0 476.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb pigsty 0.3.0 373.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 522.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_14-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 405.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_14-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 538.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_14-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 435.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_14-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 538.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_14-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 435.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_14-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb pigsty 0.3.0 426.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb pigsty 0.3.0 319.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb pigsty 0.3.0 426.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb pigsty 0.3.0 319.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb pigsty 0.3.0 480.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb pigsty 0.3.0 378.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb pigsty 0.3.0 476.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb pigsty 0.3.0 373.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-2PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install vchord_bm25;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y vchord_bm25 -v 18  # PG 18
pig ext install -y vchord_bm25 -v 17  # PG 17
pig ext install -y vchord_bm25 -v 16  # PG 16
pig ext install -y vchord_bm25 -v 15  # PG 15
pig ext install -y vchord_bm25 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y vchord_bm25_18       # PG 18
dnf install -y vchord_bm25_17       # PG 17
dnf install -y vchord_bm25_16       # PG 16
dnf install -y vchord_bm25_15       # PG 15
dnf install -y vchord_bm25_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-vchord-bm25   # PG 18
apt install -y postgresql-17-vchord-bm25   # PG 17
apt install -y postgresql-16-vchord-bm25   # PG 16
apt install -y postgresql-15-vchord-bm25   # PG 15
apt install -y postgresql-14-vchord-bm25   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'vchord_bm25';
```


**Create Extension**:

```sql
CREATE EXTENSION vchord_bm25;
```



## Usage

> [GitHub: tensorchord/VectorChord-bm25](https://github.com/tensorchord/VectorChord-bm25)

VectorChord-BM25 is a PostgreSQL extension for the BM25 ranking algorithm, implemented via Block-WeakAnd algorithms. It is designed to work together with [pg_tokenizer](https://github.com/tensorchord/pg_tokenizer.rs) for customized text tokenization.

## Architecture

The extension comprises three main components:

1. **Tokenizer**: Converts text into `bm25vector` (sparse vectors storing vocabulary IDs and term frequencies)
2. **bm25vector**: A custom data type for storing tokenized text
3. **bm25vector indexes**: Accelerate search and ranking operations

## Quick Start

```sql
-- Enable required extensions
CREATE EXTENSION IF NOT EXISTS pg_tokenizer CASCADE;
CREATE EXTENSION IF NOT EXISTS vchord_bm25 CASCADE;

-- Create a tokenizer (e.g., LLMLingua2 for English)
SELECT create_tokenizer('tokenizer1', $$
model = "llmlingua2"
$$);

-- Create a table with text content
CREATE TABLE documents (
  id SERIAL PRIMARY KEY,
  passage TEXT,
  embedding bm25vector
);

-- Tokenize text passages into bm25vectors
UPDATE documents SET embedding = tokenize(passage, 'tokenizer1');

-- Create a BM25 index
CREATE INDEX documents_embedding_bm25 ON documents USING bm25 (embedding bm25_ops);

-- Query with BM25 ranking
SELECT id, passage, embedding <&> to_bm25query('documents_embedding_bm25', tokenize('search query', 'tokenizer1')) AS score
FROM documents
ORDER BY score
LIMIT 10;
```

**Note**: BM25 scores in VectorChord-BM25 are negative, with more negative scores indicating greater relevance.

## The `<&>` Operator

The `<&>` operator computes the BM25 relevance score between a stored `bm25vector` and a query `bm25vector`. Queries must be wrapped in `to_bm25query()` which takes the index name and the tokenized query:

```sql
-- Basic search query
-- to_bm25query(index_name, tokenized_query)
SELECT id, passage, embedding <&> to_bm25query('documents_embedding_bm25', tokenize('database system', 'tokenizer1')) AS score
FROM documents
ORDER BY score
LIMIT 10;
```

## Language Support

VectorChord-BM25 supports multiple languages through different tokenizer configurations:

| Language | Approach | Model/Pre-tokenizer |
|----------|----------|---------------------|
| English | Pre-trained model | `model = "llmlingua2"` or `model = "bert_base_uncased"` |
| Chinese | Custom model with Jieba pre-tokenizer | `[pre_tokenizer.jieba]` |
| Japanese | Custom model with Lindera pre-tokenizer | Lindera with IPADIC dictionary |
| Custom | User-trained models via text analyzers | `create_custom_model_tokenizer_and_trigger()` |

### Chinese Text Search Example

Chinese text requires a custom model with a Jieba pre-tokenizer (not a pre-trained model):

```sql
-- Create a text analyzer with Jieba pre-tokenizer
SELECT create_text_analyzer('zh_text_analyzer', $$
[pre_tokenizer.jieba]
$$);

-- Create a custom model tokenizer that trains on your corpus
SELECT create_custom_model_tokenizer_and_trigger(
    tokenizer_name => 'zh_tokenizer',
    model_name => 'zh_model',
    text_analyzer_name => 'zh_text_analyzer',
    table_name => 'documents',
    source_column => 'passage',
    target_column => 'embedding'
);
```

### Custom Tokenizer Models

For domain-specific terminology, you can create text analyzers with stopwords, stemming, and other filters, then train custom models on your corpus using `create_custom_model_tokenizer_and_trigger()`.

## Comparison with Alternatives

| Feature | VectorChord-BM25 | PostgreSQL tsvector + ts_rank |
|---------|-------------------|-------------------------------|
| Ranking algorithm | BM25 | tf-idf variant |
| Custom tokenizers | Yes (via pg_tokenizer) | Limited to built-in configs |
| Index type | Dedicated BM25 index | GIN index |
| Native PostgreSQL | Yes (extension) | Built-in |
| Language support | Extensible via models | Via text search configs |
