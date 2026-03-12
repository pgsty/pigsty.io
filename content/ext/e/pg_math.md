---
title: "pg_math"
linkTitle: "pg_math"
description: "GSL statistical functions for postgresql"
weight: 4780
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/chanukyasds/pg_math">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">chanukyasds/pg_math</div>
    <div class="ext-card__desc">https://github.com/chanukyasds/pg_math</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_math-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_math-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_math-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_math`**](/ext/e/pg_math) | `1.1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4780  | [**`pg_math`**](/ext/e/pg_math) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`permuteseq`](/ext/e/permuteseq) [`pg_hashids`](/ext/e/pg_hashids) [`sequential_uuids`](/ext/e/sequential_uuids) [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_math` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_math_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-math` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
@ el8.x86_64 18 pg_math_18 pg_math_18-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_math_18-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_math_18 pg_math_18-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_math_18-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_math_18 pg_math_18-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 31.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_math_18-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_math_18 pg_math_18-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_math_18-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_math_18 pg_math_18-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_math_18-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_math_18 pg_math_18-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_math_18-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 60.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 59.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 60.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 60.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 68.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 67.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 64.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-math postgresql-18-pg-math_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 63.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-18-pg-math_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_math_17 pg_math_17-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_math_17-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_math_17 pg_math_17-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_math_17-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_math_17 pg_math_17-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 31.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_math_17-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_math_17 pg_math_17-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_math_17-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_math_17 pg_math_17-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_math_17-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_math_17 pg_math_17-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_math_17-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 60.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 59.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 60.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 60.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 68.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 67.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-math postgresql-17-pg-math_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 63.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-17-pg-math_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_math_16 pg_math_16-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_math_16-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_math_16 pg_math_16-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_math_16-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_math_16 pg_math_16-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_math_16-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_math_16 pg_math_16-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_math_16-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_math_16 pg_math_16-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_math_16-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_math_16 pg_math_16-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_math_16-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 60.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 59.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 60.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 60.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 68.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 67.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-math postgresql-16-pg-math_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 63.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-16-pg-math_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_math_15 pg_math_15-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_math_15-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_math_15 pg_math_15-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_math_15-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_math_15 pg_math_15-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 31.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_math_15-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_math_15 pg_math_15-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_math_15-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_math_15 pg_math_15-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_math_15-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_math_15 pg_math_15-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_math_15-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 60.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 59.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 60.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 60.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 68.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 67.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-math postgresql-15-pg-math_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 63.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-15-pg-math_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_math_14 pg_math_14-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_math_14-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_math_14 pg_math_14-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_math_14-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_math_14 pg_math_14-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_math_14-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_math_14 pg_math_14-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_math_14-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_math_14 pg_math_14-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_math_14-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_math_14 pg_math_14-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_math_14-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 60.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 59.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 60.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 60.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 68.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 67.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-math postgresql-14-pg-math_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 63.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-math/postgresql-14-pg-math_1.1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_math` using `pig build`:

```bash
pig build pkg pg_math         # build RPM / DEB packages
```


## Install

You can install `pg_math` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_math;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_math -v 18  # PG 18
pig ext install -y pg_math -v 17  # PG 17
pig ext install -y pg_math -v 16  # PG 16
pig ext install -y pg_math -v 15  # PG 15
pig ext install -y pg_math -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_math_18       # PG 18
dnf install -y pg_math_17       # PG 17
dnf install -y pg_math_16       # PG 16
dnf install -y pg_math_15       # PG 15
dnf install -y pg_math_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-math   # PG 18
apt install -y postgresql-17-pg-math   # PG 17
apt install -y postgresql-16-pg-math   # PG 16
apt install -y postgresql-15-pg-math   # PG 15
apt install -y postgresql-14-pg-math   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_math;
```



## Usage

> [pg_math: statistical distribution functions using GSL for PostgreSQL](https://github.com/chanukyasds/pg_math)

Provides CDF (cumulative distribution) and RDF (random distribution) functions for 31 statistical distributions using the GNU Scientific Library (GSL).

```sql
CREATE EXTENSION pg_math;
```

### Supported Distributions

Gaussian, Unit Gaussian, Gaussian Tail, Bivariate Gaussian, F-Distribution, Exponential, Laplace, Exponential Power, Cauchy, Rayleigh, Rayleigh Tail, Landau, Gamma, Flat (Uniform), Lognormal, Chi-squared, T-Distribution, Beta, Logistic, Pareto, Weibull, Type-1 Gumbel, Type-2 Gumbel, Poisson, Bernoulli, Binomial, Negative Binomial, Pascal, Geometric, Hypergeometric, Logarithmic.

### Function Naming Convention

- `rdf_<distribution>(...)` -- random distribution function (PDF value)
- `cdf_<distribution>_p(...)` -- cumulative distribution P-value
- `cdf_<distribution>_q(...)` -- cumulative distribution Q-value (1-P)
- `cdf_<distribution>_pinv(...)` -- inverse CDF P
- `cdf_<distribution>_qinv(...)` -- inverse CDF Q

### Examples

```sql
-- Gaussian distribution
SELECT rdf_gaussian(1.5, 2.0);            -- PDF at x=1.5, sigma=2.0
SELECT cdf_gaussian_p(1.5, 2.0);          -- CDF P-value

-- Unit Gaussian (standard normal)
SELECT cdf_unit_gaussian_p(1.96);          -- ~0.975

-- Chi-squared distribution
SELECT cdf_chisq_p(3.84, 1.0);            -- ~0.95

-- T-distribution
SELECT cdf_tdist_pinv(0.975, 10.0);       -- critical value for 95% CI with df=10

-- Poisson distribution
SELECT rdf_poisson(5, 3.0);               -- P(X=5) with lambda=3

-- Beta distribution
SELECT rdf_beta(0.5, 2.0, 5.0);           -- PDF at x=0.5, a=2, b=5
```
