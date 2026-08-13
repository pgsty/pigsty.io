---
title: "pg_tokenizer"
linkTitle: "pg_tokenizer"
description: "Tokenizers for full-text search"
weight: 2160
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tensorchord/pg_tokenizer.rs">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tensorchord/pg_tokenizer.rs</div>
    <div class="ext-card__desc">https://github.com/tensorchord/pg_tokenizer.rs</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_tokenizer.rs-0.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_tokenizer.rs-0.1.1.tar.gz</div>
    <div class="ext-card__desc">pg_tokenizer.rs-0.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tokenizer`**](/ext/e/pg_tokenizer) | `0.1.1` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2160  | [**`pg_tokenizer`**](/ext/e/pg_tokenizer) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `tokenizer_catalog` |
{.ext-table}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pg_jieba`](/ext/e/pg_jieba) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg_tiktoken_c`](/ext/e/pg_tiktoken_c) [`unaccent`](/ext/e/unaccent) [`dict_xsyn`](/ext/e/dict_xsyn) [`dict_int`](/ext/e/dict_int) [`hunspell_cs_cz`](/ext/e/hunspell_cs_cz) [`pg_kazsearch`](/ext/e/pg_kazsearch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 fix by Vonng.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_tokenizer` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_tokenizer_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-tokenizer` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
@ el8.x86_64 18 pg_tokenizer_18 pg_tokenizer_18-0.1.1-3PIGSTY.el8.x86_64.rpm pigsty 0.1.1 13.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_18-0.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_tokenizer_18 pg_tokenizer_18-0.1.1-3PIGSTY.el8.aarch64.rpm pigsty 0.1.1 13.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_18-0.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_tokenizer_18 pg_tokenizer_18-0.1.1-3PIGSTY.el9.x86_64.rpm pigsty 0.1.1 12.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_18-0.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tokenizer_18 pg_tokenizer_18-0.1.1-3PIGSTY.el9.aarch64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_18-0.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tokenizer_18 pg_tokenizer_18-0.1.1-3PIGSTY.el10.x86_64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_18-0.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tokenizer_18 pg_tokenizer_18-0.1.1-3PIGSTY.el10.aarch64.rpm pigsty 0.1.1 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_18-0.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb pigsty 0.1.1 12.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-tokenizer postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-18-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_tokenizer_17 pg_tokenizer_17-0.1.1-3PIGSTY.el8.x86_64.rpm pigsty 0.1.1 13.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_17-0.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_tokenizer_17 pg_tokenizer_17-0.1.1-3PIGSTY.el8.aarch64.rpm pigsty 0.1.1 13.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_17-0.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_tokenizer_17 pg_tokenizer_17-0.1.1-3PIGSTY.el9.x86_64.rpm pigsty 0.1.1 12.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_17-0.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tokenizer_17 pg_tokenizer_17-0.1.1-3PIGSTY.el9.aarch64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_17-0.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tokenizer_17 pg_tokenizer_17-0.1.1-3PIGSTY.el10.x86_64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_17-0.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tokenizer_17 pg_tokenizer_17-0.1.1-3PIGSTY.el10.aarch64.rpm pigsty 0.1.1 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_17-0.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb pigsty 0.1.1 12.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-tokenizer postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-17-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_tokenizer_16 pg_tokenizer_16-0.1.1-3PIGSTY.el8.x86_64.rpm pigsty 0.1.1 13.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_16-0.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_tokenizer_16 pg_tokenizer_16-0.1.1-3PIGSTY.el8.aarch64.rpm pigsty 0.1.1 13.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_16-0.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_tokenizer_16 pg_tokenizer_16-0.1.1-3PIGSTY.el9.x86_64.rpm pigsty 0.1.1 12.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_16-0.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_tokenizer_16 pg_tokenizer_16-0.1.1-3PIGSTY.el9.aarch64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_16-0.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_tokenizer_16 pg_tokenizer_16-0.1.1-3PIGSTY.el10.x86_64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_16-0.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_tokenizer_16 pg_tokenizer_16-0.1.1-3PIGSTY.el10.aarch64.rpm pigsty 0.1.1 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_16-0.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb pigsty 0.1.1 12.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-tokenizer postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-16-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_tokenizer_15 pg_tokenizer_15-0.1.1-3PIGSTY.el8.x86_64.rpm pigsty 0.1.1 13.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_15-0.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_tokenizer_15 pg_tokenizer_15-0.1.1-3PIGSTY.el8.aarch64.rpm pigsty 0.1.1 13.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_15-0.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_tokenizer_15 pg_tokenizer_15-0.1.1-3PIGSTY.el9.x86_64.rpm pigsty 0.1.1 12.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_15-0.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_tokenizer_15 pg_tokenizer_15-0.1.1-3PIGSTY.el9.aarch64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_15-0.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_tokenizer_15 pg_tokenizer_15-0.1.1-3PIGSTY.el10.x86_64.rpm pigsty 0.1.1 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_15-0.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_tokenizer_15 pg_tokenizer_15-0.1.1-3PIGSTY.el10.aarch64.rpm pigsty 0.1.1 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_15-0.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-tokenizer postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-15-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_tokenizer_14 pg_tokenizer_14-0.1.1-3PIGSTY.el8.x86_64.rpm pigsty 0.1.1 13.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tokenizer_14-0.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_tokenizer_14 pg_tokenizer_14-0.1.1-3PIGSTY.el8.aarch64.rpm pigsty 0.1.1 13.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tokenizer_14-0.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_tokenizer_14 pg_tokenizer_14-0.1.1-3PIGSTY.el9.x86_64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tokenizer_14-0.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_tokenizer_14 pg_tokenizer_14-0.1.1-3PIGSTY.el9.aarch64.rpm pigsty 0.1.1 12.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tokenizer_14-0.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_tokenizer_14 pg_tokenizer_14-0.1.1-3PIGSTY.el10.x86_64.rpm pigsty 0.1.1 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tokenizer_14-0.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_tokenizer_14 pg_tokenizer_14-0.1.1-3PIGSTY.el10.aarch64.rpm pigsty 0.1.1 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tokenizer_14-0.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb pigsty 0.1.1 11.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb pigsty 0.1.1 10.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb pigsty 0.1.1 12.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb pigsty 0.1.1 12.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-tokenizer postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb pigsty 0.1.1 12.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tokenizer/postgresql-14-pg-tokenizer_0.1.1-3PIGSTY~resolute_arm64.deb
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

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_tokenizer;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_tokenizer -v 18  # PG 18
pig ext install -y pg_tokenizer -v 17  # PG 17
pig ext install -y pg_tokenizer -v 16  # PG 16
pig ext install -y pg_tokenizer -v 15  # PG 15
pig ext install -y pg_tokenizer -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_tokenizer_18       # PG 18
dnf install -y pg_tokenizer_17       # PG 17
dnf install -y pg_tokenizer_16       # PG 16
dnf install -y pg_tokenizer_15       # PG 15
dnf install -y pg_tokenizer_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-tokenizer   # PG 18
apt install -y postgresql-17-pg-tokenizer   # PG 17
apt install -y postgresql-16-pg-tokenizer   # PG 16
apt install -y postgresql-15-pg-tokenizer   # PG 15
apt install -y postgresql-14-pg-tokenizer   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_tokenizer';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_tokenizer;
```




