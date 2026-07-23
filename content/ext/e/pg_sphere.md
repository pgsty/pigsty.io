---
title: "pg_sphere"
linkTitle: "pg_sphere"
description: "spherical objects with useful functions, operators and index support"
weight: 3650
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgrespro/pgsphere">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgrespro/pgsphere</div>
    <div class="ext-card__desc">https://github.com/postgrespro/pgsphere</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsphere-1.5.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsphere-1.5.2.tar.gz</div>
    <div class="ext-card__desc">pgsphere-1.5.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgsphere`**](/ext/e/pg_sphere) | `1.5.2` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3650  | [**`pg_sphere`**](/ext/e/pg_sphere) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`q3c`](/ext/e/q3c) [`earthdistance`](/ext/e/earthdistance) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.5.2` | {{< pgvers "18,17,16,15,14" >}} | `pgsphere` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.2` | {{< pgvers "18,17,16,15,14" >}} | `pgsphere_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgsphere` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 |
| el8.aarch64 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 |
| el9.x86_64 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 |
| el9.aarch64 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 |
| el10.x86_64 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 |
| el10.aarch64 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 | AVAIL PIGSTY 1.5.2 1 |
| d12.x86_64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| d12.aarch64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| d13.x86_64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| d13.aarch64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| u22.x86_64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| u22.aarch64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| u24.x86_64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| u24.aarch64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| u26.x86_64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
| u26.aarch64 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 | AVAIL PGDG 1.5.2 1 |
@ el8.x86_64 18 pgsphere_18 pgsphere_18-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 125.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsphere_18-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgsphere_18 pgsphere_18-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 122.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsphere_18-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgsphere_18 pgsphere_18-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 118.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsphere_18-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgsphere_18 pgsphere_18-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 116.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsphere_18-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgsphere_18 pgsphere_18-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 119.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsphere_18-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgsphere_18 pgsphere_18-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 119.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsphere_18-1.5.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg12+1_amd64.deb pgdg 1.5.2 405.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg12+1_arm64.deb pgdg 1.5.2 400.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg13+1_amd64.deb pgdg 1.5.2 405.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg13+1_arm64.deb pgdg 1.5.2 402.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb pgdg 1.5.2 413.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb pgdg 1.5.2 407.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb pgdg 1.5.2 406.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb pgdg 1.5.2 401.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb pgdg 1.5.2 404.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgsphere postgresql-18-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb pgdg 1.5.2 400.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-18-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgsphere_17 pgsphere_17-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 125.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsphere_17-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgsphere_17 pgsphere_17-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 122.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsphere_17-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgsphere_17 pgsphere_17-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 118.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsphere_17-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgsphere_17 pgsphere_17-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 116.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsphere_17-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgsphere_17 pgsphere_17-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 119.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsphere_17-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgsphere_17 pgsphere_17-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 119.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsphere_17-1.5.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg12+1_amd64.deb pgdg 1.5.2 404.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg12+1_arm64.deb pgdg 1.5.2 400.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg13+1_amd64.deb pgdg 1.5.2 405.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg13+1_arm64.deb pgdg 1.5.2 402.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb pgdg 1.5.2 434.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb pgdg 1.5.2 427.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb pgdg 1.5.2 406.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb pgdg 1.5.2 401.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb pgdg 1.5.2 404.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgsphere postgresql-17-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb pgdg 1.5.2 400.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-17-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgsphere_16 pgsphere_16-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 125.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsphere_16-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgsphere_16 pgsphere_16-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 122.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsphere_16-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgsphere_16 pgsphere_16-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 118.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsphere_16-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgsphere_16 pgsphere_16-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 116.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsphere_16-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgsphere_16 pgsphere_16-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 119.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsphere_16-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgsphere_16 pgsphere_16-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 119.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsphere_16-1.5.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg12+1_amd64.deb pgdg 1.5.2 404.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg12+1_arm64.deb pgdg 1.5.2 400.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg13+1_amd64.deb pgdg 1.5.2 405.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg13+1_arm64.deb pgdg 1.5.2 402.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb pgdg 1.5.2 433.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb pgdg 1.5.2 427.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb pgdg 1.5.2 406.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb pgdg 1.5.2 401.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb pgdg 1.5.2 405.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgsphere postgresql-16-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb pgdg 1.5.2 400.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-16-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgsphere_15 pgsphere_15-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 127.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsphere_15-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgsphere_15 pgsphere_15-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 124.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsphere_15-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgsphere_15 pgsphere_15-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 114.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsphere_15-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgsphere_15 pgsphere_15-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 114.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsphere_15-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgsphere_15 pgsphere_15-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsphere_15-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgsphere_15 pgsphere_15-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 116.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsphere_15-1.5.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg12+1_amd64.deb pgdg 1.5.2 405.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg12+1_arm64.deb pgdg 1.5.2 401.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg13+1_amd64.deb pgdg 1.5.2 406.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg13+1_arm64.deb pgdg 1.5.2 403.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb pgdg 1.5.2 434.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb pgdg 1.5.2 428.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb pgdg 1.5.2 404.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb pgdg 1.5.2 402.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb pgdg 1.5.2 402.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgsphere postgresql-15-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb pgdg 1.5.2 399.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-15-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgsphere_14 pgsphere_14-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 127.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsphere_14-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgsphere_14 pgsphere_14-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 124.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsphere_14-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgsphere_14 pgsphere_14-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 114.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsphere_14-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgsphere_14 pgsphere_14-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 114.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsphere_14-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgsphere_14 pgsphere_14-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsphere_14-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgsphere_14 pgsphere_14-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 116.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsphere_14-1.5.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg12+1_amd64.deb pgdg 1.5.2 406.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg12+1_arm64.deb pgdg 1.5.2 400.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg13+1_amd64.deb pgdg 1.5.2 406.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg13+1_arm64.deb pgdg 1.5.2 403.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb pgdg 1.5.2 433.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb pgdg 1.5.2 428.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb pgdg 1.5.2 405.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb pgdg 1.5.2 402.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb pgdg 1.5.2 402.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgsphere postgresql-14-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb pgdg 1.5.2 399.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsphere/postgresql-14-pgsphere_1.5.2-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pgsphere` using `pig build`:

