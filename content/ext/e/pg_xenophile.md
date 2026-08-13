---
title: "pg_xenophile"
linkTitle: "pg_xenophile"
description: "More than the bare necessities for PostgreSQL i18n and l10n."
weight: 3670
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_xenophile">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_xenophile</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_xenophile</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_xenophile-0.8.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_xenophile-0.8.3.tar.gz</div>
    <div class="ext-card__desc">pg_xenophile-0.8.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_xenophile`**](/ext/e/pg_xenophile) | `0.8.3` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3670  | [**`pg_xenophile`**](/ext/e/pg_xenophile) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `xeno` |
| 3671  | [**`l10n_table_dependent_extension`**](/ext/e/l10n_table_dependent_extension) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`hstore`](/ext/e/hstore) [`icu_ext`](/ext/e/icu_ext) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`gb18030_2022`](/ext/e/gb18030_2022) [`unaccent`](/ext/e/unaccent) [`pgroonga`](/ext/e/pgroonga) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`country`](/ext/e/country) [`currency`](/ext/e/currency) [`isn`](/ext/e/isn) [`dict_xsyn`](/ext/e/dict_xsyn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`l10n_table_dependent_extension`](/ext/e/l10n_table_dependent_extension) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_xenophile` | `hstore` |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_xenophile_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-xenophile` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
@ el8.x86_64 18 pg_xenophile_18 pg_xenophile_18-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xenophile_18-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_xenophile_18 pg_xenophile_18-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xenophile_18-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_xenophile_18 pg_xenophile_18-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 47.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xenophile_18-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_xenophile_18 pg_xenophile_18-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 47.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xenophile_18-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_xenophile_18 pg_xenophile_18-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xenophile_18-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_xenophile_18 pg_xenophile_18-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xenophile_18-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 45.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 48.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-xenophile postgresql-18-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-18-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_xenophile_17 pg_xenophile_17-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xenophile_17-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_xenophile_17 pg_xenophile_17-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xenophile_17-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_xenophile_17 pg_xenophile_17-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 47.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xenophile_17-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_xenophile_17 pg_xenophile_17-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 47.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xenophile_17-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_xenophile_17 pg_xenophile_17-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xenophile_17-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_xenophile_17 pg_xenophile_17-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xenophile_17-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-xenophile postgresql-17-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-17-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_xenophile_16 pg_xenophile_16-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xenophile_16-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_xenophile_16 pg_xenophile_16-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xenophile_16-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_xenophile_16 pg_xenophile_16-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 47.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xenophile_16-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_xenophile_16 pg_xenophile_16-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 47.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xenophile_16-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_xenophile_16 pg_xenophile_16-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xenophile_16-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_xenophile_16 pg_xenophile_16-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xenophile_16-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 48.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-xenophile postgresql-16-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-16-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_xenophile_15 pg_xenophile_15-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xenophile_15-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_xenophile_15 pg_xenophile_15-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xenophile_15-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_xenophile_15 pg_xenophile_15-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 47.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xenophile_15-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_xenophile_15 pg_xenophile_15-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 47.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xenophile_15-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_xenophile_15 pg_xenophile_15-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xenophile_15-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_xenophile_15 pg_xenophile_15-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xenophile_15-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-xenophile postgresql-15-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-15-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_xenophile_14 pg_xenophile_14-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xenophile_14-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_xenophile_14 pg_xenophile_14-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xenophile_14-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_xenophile_14 pg_xenophile_14-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 47.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xenophile_14-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_xenophile_14 pg_xenophile_14-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 47.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xenophile_14-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_xenophile_14 pg_xenophile_14-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xenophile_14-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_xenophile_14 pg_xenophile_14-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xenophile_14-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-xenophile postgresql-14-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 48.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xenophile/postgresql-14-pg-xenophile_0.8.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_xenophile` using `pig build`:

```bash
pig build pkg pg_xenophile         # build RPM / DEB packages
```


## Install

You can install `pg_xenophile` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_xenophile;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_xenophile -v 18  # PG 18
pig ext install -y pg_xenophile -v 17  # PG 17
pig ext install -y pg_xenophile -v 16  # PG 16
pig ext install -y pg_xenophile -v 15  # PG 15
pig ext install -y pg_xenophile -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_xenophile_18       # PG 18
dnf install -y pg_xenophile_17       # PG 17
dnf install -y pg_xenophile_16       # PG 16
dnf install -y pg_xenophile_15       # PG 15
dnf install -y pg_xenophile_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-xenophile   # PG 18
apt install -y postgresql-17-pg-xenophile   # PG 17
apt install -y postgresql-16-pg-xenophile   # PG 16
apt install -y postgresql-15-pg-xenophile   # PG 15
apt install -y postgresql-14-pg-xenophile   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_xenophile CASCADE;  -- requires: hstore
```




## Usage

> [pg_xenophile: internationalization (i18n) and localization (l10n) utilities](https://github.com/bigsmoke/pg_xenophile)

The `pg_xenophile` extension provides i18n/l10n infrastructure including reference data for countries, languages, and currencies, plus automated localization table management.

```sql
CREATE EXTENSION pg_xenophile CASCADE;
```

All objects reside in the `xeno` schema (non-relocatable).

### Reference Tables

- **`xeno.country`**: ISO 3166-1 codes with calling codes and currencies
- **`xeno.lang`**: ISO 639-1 language codes
- **`xeno.currency`**: ISO 4217 currency codes with symbols
- **`xeno.country_subdivision`**: ISO 3166-2 subdivision codes
- **`xeno.eu_country`**: EU membership tracking
- **`xeno.country_postal_code_pattern`**: Postal code validation patterns

### Localization Tables

The extension auto-manages translation tables. Insert into `xeno.l10n_table` to register a translatable base table:

```sql
INSERT INTO xeno.l10n_table (base_table_schema, base_table_name)
VALUES ('public', 'products');
```

This automatically creates a companion `products_l10n` table and language-specific views.

### Convenience Views

- `xeno.country_l10n_en`: Country names in English
- `xeno.lang_l10n_en`: Language names in English
- `xeno.country_subdivision_l10n_en`: Subdivision names in English

### Configuration

```sql
SET pg_xenophile.base_lang_code = 'en';
SET pg_xenophile.user_lang_code = 'en';
SET pg_xenophile.target_lang_codes = '{nl,fr,de}';
```
