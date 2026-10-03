---
title: "pgroonga"
linkTitle: "pgroonga"
description: "Use Groonga as index, fast full text search platform for all languages!"
weight: 2110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgroonga/pgroonga">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgroonga/pgroonga</div>
    <div class="ext-card__desc">https://github.com/pgroonga/pgroonga</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgroonga-4.0.9.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgroonga-4.0.9.tar.gz</div>
    <div class="ext-card__desc">pgroonga-4.0.9.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgroonga`**](/ext/e/pgroonga) | `4.0.9` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2110  | [**`pgroonga`**](/ext/e/pgroonga) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 2111  | [**`pgroonga_database`**](/ext/e/pgroonga_database) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_fts`](/ext/e/pg_fts) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pg_jieba`](/ext/e/pg_jieba) [`dict_xsyn`](/ext/e/dict_xsyn) [`unaccent`](/ext/e/unaccent) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require xxHash vendor repo to build


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.9` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.9` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga_$v` | `groonga-libs` |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.9` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgroonga` | `libgroonga0` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el8.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el9.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el9.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el10.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el10.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d12.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d12.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d13.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d13.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u22.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u22.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u24.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u24.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u26.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u26.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
@ el8.x86_64 18 pgroonga_18 pgroonga_18-4.0.9-1PGSTY.el8.x86_64.rpm pigsty 4.0.9 242.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_18-4.0.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgroonga_18 pgroonga_18-4.0.9-1PGSTY.el8.aarch64.rpm pigsty 4.0.9 228.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_18-4.0.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgroonga_18 pgroonga_18-4.0.9-1PGSTY.el9.x86_64.rpm pigsty 4.0.9 246.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_18-4.0.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgroonga_18 pgroonga_18-4.0.9-1PGSTY.el9.aarch64.rpm pigsty 4.0.9 238.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_18-4.0.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgroonga_18 pgroonga_18-4.0.9-1PGSTY.el10.x86_64.rpm pigsty 4.0.9 248.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_18-4.0.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgroonga_18 pgroonga_18-4.0.9-1PGSTY.el10.aarch64.rpm pigsty 4.0.9 239.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_18-4.0.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb pigsty 4.0.9 181.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb pigsty 4.0.9 163.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb pigsty 4.0.9 182.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb pigsty 4.0.9 163.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb pigsty 4.0.9 196.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb pigsty 4.0.9 190.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~noble_amd64.deb pigsty 4.0.9 191.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~noble_arm64.deb pigsty 4.0.9 185.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb pigsty 4.0.9 193.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb pigsty 4.0.9 184.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgroonga_17 pgroonga_17-4.0.9-1PGSTY.el8.x86_64.rpm pigsty 4.0.9 242.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_17-4.0.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgroonga_17 pgroonga_17-4.0.9-1PGSTY.el8.aarch64.rpm pigsty 4.0.9 228.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_17-4.0.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgroonga_17 pgroonga_17-4.0.9-1PGSTY.el9.x86_64.rpm pigsty 4.0.9 246.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_17-4.0.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgroonga_17 pgroonga_17-4.0.9-1PGSTY.el9.aarch64.rpm pigsty 4.0.9 238.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_17-4.0.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgroonga_17 pgroonga_17-4.0.9-1PGSTY.el10.x86_64.rpm pigsty 4.0.9 248.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_17-4.0.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgroonga_17 pgroonga_17-4.0.9-1PGSTY.el10.aarch64.rpm pigsty 4.0.9 239.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_17-4.0.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb pigsty 4.0.9 181.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb pigsty 4.0.9 163.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb pigsty 4.0.9 181.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb pigsty 4.0.9 163.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb pigsty 4.0.9 197.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb pigsty 4.0.9 190.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~noble_amd64.deb pigsty 4.0.9 191.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~noble_arm64.deb pigsty 4.0.9 185.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb pigsty 4.0.9 193.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb pigsty 4.0.9 184.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgroonga_16 pgroonga_16-4.0.9-1PGSTY.el8.x86_64.rpm pigsty 4.0.9 239.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_16-4.0.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgroonga_16 pgroonga_16-4.0.9-1PGSTY.el8.aarch64.rpm pigsty 4.0.9 226.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_16-4.0.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgroonga_16 pgroonga_16-4.0.9-1PGSTY.el9.x86_64.rpm pigsty 4.0.9 243.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_16-4.0.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgroonga_16 pgroonga_16-4.0.9-1PGSTY.el9.aarch64.rpm pigsty 4.0.9 236.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_16-4.0.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgroonga_16 pgroonga_16-4.0.9-1PGSTY.el10.x86_64.rpm pigsty 4.0.9 246.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_16-4.0.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgroonga_16 pgroonga_16-4.0.9-1PGSTY.el10.aarch64.rpm pigsty 4.0.9 237.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_16-4.0.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb pigsty 4.0.9 178.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb pigsty 4.0.9 161.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb pigsty 4.0.9 180.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb pigsty 4.0.9 161.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb pigsty 4.0.9 194.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb pigsty 4.0.9 187.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~noble_amd64.deb pigsty 4.0.9 189.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~noble_arm64.deb pigsty 4.0.9 182.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb pigsty 4.0.9 191.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb pigsty 4.0.9 182.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgroonga_15 pgroonga_15-4.0.9-1PGSTY.el8.x86_64.rpm pigsty 4.0.9 239.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_15-4.0.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgroonga_15 pgroonga_15-4.0.9-1PGSTY.el8.aarch64.rpm pigsty 4.0.9 226.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_15-4.0.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgroonga_15 pgroonga_15-4.0.9-1PGSTY.el9.x86_64.rpm pigsty 4.0.9 242.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_15-4.0.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgroonga_15 pgroonga_15-4.0.9-1PGSTY.el9.aarch64.rpm pigsty 4.0.9 235.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_15-4.0.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgroonga_15 pgroonga_15-4.0.9-1PGSTY.el10.x86_64.rpm pigsty 4.0.9 246.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_15-4.0.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgroonga_15 pgroonga_15-4.0.9-1PGSTY.el10.aarch64.rpm pigsty 4.0.9 236.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_15-4.0.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb pigsty 4.0.9 178.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb pigsty 4.0.9 161.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb pigsty 4.0.9 180.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb pigsty 4.0.9 161.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb pigsty 4.0.9 193.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb pigsty 4.0.9 187.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~noble_amd64.deb pigsty 4.0.9 188.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~noble_arm64.deb pigsty 4.0.9 182.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb pigsty 4.0.9 191.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb pigsty 4.0.9 181.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgroonga_14 pgroonga_14-4.0.9-1PGSTY.el8.x86_64.rpm pigsty 4.0.9 221.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_14-4.0.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgroonga_14 pgroonga_14-4.0.9-1PGSTY.el8.aarch64.rpm pigsty 4.0.9 210.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_14-4.0.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgroonga_14 pgroonga_14-4.0.9-1PGSTY.el9.x86_64.rpm pigsty 4.0.9 225.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_14-4.0.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgroonga_14 pgroonga_14-4.0.9-1PGSTY.el9.aarch64.rpm pigsty 4.0.9 219.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_14-4.0.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgroonga_14 pgroonga_14-4.0.9-1PGSTY.el10.x86_64.rpm pigsty 4.0.9 228.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_14-4.0.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgroonga_14 pgroonga_14-4.0.9-1PGSTY.el10.aarch64.rpm pigsty 4.0.9 220.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_14-4.0.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb pigsty 4.0.9 163.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb pigsty 4.0.9 147.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb pigsty 4.0.9 164.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb pigsty 4.0.9 148.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb pigsty 4.0.9 177.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb pigsty 4.0.9 171.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~noble_amd64.deb pigsty 4.0.9 172.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~noble_arm64.deb pigsty 4.0.9 167.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb pigsty 4.0.9 174.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb pigsty 4.0.9 166.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.9-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgroonga` using `pig build`:

```bash
pig build pkg pgroonga         # build RPM / DEB packages
```


## Install

You can install `pgroonga` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgroonga;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgroonga -v 18  # PG 18
pig ext install -y pgroonga -v 17  # PG 17
pig ext install -y pgroonga -v 16  # PG 16
pig ext install -y pgroonga -v 15  # PG 15
pig ext install -y pgroonga -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgroonga_18       # PG 18
dnf install -y pgroonga_17       # PG 17
dnf install -y pgroonga_16       # PG 16
dnf install -y pgroonga_15       # PG 15
dnf install -y pgroonga_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgroonga   # PG 18
apt install -y postgresql-17-pgroonga   # PG 17
apt install -y postgresql-16-pgroonga   # PG 16
apt install -y postgresql-15-pgroonga   # PG 15
apt install -y postgresql-14-pgroonga   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgroonga;
```

