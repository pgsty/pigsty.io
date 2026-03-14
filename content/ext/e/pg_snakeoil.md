---
title: "pg_snakeoil"
linkTitle: "pg_snakeoil"
description: "The PostgreSQL Antivirus"
weight: 7380
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/credativ/pg_snakeoil">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">credativ/pg_snakeoil</div>
    <div class="ext-card__desc">https://github.com/credativ/pg_snakeoil</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_snakeoil-1.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_snakeoil-1.4.tar.gz</div>
    <div class="ext-card__desc">pg_snakeoil-1.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_snakeoil`**](/ext/e/pg_snakeoil) | `1.4` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7380  | [**`pg_snakeoil`**](/ext/e/pg_snakeoil) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_crash`](/ext/e/pg_crash) [`pg_cheat_funcs`](/ext/e/pg_cheat_funcs) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`pg_savior`](/ext/e/pg_savior) [`pg_surgery`](/ext/e/pg_surgery) [`pageinspect`](/ext/e/pageinspect) [`pg_catcheck`](/ext/e/pg_catcheck) [`amcheck`](/ext/e/amcheck) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require clamV libs


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_snakeoil` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_snakeoil_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-snakeoil` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 |
| el8.aarch64 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 |
| el9.x86_64 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 |
| el9.aarch64 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 |
| el10.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 |
| el10.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 | AVAIL PIGSTY 1.4 2 |
| d12.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| d12.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| d13.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| d13.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| u22.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| u22.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| u24.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| u24.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
@ el8.x86_64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PIGSTY.el8.x86_64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_snakeoil_18-1.4-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.4 15.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_snakeoil_18-1.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PIGSTY.el8.aarch64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_snakeoil_18-1.4-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.4 15.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_snakeoil_18-1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PIGSTY.el9.x86_64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_snakeoil_18-1.4-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PGDG.rhel9.x86_64.rpm pgdg 1.4 15.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_snakeoil_18-1.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PIGSTY.el9.aarch64.rpm pigsty 1.4 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_snakeoil_18-1.4-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.4 15.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_snakeoil_18-1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PIGSTY.el10.x86_64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_snakeoil_18-1.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_snakeoil_18 pg_snakeoil_18-1.4-1PIGSTY.el10.aarch64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_snakeoil_18-1.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg12+2_amd64.deb pgdg 1.4 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg12+2_amd64.deb
@ d12.aarch64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg12+2_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg12+2_arm64.deb
@ d13.x86_64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg13+1_amd64.deb pgdg 1.4 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg13+1_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg22.04+1_amd64.deb pgdg 1.4 16.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg22.04+1_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg24.04+1_amd64.deb pgdg 1.4 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-snakeoil postgresql-18-snakeoil_1.4-3.pgdg24.04+1_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-18-snakeoil_1.4-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PIGSTY.el8.x86_64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_snakeoil_17-1.4-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.4 15.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_snakeoil_17-1.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PIGSTY.el8.aarch64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_snakeoil_17-1.4-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.4 15.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_snakeoil_17-1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PIGSTY.el9.x86_64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_snakeoil_17-1.4-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PGDG.rhel9.x86_64.rpm pgdg 1.4 15.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_snakeoil_17-1.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PIGSTY.el9.aarch64.rpm pigsty 1.4 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_snakeoil_17-1.4-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.4 15.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_snakeoil_17-1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PIGSTY.el10.x86_64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_snakeoil_17-1.4-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PGDG.rhel10.x86_64.rpm pgdg 1.4 15.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_snakeoil_17-1.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PIGSTY.el10.aarch64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_snakeoil_17-1.4-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_snakeoil_17 pg_snakeoil_17-1.4-1PGDG.rhel10.aarch64.rpm pgdg 1.4 15.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_snakeoil_17-1.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg12+2_amd64.deb pgdg 1.4 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg12+2_amd64.deb
@ d12.aarch64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg12+2_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg12+2_arm64.deb
@ d13.x86_64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg13+1_amd64.deb pgdg 1.4 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg13+1_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg22.04+1_amd64.deb pgdg 1.4 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg22.04+1_arm64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg24.04+1_amd64.deb pgdg 1.4 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-snakeoil postgresql-17-snakeoil_1.4-3.pgdg24.04+1_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-17-snakeoil_1.4-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PIGSTY.el8.x86_64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_snakeoil_16-1.4-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.4 15.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_snakeoil_16-1.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PIGSTY.el8.aarch64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_snakeoil_16-1.4-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.4 15.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_snakeoil_16-1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PIGSTY.el9.x86_64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_snakeoil_16-1.4-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PGDG.rhel9.x86_64.rpm pgdg 1.4 15.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_snakeoil_16-1.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PIGSTY.el9.aarch64.rpm pigsty 1.4 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_snakeoil_16-1.4-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.4 15.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_snakeoil_16-1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PIGSTY.el10.x86_64.rpm pigsty 1.4 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_snakeoil_16-1.4-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PGDG.rhel10.x86_64.rpm pgdg 1.4 15.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_snakeoil_16-1.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PIGSTY.el10.aarch64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_snakeoil_16-1.4-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_snakeoil_16 pg_snakeoil_16-1.4-1PGDG.rhel10.aarch64.rpm pgdg 1.4 15.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_snakeoil_16-1.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg12+2_amd64.deb pgdg 1.4 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg12+2_amd64.deb
@ d12.aarch64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg12+2_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg12+2_arm64.deb
@ d13.x86_64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg13+1_amd64.deb pgdg 1.4 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg13+1_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg22.04+1_amd64.deb pgdg 1.4 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg22.04+1_arm64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg24.04+1_amd64.deb pgdg 1.4 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-snakeoil postgresql-16-snakeoil_1.4-3.pgdg24.04+1_arm64.deb pgdg 1.4 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-16-snakeoil_1.4-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PIGSTY.el8.x86_64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_snakeoil_15-1.4-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.4 15.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_snakeoil_15-1.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PIGSTY.el8.aarch64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_snakeoil_15-1.4-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.4 15.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_snakeoil_15-1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PIGSTY.el9.x86_64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_snakeoil_15-1.4-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PGDG.rhel9.x86_64.rpm pgdg 1.4 15.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_snakeoil_15-1.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PIGSTY.el9.aarch64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_snakeoil_15-1.4-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.4 15.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_snakeoil_15-1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PIGSTY.el10.x86_64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_snakeoil_15-1.4-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PGDG.rhel10.x86_64.rpm pgdg 1.4 16.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_snakeoil_15-1.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PIGSTY.el10.aarch64.rpm pigsty 1.4 16.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_snakeoil_15-1.4-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_snakeoil_15 pg_snakeoil_15-1.4-1PGDG.rhel10.aarch64.rpm pgdg 1.4 16.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_snakeoil_15-1.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg12+2_amd64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg12+2_amd64.deb
@ d12.aarch64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg12+2_arm64.deb pgdg 1.4 16.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg12+2_arm64.deb
@ d13.x86_64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg13+1_amd64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg13+1_arm64.deb pgdg 1.4 16.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg22.04+1_amd64.deb pgdg 1.4 17.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg22.04+1_arm64.deb pgdg 1.4 17.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg24.04+1_amd64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-snakeoil postgresql-15-snakeoil_1.4-3.pgdg24.04+1_arm64.deb pgdg 1.4 16.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-15-snakeoil_1.4-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PIGSTY.el8.x86_64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_snakeoil_14-1.4-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.4 15.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_snakeoil_14-1.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PIGSTY.el8.aarch64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_snakeoil_14-1.4-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.4 15.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_snakeoil_14-1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PIGSTY.el9.x86_64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_snakeoil_14-1.4-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PGDG.rhel9.x86_64.rpm pgdg 1.4 15.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_snakeoil_14-1.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PIGSTY.el9.aarch64.rpm pigsty 1.4 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_snakeoil_14-1.4-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.4 15.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_snakeoil_14-1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PIGSTY.el10.x86_64.rpm pigsty 1.4 16.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_snakeoil_14-1.4-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PGDG.rhel10.x86_64.rpm pgdg 1.4 16.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_snakeoil_14-1.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PIGSTY.el10.aarch64.rpm pigsty 1.4 16.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_snakeoil_14-1.4-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_snakeoil_14 pg_snakeoil_14-1.4-1PGDG.rhel10.aarch64.rpm pgdg 1.4 16.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_snakeoil_14-1.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg12+2_amd64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg12+2_amd64.deb
@ d12.aarch64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg12+2_arm64.deb pgdg 1.4 16.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg12+2_arm64.deb
@ d13.x86_64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg13+1_amd64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg13+1_arm64.deb pgdg 1.4 16.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg22.04+1_amd64.deb pgdg 1.4 17.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg22.04+1_arm64.deb pgdg 1.4 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg24.04+1_amd64.deb pgdg 1.4 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-snakeoil postgresql-14-snakeoil_1.4-3.pgdg24.04+1_arm64.deb pgdg 1.4 16.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-snakeoil/postgresql-14-snakeoil_1.4-3.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_snakeoil` using `pig build`:

```bash
pig build pkg pg_snakeoil         # build RPM packages
```


## Install

You can install `pg_snakeoil` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_snakeoil;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_snakeoil -v 18  # PG 18
pig ext install -y pg_snakeoil -v 17  # PG 17
pig ext install -y pg_snakeoil -v 16  # PG 16
pig ext install -y pg_snakeoil -v 15  # PG 15
pig ext install -y pg_snakeoil -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_snakeoil_18       # PG 18
dnf install -y pg_snakeoil_17       # PG 17
dnf install -y pg_snakeoil_16       # PG 16
dnf install -y pg_snakeoil_15       # PG 15
dnf install -y pg_snakeoil_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-snakeoil   # PG 18
apt install -y postgresql-17-snakeoil   # PG 17
apt install -y postgresql-16-snakeoil   # PG 16
apt install -y postgresql-15-snakeoil   # PG 15
apt install -y postgresql-14-snakeoil   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_snakeoil';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_snakeoil;
```




