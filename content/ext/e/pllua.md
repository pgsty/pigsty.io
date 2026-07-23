---
title: "pllua"
linkTitle: "pllua"
description: "Lua as a procedural language"
weight: 3020
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pllua/pllua">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pllua/pllua</div>
    <div class="ext-card__desc">https://github.com/pllua/pllua</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pllua`**](/ext/e/pllua) | `2.0.12` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3020  | [**`pllua`**](/ext/e/pllua) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3021  | [**`hstore_pllua`**](/ext/e/hstore_pllua) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 3030  | [**`plluau`**](/ext/e/plluau) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3031  | [**`hstore_plluau`**](/ext/e/hstore_plluau) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`plperl`](/ext/e/plperl) [`plpgsql`](/ext/e/plpgsql) [`plpython3u`](/ext/e/plpython3u) [`pg_tle`](/ext/e/pg_tle) [`plv8`](/ext/e/plv8) [`pljava`](/ext/e/pljava) [`plperlu`](/ext/e/plperlu) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`hstore_pllua`](/ext/e/hstore_pllua) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `2.0.12` | {{< pgvers "18,17,16,15,14" >}} | `pllua` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.12` | {{< pgvers "18,17,16,15,14" >}} | `pllua_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.12` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pllua` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 |
| el8.aarch64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 4 | AVAIL PIGSTY 2.0.12 3 |
| el9.aarch64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 2 |
| el10.x86_64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 |
| el10.aarch64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 |
| d12.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| d12.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| d13.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| d13.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u22.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u22.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u24.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u24.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u26.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u26.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
@ el8.x86_64 18 pllua_18 pllua_18-2.0.12-7PIGSTY.el8.x86_64.rpm pigsty 2.0.12 133.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pllua_18-2.0.12-7PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pllua_18 pllua_18-2.0.12-7PIGSTY.el8.aarch64.rpm pigsty 2.0.12 125.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pllua_18-2.0.12-7PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pllua_18 pllua_18-2.0.12-7PIGSTY.el9.x86_64.rpm pigsty 2.0.12 128.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pllua_18-2.0.12-7PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pllua_18 pllua_18-2.0.12-7PIGSTY.el9.aarch64.rpm pigsty 2.0.12 123.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pllua_18-2.0.12-7PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pllua_18 pllua_18-2.0.12-7PIGSTY.el10.x86_64.rpm pigsty 2.0.12 130.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pllua_18-2.0.12-7PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pllua_18 pllua_18-2.0.12-7PIGSTY.el10.aarch64.rpm pigsty 2.0.12 126.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pllua_18-2.0.12-7PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg12+1_amd64.deb pgdg 2.0.12 347.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg12+1_arm64.deb pgdg 2.0.12 336.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg13+1_amd64.deb pgdg 2.0.12 348.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg13+1_arm64.deb pgdg 2.0.12 336.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg22.04+1_amd64.deb pgdg 2.0.12 354.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg22.04+1_arm64.deb pgdg 2.0.12 341.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg24.04+1_amd64.deb pgdg 2.0.12 347.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg24.04+1_arm64.deb pgdg 2.0.12 335.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg26.04+1_amd64.deb pgdg 2.0.12 345.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pllua postgresql-18-pllua_2.0.12-7.pgdg26.04+1_arm64.deb pgdg 2.0.12 332.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-18-pllua_2.0.12-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pllua_17 pllua_17-2.0.12-7PIGSTY.el8.x86_64.rpm pigsty 2.0.12 133.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pllua_17-2.0.12-7PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pllua_17 pllua_17-2.0.12-3PGDG.rhel8.x86_64.rpm pgdg 2.0.12 119.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pllua_17-2.0.12-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pllua_17 pllua_17-2.0.12-7PIGSTY.el8.aarch64.rpm pigsty 2.0.12 125.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pllua_17-2.0.12-7PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pllua_17 pllua_17-2.0.12-3PGDG.rhel8.aarch64.rpm pgdg 2.0.12 110.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pllua_17-2.0.12-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pllua_17 pllua_17-2.0.12-7PIGSTY.el9.x86_64.rpm pigsty 2.0.12 128.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pllua_17-2.0.12-7PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pllua_17 pllua_17-2.0.12-6PGDG.rhel9.8.x86_64.rpm pgdg 2.0.12 120.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pllua_17-2.0.12-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pllua_17 pllua_17-2.0.12-3PGDG.rhel9.x86_64.rpm pgdg 2.0.12 120.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pllua_17-2.0.12-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pllua_17 pllua_17-2.0.12-7PIGSTY.el9.aarch64.rpm pigsty 2.0.12 123.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pllua_17-2.0.12-7PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pllua_17 pllua_17-2.0.12-6PGDG.rhel9.8.aarch64.rpm pgdg 2.0.12 115.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pllua_17-2.0.12-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pllua_17 pllua_17-2.0.12-3PGDG.rhel9.aarch64.rpm pgdg 2.0.12 115.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pllua_17-2.0.12-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pllua_17 pllua_17-2.0.12-7PIGSTY.el10.x86_64.rpm pigsty 2.0.12 130.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pllua_17-2.0.12-7PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pllua_17 pllua_17-2.0.12-6PGDG.rhel10.2.x86_64.rpm pgdg 2.0.12 122.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pllua_17-2.0.12-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pllua_17 pllua_17-2.0.12-4PGDG.rhel10.x86_64.rpm pgdg 2.0.12 122.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pllua_17-2.0.12-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pllua_17 pllua_17-2.0.12-7PIGSTY.el10.aarch64.rpm pigsty 2.0.12 126.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pllua_17-2.0.12-7PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pllua_17 pllua_17-2.0.12-6PGDG.rhel10.2.aarch64.rpm pgdg 2.0.12 117.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pllua_17-2.0.12-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pllua_17 pllua_17-2.0.12-4PGDG.rhel10.aarch64.rpm pgdg 2.0.12 117.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pllua_17-2.0.12-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg12+1_amd64.deb pgdg 2.0.12 347.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg12+1_arm64.deb pgdg 2.0.12 335.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg13+1_amd64.deb pgdg 2.0.12 347.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg13+1_arm64.deb pgdg 2.0.12 336.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg22.04+1_amd64.deb pgdg 2.0.12 391.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg22.04+1_arm64.deb pgdg 2.0.12 379.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg24.04+1_amd64.deb pgdg 2.0.12 347.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg24.04+1_arm64.deb pgdg 2.0.12 335.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg26.04+1_amd64.deb pgdg 2.0.12 344.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pllua postgresql-17-pllua_2.0.12-7.pgdg26.04+1_arm64.deb pgdg 2.0.12 331.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-17-pllua_2.0.12-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pllua_16 pllua_16-2.0.12-7PIGSTY.el8.x86_64.rpm pigsty 2.0.12 133.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pllua_16-2.0.12-7PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pllua_16 pllua_16-2.0.12-1PGDG.rhel8.x86_64.rpm pgdg 2.0.12 119.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pllua_16-2.0.12-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pllua_16 pllua_16-2.0.12-7PIGSTY.el8.aarch64.rpm pigsty 2.0.12 125.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pllua_16-2.0.12-7PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pllua_16 pllua_16-2.0.12-1PGDG.rhel8.aarch64.rpm pgdg 2.0.12 110.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pllua_16-2.0.12-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pllua_16 pllua_16-2.0.12-7PIGSTY.el9.x86_64.rpm pigsty 2.0.12 128.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pllua_16-2.0.12-7PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pllua_16 pllua_16-2.0.12-6PGDG.rhel9.8.x86_64.rpm pgdg 2.0.12 120.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pllua_16-2.0.12-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pllua_16 pllua_16-2.0.12-1PGDG.rhel9.x86_64.rpm pgdg 2.0.12 120.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pllua_16-2.0.12-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pllua_16 pllua_16-2.0.12-7PIGSTY.el9.aarch64.rpm pigsty 2.0.12 123.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pllua_16-2.0.12-7PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pllua_16 pllua_16-2.0.12-6PGDG.rhel9.8.aarch64.rpm pgdg 2.0.12 115.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pllua_16-2.0.12-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pllua_16 pllua_16-2.0.12-1PGDG.rhel9.aarch64.rpm pgdg 2.0.12 115.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pllua_16-2.0.12-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pllua_16 pllua_16-2.0.12-7PIGSTY.el10.x86_64.rpm pigsty 2.0.12 130.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pllua_16-2.0.12-7PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pllua_16 pllua_16-2.0.12-6PGDG.rhel10.2.x86_64.rpm pgdg 2.0.12 122.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pllua_16-2.0.12-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pllua_16 pllua_16-2.0.12-4PGDG.rhel10.x86_64.rpm pgdg 2.0.12 122.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pllua_16-2.0.12-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pllua_16 pllua_16-2.0.12-7PIGSTY.el10.aarch64.rpm pigsty 2.0.12 126.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pllua_16-2.0.12-7PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pllua_16 pllua_16-2.0.12-6PGDG.rhel10.2.aarch64.rpm pgdg 2.0.12 117.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pllua_16-2.0.12-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pllua_16 pllua_16-2.0.12-4PGDG.rhel10.aarch64.rpm pgdg 2.0.12 117.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pllua_16-2.0.12-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg12+1_amd64.deb pgdg 2.0.12 346.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg12+1_arm64.deb pgdg 2.0.12 335.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg13+1_amd64.deb pgdg 2.0.12 347.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg13+1_arm64.deb pgdg 2.0.12 335.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg22.04+1_amd64.deb pgdg 2.0.12 389.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg22.04+1_arm64.deb pgdg 2.0.12 377.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg24.04+1_amd64.deb pgdg 2.0.12 347.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg24.04+1_arm64.deb pgdg 2.0.12 335.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg26.04+1_amd64.deb pgdg 2.0.12 344.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pllua postgresql-16-pllua_2.0.12-7.pgdg26.04+1_arm64.deb pgdg 2.0.12 331.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-16-pllua_2.0.12-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pllua_15 pllua_15-2.0.12-7PIGSTY.el8.x86_64.rpm pigsty 2.0.12 136.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pllua_15-2.0.12-7PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pllua_15 pllua_15-2.0.11-1.rhel8.x86_64.rpm pgdg 2.0.11 120.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pllua_15-2.0.11-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pllua_15 pllua_15-2.0.10-1.rhel8.x86_64.rpm pgdg 2.0.10 120.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pllua_15-2.0.10-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pllua_15 pllua_15-2.0.12-7PIGSTY.el8.aarch64.rpm pigsty 2.0.12 127.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pllua_15-2.0.12-7PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pllua_15 pllua_15-2.0.12-7PIGSTY.el9.x86_64.rpm pigsty 2.0.12 132.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pllua_15-2.0.12-7PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pllua_15 pllua_15-2.0.12-6PGDG.rhel9.8.x86_64.rpm pgdg 2.0.12 123.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pllua_15-2.0.12-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pllua_15 pllua_15-2.0.11-1.rhel9.x86_64.rpm pgdg 2.0.11 123.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pllua_15-2.0.11-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pllua_15 pllua_15-2.0.10-1.rhel9.x86_64.rpm pgdg 2.0.10 123.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pllua_15-2.0.10-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pllua_15 pllua_15-2.0.12-7PIGSTY.el9.aarch64.rpm pigsty 2.0.12 126.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pllua_15-2.0.12-7PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pllua_15 pllua_15-2.0.12-6PGDG.rhel9.8.aarch64.rpm pgdg 2.0.12 118.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pllua_15-2.0.12-6PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 15 pllua_15 pllua_15-2.0.12-7PIGSTY.el10.x86_64.rpm pigsty 2.0.12 133.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pllua_15-2.0.12-7PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pllua_15 pllua_15-2.0.12-6PGDG.rhel10.2.x86_64.rpm pgdg 2.0.12 125.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pllua_15-2.0.12-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pllua_15 pllua_15-2.0.12-4PGDG.rhel10.x86_64.rpm pgdg 2.0.12 125.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pllua_15-2.0.12-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pllua_15 pllua_15-2.0.12-7PIGSTY.el10.aarch64.rpm pigsty 2.0.12 128.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pllua_15-2.0.12-7PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pllua_15 pllua_15-2.0.12-6PGDG.rhel10.2.aarch64.rpm pgdg 2.0.12 120.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pllua_15-2.0.12-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pllua_15 pllua_15-2.0.12-4PGDG.rhel10.aarch64.rpm pgdg 2.0.12 120.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pllua_15-2.0.12-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg12+1_amd64.deb pgdg 2.0.12 348.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg12+1_arm64.deb pgdg 2.0.12 337.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg13+1_amd64.deb pgdg 2.0.12 349.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg13+1_arm64.deb pgdg 2.0.12 337.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg22.04+1_amd64.deb pgdg 2.0.12 392.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg22.04+1_arm64.deb pgdg 2.0.12 380.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg24.04+1_amd64.deb pgdg 2.0.12 348.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg24.04+1_arm64.deb pgdg 2.0.12 337.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg26.04+1_amd64.deb pgdg 2.0.12 346.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pllua postgresql-15-pllua_2.0.12-7.pgdg26.04+1_arm64.deb pgdg 2.0.12 333.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-15-pllua_2.0.12-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pllua_14 pllua_14-2.0.12-7PIGSTY.el8.x86_64.rpm pigsty 2.0.12 136.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pllua_14-2.0.12-7PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pllua_14 pllua_14-2.0.11-1.rhel8.x86_64.rpm pgdg 2.0.11 121.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pllua_14-2.0.11-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pllua_14 pllua_14-2.0.10-1.rhel8.x86_64.rpm pgdg 2.0.10 120.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pllua_14-2.0.10-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pllua_14 pllua_14-2.0.12-7PIGSTY.el8.aarch64.rpm pigsty 2.0.12 127.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pllua_14-2.0.12-7PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pllua_14 pllua_14-2.0.12-7PIGSTY.el9.x86_64.rpm pigsty 2.0.12 132.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pllua_14-2.0.12-7PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pllua_14 pllua_14-2.0.12-6PGDG.rhel9.8.x86_64.rpm pgdg 2.0.12 124.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pllua_14-2.0.12-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pllua_14 pllua_14-2.0.11-1.rhel9.x86_64.rpm pgdg 2.0.11 123.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pllua_14-2.0.11-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pllua_14 pllua_14-2.0.12-7PIGSTY.el9.aarch64.rpm pigsty 2.0.12 126.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pllua_14-2.0.12-7PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pllua_14 pllua_14-2.0.12-6PGDG.rhel9.8.aarch64.rpm pgdg 2.0.12 118.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pllua_14-2.0.12-6PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 14 pllua_14 pllua_14-2.0.12-7PIGSTY.el10.x86_64.rpm pigsty 2.0.12 133.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pllua_14-2.0.12-7PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pllua_14 pllua_14-2.0.12-6PGDG.rhel10.2.x86_64.rpm pgdg 2.0.12 125.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pllua_14-2.0.12-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pllua_14 pllua_14-2.0.12-4PGDG.rhel10.x86_64.rpm pgdg 2.0.12 125.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pllua_14-2.0.12-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pllua_14 pllua_14-2.0.12-7PIGSTY.el10.aarch64.rpm pigsty 2.0.12 128.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pllua_14-2.0.12-7PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pllua_14 pllua_14-2.0.12-6PGDG.rhel10.2.aarch64.rpm pgdg 2.0.12 120.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pllua_14-2.0.12-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pllua_14 pllua_14-2.0.12-4PGDG.rhel10.aarch64.rpm pgdg 2.0.12 120.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pllua_14-2.0.12-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg12+1_amd64.deb pgdg 2.0.12 348.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg12+1_arm64.deb pgdg 2.0.12 336.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg13+1_amd64.deb pgdg 2.0.12 349.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg13+1_arm64.deb pgdg 2.0.12 337.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg22.04+1_amd64.deb pgdg 2.0.12 388.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg22.04+1_arm64.deb pgdg 2.0.12 375.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg24.04+1_amd64.deb pgdg 2.0.12 348.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg24.04+1_arm64.deb pgdg 2.0.12 336.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg26.04+1_amd64.deb pgdg 2.0.12 346.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pllua postgresql-14-pllua_2.0.12-7.pgdg26.04+1_arm64.deb pgdg 2.0.12 333.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pllua/postgresql-14-pllua_2.0.12-7.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pllua` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pllua;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pllua -v 18  # PG 18
pig ext install -y pllua -v 17  # PG 17
pig ext install -y pllua -v 16  # PG 16
pig ext install -y pllua -v 15  # PG 15
pig ext install -y pllua -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pllua_18       # PG 18
dnf install -y pllua_17       # PG 17
dnf install -y pllua_16       # PG 16
dnf install -y pllua_15       # PG 15
dnf install -y pllua_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pllua   # PG 18
apt install -y postgresql-17-pllua   # PG 17
apt install -y postgresql-16-pllua   # PG 16
apt install -y postgresql-15-pllua   # PG 15
apt install -y postgresql-14-pllua   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pllua;
```




