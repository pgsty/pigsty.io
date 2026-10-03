---
title: "vchord_bm25"
linkTitle: "vchord_bm25"
description: "A postgresql extension for bm25 ranking algorithm"
weight: 2150
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supervc-stack/VectorChord-bm25">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supervc-stack/VectorChord-bm25</div>
    <div class="ext-card__desc">https://github.com/supervc-stack/VectorChord-bm25</div>
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

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pg_fts`](/ext/e/pg_fts) [`pgroonga`](/ext/e/pgroonga) [`pg_rrf`](/ext/e/pg_rrf) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> bm25 am conflicts with pg_textsearch and pg_search, build require clang upgrade.


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
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
@ el8.x86_64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_18-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 1014.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_18-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_18-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_18-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_18-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 vchord_bm25_18 vchord_bm25_18-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_18-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb pigsty 0.3.0 881.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb pigsty 0.3.0 774.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb pigsty 0.3.0 881.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb pigsty 0.3.0 774.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb pigsty 0.3.0 984.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb pigsty 0.3.0 920.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb pigsty 0.3.0 974.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb pigsty 0.3.0 907.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb pigsty 0.3.0 970.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-vchord-bm25 postgresql-18-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb pigsty 0.3.0 905.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-18-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_17-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 1012.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_17-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_17-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_17-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_17-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 vchord_bm25_17 vchord_bm25_17-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_17-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb pigsty 0.3.0 878.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb pigsty 0.3.0 772.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb pigsty 0.3.0 879.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb pigsty 0.3.0 772.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb pigsty 0.3.0 981.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb pigsty 0.3.0 917.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb pigsty 0.3.0 974.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb pigsty 0.3.0 906.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb pigsty 0.3.0 967.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-vchord-bm25 postgresql-17-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb pigsty 0.3.0 904.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-17-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_16-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 1009.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_16-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_16-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_16-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_16-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 vchord_bm25_16 vchord_bm25_16-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_16-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb pigsty 0.3.0 879.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb pigsty 0.3.0 772.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb pigsty 0.3.0 880.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb pigsty 0.3.0 772.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb pigsty 0.3.0 984.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb pigsty 0.3.0 916.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb pigsty 0.3.0 972.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb pigsty 0.3.0 905.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb pigsty 0.3.0 968.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-vchord-bm25 postgresql-16-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb pigsty 0.3.0 903.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-16-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_15-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 1003.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_15-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_15-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_15-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_15-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 vchord_bm25_15 vchord_bm25_15-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_15-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb pigsty 0.3.0 877.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb pigsty 0.3.0 770.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb pigsty 0.3.0 878.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb pigsty 0.3.0 770.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb pigsty 0.3.0 976.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb pigsty 0.3.0 914.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb pigsty 0.3.0 970.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb pigsty 0.3.0 902.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb pigsty 0.3.0 965.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-vchord-bm25 postgresql-15-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb pigsty 0.3.0 900.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-15-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_bm25_14-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 1001.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_bm25_14-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_bm25_14-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_bm25_14-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_bm25_14-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 vchord_bm25_14 vchord_bm25_14-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_bm25_14-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb pigsty 0.3.0 873.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb pigsty 0.3.0 768.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb pigsty 0.3.0 873.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb pigsty 0.3.0 769.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb pigsty 0.3.0 976.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb pigsty 0.3.0 912.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb pigsty 0.3.0 966.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb pigsty 0.3.0 901.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb pigsty 0.3.0 962.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-vchord-bm25 postgresql-14-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb pigsty 0.3.0 898.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord-bm25/postgresql-14-vchord-bm25_0.3.0-4PIGSTY~resolute_arm64.deb
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

- [0.3.0 README](https://github.com/supervc-stack/VectorChord-bm25/blob/0.3.0/README.md)
- [Control file](https://github.com/supervc-stack/VectorChord-bm25/blob/0.3.0/vchord_bm25.control)
- [0.3.0 SQL objects](https://github.com/supervc-stack/VectorChord-bm25/blob/0.3.0/sql/install/vchord_bm25--0.3.0.sql)
- [Query settings](https://github.com/supervc-stack/VectorChord-bm25/blob/0.3.0/src/guc.rs)
- [0.3.0 migration](https://github.com/supervc-stack/VectorChord-bm25/blob/0.3.0/sql/vchord_bm25--0.2.2--0.3.0.sql)
- [0.3.0 release](https://github.com/supervc-stack/VectorChord-bm25/releases/tag/0.3.0)
- [Tokenizer installation](https://github.com/supervc-stack/pg_tokenizer.rs/blob/0.1.1/docs/01-installation.md)
- [Tokenizer models](https://github.com/supervc-stack/pg_tokenizer.rs/blob/0.1.1/docs/06-model.md)

`vchord_bm25` provides BM25 ranking with a sparse token-frequency type and the `bm25` index access method. Tokenization is supplied separately, commonly by pg_tokenizer. Extension objects live in the fixed `bm25_catalog` schema, and creation requires superuser privileges.

### Core Workflow

The example uses pg_tokenizer, which requires preloading and a restart. Preserve existing entries in the preload list:

```conf
shared_preload_libraries = 'pg_tokenizer'
```

```sql
CREATE EXTENSION pg_tokenizer;
CREATE EXTENSION vchord_bm25;
SET search_path = public, tokenizer_catalog, bm25_catalog;

