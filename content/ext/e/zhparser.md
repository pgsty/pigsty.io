---
title: "zhparser"
linkTitle: "zhparser"
description: "a parser for full-text search of Chinese"
weight: 2130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/amutu/zhparser">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">amutu/zhparser</div>
    <div class="ext-card__desc">https://github.com/amutu/zhparser</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/zhparser-2.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">zhparser-2.3.tar.gz</div>
    <div class="ext-card__desc">zhparser-2.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`zhparser`**](/ext/e/zhparser) | `2.3` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2130  | [**`zhparser`**](/ext/e/zhparser) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_trgm`](/ext/e/pg_trgm) [`rum`](/ext/e/rum) [`pg_search`](/ext/e/pg_search) [`pgroonga`](/ext/e/pgroonga) [`pgroonga_database`](/ext/e/pgroonga_database) [`pg_bigm`](/ext/e/pg_bigm) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`vchord_bm25`](/ext/e/vchord_bm25) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.3` | {{< pgvers "18,17,16,15,14" >}} | `zhparser` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.3` | {{< pgvers "18,17,16,15,14" >}} | `zhparser_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-zhparser` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| el8.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| el9.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| el9.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| el10.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| el10.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| d12.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| d12.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| d13.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| d13.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| u22.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| u22.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| u24.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| u24.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| u26.x86_64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
| u26.aarch64 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 | AVAIL PIGSTY 2.3 1 |
@ el8.x86_64 18 zhparser_18 zhparser_18-2.3-1PIGSTY.el8.x86_64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/zhparser_18-2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 zhparser_18 zhparser_18-2.3-1PIGSTY.el8.aarch64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/zhparser_18-2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 zhparser_18 zhparser_18-2.3-1PIGSTY.el9.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/zhparser_18-2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 zhparser_18 zhparser_18-2.3-1PIGSTY.el9.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/zhparser_18-2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 zhparser_18 zhparser_18-2.3-1PIGSTY.el10.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/zhparser_18-2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 zhparser_18 zhparser_18-2.3-1PIGSTY.el10.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/zhparser_18-2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~bookworm_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~bookworm_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~trixie_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~trixie_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~jammy_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~jammy_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~noble_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~noble_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~resolute_amd64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-zhparser postgresql-18-zhparser_2.3-1PIGSTY~resolute_arm64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-18-zhparser_2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 zhparser_17 zhparser_17-2.3-1PIGSTY.el8.x86_64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/zhparser_17-2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 zhparser_17 zhparser_17-2.3-1PIGSTY.el8.aarch64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/zhparser_17-2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 zhparser_17 zhparser_17-2.3-1PIGSTY.el9.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/zhparser_17-2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 zhparser_17 zhparser_17-2.3-1PIGSTY.el9.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/zhparser_17-2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 zhparser_17 zhparser_17-2.3-1PIGSTY.el10.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/zhparser_17-2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 zhparser_17 zhparser_17-2.3-1PIGSTY.el10.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/zhparser_17-2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~bookworm_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~bookworm_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~trixie_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~trixie_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~jammy_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~jammy_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~noble_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~noble_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~resolute_amd64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-zhparser postgresql-17-zhparser_2.3-1PIGSTY~resolute_arm64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-17-zhparser_2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 zhparser_16 zhparser_16-2.3-1PIGSTY.el8.x86_64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/zhparser_16-2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 zhparser_16 zhparser_16-2.3-1PIGSTY.el8.aarch64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/zhparser_16-2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 zhparser_16 zhparser_16-2.3-1PIGSTY.el9.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/zhparser_16-2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 zhparser_16 zhparser_16-2.3-1PIGSTY.el9.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/zhparser_16-2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 zhparser_16 zhparser_16-2.3-1PIGSTY.el10.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/zhparser_16-2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 zhparser_16 zhparser_16-2.3-1PIGSTY.el10.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/zhparser_16-2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~bookworm_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~bookworm_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~trixie_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~trixie_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~jammy_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~jammy_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~noble_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~noble_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~resolute_amd64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-zhparser postgresql-16-zhparser_2.3-1PIGSTY~resolute_arm64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-16-zhparser_2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 zhparser_15 zhparser_15-2.3-1PIGSTY.el8.x86_64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/zhparser_15-2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 zhparser_15 zhparser_15-2.3-1PIGSTY.el8.aarch64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/zhparser_15-2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 zhparser_15 zhparser_15-2.3-1PIGSTY.el9.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/zhparser_15-2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 zhparser_15 zhparser_15-2.3-1PIGSTY.el9.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/zhparser_15-2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 zhparser_15 zhparser_15-2.3-1PIGSTY.el10.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/zhparser_15-2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 zhparser_15 zhparser_15-2.3-1PIGSTY.el10.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/zhparser_15-2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~bookworm_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~bookworm_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~trixie_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~trixie_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~jammy_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~jammy_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~noble_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~noble_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~resolute_amd64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-zhparser postgresql-15-zhparser_2.3-1PIGSTY~resolute_arm64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-15-zhparser_2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 zhparser_14 zhparser_14-2.3-1PIGSTY.el8.x86_64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/zhparser_14-2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 zhparser_14 zhparser_14-2.3-1PIGSTY.el8.aarch64.rpm pigsty 2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/zhparser_14-2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 zhparser_14 zhparser_14-2.3-1PIGSTY.el9.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/zhparser_14-2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 zhparser_14 zhparser_14-2.3-1PIGSTY.el9.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/zhparser_14-2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 zhparser_14 zhparser_14-2.3-1PIGSTY.el10.x86_64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/zhparser_14-2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 zhparser_14 zhparser_14-2.3-1PIGSTY.el10.aarch64.rpm pigsty 2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/zhparser_14-2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~bookworm_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~bookworm_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~trixie_amd64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~trixie_arm64.deb pigsty 2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~jammy_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~jammy_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~noble_amd64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~noble_arm64.deb pigsty 2.3 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~resolute_amd64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-zhparser postgresql-14-zhparser_2.3-1PIGSTY~resolute_arm64.deb pigsty 2.3 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/z/zhparser/postgresql-14-zhparser_2.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `zhparser` using `pig build`:

```bash
pig build pkg zhparser         # build RPM / DEB packages
```


## Install

You can install `zhparser` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install zhparser;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y zhparser -v 18  # PG 18
pig ext install -y zhparser -v 17  # PG 17
pig ext install -y zhparser -v 16  # PG 16
pig ext install -y zhparser -v 15  # PG 15
pig ext install -y zhparser -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y zhparser_18       # PG 18
dnf install -y zhparser_17       # PG 17
dnf install -y zhparser_16       # PG 16
dnf install -y zhparser_15       # PG 15
dnf install -y zhparser_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-zhparser   # PG 18
apt install -y postgresql-17-zhparser   # PG 17
apt install -y postgresql-16-zhparser   # PG 16
apt install -y postgresql-15-zhparser   # PG 15
apt install -y postgresql-14-zhparser   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION zhparser;
```




