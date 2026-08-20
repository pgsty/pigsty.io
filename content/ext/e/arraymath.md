---
title: "arraymath"
linkTitle: "arraymath"
description: "Array math and operators that work element by element on the contents of arrays"
weight: 4770
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pramsey/pgsql-arraymath">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pramsey/pgsql-arraymath</div>
    <div class="ext-card__desc">https://github.com/pramsey/pgsql-arraymath</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsql-arraymath-1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsql-arraymath-1.1.tar.gz</div>
    <div class="ext-card__desc">pgsql-arraymath-1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_arraymath`**](/ext/e/arraymath) | `1.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4770  | [**`arraymath`**](/ext/e/arraymath) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`intarray`](/ext/e/intarray) [`floatvec`](/ext/e/floatvec) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`aggs_for_arrays`](/ext/e/aggs_for_arrays) [`collection`](/ext/e/collection) [`hstore`](/ext/e/hstore) [`pgbson`](/ext/e/pgbson) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_arraymath` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_arraymath_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-arraymath` | - |
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
@ el8.x86_64 18 pg_arraymath_18 pg_arraymath_18-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_arraymath_18-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_arraymath_18 pg_arraymath_18-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 19.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_arraymath_18-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_arraymath_18 pg_arraymath_18-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_arraymath_18-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_arraymath_18 pg_arraymath_18-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_arraymath_18-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_arraymath_18 pg_arraymath_18-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_arraymath_18-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_arraymath_18 pg_arraymath_18-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_arraymath_18-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 24.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 25.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 26.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 26.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 26.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 26.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 26.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-arraymath postgresql-18-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 26.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-18-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_arraymath_17 pg_arraymath_17-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_arraymath_17-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_arraymath_17 pg_arraymath_17-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_arraymath_17-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_arraymath_17 pg_arraymath_17-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_arraymath_17-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_arraymath_17 pg_arraymath_17-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_arraymath_17-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_arraymath_17 pg_arraymath_17-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_arraymath_17-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_arraymath_17 pg_arraymath_17-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_arraymath_17-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 25.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 24.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 25.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 25.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 27.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 27.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 26.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 26.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 26.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-arraymath postgresql-17-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 26.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-17-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_arraymath_16 pg_arraymath_16-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_arraymath_16-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_arraymath_16 pg_arraymath_16-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_arraymath_16-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_arraymath_16 pg_arraymath_16-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_arraymath_16-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_arraymath_16 pg_arraymath_16-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_arraymath_16-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_arraymath_16 pg_arraymath_16-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_arraymath_16-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_arraymath_16 pg_arraymath_16-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_arraymath_16-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 24.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 25.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 27.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 27.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 26.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 26.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 26.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-arraymath postgresql-16-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 26.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-16-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_arraymath_15 pg_arraymath_15-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_arraymath_15-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_arraymath_15 pg_arraymath_15-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 19.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_arraymath_15-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_arraymath_15 pg_arraymath_15-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_arraymath_15-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_arraymath_15 pg_arraymath_15-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_arraymath_15-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_arraymath_15 pg_arraymath_15-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_arraymath_15-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_arraymath_15 pg_arraymath_15-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_arraymath_15-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 24.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 24.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 24.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 27.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 26.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-arraymath postgresql-15-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-15-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_arraymath_14 pg_arraymath_14-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_arraymath_14-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_arraymath_14 pg_arraymath_14-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 19.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_arraymath_14-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_arraymath_14 pg_arraymath_14-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_arraymath_14-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_arraymath_14 pg_arraymath_14-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_arraymath_14-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_arraymath_14 pg_arraymath_14-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_arraymath_14-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_arraymath_14 pg_arraymath_14-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_arraymath_14-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 24.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 24.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 24.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 24.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 27.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 25.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-arraymath postgresql-14-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-arraymath/postgresql-14-pg-arraymath_1.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_arraymath` using `pig build`:

```bash
pig build pkg pg_arraymath         # build RPM / DEB packages
```


## Install

You can install `pg_arraymath` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_arraymath;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_arraymath -v 18  # PG 18
pig ext install -y pg_arraymath -v 17  # PG 17
pig ext install -y pg_arraymath -v 16  # PG 16
pig ext install -y pg_arraymath -v 15  # PG 15
pig ext install -y pg_arraymath -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_arraymath_18       # PG 18
dnf install -y pg_arraymath_17       # PG 17
dnf install -y pg_arraymath_16       # PG 16
dnf install -y pg_arraymath_15       # PG 15
dnf install -y pg_arraymath_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-arraymath   # PG 18
apt install -y postgresql-17-pg-arraymath   # PG 17
apt install -y postgresql-16-pg-arraymath   # PG 16
apt install -y postgresql-15-pg-arraymath   # PG 15
apt install -y postgresql-14-pg-arraymath   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION arraymath;
```




## Usage

> [arraymath: element-by-element array operations for PostgreSQL](https://github.com/pramsey/pgsql-arraymath)

Provides element-by-element operators and utility functions for integer, float, and numeric arrays.

```sql
CREATE EXTENSION arraymath;
```

### Operators

All operators are prefixed with `@` to indicate element-by-element behavior. Works with array-vs-array (same length or cycling) and array-vs-scalar.

| Operator | Description | Returns |
|---|---|---|
| `@=` | Element-by-element equality | `boolean[]` |
| `@<` | Element-by-element less than | `boolean[]` |
| `@>` | Element-by-element greater than | `boolean[]` |
| `@<=` | Element-by-element less than or equals | `boolean[]` |
| `@>=` | Element-by-element greater than or equals | `boolean[]` |
| `@+` | Element-by-element addition | same type |
| `@-` | Element-by-element subtraction | same type |
| `@*` | Element-by-element multiplication | same type |
| `@/` | Element-by-element division | same type |

### Functions

| Function | Description |
|---|---|
| `array_sum(anyarray)` | Sum of all elements |
| `array_avg(anyarray)` | Average of all elements |
| `array_min(anyarray)` | Minimum element |
| `array_max(anyarray)` | Maximum element |
| `array_median(anyarray)` | Median element |
| `array_sort(anyarray)` | Sort ascending |
| `array_rsort(anyarray)` | Sort descending |

### Examples

```sql
-- Array vs scalar
SELECT ARRAY[1,2,3,4] @< 4;             -- {t,t,t,f}
SELECT ARRAY[3.4,5.6,7.6] @* 8.1;       -- {27.54,45.36,61.56}

-- Array vs array (cycling shorter array)
SELECT ARRAY[1,2,3,4,5,6] @* ARRAY[1,2]; -- {1,4,3,8,5,12}
SELECT ARRAY[1,2,3] @= ARRAY[3,2,1];     -- {f,t,f}

-- Utility functions
SELECT array_sort(ARRAY[9,1,8,2,7]);     -- {1,2,7,8,9}
SELECT array_sum(ARRAY[1,2,3,4,5]);      -- 15
SELECT array_median(ARRAY[1,2,3,4,5]);   -- 3
```
