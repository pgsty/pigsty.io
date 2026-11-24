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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_bigm-1.2-20261118.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_bigm-1.2-20261118.tar.gz</div>
    <div class="ext-card__desc">pg_bigm-1.2-20261118.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_bigm`**](/ext/e/pg_bigm) | `1.2` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2120  | [**`pg_bigm`**](/ext/e/pg_bigm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgroonga`](/ext/e/pgroonga) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`pg_jieba`](/ext/e/pg_jieba) [`zhparser`](/ext/e/zhparser) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_pinyin`](/ext/e/pg_pinyin) [`unaccent`](/ext/e/unaccent) [`pg_trgm`](/ext/e/pg_trgm) [`dict_xsyn`](/ext/e/dict_xsyn) [`biscuit`](/ext/e/biscuit) [`vgram`](/ext/e/vgram) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.2` | {{< pgvers "19,18,17,16,15" >}} | `pg_bigm` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2` | {{< pgvers "19,18,17,16,15" >}} | `pg_bigm_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-bigm` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 5 | AVAIL PGDG 1.2 6 | AVAIL PGDG 1.2 6 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 1.2 4 | AVAIL PGDG 1.2 5 | AVAIL PGDG 1.2 6 | AVAIL PGDG 1.2 6 |
| el9.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 |
| el9.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 |
| el10.x86_64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 | AVAIL PGDG 1.2 3 |
| el10.aarch64 | AVAIL PGDG 1.2 1 | AVAIL PGDG 1.2 7 | AVAIL PGDG 1.2 8 | AVAIL PGDG 1.2 8 | AVAIL PGDG 1.2 8 |
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
@ el9.x86_64 19 pg_bigm_19 pg_bigm_19-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pg_bigm_19-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 pg_bigm_19 pg_bigm_19-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pg_bigm_19-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 pg_bigm_19 pg_bigm_19-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm pgdg 1.2 22.3KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pg_bigm_19-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 pg_bigm_19 pg_bigm_19-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm pgdg 1.2 22.1KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pg_bigm_19-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb pigsty 1.2 28.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb pigsty 1.2 28.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb pigsty 1.2 28.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb pigsty 1.2 28.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb pigsty 1.2 30.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb pigsty 1.2 29.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb pigsty 1.2 29.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb pigsty 1.2 29.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb pigsty 1.2 29.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-bigm postgresql-19-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb pigsty 1.2 29.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-19-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_bigm_18-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_bigm_18-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_bigm_18-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_18-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_bigm_18-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_bigm_18-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_bigm_18-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_18-1.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_bigm_18-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_bigm_18-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_18-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_bigm_18-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_bigm_18-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_18-1.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm pgdg 1.2 22.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_bigm_18-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm pgdg 1.2 21.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_bigm_18-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 20.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_18-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm pgdg 1.2 22.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2 22.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bigm_18-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_bigm_18 pg_bigm_18-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 20.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_18-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb pigsty 1.2 29.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb pigsty 1.2 28.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb pigsty 1.2 29.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb pigsty 1.2 28.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb pigsty 1.2 30.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb pigsty 1.2 30.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb pigsty 1.2 30.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb pigsty 1.2 30.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb pigsty 1.2 30.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-bigm postgresql-18-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb pigsty 1.2 30.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-18-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 21.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_bigm_17-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_bigm_17-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_bigm_17-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-2PGDG.rhel8.x86_64.rpm pgdg 1.2 18.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_bigm_17-1.2_20240606-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_17-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_bigm_17-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_bigm_17-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_bigm_17-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-2PGDG.rhel8.aarch64.rpm pgdg 1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_bigm_17-1.2_20240606-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_17-1.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_bigm_17-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_bigm_17-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_17-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_bigm_17-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_bigm_17-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_17-1.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm pgdg 1.2 22.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_bigm_17-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_bigm_17-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_17-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm pgdg 1.2 21.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2 22.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2_20240606-3PGDG.rhel10.aarch64.rpm pgdg 1.2 20.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bigm_17-1.2_20240606-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_bigm_17 pg_bigm_17-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_17-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb pigsty 1.2 27.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb pigsty 1.2 27.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb pigsty 1.2 27.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb pigsty 1.2 27.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb pigsty 1.2 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb pigsty 1.2 32.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb pigsty 1.2 28.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb pigsty 1.2 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb pigsty 1.2 28.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-bigm postgresql-17-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb pigsty 1.2 28.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-17-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 21.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2_20240606-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_16-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bigm_16-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2_20240606-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_16-1.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bigm_16-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_bigm_16-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_bigm_16-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_16-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_bigm_16-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_bigm_16-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_16-1.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm pgdg 1.2 22.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_bigm_16-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_bigm_16-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_16-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm pgdg 1.2 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2 22.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2_20240606-3PGDG.rhel10.aarch64.rpm pgdg 1.2 21.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bigm_16-1.2_20240606-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_bigm_16 pg_bigm_16-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_16-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb pigsty 1.2 27.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb pigsty 1.2 27.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb pigsty 1.2 27.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb pigsty 1.2 27.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb pigsty 1.2 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb pigsty 1.2 32.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb pigsty 1.2 28.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb pigsty 1.2 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb pigsty 1.2 28.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-bigm postgresql-16-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb pigsty 1.2 28.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-16-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2_20261118-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2_20250903-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel8.x86_64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2_20250903-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2_20240606-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el8.x86_64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bigm_15-1.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 18.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bigm_15-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2_20261118-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2_20250903-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel8.aarch64.rpm pgdg 1.2 20.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2_20250903-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2_20240606-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el8.aarch64.rpm pigsty 1.2 19.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bigm_15-1.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bigm_15-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_bigm_15-1.2_20261118-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_bigm_15-1.2_20250903-7PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el9.x86_64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bigm_15-1.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_bigm_15-1.2_20261118-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm pgdg 1.2 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_bigm_15-1.2_20250903-7PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el9.aarch64.rpm pigsty 1.2 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bigm_15-1.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm pgdg 1.2 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_bigm_15-1.2_20261118-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm pgdg 1.2 22.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_bigm_15-1.2_20250903-7PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el10.x86_64.rpm pigsty 1.2 20.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bigm_15-1.2-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm pgdg 1.2 22.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20261118-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2 22.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20261118-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20250903-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20250903-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm pgdg 1.2 21.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20250903-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20250903-1PGDG.rhel10.aarch64.rpm pgdg 1.2 21.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20250903-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2_20240606-3PGDG.rhel10.aarch64.rpm pgdg 1.2 21.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bigm_15-1.2_20240606-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_bigm_15 pg_bigm_15-1.2-2PIGSTY.el10.aarch64.rpm pigsty 1.2 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bigm_15-1.2-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb pigsty 1.2 27.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb pigsty 1.2 27.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb pigsty 1.2 28.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb pigsty 1.2 27.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb pigsty 1.2 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb pigsty 1.2 32.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb pigsty 1.2 29.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb pigsty 1.2 28.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb pigsty 1.2 28.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-bigm postgresql-15-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb pigsty 1.2 28.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bigm/postgresql-15-pg-bigm_1.2-20261118PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_bigm;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_bigm -v 19  # PG 19
pig ext install -y pg_bigm -v 18  # PG 18
pig ext install -y pg_bigm -v 17  # PG 17
pig ext install -y pg_bigm -v 16  # PG 16
pig ext install -y pg_bigm -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_bigm_19       # PG 19
dnf install -y pg_bigm_18       # PG 18
dnf install -y pg_bigm_17       # PG 17
dnf install -y pg_bigm_16       # PG 16
dnf install -y pg_bigm_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-bigm   # PG 19
apt install -y postgresql-18-pg-bigm   # PG 18
apt install -y postgresql-17-pg-bigm   # PG 17
apt install -y postgresql-16-pg-bigm   # PG 16
apt install -y postgresql-15-pg-bigm   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_bigm';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_bigm;
```

