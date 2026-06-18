---
title: "pg_pinyin"
linkTitle: "pg_pinyin"
description: "Pinyin romanization and search helpers for PostgreSQL"
weight: 2190
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/aiyou178/pg_pinyin">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">aiyou178/pg_pinyin</div>
    <div class="ext-card__desc">https://github.com/aiyou178/pg_pinyin</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_pinyin-0.0.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_pinyin-0.0.4.tar.gz</div>
    <div class="ext-card__desc">pg_pinyin-0.0.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_pinyin`**](/ext/e/pg_pinyin) | `0.0.4` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2190  | [**`pg_pinyin`**](/ext/e/pg_pinyin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `pinyin` |
{.ext-table}

| **Related** | [`zhparser`](/ext/e/zhparser) [`pg_search`](/ext/e/pg_search) [`pg_trgm`](/ext/e/pg_trgm) [`pg_bigm`](/ext/e/pg_bigm) [`pgroonga`](/ext/e/pgroonga) [`pgroonga_database`](/ext/e/pgroonga_database) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> optional tokenizer-input overload can integrate with pg_search; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_pinyin` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_pinyin_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pinyin` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
@ el8.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.4-2PIGSTY.el8.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_18-0.0.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.4-2PIGSTY.el8.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_18-0.0.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.4-2PIGSTY.el9.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_18-0.0.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.4-2PIGSTY.el9.aarch64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_18-0.0.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.4-2PIGSTY.el10.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_18-0.0.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.4-2PIGSTY.el10.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_18-0.0.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~noble_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~noble_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.4-2PIGSTY.el8.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_17-0.0.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.4-2PIGSTY.el8.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_17-0.0.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.4-2PIGSTY.el9.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_17-0.0.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.4-2PIGSTY.el9.aarch64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_17-0.0.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.4-2PIGSTY.el10.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_17-0.0.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.4-2PIGSTY.el10.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_17-0.0.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~noble_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~noble_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.4-2PIGSTY.el8.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_16-0.0.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.4-2PIGSTY.el8.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_16-0.0.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.4-2PIGSTY.el9.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_16-0.0.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.4-2PIGSTY.el9.aarch64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_16-0.0.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.4-2PIGSTY.el10.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_16-0.0.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.4-2PIGSTY.el10.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_16-0.0.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~noble_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~noble_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.4-2PIGSTY.el8.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_15-0.0.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.4-2PIGSTY.el8.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_15-0.0.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.4-2PIGSTY.el9.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_15-0.0.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.4-2PIGSTY.el9.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_15-0.0.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.4-2PIGSTY.el10.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_15-0.0.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.4-2PIGSTY.el10.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_15-0.0.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~noble_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~noble_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.4-2PIGSTY.el8.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_14-0.0.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.4-2PIGSTY.el8.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_14-0.0.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.4-2PIGSTY.el9.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_14-0.0.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.4-2PIGSTY.el9.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_14-0.0.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.4-2PIGSTY.el10.x86_64.rpm pigsty 0.0.4 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_14-0.0.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.4-2PIGSTY.el10.aarch64.rpm pigsty 0.0.4 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_14-0.0.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb pigsty 0.0.4 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb pigsty 0.0.4 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~noble_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~noble_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb pigsty 0.0.4 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb pigsty 0.0.4 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.4-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_pinyin` using `pig build`:

```bash
pig build pkg pg_pinyin         # build RPM / DEB packages
```


## Install

