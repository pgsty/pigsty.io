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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgroonga-4.0.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgroonga-4.0.4.tar.gz</div>
    <div class="ext-card__desc">pgroonga-4.0.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgroonga`**](/ext/e/pgroonga) | `4.0.4` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2110  | [**`pgroonga`**](/ext/e/pgroonga) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 2111  | [**`pgroonga_database`**](/ext/e/pgroonga_database) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_fts`](/ext/e/pg_fts) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pg_jieba`](/ext/e/pg_jieba) [`dict_xsyn`](/ext/e/dict_xsyn) [`unaccent`](/ext/e/unaccent) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require xxHash vendor repo to build


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga_$v` | `groonga-libs` |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgroonga` | `libgroonga0` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el8.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el9.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el9.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el10.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el10.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d12.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d12.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d13.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d13.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u22.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u22.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u24.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u24.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u26.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u26.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
@ el8.x86_64 18 pgroonga_18 pgroonga_18-4.0.4-1.el8.x86_64.rpm pigsty 4.0.4 360.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_18-4.0.4-1.el8.x86_64.rpm
@ el8.aarch64 18 pgroonga_18 pgroonga_18-4.0.4-1.el8.aarch64.rpm pigsty 4.0.4 348.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_18-4.0.4-1.el8.aarch64.rpm
@ el9.x86_64 18 pgroonga_18 pgroonga_18-4.0.4-1.el9.x86_64.rpm pigsty 4.0.4 345.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_18-4.0.4-1.el9.x86_64.rpm
@ el9.aarch64 18 pgroonga_18 pgroonga_18-4.0.4-1.el9.aarch64.rpm pigsty 4.0.4 337.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_18-4.0.4-1.el9.aarch64.rpm
@ el10.x86_64 18 pgroonga_18 pgroonga_18-4.0.4-1.el10.x86_64.rpm pigsty 4.0.4 347.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_18-4.0.4-1.el10.x86_64.rpm
@ el10.aarch64 18 pgroonga_18 pgroonga_18-4.0.4-1.el10.aarch64.rpm pigsty 4.0.4 339.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_18-4.0.4-1.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb pigsty 4.0.4 621.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb pigsty 4.0.4 612.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb pigsty 4.0.4 621.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb pigsty 4.0.4 613.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb pigsty 4.0.4 678.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb pigsty 4.0.4 680.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb pigsty 4.0.4 651.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb pigsty 4.0.4 650.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb pigsty 4.0.4 647.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgroonga postgresql-18-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb pigsty 4.0.4 641.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-18-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgroonga_17 pgroonga_17-4.0.4-1.el8.x86_64.rpm pigsty 4.0.4 360.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_17-4.0.4-1.el8.x86_64.rpm
@ el8.aarch64 17 pgroonga_17 pgroonga_17-4.0.4-1.el8.aarch64.rpm pigsty 4.0.4 348.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_17-4.0.4-1.el8.aarch64.rpm
@ el9.x86_64 17 pgroonga_17 pgroonga_17-4.0.4-1.el9.x86_64.rpm pigsty 4.0.4 345.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_17-4.0.4-1.el9.x86_64.rpm
@ el9.aarch64 17 pgroonga_17 pgroonga_17-4.0.4-1.el9.aarch64.rpm pigsty 4.0.4 337.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_17-4.0.4-1.el9.aarch64.rpm
@ el10.x86_64 17 pgroonga_17 pgroonga_17-4.0.4-1.el10.x86_64.rpm pigsty 4.0.4 347.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_17-4.0.4-1.el10.x86_64.rpm
@ el10.aarch64 17 pgroonga_17 pgroonga_17-4.0.4-1.el10.aarch64.rpm pigsty 4.0.4 339.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_17-4.0.4-1.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb pigsty 4.0.4 621.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb pigsty 4.0.4 612.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb pigsty 4.0.4 621.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb pigsty 4.0.4 612.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb pigsty 4.0.4 757.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb pigsty 4.0.4 759.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb pigsty 4.0.4 650.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb pigsty 4.0.4 649.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb pigsty 4.0.4 646.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgroonga postgresql-17-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb pigsty 4.0.4 640.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-17-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgroonga_16 pgroonga_16-4.0.4-1.el8.x86_64.rpm pigsty 4.0.4 357.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_16-4.0.4-1.el8.x86_64.rpm
@ el8.aarch64 16 pgroonga_16 pgroonga_16-4.0.4-1.el8.aarch64.rpm pigsty 4.0.4 346.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_16-4.0.4-1.el8.aarch64.rpm
@ el9.x86_64 16 pgroonga_16 pgroonga_16-4.0.4-1.el9.x86_64.rpm pigsty 4.0.4 342.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_16-4.0.4-1.el9.x86_64.rpm
@ el9.aarch64 16 pgroonga_16 pgroonga_16-4.0.4-1.el9.aarch64.rpm pigsty 4.0.4 335.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_16-4.0.4-1.el9.aarch64.rpm
@ el10.x86_64 16 pgroonga_16 pgroonga_16-4.0.4-1.el10.x86_64.rpm pigsty 4.0.4 344.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_16-4.0.4-1.el10.x86_64.rpm
@ el10.aarch64 16 pgroonga_16 pgroonga_16-4.0.4-1.el10.aarch64.rpm pigsty 4.0.4 337.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_16-4.0.4-1.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb pigsty 4.0.4 615.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb pigsty 4.0.4 606.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb pigsty 4.0.4 615.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb pigsty 4.0.4 607.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb pigsty 4.0.4 744.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb pigsty 4.0.4 746.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb pigsty 4.0.4 643.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb pigsty 4.0.4 643.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb pigsty 4.0.4 639.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgroonga postgresql-16-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb pigsty 4.0.4 634.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-16-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgroonga_15 pgroonga_15-4.0.4-1.el8.x86_64.rpm pigsty 4.0.4 360.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_15-4.0.4-1.el8.x86_64.rpm
@ el8.aarch64 15 pgroonga_15 pgroonga_15-4.0.4-1.el8.aarch64.rpm pigsty 4.0.4 349.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_15-4.0.4-1.el8.aarch64.rpm
@ el9.x86_64 15 pgroonga_15 pgroonga_15-4.0.4-1.el9.x86_64.rpm pigsty 4.0.4 346.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_15-4.0.4-1.el9.x86_64.rpm
@ el9.aarch64 15 pgroonga_15 pgroonga_15-4.0.4-1.el9.aarch64.rpm pigsty 4.0.4 339.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_15-4.0.4-1.el9.aarch64.rpm
@ el10.x86_64 15 pgroonga_15 pgroonga_15-4.0.4-1.el10.x86_64.rpm pigsty 4.0.4 349.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_15-4.0.4-1.el10.x86_64.rpm
@ el10.aarch64 15 pgroonga_15 pgroonga_15-4.0.4-1.el10.aarch64.rpm pigsty 4.0.4 339.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_15-4.0.4-1.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb pigsty 4.0.4 617.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb pigsty 4.0.4 608.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb pigsty 4.0.4 618.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb pigsty 4.0.4 608.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb pigsty 4.0.4 751.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb pigsty 4.0.4 758.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb pigsty 4.0.4 650.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb pigsty 4.0.4 651.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb pigsty 4.0.4 648.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgroonga postgresql-15-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb pigsty 4.0.4 645.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-15-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgroonga_14 pgroonga_14-4.0.4-1.el8.x86_64.rpm pigsty 4.0.4 341.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgroonga_14-4.0.4-1.el8.x86_64.rpm
@ el8.aarch64 14 pgroonga_14 pgroonga_14-4.0.4-1.el8.aarch64.rpm pigsty 4.0.4 332.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgroonga_14-4.0.4-1.el8.aarch64.rpm
@ el9.x86_64 14 pgroonga_14 pgroonga_14-4.0.4-1.el9.x86_64.rpm pigsty 4.0.4 328.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgroonga_14-4.0.4-1.el9.x86_64.rpm
@ el9.aarch64 14 pgroonga_14 pgroonga_14-4.0.4-1.el9.aarch64.rpm pigsty 4.0.4 322.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgroonga_14-4.0.4-1.el9.aarch64.rpm
@ el10.x86_64 14 pgroonga_14 pgroonga_14-4.0.4-1.el10.x86_64.rpm pigsty 4.0.4 331.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgroonga_14-4.0.4-1.el10.x86_64.rpm
@ el10.aarch64 14 pgroonga_14 pgroonga_14-4.0.4-1.el10.aarch64.rpm pigsty 4.0.4 322.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgroonga_14-4.0.4-1.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb pigsty 4.0.4 565.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb pigsty 4.0.4 558.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb pigsty 4.0.4 566.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb pigsty 4.0.4 559.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb pigsty 4.0.4 690.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb pigsty 4.0.4 698.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb pigsty 4.0.4 596.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb pigsty 4.0.4 598.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb pigsty 4.0.4 692.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgroonga postgresql-14-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb pigsty 4.0.4 684.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgroonga/postgresql-14-pgroonga_4.0.4-1PIGSTY~resolute_arm64.deb
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

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgroonga;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgroonga -v 18  # PG 18
pig ext install -y pgroonga -v 17  # PG 17
pig ext install -y pgroonga -v 16  # PG 16
pig ext install -y pgroonga -v 15  # PG 15
pig ext install -y pgroonga -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgroonga_18       # PG 18
dnf install -y pgroonga_17       # PG 17
dnf install -y pgroonga_16       # PG 16
dnf install -y pgroonga_15       # PG 15
dnf install -y pgroonga_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgroonga   # PG 18
apt install -y postgresql-17-pgroonga   # PG 17
apt install -y postgresql-16-pgroonga   # PG 16
apt install -y postgresql-15-pgroonga   # PG 15
apt install -y postgresql-14-pgroonga   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgroonga;
```