## Usage

Sources:

- [Version 4.0.9 SQL](https://github.com/pgroonga/pgroonga/blob/4.0.9/data/pgroonga.sql)
- [Version 4.0.9 control](https://github.com/pgroonga/pgroonga/blob/4.0.9/pgroonga.control)
- [Official tutorial](https://pgroonga.github.io/tutorial/)
- [Version 4.0.9 release](https://github.com/pgroonga/pgroonga/releases/tag/4.0.9)
- [Upgrade guidance](https://pgroonga.github.io/upgrade/)

`pgroonga` 4.0.9 provides Groonga-backed indexes for multilingual full-text search. It installs the `pgroonga` access method and SQL operators; ordinary use does not require shared preload.

### Core Workflow

Install compatible PGroonga and Groonga libraries, then create the extension as an administrator:

```sql
CREATE EXTENSION pgroonga;
CREATE TABLE search_notes (id bigint PRIMARY KEY, body text);
CREATE INDEX search_notes_body_idx ON search_notes USING pgroonga (body);
INSERT INTO search_notes VALUES (1, 'PostgreSQL supports full text search');
SELECT id, body FROM search_notes WHERE body &@ 'PostgreSQL';
SELECT id, body, pgroonga_score(tableoid, ctid) AS score
FROM search_notes WHERE body &@~ 'PostgreSQL OR Groonga'
ORDER BY score DESC;
```

### Important Objects

- `&@` matches a keyword; `&@~` accepts Groonga query syntax. Supported LIKE/ILIKE searches can also use the index, with rechecks where required.
- `pgroonga_score(tableoid, ctid)` retrieves search scores. Confirm the intended index plan when using score-based ordering.
- `pgroonga_highlight_html()` and `pgroonga_query_extract_keywords()` produce highlighted search results; `pgroonga_snippet_html()` provides surrounding text.
- New in 4.0.9, `pgroonga_physical_table_names(partitioned_index, prefix)` returns a text array of Groonga command arguments identifying the physical tables behind partition indexes. This release also increments `pg_stat_user_indexes.idx_scan` for PGroonga scans.

### Maintenance and Privileges

The 4.0.9 control file declares neither trusted installation nor relocatability; do not assume ordinary users can install it or move it between schemas. Index creation and queries follow the relevant table privileges. Match the extension and Groonga libraries to the target PostgreSQL build and follow upstream upgrade guidance before replacing binaries.

PGroonga manages derived index files in addition to table data. Plan disk capacity and backup/recovery procedures accordingly. Use REINDEX for index repair where appropriate. The separate `pgroonga_database` module is a recovery tool for damaged internal Groonga databases and is not needed for normal searches. Do not disable sequential scans globally merely to force an index in production.

### Pigsty Runtime Compatibility

The current Pigsty EL8 and EL9 packages have a confirmed coexistence limit with PostGIS Raster on both x86_64 and aarch64, across PostgreSQL 14–18. Groonga uses Arrow 22, while the tested GDAL/Raster stacks use Arrow 8 on EL8 and Arrow 9 on EL9. Loading both stacks into one PostgreSQL backend can crash it; a successful SQL query does not prove a normal backend exit.

Changing load order is not a complete fix: automatic session preload still produced backend-exit crashes on EL9 aarch64. Avoid enabling both stacks in the same backend until a compatible dependency combination is verified; isolate their use when necessary. The tested EL10 and Debian/Ubuntu combinations did not reproduce this failure, which does not establish compatibility for arbitrary other dependency versions. This is a Pigsty package-stack boundary, not an upstream requirement to preload PGroonga for ordinary search.

MeCab tokenization additionally needs the matching Groonga tokenizer plugin and dictionary. Installing the PostgreSQL extension alone does not supply every optional tokenizer; verify the requested tokenizer before building an index that names it.
