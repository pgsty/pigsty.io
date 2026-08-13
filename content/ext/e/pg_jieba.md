---
title: "pg_jieba"
linkTitle: "pg_jieba"
description: "Chinese full-text search parser based on cppjieba"
weight: 2240
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jaiminpan/pg_jieba">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jaiminpan/pg_jieba</div>
    <div class="ext-card__desc">https://github.com/jaiminpan/pg_jieba</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_jieba-2.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_jieba-2.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_jieba-2.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_jieba`**](/ext/e/pg_jieba) | `1.1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2240  | [**`pg_jieba`**](/ext/e/pg_jieba) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`pgroonga`](/ext/e/pgroonga) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) [`pg_pinyin`](/ext/e/pg_pinyin) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg_tiktoken_c`](/ext/e/pg_tiktoken_c) [`unaccent`](/ext/e/unaccent) [`dict_xsyn`](/ext/e/dict_xsyn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Package 2.0.1 ships extension version 1.1.0, vendors cppjieba commit 45809955, and fixes the LexDescr terminator allocation.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_jieba` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_jieba_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-jieba` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
@ el8.x86_64 18 pg_jieba_18 pg_jieba_18-2.0.1-1PIGSTY.el8.x86_64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jieba_18-2.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_jieba_18 pg_jieba_18-2.0.1-1PIGSTY.el8.aarch64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jieba_18-2.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_jieba_18 pg_jieba_18-2.0.1-1PIGSTY.el9.x86_64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jieba_18-2.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_jieba_18 pg_jieba_18-2.0.1-1PIGSTY.el9.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jieba_18-2.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_jieba_18 pg_jieba_18-2.0.1-1PIGSTY.el10.x86_64.rpm pigsty 2.0.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jieba_18-2.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_jieba_18 pg_jieba_18-2.0.1-1PIGSTY.el10.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jieba_18-2.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-jieba postgresql-18-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-18-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_jieba_17 pg_jieba_17-2.0.1-1PIGSTY.el8.x86_64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jieba_17-2.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_jieba_17 pg_jieba_17-2.0.1-1PIGSTY.el8.aarch64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jieba_17-2.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_jieba_17 pg_jieba_17-2.0.1-1PIGSTY.el9.x86_64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jieba_17-2.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_jieba_17 pg_jieba_17-2.0.1-1PIGSTY.el9.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jieba_17-2.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_jieba_17 pg_jieba_17-2.0.1-1PIGSTY.el10.x86_64.rpm pigsty 2.0.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jieba_17-2.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_jieba_17 pg_jieba_17-2.0.1-1PIGSTY.el10.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jieba_17-2.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-jieba postgresql-17-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-17-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_jieba_16 pg_jieba_16-2.0.1-1PIGSTY.el8.x86_64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jieba_16-2.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_jieba_16 pg_jieba_16-2.0.1-1PIGSTY.el8.aarch64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jieba_16-2.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_jieba_16 pg_jieba_16-2.0.1-1PIGSTY.el9.x86_64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jieba_16-2.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_jieba_16 pg_jieba_16-2.0.1-1PIGSTY.el9.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jieba_16-2.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_jieba_16 pg_jieba_16-2.0.1-1PIGSTY.el10.x86_64.rpm pigsty 2.0.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jieba_16-2.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_jieba_16 pg_jieba_16-2.0.1-1PIGSTY.el10.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jieba_16-2.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-jieba postgresql-16-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-16-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_jieba_15 pg_jieba_15-2.0.1-1PIGSTY.el8.x86_64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jieba_15-2.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_jieba_15 pg_jieba_15-2.0.1-1PIGSTY.el8.aarch64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jieba_15-2.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_jieba_15 pg_jieba_15-2.0.1-1PIGSTY.el9.x86_64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jieba_15-2.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_jieba_15 pg_jieba_15-2.0.1-1PIGSTY.el9.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jieba_15-2.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_jieba_15 pg_jieba_15-2.0.1-1PIGSTY.el10.x86_64.rpm pigsty 2.0.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jieba_15-2.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_jieba_15 pg_jieba_15-2.0.1-1PIGSTY.el10.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jieba_15-2.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-jieba postgresql-15-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-15-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_jieba_14 pg_jieba_14-2.0.1-1PIGSTY.el8.x86_64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jieba_14-2.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_jieba_14 pg_jieba_14-2.0.1-1PIGSTY.el8.aarch64.rpm pigsty 2.0.1 3.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jieba_14-2.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_jieba_14 pg_jieba_14-2.0.1-1PIGSTY.el9.x86_64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jieba_14-2.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_jieba_14 pg_jieba_14-2.0.1-1PIGSTY.el9.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jieba_14-2.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_jieba_14 pg_jieba_14-2.0.1-1PIGSTY.el10.x86_64.rpm pigsty 2.0.1 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jieba_14-2.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_jieba_14 pg_jieba_14-2.0.1-1PIGSTY.el10.aarch64.rpm pigsty 2.0.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jieba_14-2.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb pigsty 2.0.1 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-jieba postgresql-14-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb pigsty 2.0.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jieba/postgresql-14-pg-jieba_2.0.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_jieba` using `pig build`:

```bash
pig build pkg pg_jieba         # build RPM / DEB packages
```


## Install

You can install `pg_jieba` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_jieba;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_jieba -v 18  # PG 18
pig ext install -y pg_jieba -v 17  # PG 17
pig ext install -y pg_jieba -v 16  # PG 16
pig ext install -y pg_jieba -v 15  # PG 15
pig ext install -y pg_jieba -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_jieba_18       # PG 18
dnf install -y pg_jieba_17       # PG 17
dnf install -y pg_jieba_16       # PG 16
dnf install -y pg_jieba_15       # PG 15
dnf install -y pg_jieba_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-jieba   # PG 18
apt install -y postgresql-17-pg-jieba   # PG 17
apt install -y postgresql-16-pg-jieba   # PG 16
apt install -y postgresql-15-pg-jieba   # PG 15
apt install -y postgresql-14-pg-jieba   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_jieba;
```

