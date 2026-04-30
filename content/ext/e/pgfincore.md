---
title: "pgfincore"
linkTitle: "pgfincore"
description: "examine and manage the os buffer cache"
weight: 5060
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/klando/pgfincore">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">klando/pgfincore</div>
    <div class="ext-card__desc">https://github.com/klando/pgfincore</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgfincore-1.3.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgfincore-1.3.1.tar.gz</div>
    <div class="ext-card__desc">pgfincore-1.3.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgfincore`**](/ext/e/pgfincore) | `1.3.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5060  | [**`pgfincore`**](/ext/e/pgfincore) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_cooldown`](/ext/e/pg_cooldown) [`pgcozy`](/ext/e/pgcozy) [`fio`](/ext/e/fio) [`pg_prewarm`](/ext/e/pg_prewarm) [`pgmeminfo`](/ext/e/pgmeminfo) [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_repack`](/ext/e/pg_repack) [`pg_rewrite`](/ext/e/pg_rewrite) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg18 el fixed by vonng


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `pgfincore` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `pgfincore_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgfincore` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 2 | AVAIL PGDG 1.3.1 3 |
| el8.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 2 | AVAIL PGDG 1.3.1 2 |
| el9.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.2.4 1 | AVAIL PGDG 1.2.4 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.2.4 1 | AVAIL PGDG 1.2.4 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| d12.x86_64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| d12.aarch64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| d13.x86_64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| d13.aarch64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| u22.x86_64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| u22.aarch64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| u24.x86_64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| u24.aarch64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| u26.x86_64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
| u26.aarch64 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 | AVAIL PGDG 1.3.1 1 |
@ el8.x86_64 18 pgfincore_18 pgfincore_18-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgfincore_18-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgfincore_18 pgfincore_18-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgfincore_18-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgfincore_18 pgfincore_18-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgfincore_18-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgfincore_18 pgfincore_18-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgfincore_18-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgfincore_18 pgfincore_18-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgfincore_18-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgfincore_18 pgfincore_18-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgfincore_18-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg12+1_amd64.deb pgdg 1.3.1 28.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg12+1_arm64.deb pgdg 1.3.1 28.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg13+1_amd64.deb pgdg 1.3.1 29.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg13+1_arm64.deb pgdg 1.3.1 28.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb pgdg 1.3.1 27.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb pgdg 1.3.1 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb pgdg 1.3.1 27.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb pgdg 1.3.1 26.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb pgdg 1.3.1 26.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgfincore postgresql-18-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb pgdg 1.3.1 26.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-18-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgfincore_17 pgfincore_17-1.3.1-3PGDG.rhel8.x86_64.rpm pgdg 1.3.1 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgfincore_17-1.3.1-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgfincore_17 pgfincore_17-1.3.1-3PGDG.rhel8.aarch64.rpm pgdg 1.3.1 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgfincore_17-1.3.1-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgfincore_17 pgfincore_17-1.3.1-3PGDG.rhel9.x86_64.rpm pgdg 1.3.1 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgfincore_17-1.3.1-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgfincore_17 pgfincore_17-1.3.1-3PGDG.rhel9.aarch64.rpm pgdg 1.3.1 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgfincore_17-1.3.1-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgfincore_17 pgfincore_17-1.3.1-4PGDG.rhel10.x86_64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgfincore_17-1.3.1-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgfincore_17 pgfincore_17-1.3.1-4PGDG.rhel10.aarch64.rpm pgdg 1.3.1 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgfincore_17-1.3.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg12+1_amd64.deb pgdg 1.3.1 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg12+1_arm64.deb pgdg 1.3.1 28.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg13+1_amd64.deb pgdg 1.3.1 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg13+1_arm64.deb pgdg 1.3.1 28.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb pgdg 1.3.1 31.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb pgdg 1.3.1 31.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb pgdg 1.3.1 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb pgdg 1.3.1 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb pgdg 1.3.1 26.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgfincore postgresql-17-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb pgdg 1.3.1 26.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-17-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgfincore_16 pgfincore_16-1.3.1-1PGDG.rhel8.x86_64.rpm pgdg 1.3.1 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgfincore_16-1.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgfincore_16 pgfincore_16-1.3.1-1PGDG.rhel8.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgfincore_16-1.3.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgfincore_16 pgfincore_16-1.3.1-1PGDG.rhel9.x86_64.rpm pgdg 1.3.1 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgfincore_16-1.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgfincore_16 pgfincore_16-1.3.1-1PGDG.rhel9.aarch64.rpm pgdg 1.3.1 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgfincore_16-1.3.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgfincore_16 pgfincore_16-1.3.1-4PGDG.rhel10.x86_64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgfincore_16-1.3.1-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgfincore_16 pgfincore_16-1.3.1-4PGDG.rhel10.aarch64.rpm pgdg 1.3.1 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgfincore_16-1.3.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg12+1_amd64.deb pgdg 1.3.1 28.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg12+1_arm64.deb pgdg 1.3.1 28.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg13+1_amd64.deb pgdg 1.3.1 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg13+1_arm64.deb pgdg 1.3.1 28.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb pgdg 1.3.1 31.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb pgdg 1.3.1 30.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb pgdg 1.3.1 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb pgdg 1.3.1 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb pgdg 1.3.1 26.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgfincore postgresql-16-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb pgdg 1.3.1 26.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-16-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgfincore_15 pgfincore_15-1.3.1-1PGDG.rhel8.x86_64.rpm pgdg 1.3.1 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgfincore_15-1.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgfincore_15 pgfincore_15-1.2.4-1.rhel8.x86_64.rpm pgdg 1.2.4 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgfincore_15-1.2.4-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgfincore_15 pgfincore_15-1.3.1-1PGDG.rhel8.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgfincore_15-1.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgfincore_15 pgfincore_15-1.2.4-1.rhel8.aarch64.rpm pgdg 1.2.4 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgfincore_15-1.2.4-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pgfincore_15 pgfincore_15-1.2.4-1.rhel9.x86_64.rpm pgdg 1.2.4 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgfincore_15-1.2.4-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pgfincore_15 pgfincore_15-1.2.4-1.rhel9.aarch64.rpm pgdg 1.2.4 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgfincore_15-1.2.4-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pgfincore_15 pgfincore_15-1.3.1-4PGDG.rhel10.x86_64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgfincore_15-1.3.1-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgfincore_15 pgfincore_15-1.3.1-4PGDG.rhel10.aarch64.rpm pgdg 1.3.1 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgfincore_15-1.3.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg12+1_amd64.deb pgdg 1.3.1 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg12+1_arm64.deb pgdg 1.3.1 28.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg13+1_amd64.deb pgdg 1.3.1 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg13+1_arm64.deb pgdg 1.3.1 28.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb pgdg 1.3.1 31.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb pgdg 1.3.1 30.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb pgdg 1.3.1 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb pgdg 1.3.1 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb pgdg 1.3.1 26.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgfincore postgresql-15-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb pgdg 1.3.1 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-15-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgfincore_14 pgfincore_14-1.3.1-1PGDG.rhel8.x86_64.rpm pgdg 1.3.1 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgfincore_14-1.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgfincore_14 pgfincore_14-1.2.4-1.rhel8.x86_64.rpm pgdg 1.2.4 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgfincore_14-1.2.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgfincore_14 pgfincore_14-1.2.2-3.rhel8.x86_64.rpm pgdg 1.2.2 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgfincore_14-1.2.2-3.rhel8.x86_64.rpm
@ el8.aarch64 14 pgfincore_14 pgfincore_14-1.3.1-1PGDG.rhel8.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgfincore_14-1.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgfincore_14 pgfincore_14-1.2.4-1.rhel8.aarch64.rpm pgdg 1.2.4 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgfincore_14-1.2.4-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgfincore_14 pgfincore_14-1.2.4-1.rhel9.x86_64.rpm pgdg 1.2.4 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgfincore_14-1.2.4-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgfincore_14 pgfincore_14-1.2.4-1.rhel9.aarch64.rpm pgdg 1.2.4 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgfincore_14-1.2.4-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgfincore_14 pgfincore_14-1.3.1-4PGDG.rhel10.x86_64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgfincore_14-1.3.1-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgfincore_14 pgfincore_14-1.3.1-4PGDG.rhel10.aarch64.rpm pgdg 1.3.1 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgfincore_14-1.3.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg12+1_amd64.deb pgdg 1.3.1 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg12+1_arm64.deb pgdg 1.3.1 27.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg13+1_amd64.deb pgdg 1.3.1 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg13+1_arm64.deb pgdg 1.3.1 28.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb pgdg 1.3.1 31.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb pgdg 1.3.1 30.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb pgdg 1.3.1 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb pgdg 1.3.1 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb pgdg 1.3.1 26.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgfincore postgresql-14-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb pgdg 1.3.1 26.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfincore/postgresql-14-pgfincore_1.3.1-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgfincore` using `pig build`:

```bash
pig build pkg pgfincore         # build RPM / DEB packages
```


## Install

You can install `pgfincore` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgfincore;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgfincore -v 18  # PG 18
pig ext install -y pgfincore -v 17  # PG 17
pig ext install -y pgfincore -v 16  # PG 16
pig ext install -y pgfincore -v 15  # PG 15
pig ext install -y pgfincore -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgfincore_18       # PG 18
dnf install -y pgfincore_17       # PG 17
dnf install -y pgfincore_16       # PG 16
dnf install -y pgfincore_15       # PG 15
dnf install -y pgfincore_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgfincore   # PG 18
apt install -y postgresql-17-pgfincore   # PG 17
apt install -y postgresql-16-pgfincore   # PG 16
apt install -y postgresql-15-pgfincore   # PG 15
apt install -y postgresql-14-pgfincore   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgfincore;
```




