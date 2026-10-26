---
title: "addressing_dictionary"
linkTitle: "addressing_dictionary"
description: "Address-aware text search dictionaries and configurations"
weight: 2270
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pramsey/pgsql-addressing-dictionary">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pramsey/pgsql-addressing-dictionary</div>
    <div class="ext-card__desc">https://github.com/pramsey/pgsql-addressing-dictionary</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/addressing_dictionary-1.1-bf3590e038d8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">addressing_dictionary-1.1-bf3590e038d8.tar.gz</div>
    <div class="ext-card__desc">addressing_dictionary-1.1-bf3590e038d8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`addressing_dictionary`**](/ext/e/addressing_dictionary) | `1.1` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2270  | [**`addressing_dictionary`**](/ext/e/addressing_dictionary) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`address_standardizer`](/ext/e/address_standardizer) [`address_standardizer_data_us`](/ext/e/address_standardizer_data_us) [`unaccent`](/ext/e/unaccent) [`hunspell_en_us`](/ext/e/hunspell_en_us) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> SQL and dictionary data only; no shared library. PostgreSQL 14-18 verified in PGSTY builds; upstream declares no current major-version matrix.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `addressing_dictionary` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `addressing_dictionary_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-addressing-dictionary` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
@ el8.x86_64 18 addressing_dictionary_18 addressing_dictionary_18-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/addressing_dictionary_18-1.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 addressing_dictionary_18 addressing_dictionary_18-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/addressing_dictionary_18-1.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 addressing_dictionary_18 addressing_dictionary_18-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/addressing_dictionary_18-1.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 addressing_dictionary_18 addressing_dictionary_18-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/addressing_dictionary_18-1.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 addressing_dictionary_18 addressing_dictionary_18-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/addressing_dictionary_18-1.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 addressing_dictionary_18 addressing_dictionary_18-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/addressing_dictionary_18-1.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-addressing-dictionary postgresql-18-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-18-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ el8.x86_64 17 addressing_dictionary_17 addressing_dictionary_17-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/addressing_dictionary_17-1.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 addressing_dictionary_17 addressing_dictionary_17-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/addressing_dictionary_17-1.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 addressing_dictionary_17 addressing_dictionary_17-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/addressing_dictionary_17-1.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 addressing_dictionary_17 addressing_dictionary_17-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/addressing_dictionary_17-1.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 addressing_dictionary_17 addressing_dictionary_17-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/addressing_dictionary_17-1.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 addressing_dictionary_17 addressing_dictionary_17-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/addressing_dictionary_17-1.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-addressing-dictionary postgresql-17-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-17-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ el8.x86_64 16 addressing_dictionary_16 addressing_dictionary_16-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/addressing_dictionary_16-1.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 addressing_dictionary_16 addressing_dictionary_16-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/addressing_dictionary_16-1.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 addressing_dictionary_16 addressing_dictionary_16-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/addressing_dictionary_16-1.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 addressing_dictionary_16 addressing_dictionary_16-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/addressing_dictionary_16-1.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 addressing_dictionary_16 addressing_dictionary_16-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/addressing_dictionary_16-1.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 addressing_dictionary_16 addressing_dictionary_16-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/addressing_dictionary_16-1.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-addressing-dictionary postgresql-16-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-16-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ el8.x86_64 15 addressing_dictionary_15 addressing_dictionary_15-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/addressing_dictionary_15-1.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 addressing_dictionary_15 addressing_dictionary_15-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/addressing_dictionary_15-1.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 addressing_dictionary_15 addressing_dictionary_15-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/addressing_dictionary_15-1.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 addressing_dictionary_15 addressing_dictionary_15-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/addressing_dictionary_15-1.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 addressing_dictionary_15 addressing_dictionary_15-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/addressing_dictionary_15-1.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 addressing_dictionary_15 addressing_dictionary_15-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/addressing_dictionary_15-1.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-addressing-dictionary postgresql-15-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 3.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-15-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ el8.x86_64 14 addressing_dictionary_14 addressing_dictionary_14-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/addressing_dictionary_14-1.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 addressing_dictionary_14 addressing_dictionary_14-1.1-1PGSTY.el8.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/addressing_dictionary_14-1.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 14 addressing_dictionary_14 addressing_dictionary_14-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/addressing_dictionary_14-1.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 addressing_dictionary_14 addressing_dictionary_14-1.1-1PGSTY.el9.noarch.rpm pigsty 1.1 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/addressing_dictionary_14-1.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 14 addressing_dictionary_14 addressing_dictionary_14-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/addressing_dictionary_14-1.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 addressing_dictionary_14 addressing_dictionary_14-1.1-1PGSTY.el10.noarch.rpm pigsty 1.1 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/addressing_dictionary_14-1.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~trixie_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~jammy_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~noble_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-addressing-dictionary postgresql-14-addressing-dictionary_1.1-1PGSTY~resolute_all.deb pigsty 1.1 4.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/addressing-dictionary/postgresql-14-addressing-dictionary_1.1-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `addressing_dictionary` using `pig build`:

