---
title: "rum"
linkTitle: "rum"
description: "RUM index access method"
weight: 2720
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgrespro/rum">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgrespro/rum</div>
    <div class="ext-card__desc">https://github.com/postgrespro/rum</div>
  </a>
  <a class="ext-card ext-card--source" href="rum-1.3.15.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">rum-1.3.15.tar.gz</div>
    <div class="ext-card__desc">rum-1.3.15.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`rum`**](/ext/e/rum) | `1.3.15` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2720  | [**`rum`**](/ext/e/rum) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_trgm`](/ext/e/pg_trgm) [`btree_gist`](/ext/e/btree_gist) [`btree_gin`](/ext/e/btree_gin) [`pg_search`](/ext/e/pg_search) [`pgroonga`](/ext/e/pgroonga) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pgroonga_database`](/ext/e/pgroonga_database) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) |
{.ext-table .ext-table--rel}


> 1.3.15 build pass on pg 16,17,18


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.3.15` | {{< pgvers "18,17,16,15,14" >}} | `rum` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.15` | {{< pgvers "18,17,16,15,14" >}} | `rum_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.15` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-rum` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.15 1 | AVAIL PIGSTY 1.3.15 2 | AVAIL PIGSTY 1.3.15 3 | AVAIL PGDG 1.3.14 2 | AVAIL PGDG 1.3.14 3 |
| el8.aarch64 | AVAIL PIGSTY 1.3.15 1 | AVAIL PIGSTY 1.3.15 2 | AVAIL PIGSTY 1.3.15 3 | AVAIL PGDG 1.3.14 2 | AVAIL PGDG 1.3.14 2 |
| el9.x86_64 | AVAIL PIGSTY 1.3.15 1 | AVAIL PIGSTY 1.3.15 2 | AVAIL PIGSTY 1.3.15 3 | AVAIL PGDG 1.3.14 2 | AVAIL PGDG 1.3.14 2 |
| el9.aarch64 | AVAIL PIGSTY 1.3.15 1 | AVAIL PIGSTY 1.3.15 2 | AVAIL PIGSTY 1.3.15 3 | AVAIL PGDG 1.3.14 2 | AVAIL PGDG 1.3.14 2 |
| el10.x86_64 | AVAIL PIGSTY 1.3.15 1 | AVAIL PIGSTY 1.3.15 2 | AVAIL PIGSTY 1.3.15 2 | AVAIL PGDG 1.3.14 1 | AVAIL PGDG 1.3.14 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.15 1 | AVAIL PIGSTY 1.3.15 2 | AVAIL PIGSTY 1.3.15 2 | AVAIL PGDG 1.3.14 1 | AVAIL PGDG 1.3.14 1 |
| d12.x86_64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
| d12.aarch64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
| d13.x86_64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
| d13.aarch64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
| u22.x86_64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
| u22.aarch64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
| u24.x86_64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
| u24.aarch64 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 | AVAIL PGDG 1.3.15 1 |
@ el8.x86_64 18 rum_18 rum_18-1.3.15-1PIGSTY.el8.x86_64.rpm pigsty 1.3.15 104.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rum_18-1.3.15-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 rum_18 rum_18-1.3.15-1PIGSTY.el8.aarch64.rpm pigsty 1.3.15 97.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rum_18-1.3.15-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 rum_18 rum_18-1.3.15-1PIGSTY.el9.x86_64.rpm pigsty 1.3.15 96.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rum_18-1.3.15-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 rum_18 rum_18-1.3.15-1PIGSTY.el9.aarch64.rpm pigsty 1.3.15 92.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rum_18-1.3.15-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 rum_18 rum_18-1.3.15-1PIGSTY.el10.x86_64.rpm pigsty 1.3.15 97.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rum_18-1.3.15-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 rum_18 rum_18-1.3.15-1PIGSTY.el10.aarch64.rpm pigsty 1.3.15 93.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rum_18-1.3.15-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg12+1_amd64.deb pgdg 1.3.15 233.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg12+1_arm64.deb pgdg 1.3.15 225.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg13+1_amd64.deb pgdg 1.3.15 233.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg13+1_arm64.deb pgdg 1.3.15 226.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg22.04+1_amd64.deb pgdg 1.3.15 240.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg22.04+1_arm64.deb pgdg 1.3.15 232.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg24.04+1_amd64.deb pgdg 1.3.15 234.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-rum postgresql-18-rum_1.3.15-1.pgdg24.04+1_arm64.deb pgdg 1.3.15 226.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-18-rum_1.3.15-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 rum_17 rum_17-1.3.15-1PIGSTY.el8.x86_64.rpm pigsty 1.3.15 104.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rum_17-1.3.15-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 rum_17 rum_17-1.3.14-1PGDG.rhel8.x86_64.rpm pgdg 1.3.14 93.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/rum_17-1.3.14-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 rum_17 rum_17-1.3.15-1PIGSTY.el8.aarch64.rpm pigsty 1.3.15 97.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rum_17-1.3.15-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 rum_17 rum_17-1.3.14-1PGDG.rhel8.aarch64.rpm pgdg 1.3.14 86.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/rum_17-1.3.14-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 rum_17 rum_17-1.3.15-1PIGSTY.el9.x86_64.rpm pigsty 1.3.15 96.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rum_17-1.3.15-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 rum_17 rum_17-1.3.14-1PGDG.rhel9.x86_64.rpm pgdg 1.3.14 91.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/rum_17-1.3.14-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 rum_17 rum_17-1.3.15-1PIGSTY.el9.aarch64.rpm pigsty 1.3.15 92.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rum_17-1.3.15-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 rum_17 rum_17-1.3.14-1PGDG.rhel9.aarch64.rpm pgdg 1.3.14 87.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/rum_17-1.3.14-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 rum_17 rum_17-1.3.15-1PIGSTY.el10.x86_64.rpm pigsty 1.3.15 97.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rum_17-1.3.15-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 rum_17 rum_17-1.3.14-2PGDG.rhel10.x86_64.rpm pgdg 1.3.14 93.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/rum_17-1.3.14-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 rum_17 rum_17-1.3.15-1PIGSTY.el10.aarch64.rpm pigsty 1.3.15 94.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rum_17-1.3.15-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 rum_17 rum_17-1.3.14-2PGDG.rhel10.aarch64.rpm pgdg 1.3.14 88.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/rum_17-1.3.14-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg12+1_amd64.deb pgdg 1.3.15 234.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg12+1_arm64.deb pgdg 1.3.15 225.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg13+1_amd64.deb pgdg 1.3.15 234.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg13+1_arm64.deb pgdg 1.3.15 226.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg22.04+1_amd64.deb pgdg 1.3.15 265.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg22.04+1_arm64.deb pgdg 1.3.15 257.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg24.04+1_amd64.deb pgdg 1.3.15 235.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-rum postgresql-17-rum_1.3.15-1.pgdg24.04+1_arm64.deb pgdg 1.3.15 227.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-17-rum_1.3.15-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 rum_16 rum_16-1.3.15-1PIGSTY.el8.x86_64.rpm pigsty 1.3.15 104.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rum_16-1.3.15-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 rum_16 rum_16-1.3.14-1PGDG.rhel8.x86_64.rpm pgdg 1.3.14 93.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/rum_16-1.3.14-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 rum_16 rum_16-1.3.13-2.rhel8.1.x86_64.rpm pgdg 1.3.13 92.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/rum_16-1.3.13-2.rhel8.1.x86_64.rpm
@ el8.aarch64 16 rum_16 rum_16-1.3.15-1PIGSTY.el8.aarch64.rpm pigsty 1.3.15 97.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rum_16-1.3.15-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 rum_16 rum_16-1.3.14-1PGDG.rhel8.aarch64.rpm pgdg 1.3.14 86.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/rum_16-1.3.14-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 rum_16 rum_16-1.3.13-2.rhel8.1.aarch64.rpm pgdg 1.3.13 86.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/rum_16-1.3.13-2.rhel8.1.aarch64.rpm
@ el9.x86_64 16 rum_16 rum_16-1.3.15-1PIGSTY.el9.x86_64.rpm pigsty 1.3.15 96.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rum_16-1.3.15-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 rum_16 rum_16-1.3.14-1PGDG.rhel9.x86_64.rpm pgdg 1.3.14 91.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/rum_16-1.3.14-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 rum_16 rum_16-1.3.13-2.rhel9.1.x86_64.rpm pgdg 1.3.13 91.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/rum_16-1.3.13-2.rhel9.1.x86_64.rpm
@ el9.aarch64 16 rum_16 rum_16-1.3.15-1PIGSTY.el9.aarch64.rpm pigsty 1.3.15 92.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rum_16-1.3.15-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 rum_16 rum_16-1.3.14-1PGDG.rhel9.aarch64.rpm pgdg 1.3.14 87.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/rum_16-1.3.14-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 rum_16 rum_16-1.3.13-2.rhel9.1.aarch64.rpm pgdg 1.3.13 87.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/rum_16-1.3.13-2.rhel9.1.aarch64.rpm
@ el10.x86_64 16 rum_16 rum_16-1.3.15-1PIGSTY.el10.x86_64.rpm pigsty 1.3.15 97.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rum_16-1.3.15-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 rum_16 rum_16-1.3.14-2PGDG.rhel10.x86_64.rpm pgdg 1.3.14 92.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/rum_16-1.3.14-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 rum_16 rum_16-1.3.15-1PIGSTY.el10.aarch64.rpm pigsty 1.3.15 93.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rum_16-1.3.15-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 rum_16 rum_16-1.3.14-2PGDG.rhel10.aarch64.rpm pgdg 1.3.14 88.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/rum_16-1.3.14-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg12+1_amd64.deb pgdg 1.3.15 234.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg12+1_arm64.deb pgdg 1.3.15 225.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg13+1_amd64.deb pgdg 1.3.15 234.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg13+1_arm64.deb pgdg 1.3.15 226.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg22.04+1_amd64.deb pgdg 1.3.15 264.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg22.04+1_arm64.deb pgdg 1.3.15 256.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg24.04+1_amd64.deb pgdg 1.3.15 234.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-rum postgresql-16-rum_1.3.15-1.pgdg24.04+1_arm64.deb pgdg 1.3.15 226.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-16-rum_1.3.15-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 rum_15 rum_15-1.3.14-1PGDG.rhel8.x86_64.rpm pgdg 1.3.14 113.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/rum_15-1.3.14-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 rum_15 rum_15-1.3.13-1.rhel8.x86_64.rpm pgdg 1.3.13 113.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/rum_15-1.3.13-1.rhel8.x86_64.rpm
@ el8.aarch64 15 rum_15 rum_15-1.3.14-1PGDG.rhel8.aarch64.rpm pgdg 1.3.14 105.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/rum_15-1.3.14-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 rum_15 rum_15-1.3.13-1.rhel8.aarch64.rpm pgdg 1.3.13 105.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/rum_15-1.3.13-1.rhel8.aarch64.rpm
@ el9.x86_64 15 rum_15 rum_15-1.3.14-1PGDG.rhel9.x86_64.rpm pgdg 1.3.14 111.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/rum_15-1.3.14-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 rum_15 rum_15-1.3.13-1.rhel9.x86_64.rpm pgdg 1.3.13 111.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/rum_15-1.3.13-1.rhel9.x86_64.rpm
@ el9.aarch64 15 rum_15 rum_15-1.3.14-1PGDG.rhel9.aarch64.rpm pgdg 1.3.14 107.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/rum_15-1.3.14-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 rum_15 rum_15-1.3.13-1.rhel9.aarch64.rpm pgdg 1.3.13 107.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/rum_15-1.3.13-1.rhel9.aarch64.rpm
@ el10.x86_64 15 rum_15 rum_15-1.3.14-2PGDG.rhel10.x86_64.rpm pgdg 1.3.14 112.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/rum_15-1.3.14-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 rum_15 rum_15-1.3.14-2PGDG.rhel10.aarch64.rpm pgdg 1.3.14 108.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/rum_15-1.3.14-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg12+1_amd64.deb pgdg 1.3.15 288.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg12+1_arm64.deb pgdg 1.3.15 277.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg13+1_amd64.deb pgdg 1.3.15 289.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg13+1_arm64.deb pgdg 1.3.15 278.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg22.04+1_amd64.deb pgdg 1.3.15 327.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg22.04+1_arm64.deb pgdg 1.3.15 316.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg24.04+1_amd64.deb pgdg 1.3.15 288.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-rum postgresql-15-rum_1.3.15-1.pgdg24.04+1_arm64.deb pgdg 1.3.15 279.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-15-rum_1.3.15-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 rum_14 rum_14-1.3.14-1PGDG.rhel8.x86_64.rpm pgdg 1.3.14 111.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/rum_14-1.3.14-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 rum_14 rum_14-1.3.13-1.rhel8.x86_64.rpm pgdg 1.3.13 111.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/rum_14-1.3.13-1.rhel8.x86_64.rpm
@ el8.x86_64 14 rum_14 rum_14-1.3.8-1.rhel8.x86_64.rpm pgdg 1.3.8 308.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/rum_14-1.3.8-1.rhel8.x86_64.rpm
@ el8.aarch64 14 rum_14 rum_14-1.3.14-1PGDG.rhel8.aarch64.rpm pgdg 1.3.14 104.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/rum_14-1.3.14-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 rum_14 rum_14-1.3.13-1.rhel8.aarch64.rpm pgdg 1.3.13 103.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/rum_14-1.3.13-1.rhel8.aarch64.rpm
@ el9.x86_64 14 rum_14 rum_14-1.3.14-1PGDG.rhel9.x86_64.rpm pgdg 1.3.14 111.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/rum_14-1.3.14-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 rum_14 rum_14-1.3.13-1.rhel9.x86_64.rpm pgdg 1.3.13 111.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/rum_14-1.3.13-1.rhel9.x86_64.rpm
@ el9.aarch64 14 rum_14 rum_14-1.3.14-1PGDG.rhel9.aarch64.rpm pgdg 1.3.14 105.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/rum_14-1.3.14-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 rum_14 rum_14-1.3.13-1.rhel9.aarch64.rpm pgdg 1.3.13 105.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/rum_14-1.3.13-1.rhel9.aarch64.rpm
@ el10.x86_64 14 rum_14 rum_14-1.3.14-2PGDG.rhel10.x86_64.rpm pgdg 1.3.14 111.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/rum_14-1.3.14-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 rum_14 rum_14-1.3.14-2PGDG.rhel10.aarch64.rpm pgdg 1.3.14 107.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/rum_14-1.3.14-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg12+1_amd64.deb pgdg 1.3.15 287.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg12+1_arm64.deb pgdg 1.3.15 277.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg13+1_amd64.deb pgdg 1.3.15 287.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg13+1_arm64.deb pgdg 1.3.15 277.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg22.04+1_amd64.deb pgdg 1.3.15 324.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg22.04+1_arm64.deb pgdg 1.3.15 314.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg24.04+1_amd64.deb pgdg 1.3.15 287.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-rum postgresql-14-rum_1.3.15-1.pgdg24.04+1_arm64.deb pgdg 1.3.15 277.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-rum/postgresql-14-rum_1.3.15-1.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `rum` using `pig build`:

```bash
pig build pkg rum         # build RPM packages
```


## Install

You can install `rum` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install rum;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y rum -v 18  # PG 18
pig ext install -y rum -v 17  # PG 17
pig ext install -y rum -v 16  # PG 16
pig ext install -y rum -v 15  # PG 15
pig ext install -y rum -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y rum_18       # PG 18
dnf install -y rum_17       # PG 17
dnf install -y rum_16       # PG 16
dnf install -y rum_15       # PG 15
dnf install -y rum_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-rum   # PG 18
apt install -y postgresql-17-rum   # PG 17
apt install -y postgresql-16-rum   # PG 16
apt install -y postgresql-15-rum   # PG 15
apt install -y postgresql-14-rum   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION rum;
```