## Usage

- https://pgroonga.github.io/
- [News](https://pgroonga.github.io/news/): It lists release information.
- [Overview](https://pgroonga.github.io/overview/): It describes about PGroonga.
- [Install](https://pgroonga.github.io/install/): It describes how to install PGroonga.
- [Upgrade](https://pgroonga.github.io/upgrade/): It describes how to upgrade PGroonga.
- [Uninstall](https://pgroonga.github.io/uninstall/): It describes how to uninstall PGroonga.
- [Tutorial](https://pgroonga.github.io/tutorial/): It describes how to use PGroonga step by step.
- [FAQ](https://pgroonga.github.io/faq/): Frequently asked questions.
- [How to](https://pgroonga.github.io/how-to/): It describes about useful information for specific situations.
- [Reference](https://pgroonga.github.io/reference/): It describes details for each features such as options, functions and operators.
- [Troubleshooting](https://pgroonga.github.io/troubleshooting/): It describes how to fix troubles.
- [Community](https://pgroonga.github.io/community/): It introduces about PGroonga community.
- [Users](https://pgroonga.github.io/users/): It lists PGroonga users.
- [Development](https://pgroonga.github.io/development/): It describes how to develop PGroonga.

Here's a quick [tutorial](https://pgroonga.github.io/tutorial/) about how to use PGroonga:

```sql
CREATE EXTENSION IF NOT EXISTS pgroonga;

CREATE TABLE memos
(
    id      integer,
    content text
);

CREATE INDEX pgroonga_content_index ON memos USING pgroonga (content);

INSERT INTO memos VALUES (1, 'PostgreSQL is a relational database management system.');
INSERT INTO memos VALUES (2, 'Groonga is a fast full text search engine that supports all languages.');
INSERT INTO memos VALUES (3, 'PGroonga is a PostgreSQL extension that uses Groonga as index.');
INSERT INTO memos VALUES (4, 'There is groonga command.');

SET enable_seqscan = off;

-- now let's query pgroonga

SELECT * FROM memos WHERE content &@ 'engine';
--  id |                                content                                 
-- ----+------------------------------------------------------------------------
--   2 | Groonga is a fast full text search engine that supports all languages.
-- (1 row)

SELECT * FROM memos WHERE content &@~ 'PGroonga OR PostgreSQL';
--  id |                            content                             
-- ----+----------------------------------------------------------------
--   3 | PGroonga is a PostgreSQL extension that uses Groonga as index.
--   1 | PostgreSQL is a relational database management system.
-- (2 rows)

SELECT * FROM memos WHERE content LIKE '%engine%';
--  id |                                content                                 
-- ----+------------------------------------------------------------------------
--   2 | Groonga is a fast full text search engine that supports all languages.
-- (1 row)
```
