---
title: "pg_bigm"
linkTitle: "pg_bigm"
description: "create 2-gram (bigram) index for faster full text search."
weight: 2120
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgbigm/pg_bigm">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgbigm/pg_bigm</div>
    <div class="ext-card__desc">https://github.com/pgbigm/pg_bigm</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_bigm-1.2-20250903.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_bigm-1.2-20250903.tar.gz</div>
    <div class="ext-card__desc">pg_bigm-1.2-20250903.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_bigm`**](/ext/e/pg_bigm) | `1.2` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2120  | [**`pg_bigm`**](/ext/e/pg_bigm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`pg_jieba`](/ext/e/pg_jieba) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_pinyin`](/ext/e/pg_pinyin) [`unaccent`](/ext/e/unaccent) [`pg_trgm`](/ext/e/pg_trgm) [`dict_xsyn`](/ext/e/dict_xsyn) [`biscuit`](/ext/e/biscuit) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_bigm` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_bigm_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-bigm` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.2 2 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 |
| el8.aarch64 | AVAIL PGDG 1.2 2 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 |
| el9.x86_64 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 5 | AVAIL PGDG 1.2 5 | AVAIL PGDG 1.2 5 |
| el9.aarch64 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 5 | AVAIL PGDG 1.2 5 | AVAIL PGDG 1.2 5 |
| el10.x86_64 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 |
| el10.aarch64 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 4 |
| d12.x86_64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 | AVAIL PIGSTY 1.2 1 |
@ el8.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_bigm_18-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_18-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_bigm_18-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_18-1.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_bigm_18-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel9.x86_64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_bigm_18-1.2_20250903-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_18-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm pgdg 1.2 20.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_bigm_18-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel9.aarch64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_bigm_18-1.2_20250903-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_18-1.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_bigm_18-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel10.x86_64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_bigm_18-1.2_20250903-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 20.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_18-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 20.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_18-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb pigsty 1.2 28.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb pigsty 1.2 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb pigsty 1.2 28.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb pigsty 1.2 28.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb pigsty 1.2 29.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb pigsty 1.2 29.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb pigsty 1.2 29.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb pigsty 1.2 29.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb pigsty 1.2 29.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb pigsty 1.2 29.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_bigm_17-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-2PGDG.rhel8.x86_64.rpm pgdg 1.2 18.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_bigm_17-1.2_20240606-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_17-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_bigm_17-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-2PGDG.rhel8.aarch64.rpm pgdg 1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_bigm_17-1.2_20240606-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_17-1.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm pgdg 1.2 20.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_bigm_17-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel9.x86_64.rpm pgdg 1.2 20.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_bigm_17-1.2_20250903-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-2PGDG.rhel9.x86_64.rpm pgdg 1.2 18.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_bigm_17-1.2_20240606-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_17-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm pgdg 1.2 20.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_bigm_17-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel9.aarch64.rpm pgdg 1.2 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_bigm_17-1.2_20250903-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-2PGDG.rhel9.aarch64.rpm pgdg 1.2 18.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_bigm_17-1.2_20240606-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_17-1.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_bigm_17-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel10.x86_64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_bigm_17-1.2_20250903-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-3PGDG.rhel10.x86_64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_bigm_17-1.2_20240606-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_17-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-3PGDG.rhel10.aarch64.rpm pgdg 1.2 20.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20240606-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_17-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb pigsty 1.2 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb pigsty 1.2 26.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb pigsty 1.2 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb pigsty 1.2 27.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb pigsty 1.2 32.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb pigsty 1.2 31.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb pigsty 1.2 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb pigsty 1.2 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb pigsty 1.2 28.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb pigsty 1.2 27.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2_20240606-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_16-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2_20240606-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_16-1.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm pgdg 1.2 20.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_bigm_16-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel9.x86_64.rpm pgdg 1.2 20.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_bigm_16-1.2_20250903-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-1PGDG.rhel9.x86_64.rpm pgdg 1.2 18.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_bigm_16-1.2_20240606-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_16-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 18.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_bigm_16-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm pgdg 1.2 20.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_bigm_16-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel9.aarch64.rpm pgdg 1.2 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_bigm_16-1.2_20250903-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-1PGDG.rhel9.aarch64.rpm pgdg 1.2 18.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_bigm_16-1.2_20240606-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_16-1.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_bigm_16-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_bigm_16-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel10.x86_64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_bigm_16-1.2_20250903-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-3PGDG.rhel10.x86_64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_bigm_16-1.2_20240606-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_16-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-3PGDG.rhel10.aarch64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20240606-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_16-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb pigsty 1.2 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb pigsty 1.2 26.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb pigsty 1.2 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb pigsty 1.2 27.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb pigsty 1.2 32.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb pigsty 1.2 31.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb pigsty 1.2 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb pigsty 1.2 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb pigsty 1.2 28.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb pigsty 1.2 27.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2_20240606-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_15-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2_20240606-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_15-1.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_bigm_15-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel9.x86_64.rpm pgdg 1.2 20.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_bigm_15-1.2_20250903-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-1PGDG.rhel9.x86_64.rpm pgdg 1.2 18.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_bigm_15-1.2_20240606-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_15-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 18.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_bigm_15-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm pgdg 1.2 20.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_bigm_15-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel9.aarch64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_bigm_15-1.2_20250903-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-1PGDG.rhel9.aarch64.rpm pgdg 1.2 18.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_bigm_15-1.2_20240606-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_15-1.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_bigm_15-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_bigm_15-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel10.x86_64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_bigm_15-1.2_20250903-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-3PGDG.rhel10.x86_64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_bigm_15-1.2_20240606-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 20.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_15-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-3PGDG.rhel10.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20240606-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_15-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb pigsty 1.2 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb pigsty 1.2 26.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb pigsty 1.2 27.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb pigsty 1.2 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb pigsty 1.2 32.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb pigsty 1.2 31.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb pigsty 1.2 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb pigsty 1.2 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb pigsty 1.2 28.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb pigsty 1.2 28.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_bigm_14-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20240606-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_bigm_14-1.2_20240606-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_bigm_14 pg_bigm_14-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_14-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_bigm_14 pg_bigm_14-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_bigm_14-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_bigm_14-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20240606-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_bigm_14-1.2_20240606-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_bigm_14 pg_bigm_14-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_14-1.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_bigm_14 pg_bigm_14-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_bigm_14-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_bigm_14-1.2_20250903-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-1PGDG.rhel9.x86_64.rpm pgdg 1.2 20.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_bigm_14-1.2_20250903-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20240606-1PGDG.rhel9.x86_64.rpm pgdg 1.2 18.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_bigm_14-1.2_20240606-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_bigm_14 pg_bigm_14-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_14-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_bigm_14 pg_bigm_14-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 18.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_bigm_14-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm pgdg 1.2 20.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_bigm_14-1.2_20250903-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-1PGDG.rhel9.aarch64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_bigm_14-1.2_20250903-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20240606-1PGDG.rhel9.aarch64.rpm pgdg 1.2 18.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_bigm_14-1.2_20240606-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_bigm_14 pg_bigm_14-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_14-1.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_bigm_14 pg_bigm_14-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_bigm_14-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_bigm_14-1.2_20250903-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-1PGDG.rhel10.x86_64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_bigm_14-1.2_20250903-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_bigm_14 pg_bigm_14-1.2_20240606-3PGDG.rhel10.x86_64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_bigm_14-1.2_20240606-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_bigm_14 pg_bigm_14-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 20.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_14-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_bigm_14-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_bigm_14-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_bigm_14 pg_bigm_14-1.2_20240606-3PGDG.rhel10.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_bigm_14-1.2_20240606-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_bigm_14 pg_bigm_14-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_14-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb pigsty 1.2 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb pigsty 1.2 26.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb pigsty 1.2 27.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb pigsty 1.2 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb pigsty 1.2 32.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb pigsty 1.2 31.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb pigsty 1.2 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb pigsty 1.2 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb pigsty 1.2 28.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-bigm postgresql-14-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb pigsty 1.2 28.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-14-pg-bigm_1.2-20250903PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_bigm` using `pig build`:

```bash
pig build pkg pg_bigm         # build RPM / DEB packages
```


## Install

You can install `pg_bigm` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_bigm;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_bigm -v 18  # PG 18
pig ext install -y pg_bigm -v 17  # PG 17
pig ext install -y pg_bigm -v 16  # PG 16
pig ext install -y pg_bigm -v 15  # PG 15
pig ext install -y pg_bigm -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_bigm_18       # PG 18
dnf install -y pg_bigm_17       # PG 17
dnf install -y pg_bigm_16       # PG 16
dnf install -y pg_bigm_15       # PG 15
dnf install -y pg_bigm_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-bigm   # PG 18
apt install -y postgresql-17-pg-bigm   # PG 17
apt install -y postgresql-16-pg-bigm   # PG 16
apt install -y postgresql-15-pg-bigm   # PG 15
apt install -y postgresql-14-pg-bigm   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_bigm';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_bigm;
```




