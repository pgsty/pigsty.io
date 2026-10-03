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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_pinyin-0.0.8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_pinyin-0.0.8.tar.gz</div>
    <div class="ext-card__desc">pg_pinyin-0.0.8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_pinyin`**](/ext/e/pg_pinyin) | `0.0.8` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2190  | [**`pg_pinyin`**](/ext/e/pg_pinyin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `pinyin` |
{.ext-table}

| **Related** | [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`pg_jieba`](/ext/e/pg_jieba) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pgroonga`](/ext/e/pgroonga) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`icu_ext`](/ext/e/icu_ext) [`pg_xenophile`](/ext/e/pg_xenophile) [`gb18030_2022`](/ext/e/gb18030_2022) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> optional tokenizer-input overload can integrate with pg_search.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_pinyin` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_pinyin_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.8` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pinyin` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 | AVAIL PIGSTY 0.0.8 1 |
@ el8.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.8-1PGSTY.el8.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_18-0.0.8-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.8-1PGSTY.el8.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_18-0.0.8-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.8-1PGSTY.el9.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_18-0.0.8-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.8-1PGSTY.el9.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_18-0.0.8-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_pinyin_18 pg_pinyin_18-0.0.8-1PGSTY.el10.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_18-0.0.8-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_pinyin_18 pg_pinyin_18-0.0.8-1PGSTY.el10.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_18-0.0.8-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb pigsty 0.0.8 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~trixie_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~trixie_arm64.deb pigsty 0.0.8 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~jammy_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~jammy_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~noble_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~noble_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~resolute_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pinyin postgresql-18-pinyin_0.0.8-1PGSTY~resolute_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-18-pinyin_0.0.8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.8-1PGSTY.el8.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_17-0.0.8-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.8-1PGSTY.el8.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_17-0.0.8-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.8-1PGSTY.el9.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_17-0.0.8-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.8-1PGSTY.el9.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_17-0.0.8-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_pinyin_17 pg_pinyin_17-0.0.8-1PGSTY.el10.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_17-0.0.8-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_pinyin_17 pg_pinyin_17-0.0.8-1PGSTY.el10.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_17-0.0.8-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~trixie_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~trixie_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~jammy_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~jammy_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~noble_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~noble_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~resolute_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pinyin postgresql-17-pinyin_0.0.8-1PGSTY~resolute_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-17-pinyin_0.0.8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.8-1PGSTY.el8.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_16-0.0.8-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.8-1PGSTY.el8.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_16-0.0.8-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.8-1PGSTY.el9.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_16-0.0.8-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.8-1PGSTY.el9.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_16-0.0.8-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_pinyin_16 pg_pinyin_16-0.0.8-1PGSTY.el10.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_16-0.0.8-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_pinyin_16 pg_pinyin_16-0.0.8-1PGSTY.el10.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_16-0.0.8-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~trixie_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~trixie_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~jammy_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~jammy_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~noble_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~noble_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~resolute_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pinyin postgresql-16-pinyin_0.0.8-1PGSTY~resolute_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-16-pinyin_0.0.8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.8-1PGSTY.el8.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_15-0.0.8-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.8-1PGSTY.el8.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_15-0.0.8-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.8-1PGSTY.el9.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_15-0.0.8-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.8-1PGSTY.el9.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_15-0.0.8-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_pinyin_15 pg_pinyin_15-0.0.8-1PGSTY.el10.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_15-0.0.8-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_pinyin_15 pg_pinyin_15-0.0.8-1PGSTY.el10.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_15-0.0.8-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~trixie_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~trixie_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~jammy_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~jammy_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~noble_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~noble_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~resolute_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pinyin postgresql-15-pinyin_0.0.8-1PGSTY~resolute_arm64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-15-pinyin_0.0.8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.8-1PGSTY.el8.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pinyin_14-0.0.8-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.8-1PGSTY.el8.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pinyin_14-0.0.8-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.8-1PGSTY.el9.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pinyin_14-0.0.8-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.8-1PGSTY.el9.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pinyin_14-0.0.8-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_pinyin_14 pg_pinyin_14-0.0.8-1PGSTY.el10.x86_64.rpm pigsty 0.0.8 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pinyin_14-0.0.8-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_pinyin_14 pg_pinyin_14-0.0.8-1PGSTY.el10.aarch64.rpm pigsty 0.0.8 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pinyin_14-0.0.8-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~trixie_amd64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~trixie_arm64.deb pigsty 0.0.8 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~jammy_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~jammy_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~noble_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~noble_arm64.deb pigsty 0.0.8 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~resolute_amd64.deb pigsty 0.0.8 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pinyin postgresql-14-pinyin_0.0.8-1PGSTY~resolute_arm64.deb pigsty 0.0.8 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pinyin/postgresql-14-pinyin_0.0.8-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_pinyin;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_pinyin -v 18  # PG 18
pig ext install -y pg_pinyin -v 17  # PG 17
pig ext install -y pg_pinyin -v 16  # PG 16
pig ext install -y pg_pinyin -v 15  # PG 15
pig ext install -y pg_pinyin -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_pinyin_18       # PG 18
dnf install -y pg_pinyin_17       # PG 17
dnf install -y pg_pinyin_16       # PG 16
dnf install -y pg_pinyin_15       # PG 15
dnf install -y pg_pinyin_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pinyin   # PG 18
apt install -y postgresql-17-pinyin   # PG 17
apt install -y postgresql-16-pinyin   # PG 16
apt install -y postgresql-15-pinyin   # PG 15
apt install -y postgresql-14-pinyin   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_pinyin;
```

