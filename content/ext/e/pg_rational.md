---
title: "pg_rational"
linkTitle: "pg_rational"
description: "bigint fractions"
weight: 3720
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/begriffs/pg_rational">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">begriffs/pg_rational</div>
    <div class="ext-card__desc">https://github.com/begriffs/pg_rational</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_rational-0.0.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_rational-0.0.3.tar.gz</div>
    <div class="ext-card__desc">pg_rational-0.0.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_rational`**](/ext/e/pg_rational) | `0.0.3` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3720  | [**`pg_rational`**](/ext/e/pg_rational) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`unit`](/ext/e/unit) [`pgmp`](/ext/e/pgmp) [`numeral`](/ext/e/numeral) [`uint`](/ext/e/uint) [`uint128`](/ext/e/uint128) [`seg`](/ext/e/seg) [`cube`](/ext/e/cube) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_rational` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_rational_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-rational` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d12.x86_64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| d12.aarch64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| d13.x86_64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| d13.aarch64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| u22.x86_64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| u22.aarch64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| u24.x86_64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| u24.aarch64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| u26.x86_64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
| u26.aarch64 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 | AVAIL PGDG 0.0.3 2 |
@ el8.x86_64 18 pg_rational_18 pg_rational_18-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 20.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_18-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_rational_18 pg_rational_18-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_18-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_rational_18 pg_rational_18-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_18-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_rational_18 pg_rational_18-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_18-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_rational_18 pg_rational_18-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_18-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_rational_18 pg_rational_18-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_18-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg12+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg12+1_arm64.deb pgdg 0.0.3 24.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 24.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg13+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg13+1_arm64.deb pgdg 0.0.3 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg22.04+1_amd64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg22.04+1_arm64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 23.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg24.04+1_amd64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg24.04+1_arm64.deb pgdg 0.0.3 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg26.04+1_amd64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.3-1.pgdg26.04+1_arm64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_rational_17 pg_rational_17-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 20.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_17-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_rational_17 pg_rational_17-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_17-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_rational_17 pg_rational_17-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_17-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_rational_17 pg_rational_17-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_17-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_rational_17 pg_rational_17-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_17-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_rational_17 pg_rational_17-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_17-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg12+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg12+1_arm64.deb pgdg 0.0.3 24.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg13+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg13+1_arm64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg22.04+1_amd64.deb pgdg 0.0.3 25.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg22.04+1_arm64.deb pgdg 0.0.3 25.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg24.04+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg24.04+1_arm64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg26.04+1_amd64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.3-1.pgdg26.04+1_arm64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_rational_16 pg_rational_16-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 20.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_16-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_rational_16 pg_rational_16-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_16-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_rational_16 pg_rational_16-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_16-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_rational_16 pg_rational_16-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_16-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_rational_16 pg_rational_16-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_16-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_rational_16 pg_rational_16-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_16-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg12+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg12+1_arm64.deb pgdg 0.0.3 24.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg13+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg13+1_arm64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg22.04+1_amd64.deb pgdg 0.0.3 25.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg22.04+1_arm64.deb pgdg 0.0.3 25.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg24.04+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg24.04+1_arm64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg26.04+1_amd64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.3-1.pgdg26.04+1_arm64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_rational_15 pg_rational_15-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 20.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_15-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_rational_15 pg_rational_15-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_15-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_rational_15 pg_rational_15-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_15-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_rational_15 pg_rational_15-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_15-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_rational_15 pg_rational_15-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_15-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_rational_15 pg_rational_15-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_15-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg12+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg12+1_arm64.deb pgdg 0.0.3 24.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg13+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg13+1_arm64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg22.04+1_amd64.deb pgdg 0.0.3 25.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg22.04+1_arm64.deb pgdg 0.0.3 25.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg24.04+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg24.04+1_arm64.deb pgdg 0.0.3 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg26.04+1_amd64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.3-1.pgdg26.04+1_arm64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_rational_14 pg_rational_14-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 20.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_14-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_rational_14 pg_rational_14-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_14-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_rational_14 pg_rational_14-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_14-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_rational_14 pg_rational_14-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_14-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_rational_14 pg_rational_14-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_14-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_rational_14 pg_rational_14-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 19.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_14-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg12+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg12+1_arm64.deb pgdg 0.0.3 24.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg13+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg13+1_arm64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg22.04+1_amd64.deb pgdg 0.0.3 25.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg22.04+1_arm64.deb pgdg 0.0.3 25.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg24.04+1_amd64.deb pgdg 0.0.3 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg24.04+1_arm64.deb pgdg 0.0.3 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg26.04+1_amd64.deb pgdg 0.0.3 24.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.3-1.pgdg26.04+1_arm64.deb pgdg 0.0.3 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_rational` using `pig build`:

