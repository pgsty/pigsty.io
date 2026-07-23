---
title: "pg_cjk_parser"
linkTitle: "pg_cjk_parser"
description: "CJK bigram parser derived from PostgreSQL full-text search"
weight: 2230
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/huangjimmy/pg_cjk_parser">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">huangjimmy/pg_cjk_parser</div>
    <div class="ext-card__desc">https://github.com/huangjimmy/pg_cjk_parser</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_cjk_parser-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_cjk_parser-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_cjk_parser-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_cjk_parser`**](/ext/e/pg_cjk_parser) | `0.1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2230  | [**`pg_cjk_parser`**](/ext/e/pg_cjk_parser) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_jieba`](/ext/e/pg_jieba) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) [`pgroonga`](/ext/e/pgroonga) [`pg_tokenizer`](/ext/e/pg_tokenizer) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGSTY applies a PG_CONFIG build-selection patch.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_cjk_parser` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_cjk_parser_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-cjk-parser` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pg_cjk_parser_18 pg_cjk_parser_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 36.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cjk_parser_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_cjk_parser_18 pg_cjk_parser_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 36.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cjk_parser_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_cjk_parser_18 pg_cjk_parser_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 37.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cjk_parser_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_cjk_parser_18 pg_cjk_parser_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 38.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cjk_parser_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_cjk_parser_18 pg_cjk_parser_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 38.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cjk_parser_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_cjk_parser_18 pg_cjk_parser_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 38.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cjk_parser_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 68.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 68.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 73.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 73.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 72.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 72.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 71.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-cjk-parser postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 71.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-18-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_cjk_parser_17 pg_cjk_parser_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 36.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cjk_parser_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_cjk_parser_17 pg_cjk_parser_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 36.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cjk_parser_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_cjk_parser_17 pg_cjk_parser_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 37.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cjk_parser_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_cjk_parser_17 pg_cjk_parser_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 38.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cjk_parser_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_cjk_parser_17 pg_cjk_parser_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 38.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cjk_parser_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_cjk_parser_17 pg_cjk_parser_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 38.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cjk_parser_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 68.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 68.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 76.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 76.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 72.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 72.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 71.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-cjk-parser postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 71.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-17-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_cjk_parser_16 pg_cjk_parser_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 36.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cjk_parser_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_cjk_parser_16 pg_cjk_parser_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 36.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cjk_parser_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_cjk_parser_16 pg_cjk_parser_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 37.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cjk_parser_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_cjk_parser_16 pg_cjk_parser_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 38.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cjk_parser_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_cjk_parser_16 pg_cjk_parser_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 38.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cjk_parser_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_cjk_parser_16 pg_cjk_parser_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 38.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cjk_parser_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 68.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 68.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 76.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 76.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 72.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 72.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 71.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-cjk-parser postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 71.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-16-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_cjk_parser_15 pg_cjk_parser_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 36.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cjk_parser_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_cjk_parser_15 pg_cjk_parser_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 35.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cjk_parser_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_cjk_parser_15 pg_cjk_parser_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cjk_parser_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_cjk_parser_15 pg_cjk_parser_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 38.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cjk_parser_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_cjk_parser_15 pg_cjk_parser_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cjk_parser_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_cjk_parser_15 pg_cjk_parser_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 38.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cjk_parser_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 67.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 67.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 76.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 75.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 72.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 72.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 71.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-cjk-parser postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 71.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-15-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_cjk_parser_14 pg_cjk_parser_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 36.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cjk_parser_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_cjk_parser_14 pg_cjk_parser_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 35.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cjk_parser_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_cjk_parser_14 pg_cjk_parser_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cjk_parser_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_cjk_parser_14 pg_cjk_parser_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 38.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cjk_parser_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_cjk_parser_14 pg_cjk_parser_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cjk_parser_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_cjk_parser_14 pg_cjk_parser_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 38.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cjk_parser_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 67.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 67.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 76.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 75.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 72.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 72.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 71.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-cjk-parser postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 71.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cjk-parser/postgresql-14-pg-cjk-parser_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_cjk_parser` using `pig build`:

```bash
pig build pkg pg_cjk_parser         # build RPM / DEB packages
```


## Install

You can install `pg_cjk_parser` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_cjk_parser;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_cjk_parser -v 18  # PG 18
pig ext install -y pg_cjk_parser -v 17  # PG 17
pig ext install -y pg_cjk_parser -v 16  # PG 16
pig ext install -y pg_cjk_parser -v 15  # PG 15
pig ext install -y pg_cjk_parser -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_cjk_parser_18       # PG 18
dnf install -y pg_cjk_parser_17       # PG 17
dnf install -y pg_cjk_parser_16       # PG 16
dnf install -y pg_cjk_parser_15       # PG 15
dnf install -y pg_cjk_parser_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-cjk-parser   # PG 18
apt install -y postgresql-17-pg-cjk-parser   # PG 17
apt install -y postgresql-16-pg-cjk-parser   # PG 16
apt install -y postgresql-15-pg-cjk-parser   # PG 15
apt install -y postgresql-14-pg-cjk-parser   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_cjk_parser;
```

## Usage

Sources:

- [Official v0.1.0 README](https://github.com/huangjimmy/pg_cjk_parser/blob/v0.1.0/Readme.md)
- [v0.1.0 release notes](https://github.com/huangjimmy/pg_cjk_parser/releases/tag/v0.1.0)
- [v0.1.0 control file](https://github.com/huangjimmy/pg_cjk_parser/blob/v0.1.0/pg_cjk_parser.control)
- [v0.1.0 SQL functions](https://github.com/huangjimmy/pg_cjk_parser/blob/v0.1.0/pg_cjk_parser--0.1.0.sql)

`pg_cjk_parser` is a PostgreSQL full-text-search parser derived from the built-in parser. In a UTF-8 database it keeps the default behavior for non-CJK text while emitting overlapping 2-gram tokens for Chinese, Japanese, and Korean text. The extension installs parser support functions; you create the text-search parser and configuration that use them.

### Core Workflow

```sql
CREATE EXTENSION pg_cjk_parser;

CREATE TEXT SEARCH PARSER public.pg_cjk_parser (
    START = prsd2_cjk_start,
    GETTOKEN = prsd2_cjk_nexttoken,
    END = prsd2_cjk_end,
    LEXTYPES = prsd2_cjk_lextype,
    HEADLINE = prsd2_cjk_headline
);

CREATE TEXT SEARCH CONFIGURATION public.config_2_gram_cjk (
    PARSER = public.pg_cjk_parser
);

SELECT alias, description, token
FROM ts_debug(
    'public.config_2_gram_cjk',
    'PostgreSQL 全文検索和中文检索'
);
```

Use the configuration explicitly in generated `tsvector` columns and queries, or set it as the session default:

```sql
SET default_text_search_config = 'public.config_2_gram_cjk';

SELECT to_tsvector('public.config_2_gram_cjk', '日本語全文検索');
```

### Important Objects

- `prsd2_cjk_start`, `prsd2_cjk_nexttoken`, `prsd2_cjk_end`, `prsd2_cjk_lextype`, and `prsd2_cjk_headline`: support functions used by `CREATE TEXT SEARCH PARSER`.
- `cjk_zht2zhs(text)`: converts mapped Traditional Chinese characters to Simplified Chinese while leaving other characters unchanged.
- Parser token type `cjk`: emits overlapping CJK bigrams; CJK punctuation is emitted as a unigram.

```sql
SELECT cjk_zht2zhs('漢語');
-- 汉语
```

### Version Notes and Caveats

- Version `0.1.0` fixes incorrect `cjk_zht2zhs` scanning across mixed-width UTF-8 characters and corrects handling of four-byte CJK code points.
- Upstream supports PostgreSQL 11 through 18 at this release.
- The database must use UTF-8 for CJK bigram behavior. With another encoding, the parser behaves like the PostgreSQL default parser.
- Creating a text-search parser requires elevated privileges. Decide mappings, dictionaries, stop words, and ranking separately; the example configuration defines only the parser.