SELECT create_tokenizer('english', $$
model = "bert_base_uncased"
$$);
CREATE TABLE documents (
    id bigserial PRIMARY KEY,
    passage text,
    embedding bm25vector
);
INSERT INTO documents(passage) VALUES ('PostgreSQL full text search');
UPDATE documents SET embedding = tokenize(passage, 'english')::bm25vector;
CREATE INDEX documents_bm25 ON documents USING bm25 (embedding bm25_ops);

SELECT id, passage,
       embedding <&> to_bm25query('documents_bm25',
           tokenize('PostgreSQL', 'english')::bm25vector) AS score
FROM documents
ORDER BY score
LIMIT 10;
```

The index supplies corpus statistics to `to_bm25query`; the score from `<&>` is negative, so ascending order returns greater relevance first. Use the same tokenizer/model for documents and queries. Update stored token vectors when source text changes, or use the tokenizer's maintenance-trigger helper. Changing the vocabulary requires retokenizing stored documents before rebuilding their index.

### Types, Functions, and Search Limits

- `bm25vector` stores token IDs and frequencies; the integer-array cast aggregates duplicate IDs and discards token order.
- `bm25query` binds the query vector to an index. `to_bm25query(regclass, bm25vector)` constructs it; `bm25_ops` is the index operator class.
- `bm25_catalog.bm25_limit` defaults to 100 and limits candidates returned by the index. Increase it for larger SQL limits or restrictive filters; changing SQL LIMIT alone does not increase this candidate budget.
- `bm25_catalog.enable_index` controls use of the index; `bm25_catalog.enable_prefilter` controls prefiltering. Both default to true.
- `bm25_catalog.segment_growing_max_page_size` defaults to 4096 pages before sealing a growing segment.

```sql
SET bm25_catalog.bm25_limit = 1000;
```

The access-method name is global: this extension cannot coexist in a database with another extension that creates the same bm25 access method, including pg_textsearch and the compatibility alias in pg_search. Sparse frequencies do not preserve positions for phrase matching. Chinese text can use a custom corpus model with a Jieba pre-tokenizer; Japanese Lindera support depends on the tokenizer build and dictionary configuration.

### Upgrade to 0.3.0

```sql
ALTER EXTENSION vchord_bm25 UPDATE TO '0.3.0';
```

The 0.2.2-to-0.3.0 migration adds `bm25_page_inspect(regclass, integer)`, returning diagnostic page text. The release changes sealed-segment page allocation for small tokens and does not document a mandatory index rebuild. Install matching extension files before updating database objects; replacing the preloaded tokenizer library also requires a restart. Keep tokenization and ranking upgrades compatible and check representative query results.
