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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_pinyin-0.0.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_pinyin-0.0.5.tar.gz</div>
    <div class="ext-card__desc">pg_pinyin-0.0.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_pinyin`**](/ext/e/pg_pinyin) | `0.0.5` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2190  | [**`pg_pinyin`**](/ext/e/pg_pinyin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `pinyin` |
{.ext-table}

| **Related** | [`zhparser`](/ext/e/zhparser) [`pg_search`](/ext/e/pg_search) [`pg_trgm`](/ext/e/pg_trgm) [`pg_bigm`](/ext/e/pg_bigm) [`pgroonga`](/ext/e/pgroonga) [`pgroonga_database`](/ext/e/pgroonga_database) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> optional tokenizer-input overload can integrate with pg_search.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_pinyin` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_pinyin_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pinyin` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
@ el8.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_18-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_18-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_18-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_18-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_18-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_18-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_17-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_17-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_17-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_17-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_17-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_17-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_16-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_16-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_16-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_16-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_16-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_16-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_15-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_15-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_15-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_15-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_15-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_15-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_14-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_14-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_14-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_14-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_14-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_14-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.5-1PIGSTY~resolute_arm64.deb
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

Sources:

- [pg_pinyin v0.0.5 README](https://github.com/aiyou178/pg_pinyin/blob/v0.0.5/readme.md)
- [pg_pinyin v0.0.5 control file](https://github.com/aiyou178/pg_pinyin/blob/v0.0.5/pg_pinyin.control)
- [0.0.4 to 0.0.5 upgrade SQL](https://github.com/aiyou178/pg_pinyin/blob/v0.0.5/pg_pinyin--0.0.4--0.0.5.sql)

pg_pinyin romanizes Chinese text and exposes tokenizer and query helpers for search applications. Use pg_pinyin to create stable Pinyin search keys, tokenize Han text, or expand Pinyin input into a pg_search regular-expression query.

Version 0.0.5 is primarily a packaging and toolchain update; its upgrade script makes no SQL catalog changes, so the user-facing API remains compatible with 0.0.4.

### Create the Extension

    CREATE EXTENSION pg_pinyin;

The extension is relocatable and does not require shared_preload_libraries or a server restart.

### Romanize Text

Romanize character by character or use word-aware segmentation:

    SELECT pinyin_char_romanize('重庆');
    SELECT pinyin_word_romanize('重庆火锅');
    SELECT pinyin_word_romanize('重庆火锅', ' ');

Both functions accept an optional suffix inserted after each emitted Pinyin unit. Character mode is deterministic per character; word mode uses the bundled word dictionary to resolve contextual pronunciations.

### Use pg_search Tokenizer Input

Word romanization also accepts a pg_search tokenizer result when that extension is available:

    SELECT pinyin_word_romanize(
      description::pdb.icu::text[]
    )
    FROM documents;

The overload returns romanized text; it does not expose a row-per-token API. Use the plain-text overload when pg_search tokenization is not required.

### Build a pg_search Query

When pg_search was installed before pg_pinyin, pg_pinyin provides a typed overload that returns pdb.query:

    SELECT *
    FROM documents
    WHERE id @@@ pinyin_regex_phrase(
      'chong qing',
      slope => 1,
      max_expansions => 64,
      generated_pinyin => true
    );

If pg_search is absent, the same entry point is installed as an error-reporting stub rather than silently returning a different type. Install dependencies in the intended order and test the function signature after upgrades.

### Object Index

- pinyin_char_romanize(text [, suffix]) returns character-based Pinyin text.
- pinyin_word_romanize(text [, suffix]) returns dictionary-segmented Pinyin text.
- pinyin_word_romanize(tokenizer_input [, suffix]) accepts a pg_search tokenizer result.
- pinyin_regex_phrase(text, slope, max_expansions, generated_pinyin) constructs a pg_search Pinyin phrase query when that integration is available.
- pinyin_regex_phrase_patterns is an internal pattern-building helper; prefer the public query function.

### Operational Notes

The extension ships generated character and word dictionaries in its pinyin schema. Treat those tables as extension-managed data rather than application tables. Romanization is normalization, not translation, and ambiguous or domain-specific readings may require application-side review.
