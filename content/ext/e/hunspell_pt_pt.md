---
title: "hunspell_pt_pt"
linkTitle: "hunspell_pt_pt"
description: "Portuguese Hunspell Dictionary"
weight: 2277
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgrespro/hunspell_dicts">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgrespro/hunspell_dicts</div>
    <div class="ext-card__desc">https://github.com/postgrespro/hunspell_dicts</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/hunspell-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">hunspell-1.0.tar.gz</div>
    <div class="ext-card__desc">hunspell-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hunspell_pt_pt`**](/ext/e/hunspell_pt_pt) | `1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2277  | [**`hunspell_pt_pt`**](/ext/e/hunspell_pt_pt) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`hunspell_en_us`](/ext/e/hunspell_en_us) [`hunspell_ne_np`](/ext/e/hunspell_ne_np) [`hunspell_nn_no`](/ext/e/hunspell_nn_no) [`hunspell_ru_ru`](/ext/e/hunspell_ru_ru) [`hunspell_ru_ru_aot`](/ext/e/hunspell_ru_ru_aot) [`hunspell_cs_cz`](/ext/e/hunspell_cs_cz) [`hunspell_de_de`](/ext/e/hunspell_de_de) [`hunspell_fr`](/ext/e/hunspell_fr) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> WARNING, conflict with pg built-in dict file, not recommended


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `hunspell_pt_pt` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `hunspell_pt_pt_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-hunspell-pt-pt` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| el8.aarch64 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| el9.x86_64 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| el9.aarch64 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| el10.x86_64 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| el10.aarch64 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| d12.x86_64 | MISS PIGSTY - 0 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| d12.aarch64 | MISS PIGSTY - 0 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| d13.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| u22.aarch64 | MISS PIGSTY - 0 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| u24.x86_64 | MISS PIGSTY - 0 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
| u24.aarch64 | MISS PIGSTY - 0 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 | THROW PIGSTY 1.0 1 |
@ el8.x86_64 18 hunspell_pt_pt_18 hunspell_pt_pt_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hunspell_pt_pt_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 hunspell_pt_pt_18 hunspell_pt_pt_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hunspell_pt_pt_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 hunspell_pt_pt_18 hunspell_pt_pt_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 207.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hunspell_pt_pt_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 hunspell_pt_pt_18 hunspell_pt_pt_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 208.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hunspell_pt_pt_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 hunspell_pt_pt_18 hunspell_pt_pt_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hunspell_pt_pt_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 hunspell_pt_pt_18 hunspell_pt_pt_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hunspell_pt_pt_18-1.0-1PIGSTY.el10.aarch64.rpm
@ el8.x86_64 17 hunspell_pt_pt_17 hunspell_pt_pt_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hunspell_pt_pt_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 hunspell_pt_pt_17 hunspell_pt_pt_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hunspell_pt_pt_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 hunspell_pt_pt_17 hunspell_pt_pt_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 208.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hunspell_pt_pt_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 hunspell_pt_pt_17 hunspell_pt_pt_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 208.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hunspell_pt_pt_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 hunspell_pt_pt_17 hunspell_pt_pt_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hunspell_pt_pt_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 hunspell_pt_pt_17 hunspell_pt_pt_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hunspell_pt_pt_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-hunspell-pt-pt postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 189.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-hunspell-pt-pt postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 189.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb
@ u22.x86_64 17 postgresql-17-hunspell-pt-pt postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 200.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-hunspell-pt-pt postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 200.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-hunspell-pt-pt postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 199.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-hunspell-pt-pt postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 199.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-17-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 hunspell_pt_pt_16 hunspell_pt_pt_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hunspell_pt_pt_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 hunspell_pt_pt_16 hunspell_pt_pt_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hunspell_pt_pt_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 hunspell_pt_pt_16 hunspell_pt_pt_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 208.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hunspell_pt_pt_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 hunspell_pt_pt_16 hunspell_pt_pt_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 208.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hunspell_pt_pt_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 hunspell_pt_pt_16 hunspell_pt_pt_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hunspell_pt_pt_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 hunspell_pt_pt_16 hunspell_pt_pt_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hunspell_pt_pt_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-hunspell-pt-pt postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 188.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-hunspell-pt-pt postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 188.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb
@ u22.x86_64 16 postgresql-16-hunspell-pt-pt postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 199.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-hunspell-pt-pt postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 199.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-hunspell-pt-pt postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 199.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-hunspell-pt-pt postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 199.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-16-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 hunspell_pt_pt_15 hunspell_pt_pt_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hunspell_pt_pt_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 hunspell_pt_pt_15 hunspell_pt_pt_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hunspell_pt_pt_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 hunspell_pt_pt_15 hunspell_pt_pt_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 208.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hunspell_pt_pt_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 hunspell_pt_pt_15 hunspell_pt_pt_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 208.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hunspell_pt_pt_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 hunspell_pt_pt_15 hunspell_pt_pt_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hunspell_pt_pt_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 hunspell_pt_pt_15 hunspell_pt_pt_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hunspell_pt_pt_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-hunspell-pt-pt postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 189.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-hunspell-pt-pt postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 189.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb
@ u22.x86_64 15 postgresql-15-hunspell-pt-pt postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 200.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-hunspell-pt-pt postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 200.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-hunspell-pt-pt postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 199.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-hunspell-pt-pt postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 199.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-15-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 hunspell_pt_pt_14 hunspell_pt_pt_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hunspell_pt_pt_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 hunspell_pt_pt_14 hunspell_pt_pt_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 224.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hunspell_pt_pt_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 hunspell_pt_pt_14 hunspell_pt_pt_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hunspell_pt_pt_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 hunspell_pt_pt_14 hunspell_pt_pt_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 208.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hunspell_pt_pt_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 hunspell_pt_pt_14 hunspell_pt_pt_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hunspell_pt_pt_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 hunspell_pt_pt_14 hunspell_pt_pt_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hunspell_pt_pt_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-hunspell-pt-pt postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 188.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-hunspell-pt-pt postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 188.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hunspell-pt-pt/postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~bookworm_arm64.deb
@ u22.x86_64 14 postgresql-14-hunspell-pt-pt postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 200.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-hunspell-pt-pt postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 200.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hunspell-pt-pt/postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-hunspell-pt-pt postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 199.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-hunspell-pt-pt postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 199.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hunspell-pt-pt/postgresql-14-hunspell-pt-pt_1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `hunspell_pt_pt` using `pig build`:

```bash
pig build pkg hunspell_pt_pt         # build RPM / DEB packages
```


## Install

You can install `hunspell_pt_pt` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install hunspell_pt_pt;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y hunspell_pt_pt -v 18  # PG 18
pig ext install -y hunspell_pt_pt -v 17  # PG 17
pig ext install -y hunspell_pt_pt -v 16  # PG 16
pig ext install -y hunspell_pt_pt -v 15  # PG 15
pig ext install -y hunspell_pt_pt -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y hunspell_pt_pt_18       # PG 18
dnf install -y hunspell_pt_pt_17       # PG 17
dnf install -y hunspell_pt_pt_16       # PG 16
dnf install -y hunspell_pt_pt_15       # PG 15
dnf install -y hunspell_pt_pt_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-hunspell-pt-pt   # PG 18
apt install -y postgresql-17-hunspell-pt-pt   # PG 17
apt install -y postgresql-16-hunspell-pt-pt   # PG 16
apt install -y postgresql-15-hunspell-pt-pt   # PG 15
apt install -y postgresql-14-hunspell-pt-pt   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION hunspell_pt_pt;
```



## Usage

> [hunspell_pt_pt: Portuguese Hunspell dictionary for PostgreSQL](https://github.com/postgrespro/hunspell_dicts)

Portuguese Hunspell dictionary and text search configuration for PostgreSQL full-text search.

```sql
CREATE EXTENSION hunspell_pt_pt;

SELECT ts_lexize('portuguese_hunspell', 'histórias');

SELECT to_tsvector('portuguese_hunspell', 'histórias');
```

This extension provides the `portuguese_hunspell` dictionary and text search configuration.
