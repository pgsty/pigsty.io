---
title: "textsearch_intl"
linkTitle: "textsearch_intl"
description: "Multilingual full text search with ICU segmentation, normalization and n-gram matching"
weight: 2290
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/benjaminsanborn/textsearch_intl">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">benjaminsanborn/textsearch_intl</div>
    <div class="ext-card__desc">https://github.com/benjaminsanborn/textsearch_intl</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/textsearch_intl-1.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">textsearch_intl-1.0.1.tar.gz</div>
    <div class="ext-card__desc">textsearch_intl-1.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`textsearch_intl`**](/ext/e/textsearch_intl) | `1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2290  | [**`textsearch_intl`**](/ext/e/textsearch_intl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`unaccent`](/ext/e/unaccent) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Renamed from icu_parser; PGXN distribution 1.0.1 retains SQL/control 1.0. No direct upgrade from the old name. PostgreSQL 14-18, UTF8 and unaccent required; rebuild affected indexes after an ICU major-version change. Pigsty RPM and DEB packages are 1.0.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `textsearch_intl` | `unaccent` |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `textsearch_intl_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-textsearch-intl` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
@ el8.x86_64 18 textsearch_intl_18 textsearch_intl_18-1.0.1-1PGSTY.el8.x86_64.rpm pigsty 1.0.1 53.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/textsearch_intl_18-1.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 textsearch_intl_18 textsearch_intl_18-1.0.1-1PGSTY.el8.aarch64.rpm pigsty 1.0.1 52.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/textsearch_intl_18-1.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 textsearch_intl_18 textsearch_intl_18-1.0.1-1PGSTY.el9.x86_64.rpm pigsty 1.0.1 55.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/textsearch_intl_18-1.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 textsearch_intl_18 textsearch_intl_18-1.0.1-1PGSTY.el9.aarch64.rpm pigsty 1.0.1 53.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/textsearch_intl_18-1.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 textsearch_intl_18 textsearch_intl_18-1.0.1-1PGSTY.el10.x86_64.rpm pigsty 1.0.1 55.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/textsearch_intl_18-1.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 textsearch_intl_18 textsearch_intl_18-1.0.1-1PGSTY.el10.aarch64.rpm pigsty 1.0.1 54.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/textsearch_intl_18-1.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb pigsty 1.0.1 45.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb pigsty 1.0.1 44.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb pigsty 1.0.1 45.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb pigsty 1.0.1 44.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb pigsty 1.0.1 47.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb pigsty 1.0.1 46.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb pigsty 1.0.1 47.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb pigsty 1.0.1 46.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb pigsty 1.0.1 47.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-textsearch-intl postgresql-18-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb pigsty 1.0.1 46.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-18-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 textsearch_intl_17 textsearch_intl_17-1.0.1-1PGSTY.el8.x86_64.rpm pigsty 1.0.1 53.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/textsearch_intl_17-1.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 textsearch_intl_17 textsearch_intl_17-1.0.1-1PGSTY.el8.aarch64.rpm pigsty 1.0.1 52.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/textsearch_intl_17-1.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 textsearch_intl_17 textsearch_intl_17-1.0.1-1PGSTY.el9.x86_64.rpm pigsty 1.0.1 55.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/textsearch_intl_17-1.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 textsearch_intl_17 textsearch_intl_17-1.0.1-1PGSTY.el9.aarch64.rpm pigsty 1.0.1 53.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/textsearch_intl_17-1.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 textsearch_intl_17 textsearch_intl_17-1.0.1-1PGSTY.el10.x86_64.rpm pigsty 1.0.1 55.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/textsearch_intl_17-1.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 textsearch_intl_17 textsearch_intl_17-1.0.1-1PGSTY.el10.aarch64.rpm pigsty 1.0.1 54.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/textsearch_intl_17-1.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb pigsty 1.0.1 45.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb pigsty 1.0.1 44.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb pigsty 1.0.1 45.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb pigsty 1.0.1 44.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb pigsty 1.0.1 49.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb pigsty 1.0.1 48.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb pigsty 1.0.1 47.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb pigsty 1.0.1 46.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb pigsty 1.0.1 46.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-textsearch-intl postgresql-17-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb pigsty 1.0.1 46.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-17-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 textsearch_intl_16 textsearch_intl_16-1.0.1-1PGSTY.el8.x86_64.rpm pigsty 1.0.1 53.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/textsearch_intl_16-1.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 textsearch_intl_16 textsearch_intl_16-1.0.1-1PGSTY.el8.aarch64.rpm pigsty 1.0.1 52.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/textsearch_intl_16-1.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 textsearch_intl_16 textsearch_intl_16-1.0.1-1PGSTY.el9.x86_64.rpm pigsty 1.0.1 55.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/textsearch_intl_16-1.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 textsearch_intl_16 textsearch_intl_16-1.0.1-1PGSTY.el9.aarch64.rpm pigsty 1.0.1 53.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/textsearch_intl_16-1.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 textsearch_intl_16 textsearch_intl_16-1.0.1-1PGSTY.el10.x86_64.rpm pigsty 1.0.1 55.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/textsearch_intl_16-1.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 textsearch_intl_16 textsearch_intl_16-1.0.1-1PGSTY.el10.aarch64.rpm pigsty 1.0.1 54.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/textsearch_intl_16-1.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb pigsty 1.0.1 45.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb pigsty 1.0.1 44.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb pigsty 1.0.1 45.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb pigsty 1.0.1 44.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb pigsty 1.0.1 49.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb pigsty 1.0.1 48.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb pigsty 1.0.1 47.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb pigsty 1.0.1 46.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb pigsty 1.0.1 46.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-textsearch-intl postgresql-16-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb pigsty 1.0.1 46.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-16-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 textsearch_intl_15 textsearch_intl_15-1.0.1-1PGSTY.el8.x86_64.rpm pigsty 1.0.1 53.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/textsearch_intl_15-1.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 textsearch_intl_15 textsearch_intl_15-1.0.1-1PGSTY.el8.aarch64.rpm pigsty 1.0.1 52.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/textsearch_intl_15-1.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 textsearch_intl_15 textsearch_intl_15-1.0.1-1PGSTY.el9.x86_64.rpm pigsty 1.0.1 55.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/textsearch_intl_15-1.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 textsearch_intl_15 textsearch_intl_15-1.0.1-1PGSTY.el9.aarch64.rpm pigsty 1.0.1 53.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/textsearch_intl_15-1.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 textsearch_intl_15 textsearch_intl_15-1.0.1-1PGSTY.el10.x86_64.rpm pigsty 1.0.1 55.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/textsearch_intl_15-1.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 textsearch_intl_15 textsearch_intl_15-1.0.1-1PGSTY.el10.aarch64.rpm pigsty 1.0.1 54.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/textsearch_intl_15-1.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb pigsty 1.0.1 45.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb pigsty 1.0.1 45.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb pigsty 1.0.1 45.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb pigsty 1.0.1 44.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb pigsty 1.0.1 49.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb pigsty 1.0.1 48.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb pigsty 1.0.1 47.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb pigsty 1.0.1 46.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb pigsty 1.0.1 46.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-textsearch-intl postgresql-15-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb pigsty 1.0.1 46.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-15-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 textsearch_intl_14 textsearch_intl_14-1.0.1-1PGSTY.el8.x86_64.rpm pigsty 1.0.1 53.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/textsearch_intl_14-1.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 textsearch_intl_14 textsearch_intl_14-1.0.1-1PGSTY.el8.aarch64.rpm pigsty 1.0.1 52.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/textsearch_intl_14-1.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 textsearch_intl_14 textsearch_intl_14-1.0.1-1PGSTY.el9.x86_64.rpm pigsty 1.0.1 55.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/textsearch_intl_14-1.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 textsearch_intl_14 textsearch_intl_14-1.0.1-1PGSTY.el9.aarch64.rpm pigsty 1.0.1 53.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/textsearch_intl_14-1.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 textsearch_intl_14 textsearch_intl_14-1.0.1-1PGSTY.el10.x86_64.rpm pigsty 1.0.1 55.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/textsearch_intl_14-1.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 textsearch_intl_14 textsearch_intl_14-1.0.1-1PGSTY.el10.aarch64.rpm pigsty 1.0.1 54.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/textsearch_intl_14-1.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb pigsty 1.0.1 45.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb pigsty 1.0.1 44.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb pigsty 1.0.1 45.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb pigsty 1.0.1 44.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb pigsty 1.0.1 49.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb pigsty 1.0.1 48.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb pigsty 1.0.1 47.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb pigsty 1.0.1 46.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb pigsty 1.0.1 46.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-textsearch-intl postgresql-14-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb pigsty 1.0.1 45.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/textsearch-intl/postgresql-14-textsearch-intl_1.0.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `textsearch_intl` using `pig build`:

```bash
pig build pkg textsearch_intl         # build RPM / DEB packages
```


## Install

You can install `textsearch_intl` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install textsearch_intl;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y textsearch_intl -v 18  # PG 18
pig ext install -y textsearch_intl -v 17  # PG 17
pig ext install -y textsearch_intl -v 16  # PG 16
pig ext install -y textsearch_intl -v 15  # PG 15
pig ext install -y textsearch_intl -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y textsearch_intl_18       # PG 18
dnf install -y textsearch_intl_17       # PG 17
dnf install -y textsearch_intl_16       # PG 16
dnf install -y textsearch_intl_15       # PG 15
dnf install -y textsearch_intl_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-textsearch-intl   # PG 18
apt install -y postgresql-17-textsearch-intl   # PG 17
apt install -y postgresql-16-textsearch-intl   # PG 16
apt install -y postgresql-15-textsearch-intl   # PG 15
apt install -y postgresql-14-textsearch-intl   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION textsearch_intl CASCADE;  -- requires: unaccent
```