## Usage

> [pg_snakeoil: ClamAV antivirus scanning for PostgreSQL data](https://github.com/credativ/pg_snakeoil)

`pg_snakeoil` provides ClamAV virus scanning of data stored in PostgreSQL without interfering with normal database operations.

```sql
CREATE EXTENSION pg_snakeoil;
```

### Functions

| Function | Returns | Description |
|----------|---------|-------------|
| `so_is_infected(text)` | `bool` | Check if text data matches a virus signature |
| `so_is_infected(bytea)` | `bool` | Check if bytea data matches a virus signature |
| `so_virus_name(text)` | `text` | Return virus name if infected, empty string otherwise |
| `so_virus_name(bytea)` | `text` | Return virus name if infected, NULL otherwise |
| `so_update_signatures()` | `bool` | Reload virus signatures, true if changed |

### Ad-hoc Scanning

```sql
SELECT so_is_infected('Not a virus!');
-- f

SELECT so_is_infected('X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*');
-- t

SELECT so_virus_name('X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*');
-- Eicar-Test-Signature
```

### On-Access Protection with Domains

```sql
CREATE DOMAIN safe_text AS text CHECK (NOT so_is_infected(value));
CREATE TABLE t1 (safe safe_text);

INSERT INTO t1 VALUES ('This text is safe!');
-- INSERT

INSERT INTO t1 VALUES('X5O!P%@AP...');
-- NOTICE: Virus found: Eicar-Test-Signature
-- ERROR: value for domain safe_text violates check constraint "safe_text_check"
```

### On-Access Protection with Triggers

```sql
CREATE OR REPLACE FUNCTION check_virus() RETURNS trigger AS $$
BEGIN
    IF so_is_infected(NEW.content) THEN
        RAISE EXCEPTION 'Virus detected: %', so_virus_name(NEW.content);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER virus_check BEFORE INSERT OR UPDATE ON uploads
    FOR EACH ROW EXECUTE FUNCTION check_virus();
```