## Usage

> [GitHub: tensorchord/pg_tokenizer.rs](https://github.com/tensorchord/pg_tokenizer.rs)

`pg_tokenizer` is a PostgreSQL extension that provides tokenizers for full-text search. It is designed to work with [VectorChord-bm25](https://github.com/tensorchord/VectorChord-bm25) for native BM25 ranking index support.

## Quick Start

```sql
CREATE EXTENSION pg_tokenizer;

-- Create a tokenizer using the LLMLingua2 model
SELECT create_tokenizer('tokenizer1', $$
model = "llmlingua2"
$$);

-- Tokenize text
SELECT tokenize('PostgreSQL is a powerful, open-source object-relational database system. It has over 15 years of active development.', 'tokenizer1');
```

## Tokenizer Models

pg_tokenizer supports multiple tokenizer models for different languages and use cases:

| Model | Language | Description |
|-------|----------|-------------|
| `llmlingua2` | English | BERT-based tokenizer from LLMLingua2 |
| `jieba` | Chinese | Jieba Chinese text segmentation |
| `lindera/ipadic` | Japanese | Lindera tokenizer with IPADIC dictionary |
| Custom models | Any | User-trained models for domain-specific text |

### Creating Tokenizers

```sql
-- English tokenizer
SELECT create_tokenizer('en_tokenizer', $$
model = "llmlingua2"
$$);

-- Chinese tokenizer
SELECT create_tokenizer('zh_tokenizer', $$
model = "jieba"
$$);

-- Japanese tokenizer
SELECT create_tokenizer('ja_tokenizer', $$
model = "lindera/ipadic"
$$);
```

### Tokenizing Text

```sql
-- Tokenize English text
SELECT tokenize('full text search in PostgreSQL', 'en_tokenizer');

-- Tokenize Chinese text
SELECT tokenize('PostgreSQL是一个强大的数据库系统', 'zh_tokenizer');
```

## Text Analyzer

pg_tokenizer also provides text analyzer functionality that combines tokenization with additional text processing steps. For detailed text analyzer usage, refer to the [Text Analyzer documentation](https://github.com/tensorchord/pg_tokenizer.rs/blob/main/docs/05-text-analyzer.md).

## Integration with VectorChord-BM25

pg_tokenizer is typically used together with VectorChord-BM25 for full BM25 ranking support:

```sql
CREATE EXTENSION IF NOT EXISTS pg_tokenizer CASCADE;
CREATE EXTENSION IF NOT EXISTS vchord_bm25 CASCADE;

-- Create a tokenizer
SELECT create_tokenizer('my_tokenizer', $$
model = "llmlingua2"
$$);

-- Tokenize text into bm25vectors for indexing and search
SELECT tokenize('your search query', 'my_tokenizer');
```

## Documentation

For more details, see the full documentation:

- [Installation](https://github.com/tensorchord/pg_tokenizer.rs/blob/main/docs/01-installation.md)
- [Examples](https://github.com/tensorchord/pg_tokenizer.rs/blob/main/docs/03-examples.md)
- [Usage](https://github.com/tensorchord/pg_tokenizer.rs/blob/main/docs/04-usage.md)
- [Text Analyzer](https://github.com/tensorchord/pg_tokenizer.rs/blob/main/docs/05-text-analyzer.md)
- [Model Reference](https://github.com/tensorchord/pg_tokenizer.rs/blob/main/docs/06-model.md)
- [Limitations](https://github.com/tensorchord/pg_tokenizer.rs/blob/main/docs/07-limitation.md)
