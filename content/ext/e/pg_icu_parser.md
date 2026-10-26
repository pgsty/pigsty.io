---
title: "pg_icu_parser"
linkTitle: "pg_icu_parser"
description: "Full text search parser using ICU boundary analysis"
weight: 2300
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/IgKh/pg_icu_parser">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">IgKh/pg_icu_parser</div>
    <div class="ext-card__desc">https://github.com/IgKh/pg_icu_parser</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_icu_parser-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_icu_parser-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_icu_parser-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_icu_parser`**](/ext/e/pg_icu_parser) | `1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mpl20" href="/ext/license#mpl20">MPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2300  | [**`pg_icu_parser`**](/ext/e/pg_icu_parser) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_jieba`](/ext/e/pg_jieba) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`pg_fts`](/ext/e/pg_fts) [`pgroonga`](/ext/e/pgroonga) [`zhparser`](/ext/e/zhparser) [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> SQL/control version 1.0; upstream release 1.0.0. Local RPM/DEB builds support PG14-18 with a PG18 encoding-API compatibility patch and explicit ICU linkage. ts_headline is unsupported. PIGSTY PG14-18 packages verified across EL8/9/10, Debian 12/13 and Ubuntu 22.04/24.04/26.04 on x86_64/amd64 and aarch64/arm64; all 16 platforms imported into the local PIGSTY repository.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_icu_parser` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_icu_parser_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-icu-parser` | - |
{.ext-table}

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
@ el8.x86_64 18 pg_icu_parser_18 pg_icu_parser_18-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_icu_parser_18-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_icu_parser_18 pg_icu_parser_18-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_icu_parser_18-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_icu_parser_18 pg_icu_parser_18-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_icu_parser_18-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_icu_parser_18 pg_icu_parser_18-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_icu_parser_18-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_icu_parser_18 pg_icu_parser_18-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_icu_parser_18-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_icu_parser_18 pg_icu_parser_18-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_icu_parser_18-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 19.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 20.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 20.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-icu-parser postgresql-18-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-18-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_icu_parser_17 pg_icu_parser_17-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_icu_parser_17-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_icu_parser_17 pg_icu_parser_17-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_icu_parser_17-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_icu_parser_17 pg_icu_parser_17-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_icu_parser_17-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_icu_parser_17 pg_icu_parser_17-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_icu_parser_17-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_icu_parser_17 pg_icu_parser_17-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_icu_parser_17-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_icu_parser_17 pg_icu_parser_17-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_icu_parser_17-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 19.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 20.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-icu-parser postgresql-17-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-17-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_icu_parser_16 pg_icu_parser_16-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_icu_parser_16-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_icu_parser_16 pg_icu_parser_16-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_icu_parser_16-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_icu_parser_16 pg_icu_parser_16-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_icu_parser_16-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_icu_parser_16 pg_icu_parser_16-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_icu_parser_16-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_icu_parser_16 pg_icu_parser_16-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_icu_parser_16-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_icu_parser_16 pg_icu_parser_16-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_icu_parser_16-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 19.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-icu-parser postgresql-16-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-16-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_icu_parser_15 pg_icu_parser_15-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_icu_parser_15-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_icu_parser_15 pg_icu_parser_15-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_icu_parser_15-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_icu_parser_15 pg_icu_parser_15-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_icu_parser_15-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_icu_parser_15 pg_icu_parser_15-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_icu_parser_15-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_icu_parser_15 pg_icu_parser_15-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_icu_parser_15-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_icu_parser_15 pg_icu_parser_15-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_icu_parser_15-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 20.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-icu-parser postgresql-15-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-15-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_icu_parser_14 pg_icu_parser_14-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_icu_parser_14-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_icu_parser_14 pg_icu_parser_14-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_icu_parser_14-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_icu_parser_14 pg_icu_parser_14-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_icu_parser_14-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_icu_parser_14 pg_icu_parser_14-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_icu_parser_14-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_icu_parser_14 pg_icu_parser_14-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 28.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_icu_parser_14-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_icu_parser_14 pg_icu_parser_14-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_icu_parser_14-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 19.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 19.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 20.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 20.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-icu-parser postgresql-14-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 20.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-icu-parser/postgresql-14-pg-icu-parser_1.0.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_icu_parser` using `pig build`:

```bash
pig build pkg pg_icu_parser         # build RPM / DEB packages
```


## Install

You can install `pg_icu_parser` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_icu_parser;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_icu_parser -v 18  # PG 18
pig ext install -y pg_icu_parser -v 17  # PG 17
pig ext install -y pg_icu_parser -v 16  # PG 16
pig ext install -y pg_icu_parser -v 15  # PG 15
pig ext install -y pg_icu_parser -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_icu_parser_18       # PG 18
dnf install -y pg_icu_parser_17       # PG 17
dnf install -y pg_icu_parser_16       # PG 16
dnf install -y pg_icu_parser_15       # PG 15
dnf install -y pg_icu_parser_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-icu-parser   # PG 18
apt install -y postgresql-17-pg-icu-parser   # PG 17
apt install -y postgresql-16-pg-icu-parser   # PG 16
apt install -y postgresql-15-pg-icu-parser   # PG 15
apt install -y postgresql-14-pg-icu-parser   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_icu_parser;
```

## Usage

Sources:

- [Official PGXN documentation](https://pgxn.org/dist/pg_icu_parser/1.0.0/)

`pg_icu_parser` supplies the `icu_parser` full-text-search parser, which uses ICU Unicode word-boundary analysis. It is useful for languages such as Chinese, Japanese, Korean, and Hebrew where PostgreSQL's whitespace- and pattern-oriented default parser may not produce suitable word boundaries.

### Core Workflow

The server must be PostgreSQL 10 or later and must have been built with ICU support. Create the extension, then create a text-search configuration that selects its parser and maps the token types you need:

```sql
CREATE EXTENSION pg_icu_parser;

CREATE TEXT SEARCH CONFIGURATION sample (PARSER = icu_parser);
ALTER TEXT SEARCH CONFIGURATION sample
  ADD MAPPING FOR word WITH english_stem;
ALTER TEXT SEARCH CONFIGURATION sample
  ADD MAPPING FOR number, ideo, kana WITH simple;

SELECT to_tsvector('sample', '東京でPostgreSQLを使う');
```

Choose dictionaries for the actual language; `english_stem` above only demonstrates the mapping syntax.

### Parser Surface

- `word`, `number`, `kana`, `ideo`, and `blank` are the token types emitted by `icu_parser`.
- `pg_icu_parser.locale` selects the ICU locale and defaults to `en`. Upstream notes that word-boundary rules are usually not locale-sensitive, so change it only after testing a concrete need.
- Any PostgreSQL text-search dictionary can be mapped to the emitted token types.

### Trade-offs

- The parser requires ICU in the PostgreSQL build; creating the extension cannot add ICU to a server built without it.
- It emits fewer and coarser token types than the default parser and does not recognize special patterns such as URLs or email addresses as distinct categories.
- The reviewed release does not support `ts_headline`.
- Upstream reports that it is slower than the default parser, with a lower conversion overhead when the database encoding is UTF-8. Benchmark representative documents and query shapes on the target system.
- When parser mappings or locale behavior change, rebuild stored `tsvector` values and dependent indexes so old and new rows do not use different tokenization.