```bash
pig build pkg pg_rational         # build RPM packages
```


## Install

You can install `pg_rational` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_rational;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_rational -v 18  # PG 18
pig ext install -y pg_rational -v 17  # PG 17
pig ext install -y pg_rational -v 16  # PG 16
pig ext install -y pg_rational -v 15  # PG 15
pig ext install -y pg_rational -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_rational_18       # PG 18
dnf install -y pg_rational_17       # PG 17
dnf install -y pg_rational_16       # PG 16
dnf install -y pg_rational_15       # PG 15
dnf install -y pg_rational_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-rational   # PG 18
apt install -y postgresql-17-rational   # PG 17
apt install -y postgresql-16-rational   # PG 16
apt install -y postgresql-15-rational   # PG 15
apt install -y postgresql-14-rational   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_rational;
```

## Usage

Sources:

- [pg_rational v0.0.3 README](https://github.com/begriffs/pg_rational/blob/v0.0.3/README.md)
- [pg_rational v0.0.3 control file](https://github.com/begriffs/pg_rational/blob/v0.0.3/pg_rational.control)
- [Changes through v0.0.3](https://github.com/begriffs/pg_rational/compare/v0.0.2...v0.0.3)

`pg_rational` provides exact fractional arithmetic in a fixed 64-bit PostgreSQL type. Use `rational` for values that must remain exact and for user-defined row ordering where new positions need to be inserted between existing positions without renumbering the table.

### Exact Arithmetic

```sql
CREATE EXTENSION pg_rational;

SELECT 1::rational / 3 * 3 = 1;
SELECT '1/3'::rational + '2/7'::rational;
SELECT rational_simplify('36/12');
```

The extension detects arithmetic overflow instead of silently wrapping. `ratt` is a helper type for tuple coercion:

```sql
SELECT 1 + (i, i + 1)::ratt
FROM generate_series(1, 5) AS i;
```

Conversions are available between integer values, floating-point values, and rationals. Converting a float finds a rational approximation; converting a rational to float loses exactness.

### Stable User-Defined Ordering

```sql
CREATE SEQUENCE todos_seq AS integer;

CREATE TABLE todos (
  prio rational UNIQUE DEFAULT nextval('todos_seq')::integer,
  what text NOT NULL
);

INSERT INTO todos (what)
VALUES ('install extension'), ('read about it'), ('try it');

UPDATE todos
SET prio = rational_intermediate(1, 2)
WHERE what = 'try it';

SELECT * FROM todos ORDER BY prio;
```

Use an `integer` sequence and cast `nextval()` explicitly. The extension intentionally has no implicit `bigint`-to-`rational` conversion because its numerator is limited to the PostgreSQL `integer` range.

### Indexes, Aggregates, and Caveats

- `rational` supports btree and hash operator classes, so it can be used in ordered and equality indexes.
- The extension supplies `min(rational)`, `max(rational)`, and `sum(rational)` aggregates in addition to arithmetic and comparison operators.
- `rational_intermediate(lower, upper)` walks a Stern-Brocot tree to find a fraction between its arguments. Extremely narrow ranges take longer, and v0.0.3 has no maximum-depth parameter; do not expose attacker-controlled pathological bounds without a statement timeout.
- Values are exact only while arithmetic stays within the type's numerator and denominator limits. Handle overflow errors rather than falling back silently to floating point.
- Version 0.0.3 is primarily a build-compatibility and documentation release; the user-facing rational arithmetic surface remains stable.