## Usage

Sources:

- [README.md](https://github.com/benjaminsanborn/textsearch_intl/blob/6efb0a28a5f6643b46ecd2e9b8de75c30fb82680/README.md)
- [textsearch_intl--1.0.sql](https://github.com/benjaminsanborn/textsearch_intl/blob/6efb0a28a5f6643b46ecd2e9b8de75c30fb82680/textsearch_intl--1.0.sql)
- [textsearch_intl.control](https://github.com/benjaminsanborn/textsearch_intl/blob/6efb0a28a5f6643b46ecd2e9b8de75c30fb82680/textsearch_intl.control)
- [META.json](https://github.com/benjaminsanborn/textsearch_intl/blob/6efb0a28a5f6643b46ecd2e9b8de75c30fb82680/META.json)
- [LICENSE](https://github.com/benjaminsanborn/textsearch_intl/blob/6efb0a28a5f6643b46ecd2e9b8de75c30fb82680/LICENSE)
- [Rename commit](https://github.com/benjaminsanborn/textsearch_intl/commit/b023b27aa16b82fc3c1b80ef0928e9f185e7f43e)
- [PGXN textsearch_intl 1.0.1](https://pgxn.org/dist/textsearch_intl/1.0.1/)

`textsearch_intl` combines ICU word segmentation, normalization and n-gram matching for multilingual text search. It requires PostgreSQL 14 or later, a UTF8 database, ICU and `unaccent`; upstream CI covers PostgreSQL 14–18.

### Name and Version

The project renamed `icu_parser` to `textsearch_intl` on 2026-10-09 and restarted versioning. The renamed PGXN distribution 1.0.1 was published on 2026-10-22. Its SQL/control version remains `1.0`; the distribution number is not a SQL upgrade target. There is no direct SQL upgrade script from the old name: inspect dependent objects and plan their recreation before migrating.

### Core Workflow

```sql
CREATE EXTENSION textsearch_intl CASCADE;
SELECT alias, token FROM ts_debug('intl_simple', '東京駅前ラーメン店 ร้านกาแฟ Café');
SELECT to_tsvector('intl_search', 'Café') @@ phraseto_tsquery('intl_search', 'cafe');
SELECT to_tsvector('intl_search_ngram', '행복한편의점')
       @@ phraseto_tsquery('intl_search_ngram', '편의점');
SELECT intl_icu_version();
```

### Search Configurations

- `intl_simple` uses the `intl` parser and preserves accents and character widths.
- `intl_search` combines `intl_normalize`, `unaccent` and `intl_join` for normalized whole-word search. Word joining is off by default.
- `intl_search_ngram` uses `intl_runs` and `intl_ngram` to match inside Korean/CJK tokens and unspaced Thai, Lao, Khmer and Burmese runs. N-grams can overmatch and increase index size.

### Operational Boundaries

Install with a superuser; the extension is relocatable, is not marked trusted and needs no preload. Prefer `phraseto_tsquery()` when word order matters. `intl_icu_version()` reports the loaded ICU version; rebuild affected indexes after an ICU major-version change. ICU segmentation is not Japanese morphological analysis, and partial CJK prefix queries remain unreliable.