## Usage

Sources:

- [pg_pinyin v0.0.8 README](https://github.com/aiyou178/pg_pinyin/blob/v0.0.8/readme.md)
- [pg_pinyin v0.0.8 control file](https://github.com/aiyou178/pg_pinyin/blob/v0.0.8/pg_pinyin.control)
- [0.0.7 to 0.0.8 upgrade SQL](https://github.com/aiyou178/pg_pinyin/blob/v0.0.8/pg_pinyin--0.0.7--0.0.8.sql)
- [0.0.8 parallel read-only regression](https://github.com/aiyou178/pg_pinyin/blob/v0.0.8/test/pgtap/04_parallel_read_only.sql)
- [0.0.8 implementation](https://github.com/aiyou178/pg_pinyin/blob/v0.0.8/src/lib.rs)

pg_pinyin romanizes Chinese text and exposes tokenizer and query helpers for search applications. Use pg_pinyin to create stable Pinyin search keys, tokenize Han text, or expand Pinyin input into a pg_search regular-expression query.

Version 0.0.8 fixes read-only SPI access for parallel romanization, tokenizer conversion and suffix-dictionary queries. It uses pgrx 0.19.3 and supports PostgreSQL 14-18 plus PostgreSQL 19 beta4. The provided 0.0.7-to-0.0.8 migration makes no SQL object changes; the runtime fix is in the shared library. After installing the new extension files, run ALTER EXTENSION pg_pinyin UPDATE TO '0.0.8'. Pigsty package metadata is maintained separately.

### Create the Extension

    CREATE EXTENSION pg_pinyin;

The extension is relocatable and does not require shared_preload_libraries or a server restart.

### Romanize Text

Romanize character by character or use word-aware segmentation:

    SELECT pinyin_char_romanize('重庆');
    SELECT pinyin_word_romanize('重庆火锅');
    SELECT pinyin_word_romanize('重庆火锅', '_custom');

The optional suffix selects custom dictionary tables; it is not an output separator. For example, _custom selects pinyin.pinyin_mapping_custom and pinyin.pinyin_words_custom, whose entries override the built-in dictionaries. Word mode uses dictionary segmentation to resolve contextual pronunciations. Clear the suffix cache after modifying these tables using public.pinyin_clear_suffix_cache('_custom').

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
