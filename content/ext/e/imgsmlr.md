---
title: "imgsmlr"
linkTitle: "imgsmlr"
description: "Image similarity with haar"
weight: 2830
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgrespro/imgsmlr">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgrespro/imgsmlr</div>
    <div class="ext-card__desc">https://github.com/postgrespro/imgsmlr</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/imgsmlr-1.0+git20180223.c484a15.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">imgsmlr-1.0+git20180223.c484a15.tar.gz</div>
    <div class="ext-card__desc">imgsmlr-1.0+git20180223.c484a15.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`imgsmlr`**](/ext/e/imgsmlr) | `1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2830  | [**`imgsmlr`**](/ext/e/imgsmlr) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`vector`](/ext/e/vector) [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) [`pg_trgm`](/ext/e/pg_trgm) [`pgcontext`](/ext/e/pgcontext) [`rdkit`](/ext/e/rdkit) [`postbis`](/ext/e/postbis) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> breaks on el10


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "19,18,17,16,15" >}} | `imgsmlr` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "19,18,17,16,15" >}} | `imgsmlr_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-imgsmlr` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el9.x86_64 19 imgsmlr_19 imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm pigsty 1.0 40.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 imgsmlr_19 imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm pigsty 1.0 39.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 imgsmlr_19 imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm pigsty 1.0 40.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 imgsmlr_19 imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm pigsty 1.0 39.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/imgsmlr_19-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb pigsty 1.0 31.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb pigsty 1.0 30.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb pigsty 1.0 33.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb pigsty 1.0 32.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb pigsty 1.0 32.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-imgsmlr postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-19-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 imgsmlr_18 imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm pigsty 1.0 39.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 imgsmlr_18 imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm pigsty 1.0 39.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 imgsmlr_18 imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 imgsmlr_18 imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm pigsty 1.0 39.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 imgsmlr_18 imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 imgsmlr_18 imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm pigsty 1.0 39.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/imgsmlr_18-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb pigsty 1.0 31.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb pigsty 1.0 33.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb pigsty 1.0 32.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb pigsty 1.0 32.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-imgsmlr postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-18-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 imgsmlr_17 imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm pigsty 1.0 38.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 imgsmlr_17 imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm pigsty 1.0 39.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 imgsmlr_17 imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 imgsmlr_17 imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm pigsty 1.0 39.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 imgsmlr_17 imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 imgsmlr_17 imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm pigsty 1.0 39.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/imgsmlr_17-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb pigsty 1.0 31.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb pigsty 1.0 34.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb pigsty 1.0 33.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb pigsty 1.0 33.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-imgsmlr postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-17-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 imgsmlr_16 imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm pigsty 1.0 38.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 imgsmlr_16 imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm pigsty 1.0 39.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 imgsmlr_16 imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 imgsmlr_16 imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm pigsty 1.0 39.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 imgsmlr_16 imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 imgsmlr_16 imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm pigsty 1.0 39.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/imgsmlr_16-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb pigsty 1.0 31.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb pigsty 1.0 34.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb pigsty 1.0 33.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb pigsty 1.0 33.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-imgsmlr postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-16-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 imgsmlr_15 imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm pigsty 1.0 38.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 imgsmlr_15 imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm pigsty 1.0 39.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 imgsmlr_15 imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 imgsmlr_15 imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm pigsty 1.0 39.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 imgsmlr_15 imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm pigsty 1.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 imgsmlr_15 imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm pigsty 1.0 39.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/imgsmlr_15-1.0-2.git20180223.c484a15PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb pigsty 1.0 31.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb pigsty 1.0 34.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb pigsty 1.0 33.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb pigsty 1.0 33.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-imgsmlr postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb pigsty 1.0 32.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/imgsmlr/postgresql-15-imgsmlr_1.0+git20180223.c484a15-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `imgsmlr` using `pig build`:

```bash
pig build pkg imgsmlr         # build RPM / DEB packages
```


## Install

You can install `imgsmlr` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install imgsmlr;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y imgsmlr -v 19  # PG 19
pig ext install -y imgsmlr -v 18  # PG 18
pig ext install -y imgsmlr -v 17  # PG 17
pig ext install -y imgsmlr -v 16  # PG 16
pig ext install -y imgsmlr -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y imgsmlr_19       # PG 19
dnf install -y imgsmlr_18       # PG 18
dnf install -y imgsmlr_17       # PG 17
dnf install -y imgsmlr_16       # PG 16
dnf install -y imgsmlr_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-imgsmlr   # PG 19
apt install -y postgresql-18-imgsmlr   # PG 18
apt install -y postgresql-17-imgsmlr   # PG 17
apt install -y postgresql-16-imgsmlr   # PG 16
apt install -y postgresql-15-imgsmlr   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION imgsmlr;
```




## Usage

> [imgsmlr: similar images search for PostgreSQL using Haar wavelet transform](https://github.com/postgrespro/imgsmlr)

The `imgsmlr` extension implements similar image searching functionality based on Haar wavelet transforms. It provides two data types and functions for converting images into searchable signatures.

```sql
CREATE EXTENSION imgsmlr;
```

### Data Types

| Datatype    | Storage Length | Description |
|-------------|---------------:|-------------|
| `pattern`   | 16388 bytes    | Result of Haar wavelet transform on the image |
| `signature` | 64 bytes       | Short representation of pattern for fast GiST index searches |

### Functions

| Function | Return Type | Description |
|----------|-------------|-------------|
| `jpeg2pattern(bytea)` | pattern | Convert JPEG image data into pattern |
| `png2pattern(bytea)` | pattern | Convert PNG image data into pattern |
| `gif2pattern(bytea)` | pattern | Convert GIF image data into pattern |
| `pattern2signature(pattern)` | signature | Create signature from pattern |
| `shuffle_pattern(pattern)` | pattern | Shuffle pattern for less sensitivity to image shift |

### Operators

| Operator | Left | Right | Return | Description |
|----------|------|-------|--------|-------------|
| `<->` | pattern | pattern | float8 | Euclidean distance between two patterns |
| `<->` | signature | signature | float8 | Euclidean distance between two signatures |
{.wide .expand}

The `signature` type supports GiST indexing with KNN on the `<->` operator.

### Example

Create a table of patterns and signatures from JPEG images:

```sql
CREATE TABLE pat AS (
    SELECT
        id,
        shuffle_pattern(pattern) AS pattern,
        pattern2signature(pattern) AS signature
    FROM (
        SELECT id, jpeg2pattern(data) AS pattern
        FROM image
    ) x
);

ALTER TABLE pat ADD PRIMARY KEY (id);
CREATE INDEX pat_signature_idx ON pat USING gist (signature);
```

Search for the top 10 similar images to a given image:

```sql
SELECT id, smlr
FROM (
    SELECT
        id,
        pattern <-> (SELECT pattern FROM pat WHERE id = :id) AS smlr
    FROM pat
    WHERE id <> :id
    ORDER BY signature <-> (SELECT signature FROM pat WHERE id = :id)
    LIMIT 100
) x
ORDER BY x.smlr ASC
LIMIT 10;
```

The inner query selects the top 100 candidates by signature using the GiST index. The outer query refines to the top 10 by pattern distance.