## Usage

> [pg_bigm Documentation](https://pgbigm.osdn.jp/pg_bigm_en-1-2.html) | [GitHub: pgbigm/pg_bigm](https://github.com/pgbigm/pg_bigm)

The `pg_bigm` module provides full text search capability in PostgreSQL. This module allows a user to create **2-gram** (bigram) index for faster full text search.

pg_bigm is released under the PostgreSQL License, a liberal Open Source license, similar to the BSD or MIT licenses.

## Features

- **Bigram indexing**: Creates 2-gram (bigram) GIN indexes for text columns
- **Faster LIKE searches**: Accelerates `LIKE` queries including prefix, suffix, and substring searches
- **All language support**: Works with any language including CJK (Chinese, Japanese, Korean) without additional configuration
- **Simple API**: Provides similarity search functions and operators

## Functions and Operators

### Functions

| Function | Return Type | Description |
|----------|-------------|-------------|
| `likequery(text)` | `text` | Generates a search query for full text search from a keyword |
| `show_bigm(text)` | `text[]` | Shows all 2-grams in the given string |
| `pg_gin_pending_stats(regclass)` | `record` | Returns the number of pages and tuples in the pending list of a GIN index |

### Operators

| Operator | Description |
|----------|-------------|
| `text =% text` | Returns true if the similarity between the left and right operands is greater than or equal to `pg_bigm.similarity_limit` |

## GUC Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `pg_bigm.last_update` | `text` | - | Shows the last update date of the module (read-only) |
| `pg_bigm.enable_recheck` | `bool` | `on` | Controls whether recheck is performed during index scan |
| `pg_bigm.gin_key_limit` | `int` | `0` | Limits the maximum number of bigrams used for full text search. 0 means no limit |
| `pg_bigm.similarity_limit` | `real` | `0.3` | Sets the minimum similarity threshold for the `=%` operator |

## Examples

### Basic Full Text Search

```sql
-- Create extension
CREATE EXTENSION pg_bigm;

-- Create a table with text data
CREATE TABLE documents (id serial PRIMARY KEY, content text);
INSERT INTO documents (content) VALUES
  ('PostgreSQL is a powerful database'),
  ('Full text search with bigram indexing'),
  ('Japanese text: 日本語テキスト検索');

-- Create a bigram index
CREATE INDEX docs_bigm_idx ON documents USING gin (content gin_bigm_ops);

-- Search using LIKE
SELECT * FROM documents WHERE content LIKE '%search%';

-- Search using likequery function
SELECT * FROM documents WHERE content LIKE likequery('database');
```

### Similarity Search

```sql
-- Show bigrams for a string
SELECT show_bigm('PostgreSQL');

-- Similarity search
SET pg_bigm.similarity_limit = 0.2;
SELECT * FROM documents WHERE content =% 'database search';
```

### Comparison with pg_trgm

pg_bigm has the following advantages over the built-in `pg_trgm`:

| Feature | pg_bigm | pg_trgm |
|---------|---------|---------|
| N-gram type | 2-gram (bigram) | 3-gram (trigram) |
| Minimum search string | 1 character | 3 characters |
| Non-alphabetic languages | Full support | Limited support |
| LIKE search types | Prefix, suffix, and substring | Prefix, suffix, and substring |

For detailed documentation including advanced usage and performance tuning, see the [official pg_bigm documentation](https://pgbigm.osdn.jp/pg_bigm_en-1-2.html).