## Usage

> [rum: RUM index access method](https://github.com/postgrespro/rum)

RUM is an index access method that extends GIN by storing additional information in the posting tree. This enables direct access to positional data, avoiding extra heap scans for ranking, phrase searches, and timestamp ordering.

### Index Creation

```sql
CREATE INDEX idx ON table_name USING rum (column operator_class);
```

With addon operators (e.g., ordering by a timestamp alongside full-text search):

```sql
CREATE INDEX tsts_idx ON tsts USING rum (t rum_tsvector_addon_ops, d)
    WITH (attach = 'd', to = 't');
```

### Operator Classes

| Operator Class | Description |
|---------------|-------------|
| `rum_tsvector_ops` | Stores tsvector lexemes with positions. Supports `<=>` ordering and prefix search. |
| `rum_tsvector_hash_ops` | Stores hashed tsvector lexemes with positions. Supports `<=>` ordering, no prefix search. |
| `rum_tsvector_addon_ops` | Combines tsvector with additional fields (timestamps, integers, etc.) for filtering and ordering. |
| `rum_tsvector_hash_addon_ops` | Hashed variant supporting addon fields, no prefix search. |
| `rum_tsquery_ops` | Stores tsquery branches for fast query matching against indexed documents. |
| `rum_anyarray_ops` | Indexes array types. Supports `&&`, `@>`, `<@`, `=`, `%` and `<=>` ordering. |
| `rum_anyarray_addon_ops` | Combines array elements with additional fields. |
| `rum_TYPE_ops` | Generic ops for int2, int4, int8, float4, float8, money, oid, time, timetz, date, interval, macaddr, inet, cidr, text, varchar, char, bytea, bit, varbit, numeric, timestamp, timestamptz. |

### Ordering Operators

| Operator | Description |
|----------|-------------|
| `<=>` | Distance operator for tsvector, timestamp, numeric types, arrays |
| `<=\|` | Left-side distance for timestamp, int, float, money, oid |
| `\|=>` | Right-side distance for timestamp, int, float, money, oid |

### Examples

Full-text search with ranking:

```sql
SELECT t, a <=> to_tsquery('english', 'beautiful | place') AS rank
FROM test_rum
WHERE a @@ to_tsquery('english', 'beautiful | place')
ORDER BY a <=> to_tsquery('english', 'beautiful | place');
```

Timestamp-ordered full-text search:

```sql
SELECT id, d, d <=> '2016-05-16 14:21:25' FROM tsts
WHERE t @@ 'wr&qh'
ORDER BY d <=> '2016-05-16 14:21:25'
LIMIT 5;
```

Array matching with distance ordering:

```sql
SELECT * FROM test_array
WHERE i && '{1}'
ORDER BY i <=> '{1}' ASC;
```
