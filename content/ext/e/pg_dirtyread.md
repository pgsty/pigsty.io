---
title: "pg_dirtyread"
linkTitle: "pg_dirtyread"
description: "Read dead but unvacuumed rows from table"
weight: 5050
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/df7cb/pg_dirtyread">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">df7cb/pg_dirtyread</div>
    <div class="ext-card__desc">https://github.com/df7cb/pg_dirtyread</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_dirtyread-2.8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_dirtyread-2.8.tar.gz</div>
    <div class="ext-card__desc">pg_dirtyread-2.8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dirtyread`**](/ext/e/pg_dirtyread) | `2.8` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5050  | [**`pg_dirtyread`**](/ext/e/pg_dirtyread) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_orphaned`](/ext/e/pg_orphaned) [`pg_surgery`](/ext/e/pg_surgery) [`pageinspect`](/ext/e/pageinspect) [`pg_visibility`](/ext/e/pg_visibility) [`pg_cheat_funcs`](/ext/e/pg_cheat_funcs) [`amcheck`](/ext/e/amcheck) [`pg_repack`](/ext/e/pg_repack) [`pg_squeeze`](/ext/e/pg_squeeze) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `2.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_dirtyread` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_dirtyread_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.8` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-dirtyread` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 |
| el8.aarch64 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 | AVAIL PIGSTY 2.8 2 |
| el9.x86_64 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 |
| el9.aarch64 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 |
| el10.x86_64 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 |
| el10.aarch64 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 | AVAIL PIGSTY 2.8 3 |
| d12.x86_64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| d12.aarch64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| d13.x86_64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| d13.aarch64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| u22.x86_64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| u22.aarch64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| u24.x86_64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| u24.aarch64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| u26.x86_64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
| u26.aarch64 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 | AVAIL PGDG 2.8 2 |
@ el8.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.8-1PIGSTY.el8.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dirtyread_18-2.8-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-4PGDG.rhel8.x86_64.rpm pgdg 2.7 17.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_dirtyread_18-2.7-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.8-1PIGSTY.el8.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dirtyread_18-2.8-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-4PGDG.rhel8.aarch64.rpm pgdg 2.7 16.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_dirtyread_18-2.7-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.8-1PIGSTY.el9.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dirtyread_18-2.8-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-6PGDG.rhel9.8.x86_64.rpm pgdg 2.7 17.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dirtyread_18-2.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-4PGDG.rhel9.x86_64.rpm pgdg 2.7 17.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dirtyread_18-2.7-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.8-1PIGSTY.el9.aarch64.rpm pigsty 2.8 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dirtyread_18-2.8-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-6PGDG.rhel9.8.aarch64.rpm pgdg 2.7 16.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dirtyread_18-2.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-4PGDG.rhel9.aarch64.rpm pgdg 2.7 16.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dirtyread_18-2.7-4PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.8-1PIGSTY.el10.x86_64.rpm pigsty 2.8 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dirtyread_18-2.8-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-6PGDG.rhel10.2.x86_64.rpm pgdg 2.7 17.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dirtyread_18-2.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-4PGDG.rhel10.x86_64.rpm pgdg 2.7 17.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dirtyread_18-2.7-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.8-1PIGSTY.el10.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dirtyread_18-2.8-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-6PGDG.rhel10.2.aarch64.rpm pgdg 2.7 17.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dirtyread_18-2.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_dirtyread_18 pg_dirtyread_18-2.7-4PGDG.rhel10.aarch64.rpm pgdg 2.7 17.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dirtyread_18-2.7-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg12+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg12+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg12+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg12+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg13+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg13+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg13+1_arm64.deb pgdg 2.8 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg13+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg22.04+1_amd64.deb pgdg 2.8 22.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg22.04+1_amd64.deb pgdg 2.7 22.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg22.04+1_arm64.deb pgdg 2.8 21.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg22.04+1_arm64.deb pgdg 2.7 21.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg24.04+1_amd64.deb pgdg 2.8 21.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg24.04+1_amd64.deb pgdg 2.7 21.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg24.04+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg24.04+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg26.04+1_amd64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg26.04+1_amd64.deb pgdg 2.7 21.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.8-1.pgdg26.04+1_arm64.deb pgdg 2.8 20.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-dirtyread postgresql-18-dirtyread_2.7-3.pgdg26.04+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-18-dirtyread_2.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.8-1PIGSTY.el8.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dirtyread_17-2.8-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-2PGDG.rhel8.x86_64.rpm pgdg 2.7 16.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_dirtyread_17-2.7-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.8-1PIGSTY.el8.aarch64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dirtyread_17-2.8-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-2PGDG.rhel8.aarch64.rpm pgdg 2.7 16.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_dirtyread_17-2.7-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.8-1PIGSTY.el9.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dirtyread_17-2.8-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-6PGDG.rhel9.8.x86_64.rpm pgdg 2.7 17.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dirtyread_17-2.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-2PGDG.rhel9.x86_64.rpm pgdg 2.7 17.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dirtyread_17-2.7-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.8-1PIGSTY.el9.aarch64.rpm pigsty 2.8 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dirtyread_17-2.8-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-6PGDG.rhel9.8.aarch64.rpm pgdg 2.7 16.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dirtyread_17-2.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-2PGDG.rhel9.aarch64.rpm pgdg 2.7 16.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dirtyread_17-2.7-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.8-1PIGSTY.el10.x86_64.rpm pigsty 2.8 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dirtyread_17-2.8-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-6PGDG.rhel10.2.x86_64.rpm pgdg 2.7 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dirtyread_17-2.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-4PGDG.rhel10.x86_64.rpm pgdg 2.7 17.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dirtyread_17-2.7-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.8-1PIGSTY.el10.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dirtyread_17-2.8-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-6PGDG.rhel10.2.aarch64.rpm pgdg 2.7 17.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dirtyread_17-2.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_dirtyread_17 pg_dirtyread_17-2.7-4PGDG.rhel10.aarch64.rpm pgdg 2.7 17.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dirtyread_17-2.7-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg12+1_amd64.deb pgdg 2.8 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg12+1_amd64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg12+1_arm64.deb pgdg 2.8 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg12+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg13+1_amd64.deb pgdg 2.8 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg13+1_amd64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg13+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg13+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg22.04+1_amd64.deb pgdg 2.8 26.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg22.04+1_amd64.deb pgdg 2.7 26.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg22.04+1_arm64.deb pgdg 2.8 25.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg22.04+1_arm64.deb pgdg 2.7 25.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg24.04+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg24.04+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg24.04+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg24.04+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg26.04+1_amd64.deb pgdg 2.8 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg26.04+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.8-1.pgdg26.04+1_arm64.deb pgdg 2.8 20.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-dirtyread postgresql-17-dirtyread_2.7-3.pgdg26.04+1_arm64.deb pgdg 2.7 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-17-dirtyread_2.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.8-1PIGSTY.el8.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dirtyread_16-2.8-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 16.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_dirtyread_16-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.8-1PIGSTY.el8.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dirtyread_16-2.8-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 16.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_dirtyread_16-2.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.8-1PIGSTY.el9.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dirtyread_16-2.8-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-6PGDG.rhel9.8.x86_64.rpm pgdg 2.7 17.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dirtyread_16-2.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 16.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dirtyread_16-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.8-1PIGSTY.el9.aarch64.rpm pigsty 2.8 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dirtyread_16-2.8-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-6PGDG.rhel9.8.aarch64.rpm pgdg 2.7 16.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dirtyread_16-2.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 16.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dirtyread_16-2.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.8-1PIGSTY.el10.x86_64.rpm pigsty 2.8 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dirtyread_16-2.8-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-6PGDG.rhel10.2.x86_64.rpm pgdg 2.7 17.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dirtyread_16-2.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-4PGDG.rhel10.x86_64.rpm pgdg 2.7 17.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dirtyread_16-2.7-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.8-1PIGSTY.el10.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dirtyread_16-2.8-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-6PGDG.rhel10.2.aarch64.rpm pgdg 2.7 17.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dirtyread_16-2.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_dirtyread_16 pg_dirtyread_16-2.7-4PGDG.rhel10.aarch64.rpm pgdg 2.7 17.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dirtyread_16-2.7-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg12+1_amd64.deb pgdg 2.8 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg12+1_amd64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg12+1_arm64.deb pgdg 2.8 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg12+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg13+1_amd64.deb pgdg 2.8 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg13+1_amd64.deb pgdg 2.7 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg13+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg13+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg22.04+1_amd64.deb pgdg 2.8 25.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg22.04+1_amd64.deb pgdg 2.7 25.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg22.04+1_arm64.deb pgdg 2.8 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg22.04+1_arm64.deb pgdg 2.7 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg24.04+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg24.04+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg24.04+1_arm64.deb pgdg 2.8 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg24.04+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg26.04+1_amd64.deb pgdg 2.8 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg26.04+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.8-1.pgdg26.04+1_arm64.deb pgdg 2.8 20.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-dirtyread postgresql-16-dirtyread_2.7-3.pgdg26.04+1_arm64.deb pgdg 2.7 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-16-dirtyread_2.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.8-1PIGSTY.el8.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dirtyread_15-2.8-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 16.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_dirtyread_15-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.8-1PIGSTY.el8.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dirtyread_15-2.8-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 16.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_dirtyread_15-2.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.8-1PIGSTY.el9.x86_64.rpm pigsty 2.8 17.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dirtyread_15-2.8-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-6PGDG.rhel9.8.x86_64.rpm pgdg 2.7 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dirtyread_15-2.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 17.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dirtyread_15-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.8-1PIGSTY.el9.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dirtyread_15-2.8-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-6PGDG.rhel9.8.aarch64.rpm pgdg 2.7 17.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dirtyread_15-2.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 16.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dirtyread_15-2.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.8-1PIGSTY.el10.x86_64.rpm pigsty 2.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dirtyread_15-2.8-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-6PGDG.rhel10.2.x86_64.rpm pgdg 2.7 17.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dirtyread_15-2.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-4PGDG.rhel10.x86_64.rpm pgdg 2.7 17.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dirtyread_15-2.7-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.8-1PIGSTY.el10.aarch64.rpm pigsty 2.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dirtyread_15-2.8-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-6PGDG.rhel10.2.aarch64.rpm pgdg 2.7 17.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dirtyread_15-2.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_dirtyread_15 pg_dirtyread_15-2.7-4PGDG.rhel10.aarch64.rpm pgdg 2.7 17.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dirtyread_15-2.7-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg12+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg12+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg12+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg12+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg13+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg13+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg13+1_arm64.deb pgdg 2.8 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg13+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg22.04+1_amd64.deb pgdg 2.8 25.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg22.04+1_amd64.deb pgdg 2.7 25.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg22.04+1_arm64.deb pgdg 2.8 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg22.04+1_arm64.deb pgdg 2.7 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg24.04+1_amd64.deb pgdg 2.8 21.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg24.04+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg24.04+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg24.04+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg26.04+1_amd64.deb pgdg 2.8 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg26.04+1_amd64.deb pgdg 2.7 21.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.8-1.pgdg26.04+1_arm64.deb pgdg 2.8 20.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-dirtyread postgresql-15-dirtyread_2.7-3.pgdg26.04+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-15-dirtyread_2.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.8-1PIGSTY.el8.x86_64.rpm pigsty 2.8 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dirtyread_14-2.8-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 16.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dirtyread_14-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.8-1PIGSTY.el8.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dirtyread_14-2.8-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 16.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dirtyread_14-2.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.8-1PIGSTY.el9.x86_64.rpm pigsty 2.8 17.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dirtyread_14-2.8-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-6PGDG.rhel9.8.x86_64.rpm pgdg 2.7 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dirtyread_14-2.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 17.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dirtyread_14-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.8-1PIGSTY.el9.aarch64.rpm pigsty 2.8 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dirtyread_14-2.8-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-6PGDG.rhel9.8.aarch64.rpm pgdg 2.7 17.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dirtyread_14-2.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 16.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dirtyread_14-2.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.8-1PIGSTY.el10.x86_64.rpm pigsty 2.8 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dirtyread_14-2.8-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-6PGDG.rhel10.2.x86_64.rpm pgdg 2.7 17.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dirtyread_14-2.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-4PGDG.rhel10.x86_64.rpm pgdg 2.7 17.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dirtyread_14-2.7-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.8-1PIGSTY.el10.aarch64.rpm pigsty 2.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dirtyread_14-2.8-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-6PGDG.rhel10.2.aarch64.rpm pgdg 2.7 17.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dirtyread_14-2.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_dirtyread_14 pg_dirtyread_14-2.7-4PGDG.rhel10.aarch64.rpm pgdg 2.7 17.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dirtyread_14-2.7-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg12+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg12+1_amd64.deb pgdg 2.7 21.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg12+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg12+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg13+1_amd64.deb pgdg 2.8 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg13+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg13+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg13+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg22.04+1_amd64.deb pgdg 2.8 25.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg22.04+1_amd64.deb pgdg 2.7 25.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg22.04+1_arm64.deb pgdg 2.8 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg22.04+1_arm64.deb pgdg 2.7 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg24.04+1_amd64.deb pgdg 2.8 21.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg24.04+1_amd64.deb pgdg 2.7 21.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg24.04+1_arm64.deb pgdg 2.8 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg24.04+1_arm64.deb pgdg 2.7 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg26.04+1_amd64.deb pgdg 2.8 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg26.04+1_amd64.deb pgdg 2.7 21.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.8-1.pgdg26.04+1_arm64.deb pgdg 2.8 20.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-dirtyread postgresql-14-dirtyread_2.7-3.pgdg26.04+1_arm64.deb pgdg 2.7 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-dirtyread/postgresql-14-dirtyread_2.7-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_dirtyread` using `pig build`:

```bash
pig build pkg pg_dirtyread         # build RPM packages
```


## Install

You can install `pg_dirtyread` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_dirtyread;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_dirtyread -v 18  # PG 18
pig ext install -y pg_dirtyread -v 17  # PG 17
pig ext install -y pg_dirtyread -v 16  # PG 16
pig ext install -y pg_dirtyread -v 15  # PG 15
pig ext install -y pg_dirtyread -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_dirtyread_18       # PG 18
dnf install -y pg_dirtyread_17       # PG 17
dnf install -y pg_dirtyread_16       # PG 16
dnf install -y pg_dirtyread_15       # PG 15
dnf install -y pg_dirtyread_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-dirtyread   # PG 18
apt install -y postgresql-17-dirtyread   # PG 17
apt install -y postgresql-16-dirtyread   # PG 16
apt install -y postgresql-15-dirtyread   # PG 15
apt install -y postgresql-14-dirtyread   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_dirtyread;
```