## Usage

> [pllua: Lua as a procedural language](https://github.com/pllua/pllua)

`pllua` enables writing PostgreSQL functions in Lua (5.3, 5.4, or LuaJIT 2.1).

```sql
CREATE EXTENSION pllua;
```

### Create Functions

```sql
CREATE FUNCTION lua_max(a integer, b integer) RETURNS integer LANGUAGE pllua AS $$
  if a > b then return a else return b end
$$;

CREATE FUNCTION hello(name text) RETURNS text LANGUAGE pllua AS $$
  return "Hello, " .. name .. "!"
$$;
```

### Data Type Handling

Arguments are automatically converted: integers/floats to Lua numbers, text/varchar to strings, booleans to Lua booleans, NULL to nil. Other types remain as datum objects.

Construct typed values with `pgtype`:

```lua
pgtype.numeric(1234)
pgtype.date('2017-12-01')
pgtype.array.integer(1, 2, 3, 4)
pgtype.numrange(1, 2)
```

### Composite Types (Rows)

```lua
row.columnname     -- access by name
row[3]             -- access by attribute number
for colname, value, attnum in pairs(row) do ... end
```

### Set-Returning Functions

```sql
CREATE FUNCTION generate_n(n integer) RETURNS SETOF integer LANGUAGE pllua AS $$
  for i = 1, n do
    coroutine.yield(i)
  end
$$;
```

### SPI Database Access

```lua
-- Simple query
local rows = spi.execute("SELECT * FROM mytable WHERE id = $1", 42)

-- Row iterator
for row in spi.rows("SELECT * FROM mytable") do
  print(row.name)
end

-- Prepared statements
local stmt = spi.prepare("SELECT * FROM users WHERE id = $1", {'integer'})
local result = stmt:execute(42)
for row in stmt:rows(42) do ... end
```

### Cursors

```lua
local cursor = spi.newcursor()
cursor:open("SELECT * FROM items")
local rows = cursor:fetch(10)
cursor:move(5)
cursor:close()
```

### Trigger Functions

```sql
CREATE FUNCTION my_trigger() RETURNS trigger LANGUAGE pllua AS $$
  function(trigger, old, new)
    trigger.row = new
    return trigger.row
  end
$$;
```

Trigger fields: `trigger.event` (INSERT/UPDATE/DELETE), `trigger.when` (BEFORE/AFTER), `trigger.level` (ROW/STATEMENT), `trigger.new`, `trigger.old`, `trigger.row`.

### Error Handling

```lua
spi.error('division_by_zero', 'Cannot divide by zero')
spi.notice('informational message')
spi.warning('warning message')

-- Subtransactions with pcall
local ok, err = pcall(function()
  spi.execute("INSERT INTO mytable VALUES ($1)", val)
end)
```

### Logging

```lua
print("info message")
spi.debug("debug")
spi.notice("notice")
spi.warning("warning")
spi.error("error")
```