## Usage

> [GitHub: amutu/zhparser](https://github.com/amutu/zhparser)

`zhparser` is a PostgreSQL extension for full-text search of Chinese, based on the Simple Chinese Word Segmentation (SCWS) library.

## Features

- Chinese text segmentation for PostgreSQL full-text search
- Built on the SCWS (Simple Chinese Word Segmentation) library
- Supports custom dictionaries (TXT and XDB formats)
- Database-level custom word tables (since v2.1)
- Multiple tunable parameters for segmentation behavior

## Quick Start

```sql
-- Create the extension
CREATE EXTENSION zhparser;

-- Create a text search configuration using zhparser
CREATE TEXT SEARCH CONFIGURATION chinese (PARSER = zhparser);

-- Add token type mappings
ALTER TEXT SEARCH CONFIGURATION chinese ADD MAPPING FOR n,v,a,i,e,l WITH simple;

-- Test Chinese text segmentation
SELECT to_tsvector('chinese', '小明硕士毕业于中国科学院计算所，后在日本京都大学深造');

-- Create a table and index for Chinese full text search
CREATE TABLE articles (id serial PRIMARY KEY, title text, body text);

CREATE INDEX articles_body_idx ON articles
  USING gin (to_tsvector('chinese', body));

-- Query with Chinese full text search
SELECT * FROM articles
  WHERE to_tsvector('chinese', body) @@ to_tsquery('chinese', '中国');
```

## Configuration Parameters

zhparser provides several GUC parameters to control segmentation behavior:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `zhparser.punctuation_ignore` | `off` | Ignore all punctuation |
| `zhparser.seg_with_duality` | `off` | Perform duality segmentation on long words |
| `zhparser.dict_in_memory` | `off` | Load the whole dictionary into memory |
| `zhparser.multi_short` | `off` | Short word compound segmentation |
| `zhparser.multi_duality` | `off` | Duality compound segmentation |
| `zhparser.multi_zmain` | `off` | Key word in first compound segmentation |
| `zhparser.multi_zall` | `off` | Use all compound segmentation |

## Token Types

zhparser supports the following token types from SCWS:

| Code | Description |
|------|-------------|
| `a` | Adjective |
| `b` | Distinguishing word |
| `c` | Conjunction |
| `d` | Adverb |
| `e` | Exclamation |
| `f` | Position word |
| `g` | Root word |
| `h` | Prefix |
| `i` | Idiom |
| `j` | Abbreviation |
| `k` | Suffix |
| `l` | Temporary idiom |
| `m` | Numeral |
| `n` | Noun |
| `o` | Onomatopoeia |
| `p` | Preposition |
| `q` | Classifier |
| `r` | Pronoun |
| `s` | Locative word |
| `t` | Time word |
| `u` | Auxiliary |
| `v` | Verb |
| `w` | Punctuation |
| `x` | Unknown |
| `y` | Modal particle |
| `z` | State word |

## Custom Dictionaries

### File-based Dictionaries

Place custom dictionary files in the share directory (typically `$SHAREDIR/tsearch_data/`):

- TXT format: one word per line
- XDB format: compiled SCWS dictionary format

Custom dictionaries take precedence over built-in dictionaries.

### Database-level Custom Words (v2.1+)

```sql
-- Add custom words via zhparser's built-in table
INSERT INTO zhparser.zhprs_custom_word VALUES ('中国科学院计算所');

-- Reload custom dictionary (reconnect after sync to take effect)
SELECT sync_zhprs_custom_word();

-- Verify segmentation with custom word
SELECT to_tsvector('chinese', '小明硕士毕业于中国科学院计算所');
```

## Docker Quick Start

```bash
docker run --name pgzhparser -d \
  -e POSTGRES_PASSWORD=somepassword \
  zhparser/zhparser:bookworm-16
```
