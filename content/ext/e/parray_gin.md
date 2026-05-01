---
title: "parray_gin"
linkTitle: "parray_gin"
description: "GIN index operator class and partial-match operators for text arrays"
weight: 4860
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/theirix/parray_gin">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">theirix/parray_gin</div>
    <div class="ext-card__desc">https://github.com/theirix/parray_gin</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/parray_gin-1.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">parray_gin-1.5.0.tar.gz</div>
    <div class="ext-card__desc">parray_gin-1.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`parray_gin`**](/ext/e/parray_gin) | `1.5.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4860  | [**`parray_gin`**](/ext/e/parray_gin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`intarray`](/ext/e/intarray) [`btree_gin`](/ext/e/btree_gin) [`btree_gist`](/ext/e/btree_gist) [`pg_trgm`](/ext/e/pg_trgm) [`smlar`](/ext/e/smlar) [`aggs_for_arrays`](/ext/e/aggs_for_arrays) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`arraymath`](/ext/e/arraymath) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGXN dist name and PostgreSQL extension name are both parray_gin; Pigsty packages are built for PG 14-18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.0` | {{< pgvers "18,17,16,15,14" >}} | `parray_gin` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.0` | {{< pgvers "18,17,16,15,14" >}} | `parray_gin_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-parray-gin` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 |
@ el8.x86_64 18 parray_gin_18 parray_gin_18-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/parray_gin_18-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 parray_gin_18 parray_gin_18-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 23.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/parray_gin_18-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 parray_gin_18 parray_gin_18-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/parray_gin_18-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 parray_gin_18 parray_gin_18-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/parray_gin_18-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 parray_gin_18 parray_gin_18-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 23.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/parray_gin_18-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 parray_gin_18 parray_gin_18-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/parray_gin_18-1.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 30.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 30.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 30.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 30.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 31.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 31.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 31.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 30.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-parray-gin postgresql-18-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 30.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-18-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 parray_gin_17 parray_gin_17-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/parray_gin_17-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 parray_gin_17 parray_gin_17-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/parray_gin_17-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 parray_gin_17 parray_gin_17-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/parray_gin_17-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 parray_gin_17 parray_gin_17-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/parray_gin_17-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 parray_gin_17 parray_gin_17-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 23.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/parray_gin_17-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 parray_gin_17 parray_gin_17-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/parray_gin_17-1.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 30.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 30.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 30.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 30.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 32.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 31.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 31.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-parray-gin postgresql-17-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-17-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 parray_gin_16 parray_gin_16-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/parray_gin_16-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 parray_gin_16 parray_gin_16-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/parray_gin_16-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 parray_gin_16 parray_gin_16-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 23.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/parray_gin_16-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 parray_gin_16 parray_gin_16-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/parray_gin_16-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 parray_gin_16 parray_gin_16-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/parray_gin_16-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 parray_gin_16 parray_gin_16-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/parray_gin_16-1.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 30.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 30.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 30.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 30.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 32.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 31.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 31.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-parray-gin postgresql-16-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-16-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 parray_gin_15 parray_gin_15-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/parray_gin_15-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 parray_gin_15 parray_gin_15-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/parray_gin_15-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 parray_gin_15 parray_gin_15-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/parray_gin_15-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 parray_gin_15 parray_gin_15-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/parray_gin_15-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 parray_gin_15 parray_gin_15-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 24.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/parray_gin_15-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 parray_gin_15 parray_gin_15-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 23.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/parray_gin_15-1.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 30.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 30.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 30.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 30.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 32.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 31.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 31.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-parray-gin postgresql-15-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-15-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 parray_gin_14 parray_gin_14-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/parray_gin_14-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 parray_gin_14 parray_gin_14-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/parray_gin_14-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 parray_gin_14 parray_gin_14-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/parray_gin_14-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 parray_gin_14 parray_gin_14-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/parray_gin_14-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 parray_gin_14 parray_gin_14-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 24.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/parray_gin_14-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 parray_gin_14 parray_gin_14-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/parray_gin_14-1.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 30.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 29.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 30.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 30.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 32.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 31.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 31.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-parray-gin postgresql-14-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 31.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/parray-gin/postgresql-14-parray-gin_1.5.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `parray_gin` using `pig build`:

```bash
pig build pkg parray_gin         # build RPM / DEB packages
```


## Install

You can install `parray_gin` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install parray_gin;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y parray_gin -v 18  # PG 18
pig ext install -y parray_gin -v 17  # PG 17
pig ext install -y parray_gin -v 16  # PG 16
pig ext install -y parray_gin -v 15  # PG 15
pig ext install -y parray_gin -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y parray_gin_18       # PG 18
dnf install -y parray_gin_17       # PG 17
dnf install -y parray_gin_16       # PG 16
dnf install -y parray_gin_15       # PG 15
dnf install -y parray_gin_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-parray-gin   # PG 18
apt install -y postgresql-17-parray-gin   # PG 17
apt install -y postgresql-16-parray-gin   # PG 16
apt install -y postgresql-15-parray-gin   # PG 15
apt install -y postgresql-14-parray-gin   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION parray_gin;
```

## Usage

- Sources: [README](https://github.com/theirix/parray_gin/blob/master/README.md), [reference doc](https://github.com/theirix/parray_gin/blob/master/doc/parray_gin.md)

`parray_gin` adds a GIN operator class for `text[]` plus strict and partial-match operators. Upstream describes it as trigram-based array indexing built on `pg_trgm` trigram decomposition.

### Create The Extension And Index

```sql
CREATE EXTENSION parray_gin;

CREATE TABLE test_table (
  id  bigserial,
  val text[]
);

CREATE INDEX test_tags_idx
ON test_table
USING gin (val parray_gin_ops);
```

### Indexed Operators

The reference doc says `parray_gin_ops` can support these operators:

- `@>`: strict contains.
- `<@`: strict contained-by.
- `@@>`: partial contains, where array elements may use `LIKE` patterns.
- `<@@`: partial contained-by.

Examples:

```sql
SELECT * FROM test_table WHERE val @> ARRAY['must','contain'];
SELECT * FROM test_table WHERE val @@> ARRAY['what%like%'];
SELECT * FROM test_table WHERE val <@ ARRAY['galaxy','ago','vader'];
SELECT * FROM test_table WHERE val <@@ ARRAY['%ar%','vader'];
```

### Matching Behavior

Strict matching requires array-item equality. Partial matching allows patterns such as `'foo%'` or `'%oo%'`. Because the trigram index can return false positives, the docs note that matches are rechecked after index lookup.

### Caveats

The README says support extends through PostgreSQL 18, while the reference document still says 9.1-14. The operator and opclass behavior is consistent across both docs, but the version note is not fully synchronized upstream.