```bash
pig build pkg pgsphere         # build RPM packages
```


## Install

You can install `pgsphere` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgsphere;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgsphere -v 18  # PG 18
pig ext install -y pgsphere -v 17  # PG 17
pig ext install -y pgsphere -v 16  # PG 16
pig ext install -y pgsphere -v 15  # PG 15
pig ext install -y pgsphere -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgsphere_18       # PG 18
dnf install -y pgsphere_17       # PG 17
dnf install -y pgsphere_16       # PG 16
dnf install -y pgsphere_15       # PG 15
dnf install -y pgsphere_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgsphere   # PG 18
apt install -y postgresql-17-pgsphere   # PG 17
apt install -y postgresql-16-pgsphere   # PG 16
apt install -y postgresql-15-pgsphere   # PG 15
apt install -y postgresql-14-pgsphere   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_sphere;
```




## Usage

> [pg_sphere: spherical geometry data types and operations for PostgreSQL](https://github.com/postgrespro/pgsphere)

The `pg_sphere` extension provides spherical geometry types and operations, useful for astronomy, geospatial, and other applications involving spherical coordinates.

```sql
CREATE EXTENSION pg_sphere;
```

### Data Types

- **Spherical point (`spoint`)**: A location on a sphere (longitude, latitude in radians)
- **Spherical circle (`scircle`)**: A circular region defined by center and radius
- **Spherical line (`sline`)**: A great circle segment
- **Spherical ellipse (`sellipse`)**: An elliptical region on a sphere
- **Spherical polygon (`spoly`)**: A multi-vertex shape on a sphere
- **Spherical path (`spath`)**: A connected sequence of points
- **Spherical box (`sbox`)**: A bounding box on a sphere

### Core Operations

- Membership testing (point in polygon, point in circle, etc.)
- Overlap detection between spherical objects
- Circumference and area calculations
- Object rotation using Euler angles for coordinate transformations
- Distance calculations between spherical objects

### Index Support

- **GiST index**: R-tree implementation for efficient spatial queries
- **BRIN index**: Block range indexing for large datasets

### Input/Output

The extension handles input and output in various coordinate formats commonly used in astronomy and geospatial applications, including degrees, radians, and HMS/DMS notation.

```sql
-- Create a spherical point (RA, Dec)
SELECT spoint '(10.25d, 45.5d)';

-- Create a spherical circle (center, radius)
SELECT scircle '<(10.25d, 45.5d), 1d>';

-- Check containment
SELECT spoint '(10.25d, 45.5d)' @ scircle '<(10d, 45d), 2d>';
```
