---
title: "pg_kazsearch"
linkTitle: "pg_kazsearch"
description: "Kazakh full-text search extension for PostgreSQL"
weight: 2200
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/darkhanakh/pg-kazsearch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">darkhanakh/pg-kazsearch</div>
    <div class="ext-card__desc">https://github.com/darkhanakh/pg-kazsearch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_kazsearch-2.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_kazsearch-2.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_kazsearch-2.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_kazsearch`**](/ext/e/pg_kazsearch) | `2.3.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license lgpl30" href="/ext/license#lgpl30">LGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2200  | [**`pg_kazsearch`**](/ext/e/pg_kazsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`unaccent`](/ext/e/unaccent) [`dict_xsyn`](/ext/e/dict_xsyn) [`hunspell_cs_cz`](/ext/e/hunspell_cs_cz) [`dict_int`](/ext/e/dict_int) [`pg_jieba`](/ext/e/pg_jieba) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream 2.3.0 uses pgrx 0.17.0; PIGSTY packaging builds with pgrx 0.19.1 for PostgreSQL 16 through 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.3.0` | {{< pgvers "18,17,16" >}} | `pg_kazsearch` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.3.0` | {{< pgvers "18,17,16" >}} | `pg_kazsearch_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.3.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-kazsearch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.3.0-1PIGSTY.el8.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_18-2.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.3.0-1PIGSTY.el8.aarch64.rpm pigsty 2.3.0 1016.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_18-2.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.3.0-1PIGSTY.el9.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_18-2.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.3.0-1PIGSTY.el9.aarch64.rpm pigsty 2.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_18-2.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.3.0-1PIGSTY.el10.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_18-2.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.3.0-1PIGSTY.el10.aarch64.rpm pigsty 2.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_18-2.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~bookworm_amd64.deb pigsty 2.3.0 858.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~bookworm_arm64.deb pigsty 2.3.0 749.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~trixie_amd64.deb pigsty 2.3.0 858.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~trixie_arm64.deb pigsty 2.3.0 749.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~jammy_amd64.deb pigsty 2.3.0 959.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~jammy_arm64.deb pigsty 2.3.0 883.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~noble_amd64.deb pigsty 2.3.0 953.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~noble_arm64.deb pigsty 2.3.0 869.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~resolute_amd64.deb pigsty 2.3.0 945.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~resolute_arm64.deb pigsty 2.3.0 867.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.3.0-1PIGSTY.el8.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_17-2.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.3.0-1PIGSTY.el8.aarch64.rpm pigsty 2.3.0 1013.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_17-2.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.3.0-1PIGSTY.el9.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_17-2.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.3.0-1PIGSTY.el9.aarch64.rpm pigsty 2.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_17-2.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.3.0-1PIGSTY.el10.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_17-2.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.3.0-1PIGSTY.el10.aarch64.rpm pigsty 2.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_17-2.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~bookworm_amd64.deb pigsty 2.3.0 856.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~bookworm_arm64.deb pigsty 2.3.0 748.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~trixie_amd64.deb pigsty 2.3.0 857.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~trixie_arm64.deb pigsty 2.3.0 748.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~jammy_amd64.deb pigsty 2.3.0 958.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~jammy_arm64.deb pigsty 2.3.0 881.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~noble_amd64.deb pigsty 2.3.0 948.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~noble_arm64.deb pigsty 2.3.0 868.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~resolute_amd64.deb pigsty 2.3.0 941.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~resolute_arm64.deb pigsty 2.3.0 866.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.3.0-1PIGSTY.el8.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_16-2.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.3.0-1PIGSTY.el8.aarch64.rpm pigsty 2.3.0 1012.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_16-2.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.3.0-1PIGSTY.el9.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_16-2.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.3.0-1PIGSTY.el9.aarch64.rpm pigsty 2.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_16-2.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.3.0-1PIGSTY.el10.x86_64.rpm pigsty 2.3.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_16-2.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.3.0-1PIGSTY.el10.aarch64.rpm pigsty 2.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_16-2.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~bookworm_amd64.deb pigsty 2.3.0 856.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~bookworm_arm64.deb pigsty 2.3.0 747.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~trixie_amd64.deb pigsty 2.3.0 853.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~trixie_arm64.deb pigsty 2.3.0 747.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~jammy_amd64.deb pigsty 2.3.0 956.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~jammy_arm64.deb pigsty 2.3.0 881.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~noble_amd64.deb pigsty 2.3.0 954.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~noble_arm64.deb pigsty 2.3.0 867.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~resolute_amd64.deb pigsty 2.3.0 941.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~resolute_arm64.deb pigsty 2.3.0 863.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.3.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_kazsearch` using `pig build`:

```bash
pig build pkg pg_kazsearch         # build RPM / DEB packages
```


## Install

You can install `pg_kazsearch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_kazsearch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_kazsearch -v 18  # PG 18
pig ext install -y pg_kazsearch -v 17  # PG 17
pig ext install -y pg_kazsearch -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_kazsearch_18       # PG 18
dnf install -y pg_kazsearch_17       # PG 17
dnf install -y pg_kazsearch_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-kazsearch   # PG 18
apt install -y postgresql-17-pg-kazsearch   # PG 17
apt install -y postgresql-16-pg-kazsearch   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_kazsearch;
```

## Usage

Sources:

- [Official v2.3.0 README](https://github.com/darkhanakh/pg-kazsearch/blob/v2.3.0/README.md)
- [v2.3.0 release](https://github.com/darkhanakh/pg-kazsearch/releases/tag/v2.3.0)
- [PostgreSQL extension control file](https://github.com/darkhanakh/pg-kazsearch/blob/v2.3.0/pg_ext/pg_kazsearch.control)
- [v2.2.0 to v2.3.0 upgrade SQL](https://github.com/darkhanakh/pg-kazsearch/blob/v2.3.0/pg_ext/sql/pg_kazsearch--2.2.0--2.3.0.sql)

`pg_kazsearch` provides Kazakh full-text stemming for PostgreSQL 16 through 18. It installs a ready-to-use `kazakh_cfg` configuration and `pg_kazsearch_dict` dictionary. Cyrillic and supported modern Latin-script Kazakh converge to canonical Cyrillic stems so documents and queries can match across scripts.

### Core Workflow

```sql
CREATE EXTENSION pg_kazsearch;

SELECT ts_lexize('pg_kazsearch_dict', 'алмаларымыздағы');
-- {алма}

SELECT to_tsvector('kazakh_cfg', 'мектептеріміздегі оқушылардың');
-- 'мектеп':1 'оқушы':2
```

Add a weighted stored vector and GIN index:

```sql
ALTER TABLE articles ADD COLUMN fts tsvector
GENERATED ALWAYS AS (
    setweight(to_tsvector('kazakh_cfg', title), 'A') ||
    setweight(to_tsvector('kazakh_cfg', body), 'B')
) STORED;

CREATE INDEX articles_fts_idx ON articles USING GIN (fts);

SELECT title
FROM articles
WHERE fts @@ websearch_to_tsquery('kazakh_cfg', 'президенттің жарлығы')
ORDER BY ts_rank_cd(
    fts,
    websearch_to_tsquery('kazakh_cfg', 'президенттің жарлығы')
) DESC;
```

### Dictionary Tuning

Penalty weights can be changed at runtime:

```sql
ALTER TEXT SEARCH DICTIONARY pg_kazsearch_dict
    (w_deriv = 3.5, w_short_char = 100.0);
```

The default `script_mode = auto` detects supported modern Kazakh Latin orthography and returns Cyrillic stems. Disable Latin handling when strict Cyrillic-only behavior is required:

```sql
ALTER TEXT SEARCH DICTIONARY pg_kazsearch_dict
    (script_mode = cyrillic_only);
```

### Upgrade and Search Caveats

- Stemmer upgrades change index terms. After upgrading to `2.3.0`, recompute stored `tsvector` columns or repopulate trigger-maintained vectors, then `VACUUM (ANALYZE)` the table.

```sql
ALTER EXTENSION pg_kazsearch UPDATE;
UPDATE articles SET title = title;
VACUUM (ANALYZE) articles;
```

- Long-lived sessions opened before an upgrade should reconnect so they load the new dictionary.
- Latin support targets the modern orthography. Mixed-script input, legacy apostrophe/acute/digraph spellings, and low-confidence ASCII tokens may remain unchanged.
- `websearch_to_tsquery` uses strict AND semantics for ordinary terms. Applications that need broader recall should deliberately implement and measure a fallback query rather than silently changing all searches to OR.