## Usage

Sources: [upstream README](https://github.com/df7cb/pg_dirtyread), [Debian changelog](https://github.com/df7cb/pg_dirtyread/blob/master/debian/changelog), [tags](https://github.com/df7cb/pg_dirtyread/tags).

`pg_dirtyread` reads dead or updated heap rows that have not yet been vacuumed away. The function returns `record`, so every call needs a table alias that declares the columns you want back.

### Basic Usage

```sql
CREATE EXTENSION pg_dirtyread;

SELECT *
FROM pg_dirtyread('foo') AS t(bar bigint, baz text);
```

Columns are matched by name, so the alias can omit columns or place them in a different order.

### Example

```sql
CREATE TABLE foo (bar bigint, baz text);
ALTER TABLE foo SET (autovacuum_enabled = false, toast.autovacuum_enabled = false);

INSERT INTO foo VALUES (1, 'Test'), (2, 'New Test');
DELETE FROM foo WHERE bar = 1;

SELECT * FROM pg_dirtyread('foo') AS t(bar bigint, baz text);
```

The deleted row can remain visible until vacuum removes it.

### Dropped Columns

Dropped column contents can be retrieved as long as the table has not been rewritten by operations such as `VACUUM FULL` or `CLUSTER`. Use `dropped_N`, where `N` is the original 1-based column position:

```sql
CREATE TABLE ab(a text, b text);
INSERT INTO ab VALUES ('Hello', 'World');
ALTER TABLE ab DROP COLUMN b;
DELETE FROM ab;

SELECT *
FROM pg_dirtyread('ab') AS ab(a text, dropped_2 text);
```

Only limited type checks are possible because PostgreSQL removes the dropped column's original type metadata.

### System Columns

Include system columns in the alias to retrieve them. A special `dead boolean` column reports rows that are surely dead:

```sql
SELECT *
FROM pg_dirtyread('foo') AS t(
  tableoid oid,
  ctid tid,
  xmin xid,
  xmax xid,
  cmin cid,
  cmax cid,
  dead boolean,
  bar bigint,
  baz text
);
```

The `dead` column is not usable during recovery, including on standby servers. The `oid` system column is only available on PostgreSQL 11 and earlier.

### Caveats

- Pigsty packages `pg_dirtyread` 2.8 as RPMs for PostgreSQL 14-18; DEB availability comes from PGDG as `postgresql-$v-dirtyread`.
- Upstream 2.8 is a PostgreSQL 19 compatibility release for the default TOAST compression change to `lz4`; no new user-facing SQL function is documented.
- `pg_dirtyread` is for forensic and recovery-style inspection. It bypasses normal MVCC visibility expectations and should not be used for application reads.
