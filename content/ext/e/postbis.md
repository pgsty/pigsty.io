---
title: "postbis"
linkTitle: "postbis"
description: "Adds compressed DNA, RNA, amino-acid, and aligned sequence types with casts, operators, indexes, and bioinformatics functions."
weight: 3760
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/no0p/postbis">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">no0p/postbis</div>
    <div class="ext-card__desc">https://github.com/no0p/postbis</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postbis-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postbis-1.0.tar.gz</div>
    <div class="ext-card__desc">postbis-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`postbis`**](/ext/e/postbis) | `1.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3760  | [**`postbis`**](/ext/e/postbis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`rdkit`](/ext/e/rdkit) [`vector`](/ext/e/vector) [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) [`pg_trgm`](/ext/e/pg_trgm) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) [`imgsmlr`](/ext/e/imgsmlr) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> The packaged repository is an untagged copy of PostBIS, inactive since 2019; Pigsty pins commit ce454ebf and patches PostgreSQL 14-18 compatibility plus alphabet output and indexed slice correctness.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postbis` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postbis_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-postbis` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
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
@ el8.x86_64 18 postbis_18 postbis_18-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postbis_18-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 postbis_18 postbis_18-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 61.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postbis_18-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 postbis_18 postbis_18-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 61.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postbis_18-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 postbis_18 postbis_18-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 59.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postbis_18-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 postbis_18 postbis_18-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 63.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postbis_18-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 postbis_18 postbis_18-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 60.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postbis_18-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0 152.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0 147.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~trixie_amd64.deb pigsty 1.0 153.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~trixie_arm64.deb pigsty 1.0 147.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~jammy_amd64.deb pigsty 1.0 162.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~jammy_arm64.deb pigsty 1.0 160.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~noble_amd64.deb pigsty 1.0 160.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~noble_arm64.deb pigsty 1.0 157.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~resolute_amd64.deb pigsty 1.0 160.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-postbis postgresql-18-postbis_1.0-2PIGSTY~resolute_arm64.deb pigsty 1.0 157.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-18-postbis_1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 postbis_17 postbis_17-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postbis_17-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 postbis_17 postbis_17-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 61.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postbis_17-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 postbis_17 postbis_17-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 61.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postbis_17-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 postbis_17 postbis_17-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 59.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postbis_17-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 postbis_17 postbis_17-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 63.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postbis_17-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 postbis_17 postbis_17-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 60.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postbis_17-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0 152.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0 147.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~trixie_amd64.deb pigsty 1.0 153.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~trixie_arm64.deb pigsty 1.0 147.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~jammy_amd64.deb pigsty 1.0 168.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~jammy_arm64.deb pigsty 1.0 167.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~noble_amd64.deb pigsty 1.0 160.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~noble_arm64.deb pigsty 1.0 157.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~resolute_amd64.deb pigsty 1.0 160.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-postbis postgresql-17-postbis_1.0-2PIGSTY~resolute_arm64.deb pigsty 1.0 157.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-17-postbis_1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 postbis_16 postbis_16-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postbis_16-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 postbis_16 postbis_16-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 61.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postbis_16-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 postbis_16 postbis_16-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 61.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postbis_16-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 postbis_16 postbis_16-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 59.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postbis_16-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 postbis_16 postbis_16-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 63.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postbis_16-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 postbis_16 postbis_16-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 60.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postbis_16-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0 152.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0 147.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~trixie_amd64.deb pigsty 1.0 153.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~trixie_arm64.deb pigsty 1.0 148.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~jammy_amd64.deb pigsty 1.0 169.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~jammy_arm64.deb pigsty 1.0 166.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~noble_amd64.deb pigsty 1.0 160.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~noble_arm64.deb pigsty 1.0 157.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~resolute_amd64.deb pigsty 1.0 160.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-postbis postgresql-16-postbis_1.0-2PIGSTY~resolute_arm64.deb pigsty 1.0 157.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-16-postbis_1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 postbis_15 postbis_15-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 66.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postbis_15-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 postbis_15 postbis_15-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postbis_15-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 postbis_15 postbis_15-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 63.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postbis_15-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 postbis_15 postbis_15-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 61.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postbis_15-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 postbis_15 postbis_15-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 64.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postbis_15-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 postbis_15 postbis_15-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 61.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postbis_15-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0 153.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0 148.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~trixie_amd64.deb pigsty 1.0 154.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~trixie_arm64.deb pigsty 1.0 149.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~jammy_amd64.deb pigsty 1.0 170.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~jammy_arm64.deb pigsty 1.0 168.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~noble_amd64.deb pigsty 1.0 161.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~noble_arm64.deb pigsty 1.0 158.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~resolute_amd64.deb pigsty 1.0 161.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-postbis postgresql-15-postbis_1.0-2PIGSTY~resolute_arm64.deb pigsty 1.0 158.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-15-postbis_1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 postbis_14 postbis_14-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 66.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postbis_14-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 postbis_14 postbis_14-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 62.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postbis_14-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 postbis_14 postbis_14-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 63.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postbis_14-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 postbis_14 postbis_14-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 61.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postbis_14-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 postbis_14 postbis_14-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 64.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postbis_14-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 postbis_14 postbis_14-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 61.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postbis_14-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0 153.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0 148.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~trixie_amd64.deb pigsty 1.0 154.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~trixie_arm64.deb pigsty 1.0 149.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~jammy_amd64.deb pigsty 1.0 170.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~jammy_arm64.deb pigsty 1.0 168.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~noble_amd64.deb pigsty 1.0 161.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~noble_arm64.deb pigsty 1.0 158.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~resolute_amd64.deb pigsty 1.0 161.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-postbis postgresql-14-postbis_1.0-2PIGSTY~resolute_arm64.deb pigsty 1.0 158.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postbis/postgresql-14-postbis_1.0-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `postbis` using `pig build`:

```bash
pig build pkg postbis         # build RPM / DEB packages
```


## Install

You can install `postbis` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install postbis;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y postbis -v 18  # PG 18
pig ext install -y postbis -v 17  # PG 17
pig ext install -y postbis -v 16  # PG 16
pig ext install -y postbis -v 15  # PG 15
pig ext install -y postbis -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y postbis_18       # PG 18
dnf install -y postbis_17       # PG 17
dnf install -y postbis_16       # PG 16
dnf install -y postbis_15       # PG 15
dnf install -y postbis_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-postbis   # PG 18
apt install -y postgresql-17-postbis   # PG 17
apt install -y postgresql-16-postbis   # PG 16
apt install -y postgresql-15-postbis   # PG 15
apt install -y postgresql-14-postbis   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION postbis;
```