You can install `pg_pinyin` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_pinyin;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_pinyin -v 18  # PG 18
pig ext install -y pg_pinyin -v 17  # PG 17
pig ext install -y pg_pinyin -v 16  # PG 16
pig ext install -y pg_pinyin -v 15  # PG 15
pig ext install -y pg_pinyin -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_pinyin_18       # PG 18
dnf install -y pg_pinyin_17       # PG 17
dnf install -y pg_pinyin_16       # PG 16
dnf install -y pg_pinyin_15       # PG 15
dnf install -y pg_pinyin_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pinyin   # PG 18
apt install -y postgresql-17-pinyin   # PG 17
apt install -y postgresql-16-pinyin   # PG 16
apt install -y postgresql-15-pinyin   # PG 15
apt install -y postgresql-14-pinyin   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_pinyin;
```

## Usage

> Sources: [pg_pinyin upstream README](https://github.com/aiyou178/pg_pinyin), [Chinese README](https://github.com/aiyou178/pg_pinyin/blob/main/README.zh-CN.md), [local metadata](../db/extension.csv).

`pg_pinyin` converts Chinese text to Pinyin, either character by character or by word. It is useful for generated search columns, trigram search, and `pg_search` BM25 queries that need Pinyin input.

```sql
CREATE EXTENSION pg_pinyin;
```

### Functions

| Function | Description |
|----------|-------------|
| `pinyin_char_romanize(text)` | Character-level Pinyin romanization |
| `pinyin_char_romanize(text, suffix text)` | Character-level romanization with a custom dictionary suffix |
| `pinyin_word_romanize(text)` | Word-level Pinyin romanization |
| `pinyin_word_romanize(text, suffix text)` | Word-level romanization with a custom dictionary suffix |
| `pinyin_word_romanize(tokenizer_input anyelement)` | Word-level romanization from a `pg_search` tokenizer input such as `name::pdb.icu::text[]` |
| `pinyin_word_romanize(tokenizer_input anyelement, suffix text)` | Tokenizer-input romanization with a custom dictionary suffix |
| `pinyin_regex_phrase(text, slope integer DEFAULT NULL, max_expansions integer DEFAULT NULL, generated_pinyin boolean DEFAULT false)` | `pg_search` query helper returning `pdb.query`, available when `pg_search` was enabled before `CREATE EXTENSION pg_pinyin` |
| `pinyin_regex_phrase_patterns(text, generated_pinyin boolean DEFAULT false)` | Internal helper returning regex phrase tokens as `text[]` |

### Generated Column + Trigram Search

```sql
CREATE EXTENSION IF NOT EXISTS pg_pinyin;
CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE TABLE voice (
  id bigserial PRIMARY KEY,
  description text NOT NULL,
  pinyin text GENERATED ALWAYS AS (public.pinyin_char_romanize(description)) STORED
);

CREATE INDEX voice_pinyin_trgm_idx ON voice USING gin (pinyin gin_trgm_ops);

INSERT INTO voice (description) VALUES ('郑爽ABC');
SELECT id, description, pinyin FROM voice;
```

### Word Tokenization + pg_search

For word-oriented search, use `pinyin_word_romanize`. When `pg_search` is available, it can consume tokenizer input such as `pdb.icu::text[]`.

```sql
CREATE EXTENSION IF NOT EXISTS pg_search;
CREATE EXTENSION IF NOT EXISTS pg_pinyin;

CREATE TABLE voice (
  id bigserial PRIMARY KEY,
  description text NOT NULL,
  pinyin text GENERATED ALWAYS AS (public.pinyin_word_romanize(description)) STORED
);

CREATE INDEX voice_pinyin_bm25_idx
ON voice
USING bm25 (id, pinyin)
WITH (key_field='id');

SELECT *
FROM voice
WHERE pinyin @@@ public.pinyin_regex_phrase('zhengshuang');

SELECT public.pinyin_word_romanize('郑爽ABC'::pdb.icu::text[]);
```

`pinyin_regex_phrase` has return type `pdb.query`, so `pg_search` must be enabled in the database before `pg_pinyin` is created. If `pg_pinyin` is created first, upstream documents that the romanization functions are installed, but `pinyin_regex_phrase` is installed as an error stub with a clear exception.

### Dictionary Tables

The extension seeds bundled dictionary tables under schema `pinyin` during `CREATE EXTENSION pg_pinyin`; no separate data-load step is needed for normal extension usage. The bundled data covers character mappings, word tokens, and word mappings.

Provide custom dictionary tables in schema `pinyin` with a suffix. Calls using that suffix merge the base dictionary with the suffix tables, and suffix entries take priority.

```sql
CREATE TABLE IF NOT EXISTS pinyin.pinyin_mapping_suffix1 (
  character text PRIMARY KEY,
  pinyin text NOT NULL
);

CREATE TABLE IF NOT EXISTS pinyin.pinyin_words_suffix1 (
  word text PRIMARY KEY,
  pinyin text NOT NULL
);

INSERT INTO pinyin.pinyin_mapping_suffix1 (character, pinyin)
VALUES ('郑', '|zhengx|')
ON CONFLICT (character) DO UPDATE SET pinyin = EXCLUDED.pinyin;

INSERT INTO pinyin.pinyin_words_suffix1 (word, pinyin)
VALUES ('郑爽', '|zhengx| |shuangx|')
ON CONFLICT (word) DO UPDATE SET pinyin = EXCLUDED.pinyin;

SELECT public.pinyin_char_romanize('郑爽ABC', '_suffix1');
SELECT public.pinyin_word_romanize('郑爽ABC'::pdb.icu::text[], '_suffix1');
```