## Usage

Sources:

- [Official v2.0.1 README](https://github.com/jaiminpan/pg_jieba/blob/v2.0.1/README.md)
- [Extension control file](https://github.com/jaiminpan/pg_jieba/blob/v2.0.1/pg_jieba.control)
- [SQL parser and configuration definitions](https://github.com/jaiminpan/pg_jieba/blob/v2.0.1/pg_jieba.sql)

`pg_jieba` adds Jieba-based Chinese word segmentation to PostgreSQL full-text search. The upstream `v2.0.1` source release installs SQL extension version `1.1.0`, as recorded by its control file. It provides separate document and query parsers plus ready-to-use text-search configurations.

### Core Workflow

```sql
CREATE EXTENSION pg_jieba;

SELECT to_tsvector(
    'jiebacfg',
    '小明硕士毕业于中国科学院计算所，后在日本京都大学深造'
);

SELECT plainto_tsquery('jiebaqry', '云计算专家');
```

Use `jiebacfg` to build searchable document vectors and `jiebaqry` to segment user queries:

```sql
ALTER TABLE articles
ADD COLUMN search_vector tsvector
GENERATED ALWAYS AS (to_tsvector('jiebacfg', body)) STORED;

CREATE INDEX articles_search_idx
ON articles USING GIN (search_vector);

SELECT title
FROM articles
WHERE search_vector @@ plainto_tsquery('jiebaqry', '中文全文检索');
```

### Object Index

- `jieba`: document text-search parser.
- `jiebaqry`: query-oriented text-search parser.
- `jiebacfg`: document text-search configuration using `jieba` and `jieba_stem`.
- `jiebaqry`: text-search configuration of the same name using the query parser.
- `jieba_stem`: simple dictionary with Jieba stop words used for the parser's token categories.

### Custom Dictionary and Caveats

Upstream reads a custom dictionary named `jieba.user.dict.utf8` from PostgreSQL's `tsearch_data` directory. Entries may contain a word and optional part-of-speech tag:

```text
云计算
韩玉鉴赏
蓝翔 nz
```

- The v2.x source requires a C++11-capable compiler because of its bundled `cppjieba` dependency.
- Upstream's published compatibility testing is old and limited. Build and regression-test the package against the exact PostgreSQL major version used in production.
- Changing dictionaries changes tokenization. Recompute stored `tsvector` values and rebuild dependent indexes when dictionary output changes.