## Usage

Sources:

- [Project README](https://github.com/no0p/postbis/blob/ce454ebfbc27e0b6c8357ef6bfc8da1c4b2967c8/README.txt)
- [Extension control file](https://github.com/no0p/postbis/blob/ce454ebfbc27e0b6c8357ef6bfc8da1c4b2967c8/postbis.control)
- [Version 1.0 SQL API](https://github.com/no0p/postbis/blob/ce454ebfbc27e0b6c8357ef6bfc8da1c4b2967c8/sql/postbis--1.0.sql)
- [Sequence regression tests](https://github.com/no0p/postbis/tree/ce454ebfbc27e0b6c8357ef6bfc8da1c4b2967c8/test/sql)

`postbis` 1.0 provides compact native types for DNA, RNA, amino-acid, and aligned sequences. It also provides configurable alphabets and type modifiers, casts, sequence operations, biological transformations, comparison operators, and B-tree and hash operator classes.

### Store typed sequences

```sql
CREATE EXTENSION postbis;

CREATE TABLE specimen (
  specimen_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  dna dna_sequence(SHORT, FLC, CASE_SENSITIVE) NOT NULL,
  rna rna_sequence(IUPAC, CASE_SENSITIVE),
  protein aa_sequence(IUPAC, CASE_SENSITIVE)
);

INSERT INTO specimen (dna, rna, protein)
VALUES ('AACCGGTT', 'AACGUU', 'ACDEFG');

SELECT specimen_id,
       char_length(dna) AS bases,
       substr(dna, 3, 4)::text AS fragment
FROM specimen;
```

Input validation depends on the selected alphabet, case-sensitivity, and type modifiers. Verify that casts reject symbols outside the required biological convention and that aligned and unaligned types are not mixed accidentally.

### Transform and translate sequences

```sql
SELECT complement('ACGTN'::dna_sequence)::text;
-- TGCAN

SELECT reverse_complement('ACGTN'::dna_sequence)::text;
-- NACGT

SELECT transcribe('AACGTT'::dna_sequence)::text;
-- AACGUU

SELECT translate('AUGGCCUAA'::rna_sequence)::text;
-- MA
```

The extension also exposes `reverse_transcribe()`, `six_frame()`, `get_alphabet()`, `entropy()`, `gc_content()`, and sequence generators. The translation functions accept explicit translation tables when the standard genetic code is not appropriate.

### Inspect compression and add indexes

```sql
SELECT char_length(sequence) AS symbols,
       octet_length(sequence) AS storage_bytes,
       compression_ratio(sequence) AS storage_ratio
FROM (
  SELECT repeat('ACGT', 256)::dna_sequence AS sequence
) AS sample;

CREATE INDEX specimen_dna_btree ON specimen USING btree (dna);
CREATE INDEX specimen_dna_hash  ON specimen USING hash  (dna);
```

Equality, ordering, concatenation, substring, search, and length functions are available for the sequence types. Check plans and realistic data distributions before relying on an index for a production workload.

### Packaging and durability risk

Pigsty applies a downstream compatibility patch and packages PostBIS 1.0 for PostgreSQL 14–18. That packaging result does not change the upstream lifecycle: the project is inactive and has no extension upgrade path beyond 1.0.

The custom types use native compressed on-disk representations. Treat stored values and indexes as tied to an exact tested build. Before adoption or migration, prove dump and restore, binary and logical upgrades, replication, driver decoding, index rebuilds, malformed input handling, and large-sequence memory behavior.

Functions such as `reverse()`, `char_length()`, and `substr()` overload familiar names, so schema qualification and controlled `search_path` settings matter. For new durable datasets, prefer maintained sequence tooling or plain PostgreSQL types unless the extension has been locally audited, packaged, and assigned an explicit long-term migration owner.