## Usage

Sources:

- [Official source](https://github.com/pgbigm/pg_bigm/blob/v1.2-20261118/docs/pg_bigm_en.md)
- [Official source](https://github.com/pgbigm/pg_bigm/blob/v1.2-20261118/pg_bigm.control)
- [Official source](https://github.com/pgbigm/pg_bigm/blob/v1.2-20261118/README.md)
- [Official source](https://github.com/pgbigm/pg_bigm/releases/tag/v1.2-20261118)

`pg_bigm` builds GIN bigram indexes for LIKE and similarity searches, including multibyte text. Release 1.2-20261118 keeps SQL version 1.2 and adds PostgreSQL 19 support.

### Search

```sql
CREATE EXTENSION pg_bigm;
CREATE TABLE documents (id bigint PRIMARY KEY, content text);
INSERT INTO documents VALUES (1, 'PostgreSQL database search');
CREATE INDEX docs_bigm_idx ON documents USING gin (content gin_bigm_ops);
SELECT * FROM documents WHERE content LIKE likequery('database');
SELECT show_bigm('PostgreSQL');
SET pg_bigm.similarity_limit = 0.2;
SELECT * FROM documents WHERE content =% 'database search';
```

`likequery(text)` escapes a literal search keyword for LIKE. `show_bigm(text)` displays its bigrams, and `bigm_similarity(text,text)` returns a similarity value. The `=%` operator applies `pg_bigm.similarity_limit`, normally 0.3. An index is useful only when the planner selects it.

### Settings and maintenance

`pg_bigm.enable_recheck` normally remains on: disabling rechecks can return false positives. `pg_bigm.gin_key_limit` defaults to 0 (no limit); a positive value bounds keys used in a search. `pg_gin_pending_stats(regclass)` reports GIN pending-list pages and tuples. `pg_bigm.last_update` identifies the library revision.

The 20261118 build fixes incorrect multibyte truncation, LIKE underscore handling and missing similarity matches. The truncation fix requires compilation with headers from PostgreSQL 14.21, 15.16, 16.12, 17.8, 18.2 or later, or PostgreSQL 19; the same extension SQL version does not prove the library contains the correction. Deploy the matching library to all servers and replace processes using the old library. Base use requires no preload.