```bash
pig build pkg addressing_dictionary         # build RPM / DEB packages
```


## Install

You can install `addressing_dictionary` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install addressing_dictionary;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y addressing_dictionary -v 18  # PG 18
pig ext install -y addressing_dictionary -v 17  # PG 17
pig ext install -y addressing_dictionary -v 16  # PG 16
pig ext install -y addressing_dictionary -v 15  # PG 15
pig ext install -y addressing_dictionary -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y addressing_dictionary_18       # PG 18
dnf install -y addressing_dictionary_17       # PG 17
dnf install -y addressing_dictionary_16       # PG 16
dnf install -y addressing_dictionary_15       # PG 15
dnf install -y addressing_dictionary_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-addressing-dictionary   # PG 18
apt install -y postgresql-17-addressing-dictionary   # PG 17
apt install -y postgresql-16-addressing-dictionary   # PG 16
apt install -y postgresql-15-addressing-dictionary   # PG 15
apt install -y postgresql-14-addressing-dictionary   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION addressing_dictionary;
```

## Usage

Sources:

- [Official README](https://github.com/pramsey/pgsql-addressing-dictionary/blob/master/README.md)
- [Extension control file](https://github.com/pramsey/pgsql-addressing-dictionary/blob/master/addressing_dictionary.control)
- [Version 1.1 extension SQL](https://github.com/pramsey/pgsql-addressing-dictionary/blob/master/addressing_dictionary--1.1.sql)
- [PostgreSQL text-search dictionary documentation](https://www.postgresql.org/docs/current/textsearch-dictionaries.html)

addressing_dictionary installs address-oriented full-text-search configurations and dictionaries. It is useful for approximate local address lookup where street-type, direction, and ordinal variants should normalize to comparable lexemes; it is not a geocoder or a substitute for address parsing and validation.

### Core Workflow

Install the extension once in the database, normalize address text with the supplied configuration, and index the same expression used by queries.

```sql
CREATE EXTENSION addressing_dictionary;

SELECT to_tsvector('addressing_en', '1234 n main st');

CREATE INDEX address_search_idx
ON address_book
USING gin (to_tsvector('addressing_en', full_address));

SELECT *
FROM address_book
WHERE to_tsvector('addressing_en', full_address)
      @@ plainto_tsquery('addressing_en', '1234 north main street');
```

Version 1.1 keeps an abbreviated cardinal direction and also emits its expanded form, so an input such as a single-letter north token can produce both forms. This deliberately preserves ambiguity rather than assuming every occurrence has only one meaning.

### Installed Objects

- The English configuration combines a thesaurus, synonym dictionary, and stop-word dictionary for address tokens.
- The French configuration installs the corresponding French text-search objects.
- Both configurations are copied from PostgreSQL's simple configuration, so they normalize through the extension's data files instead of applying a general-language stemmer.

### Operational Boundaries

The extension is relocatable and needs no preload or restart. Its dictionary, synonym, stop-word, and thesaurus files must be installed on every server that may execute queries or restore the extension.

Full-text matching is heuristic. Abbreviations can be ambiguous, and nationwide data can produce many false or duplicate candidates. Use it to improve candidate search—especially for a bounded city or region—and retain separate structured-address or geospatial checks when correctness matters.