## Usage

> [pgfincore: examine and manage the os buffer cache](https://github.com/klando/pgfincore)

pgfincore provides functions to inspect and manage OS page cache contents for PostgreSQL relations using `mincore` and `POSIX_FADVISE`.

### Inspect Cache State

```sql
SELECT * FROM pgfincore('pgbench_accounts');
```

Returns per-segment info: `relpath`, `segment`, `os_page_size`, `rel_os_pages`, `pages_mem` (pages in OS cache), `group_mem`, `os_pages_free`, `pages_dirty`, `group_dirty`.

Use `pgfincore('relation', true)` to include the `databit` varbit map for snapshot/restore.

### System Info

```sql
SELECT * FROM pgsysconf();          -- os_page_size, os_pages_free, os_total_pages
SELECT * FROM pgsysconf_pretty();   -- same with human-readable output
```

### Preload into OS Cache

```sql
SELECT * FROM pgfadvise_willneed('pgbench_accounts');
```

### Evict from OS Cache

```sql
SELECT * FROM pgfadvise_dontneed('pgbench_accounts');
```

### Other POSIX_FADVISE Flags

```sql
SELECT * FROM pgfadvise_normal('relation');
SELECT * FROM pgfadvise_sequential('relation');
SELECT * FROM pgfadvise_random('relation');
```

### Snapshot and Restore Cache State

```sql
-- Snapshot
CREATE TABLE pgfincore_snapshot AS
  SELECT 'pgbench_accounts'::text AS relname, *, now() AS date_snapshot
  FROM pgfincore('pgbench_accounts', true);

-- Restore
SELECT * FROM pgfadvise_loader('pgbench_accounts', 0, true, true,
               (SELECT databit FROM pgfincore_snapshot
                WHERE relname = 'pgbench_accounts' AND segment = 0));
```

### Direct Page Cache Control

```sql
-- Load first 3 pages, unload next 3
SELECT * FROM pgfadvise_loader('pgbench_accounts', 0, true, true, B'111000');
-- Load only
SELECT * FROM pgfadvise_loader('pgbench_accounts', 0, true, false, B'111000');
-- Unload only
SELECT * FROM pgfadvise_loader('pgbench_accounts', 0, false, true, B'111000');
```
