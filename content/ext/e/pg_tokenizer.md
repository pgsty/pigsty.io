---
title: "pg_tokenizer"
linkTitle: "pg_tokenizer"
description: "Tokenizers for full-text search"
weight: 2170
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://vchord.pgsty.com/docs/tokenizer">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://vchord.pgsty.com/docs/tokenizer</div>
    <div class="ext-card__desc">https://vchord.pgsty.com/docs/tokenizer</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_tokenizer-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_tokenizer-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_tokenizer-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tokenizer`**](/ext/e/pg_tokenizer) | `1.0.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2170  | [**`pg_tokenizer`**](/ext/e/pg_tokenizer) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `tokenizer_catalog` |
{.ext-table .wide .expand}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pg_jieba`](/ext/e/pg_jieba) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg_tiktoken_c`](/ext/e/pg_tiktoken_c) [`unaccent`](/ext/e/unaccent) [`dict_xsyn`](/ext/e/dict_xsyn) [`dict_int`](/ext/e/dict_int) [`hunspell_cs_cz`](/ext/e/hunspell_cs_cz) [`pg_kazsearch`](/ext/e/pg_kazsearch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGSTY fork 1.0.0; native tsvector; preload required. Preserves catalog data; Lindera 6 needs matching external dictionaries. Recompute stored tsvectors for changed token IDs/phrase positions.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_tokenizer` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_tokenizer_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-tokenizer` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pg_tokenizer_18 pg_tokenizer_18-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 15.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_18-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_tokenizer_18 pg_tokenizer_18-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 14.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_18-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_tokenizer_18 pg_tokenizer_18-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 14.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_18-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tokenizer_18 pg_tokenizer_18-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 13.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_18-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tokenizer_18 pg_tokenizer_18-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 14.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_18-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tokenizer_18 pg_tokenizer_18-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 13.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_18-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_tokenizer_17 pg_tokenizer_17-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 15.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_17-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_tokenizer_17 pg_tokenizer_17-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 14.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_17-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_tokenizer_17 pg_tokenizer_17-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 14.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_17-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tokenizer_17 pg_tokenizer_17-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 13.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_17-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tokenizer_17 pg_tokenizer_17-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 14.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_17-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tokenizer_17 pg_tokenizer_17-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 13.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_17-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_tokenizer_16 pg_tokenizer_16-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 15.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_16-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_tokenizer_16 pg_tokenizer_16-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 14.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_16-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_tokenizer_16 pg_tokenizer_16-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 14.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_16-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_tokenizer_16 pg_tokenizer_16-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 13.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_16-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_tokenizer_16 pg_tokenizer_16-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 14.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_16-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_tokenizer_16 pg_tokenizer_16-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 13.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_16-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_tokenizer_15 pg_tokenizer_15-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 15.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_15-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_tokenizer_15 pg_tokenizer_15-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 14.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_15-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_tokenizer_15 pg_tokenizer_15-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 14.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_15-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_tokenizer_15 pg_tokenizer_15-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 13.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_15-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_tokenizer_15 pg_tokenizer_15-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 14.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_15-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_tokenizer_15 pg_tokenizer_15-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 13.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_15-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 12.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 12.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_tokenizer_14 pg_tokenizer_14-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 15.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_14-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_tokenizer_14 pg_tokenizer_14-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 14.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_14-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_tokenizer_14 pg_tokenizer_14-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 14.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_14-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_tokenizer_14 pg_tokenizer_14-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 13.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_14-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_tokenizer_14 pg_tokenizer_14-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 14.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_14-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_tokenizer_14 pg_tokenizer_14-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 13.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_14-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 12.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 12.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_1.0.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_tokenizer` using `pig build`:

```bash
pig build pkg pg_tokenizer         # build RPM / DEB packages
```


## Install

You can install `pg_tokenizer` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_tokenizer;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_tokenizer -v 18  # PG 18
pig ext install -y pg_tokenizer -v 17  # PG 17
pig ext install -y pg_tokenizer -v 16  # PG 16
pig ext install -y pg_tokenizer -v 15  # PG 15
pig ext install -y pg_tokenizer -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_tokenizer_18       # PG 18
dnf install -y pg_tokenizer_17       # PG 17
dnf install -y pg_tokenizer_16       # PG 16
dnf install -y pg_tokenizer_15       # PG 15
dnf install -y pg_tokenizer_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-tokenizer   # PG 18
apt install -y postgresql-17-pg-tokenizer   # PG 17
apt install -y postgresql-16-pg-tokenizer   # PG 16
apt install -y postgresql-15-pg-tokenizer   # PG 15
apt install -y postgresql-14-pg-tokenizer   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_tokenizer';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_tokenizer;
```

## Usage

Sources:

- [Installation, upgrades, permissions, and backups](https://vchord.pgsty.com/docs/tokenizer/installation/)
- [Tokenizer and native full-text workflows](https://vchord.pgsty.com/docs/tokenizer/overview/)
- [Text analyzer pipelines](https://vchord.pgsty.com/docs/tokenizer/text-analyzer/)
- [Models and filtered corpus training](https://vchord.pgsty.com/docs/tokenizer/models/)
- [Multilingual tokenization](https://vchord.pgsty.com/docs/tokenizer/multilingual/)
- [SQL and TOML reference](https://vchord.pgsty.com/docs/tokenizer/reference/)
- [1.0.0 control file](https://github.com/pgsty/pg_tokenizer/blob/v1.0.0/pg_tokenizer.control)

`pg_tokenizer` 1.0.0 provides configurable text analysis and model tokenization on PostgreSQL 14–18. It returns string tokens, integer token IDs, or native `tsvector` values for GIN/GiST and compatible BM25 indexes. It has no required extension dependency, needs shared preloading, and installs into the fixed `tokenizer_catalog` schema.

### Analyze and Index Text

Have an administrator add the library to the existing preload list and restart PostgreSQL:

```ini
shared_preload_libraries = 'pg_tokenizer'
```

```sql
CREATE EXTENSION pg_tokenizer;
SET search_path = public, tokenizer_catalog;

SELECT create_text_analyzer('fts_words', $$
character_filters = ["to_lowercase"]
pre_tokenizer = "unicode_segmentation"
$$);
SELECT apply_text_analyzer('Cat dog cat', 'fts_words');
SELECT analyze_to_tsvector('Cat dog cat', 'fts_words');

CREATE TABLE fts_documents (id bigint PRIMARY KEY, passage text, terms tsvector);
INSERT INTO fts_documents VALUES
    (1, 'Cat dog cat', analyze_to_tsvector('Cat dog cat', 'fts_words'));
CREATE INDEX fts_documents_gin ON fts_documents USING gin (terms);
SELECT id FROM fts_documents WHERE terms @@ 'cat <-> dog'::tsquery;
```

`apply_text_analyzer` returns `text[]`; `analyze_to_tsvector` uses those strings as lexemes with positions. Analyzer definitions are catalog data, so these functions are `STABLE`. Store their output in an ordinary column and maintain it on writes; do not use them directly in an expression index or stored generated column.

```sql
CREATE FUNCTION fts_documents_set_terms() RETURNS trigger
LANGUAGE plpgsql AS $$
BEGIN
    NEW.terms := tokenizer_catalog.analyze_to_tsvector(NEW.passage, 'fts_words');
    RETURN NEW;
END;
$$;
CREATE TRIGGER fts_documents_terms
BEFORE INSERT OR UPDATE OF passage ON fts_documents
FOR EACH ROW EXECUTE FUNCTION fts_documents_set_terms();
```

The phrase example uses known analyzer lexemes. The extension does not supply a general `tsquery` builder: query terms must use the same analysis and representation as stored documents. Positions describe the final token sequence, not character offsets in the source text. Filters can change phrase distances. PostgreSQL limits still apply: long lexemes are skipped, positions above 16,383 are clamped, and each lexeme retains at most 256 positions.

### Chinese Text and Model Tokenization

Jieba is an analyzer pre-tokenizer. It can produce native Chinese lexemes without training a model:

```sql
SELECT create_text_analyzer('zh_words', $$
[pre_tokenizer.jieba]
mode = "search"
enable_hmm = true
$$);
SELECT analyze_to_tsvector('PostgreSQL全文检索', 'zh_words');

SELECT create_tokenizer('bert_tokens', $$
model = "bert_base_uncased"
$$);
SELECT tokenize('hello hello', 'bert_tokens');
SELECT tokenize_to_tsvector('hello hello', 'bert_tokens');
```

`tokenize` returns `integer[]`; `tokenize_to_tsvector` stores the model IDs as decimal lexemes. The two native vector functions preserve repeated output tokens without decoding the model or applying another PostgreSQL normalization step. A normal language query such as `plainto_tsquery` does not reproduce model IDs. Use matching vectors with the BM25 query constructor, or construct a native query from the matching lexemes.

### Function and Configuration Index

| Interface | Purpose |
| --- | --- |
| `create_text_analyzer`, `drop_text_analyzer` | Manage TOML pipelines of character filters, a pre-tokenizer, and token filters. |
| `create_tokenizer`, `drop_tokenizer` | Combine an analyzer with a vocabulary or subword model. |
| `create_custom_model_tokenizer_and_trigger` | Train a custom vocabulary, backfill integer token IDs, and create maintenance triggers; an optional seventh `filter` argument selects corpus rows. |
| `create_huggingface_model`, `create_lindera_model` | Import a Hugging Face tokenizer definition or configure a Lindera dictionary. |
| `create_stopwords`, `create_synonym` | Create named dictionaries for analyzer filters. |
| `add_preload_model`, `remove_preload_model`, `list_preload_models` | Manage or inspect model preloading; changes require authorized administrators and a restart. |
| `llmlingua2`, `bert_base_uncased`, `wiki_tocken`, `gemma2b` | Built-in model names. |

The custom-model helper still fills integer arrays, not native vectors. Its filter is a trusted SQL Boolean expression over source columns: only true rows participate, the vocabulary remains append-only, and rows leaving the filter keep their previous target value. Do not pass untrusted SQL. Keep a separate vector-maintenance step when using native full-text indexes.

### Upgrade, Permissions, and Backups

Install the 1.0.0 files and restart PostgreSQL before updating each database:

```sql
ALTER EXTENSION pg_tokenizer UPDATE TO '1.0.0';
```

Upgrade paths from 0.1.0 and 0.1.1 preserve catalog rows, custom-model IDs, and the six-argument helper. The upgrade refuses to proceed while expression indexes, generated columns, partition keys, or extended statistics depend on the old immutable analyzer function; replace these uses with maintained columns first. Committed definition changes now invalidate backend caches according to SQL snapshots, but never rewrite stored token arrays or vectors.

Lindera 6 changes dictionary token IDs. Rebuild external dictionaries with Lindera 6, regenerate affected stored tokens/vectors, and rebuild indexes. Native RPM/DEB builds do not embed Lindera dictionaries; provide the external dictionary yourself. Back up those files and the cluster's `pg_tokenizer/preload_models` directory separately from a logical dump.

`pg_database_owner` receives access to database-local catalogs and functions; application roles need explicit grants. Object ownership still controls removal. Cluster preload changes are nontransactional and restricted separately. Vocabulary writers introducing new tokens serialize per model; retry SQLSTATE `40001` under repeatable-read or serializable isolation. Definition-changing APIs disallow two-phase prepare.

An ordinary `pg_dump` now includes analyzer, tokenizer, model, stopword, and synonym definitions, together with custom vocabulary tables, sequences, and source triggers. The shipped `lucene_english`, `nltk_english`, and `iso_english` lists are reserved and recreated by extension installation; use another name for a custom list.
