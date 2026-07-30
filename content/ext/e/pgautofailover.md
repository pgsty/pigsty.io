---
title: "pgautofailover"
linkTitle: "pgautofailover"
description: "pg_auto_failover"
weight: 5150
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hapostgres/pg_auto_failover">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hapostgres/pg_auto_failover</div>
    <div class="ext-card__desc">https://github.com/hapostgres/pg_auto_failover</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgautofailover`**](/ext/e/pgautofailover) | `2.2` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5150  | [**`pgautofailover`**](/ext/e/pgautofailover) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`btree_gist`](/ext/e/btree_gist) [`repmgr`](/ext/e/repmgr) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`bgw_replstatus`](/ext/e/bgw_replstatus) [`pgpool_adm`](/ext/e/pgpool_adm) [`pglogical`](/ext/e/pglogical) [`pgactive`](/ext/e/pgactive) [`pglogical_ticker`](/ext/e/pglogical_ticker) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.2` | {{< pgvers "18,17,16,15,14" >}} | `pgautofailover` | `btree_gist` |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_auto_failover_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-auto-failover` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 3 | AVAIL PGDG 2.2 5 |
| el8.aarch64 | AVAIL PIGSTY 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 3 | AVAIL PGDG 2.2 3 |
| el9.x86_64 | AVAIL PIGSTY 2.2 1 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 3 | AVAIL PGDG 2.2 4 | AVAIL PGDG 2.2 5 |
| el9.aarch64 | AVAIL PIGSTY 2.2 1 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 3 | AVAIL PGDG 2.2 4 | AVAIL PGDG 2.2 4 |
| el10.x86_64 | AVAIL PIGSTY 2.2 1 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| el10.aarch64 | AVAIL PIGSTY 2.2 1 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| d12.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| d12.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| d13.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| d13.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| u22.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| u22.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| u24.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| u24.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| u26.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| u26.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
@ el8.x86_64 18 pg_auto_failover_18 pg_auto_failover_18-2.2-5PIGSTY.el8.x86_64.rpm pigsty 2.2 837.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_auto_failover_18-2.2-5PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_auto_failover_18 pg_auto_failover_18-2.2-5PIGSTY.el8.aarch64.rpm pigsty 2.2 837.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_auto_failover_18-2.2-5PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_auto_failover_18 pg_auto_failover_18-2.2-5PIGSTY.el9.x86_64.rpm pigsty 2.2 789.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_auto_failover_18-2.2-5PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_auto_failover_18 pg_auto_failover_18-2.2-5PIGSTY.el9.aarch64.rpm pigsty 2.2 792.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_auto_failover_18-2.2-5PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_auto_failover_18 pg_auto_failover_18-2.2-5PIGSTY.el10.x86_64.rpm pigsty 2.2 791.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_auto_failover_18-2.2-5PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_auto_failover_18 pg_auto_failover_18-2.2-5PIGSTY.el10.aarch64.rpm pigsty 2.2 789.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_auto_failover_18-2.2-5PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg12+1_amd64.deb pgdg 2.2 378.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg12+1_amd64.deb pgdg 2.2 377.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg12+1_arm64.deb pgdg 2.2 373.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg12+1_arm64.deb pgdg 2.2 373.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg13+1_amd64.deb pgdg 2.2 379.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg13+1_amd64.deb pgdg 2.2 379.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg13+1_arm64.deb pgdg 2.2 374.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg13+1_arm64.deb pgdg 2.2 374.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg22.04+1_amd64.deb pgdg 2.2 378.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg22.04+1_amd64.deb pgdg 2.2 378.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg22.04+1_arm64.deb pgdg 2.2 374.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg22.04+1_arm64.deb pgdg 2.2 374.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg24.04+1_amd64.deb pgdg 2.2 369.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg24.04+1_amd64.deb pgdg 2.2 369.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg24.04+1_arm64.deb pgdg 2.2 364.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg24.04+1_arm64.deb pgdg 2.2 364.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg26.04+1_amd64.deb pgdg 2.2 368.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg26.04+1_amd64.deb pgdg 2.2 368.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-4.pgdg26.04+1_arm64.deb pgdg 2.2 364.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-auto-failover postgresql-18-auto-failover_2.2-3.pgdg26.04+1_arm64.deb pgdg 2.2 364.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-18-auto-failover_2.2-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 812.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_auto_failover_17-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 809.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_auto_failover_17-2.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-4PGDG.rhel9.8.x86_64.rpm pgdg 2.2 786.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_auto_failover_17-2.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 786.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_auto_failover_17-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-4PGDG.rhel9.8.aarch64.rpm pgdg 2.2 789.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_auto_failover_17-2.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 789.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_auto_failover_17-2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-4PGDG.rhel10.2.x86_64.rpm pgdg 2.2 788.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_auto_failover_17-2.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 788.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_auto_failover_17-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-4PGDG.rhel10.2.aarch64.rpm pgdg 2.2 785.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_auto_failover_17-2.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_auto_failover_17 pg_auto_failover_17-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 785.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_auto_failover_17-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg12+1_amd64.deb pgdg 2.2 374.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg12+1_amd64.deb pgdg 2.2 374.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg12+1_arm64.deb pgdg 2.2 370.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg12+1_arm64.deb pgdg 2.2 370.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg13+1_amd64.deb pgdg 2.2 374.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg13+1_amd64.deb pgdg 2.2 375.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg13+1_arm64.deb pgdg 2.2 372.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg13+1_arm64.deb pgdg 2.2 372.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg22.04+1_amd64.deb pgdg 2.2 393.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg22.04+1_amd64.deb pgdg 2.2 393.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg22.04+1_arm64.deb pgdg 2.2 389.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg22.04+1_arm64.deb pgdg 2.2 388.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg24.04+1_amd64.deb pgdg 2.2 364.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg24.04+1_amd64.deb pgdg 2.2 364.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg24.04+1_arm64.deb pgdg 2.2 362.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg24.04+1_arm64.deb pgdg 2.2 362.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg26.04+1_amd64.deb pgdg 2.2 366.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg26.04+1_amd64.deb pgdg 2.2 366.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-4.pgdg26.04+1_arm64.deb pgdg 2.2 361.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-auto-failover postgresql-17-auto-failover_2.2-3.pgdg26.04+1_arm64.deb pgdg 2.2 361.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-17-auto-failover_2.2-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 812.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_auto_failover_16-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_auto_failover_16 pg_auto_failover_16-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 844.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_auto_failover_16-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 809.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_auto_failover_16-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_auto_failover_16 pg_auto_failover_16-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 843.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_auto_failover_16-2.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-4PGDG.rhel9.8.x86_64.rpm pgdg 2.2 786.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_auto_failover_16-2.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 786.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_auto_failover_16-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_auto_failover_16 pg_auto_failover_16-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 807.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_auto_failover_16-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-4PGDG.rhel9.8.aarch64.rpm pgdg 2.2 789.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_auto_failover_16-2.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 789.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_auto_failover_16-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_auto_failover_16 pg_auto_failover_16-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 817.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_auto_failover_16-2.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-4PGDG.rhel10.2.x86_64.rpm pgdg 2.2 787.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_auto_failover_16-2.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 788.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_auto_failover_16-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-4PGDG.rhel10.2.aarch64.rpm pgdg 2.2 785.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_auto_failover_16-2.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_auto_failover_16 pg_auto_failover_16-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 785.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_auto_failover_16-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg12+1_amd64.deb pgdg 2.2 368.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg12+1_amd64.deb pgdg 2.2 368.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg12+1_arm64.deb pgdg 2.2 364.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg12+1_arm64.deb pgdg 2.2 365.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg13+1_amd64.deb pgdg 2.2 369.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg13+1_amd64.deb pgdg 2.2 369.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg13+1_arm64.deb pgdg 2.2 365.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg13+1_arm64.deb pgdg 2.2 366.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg22.04+1_amd64.deb pgdg 2.2 387.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg22.04+1_amd64.deb pgdg 2.2 387.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg22.04+1_arm64.deb pgdg 2.2 383.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg22.04+1_arm64.deb pgdg 2.2 383.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg24.04+1_amd64.deb pgdg 2.2 358.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg24.04+1_amd64.deb pgdg 2.2 358.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg24.04+1_arm64.deb pgdg 2.2 356.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg24.04+1_arm64.deb pgdg 2.2 356.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg26.04+1_amd64.deb pgdg 2.2 360.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg26.04+1_amd64.deb pgdg 2.2 360.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-4.pgdg26.04+1_arm64.deb pgdg 2.2 356.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-auto-failover postgresql-16-auto-failover_2.2-3.pgdg26.04+1_arm64.deb pgdg 2.2 357.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-16-auto-failover_2.2-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 812.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_auto_failover_15-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 843.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_auto_failover_15-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.0-1.rhel8.x86_64.rpm pgdg 2.0 842.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_auto_failover_15-2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 809.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_auto_failover_15-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 843.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_auto_failover_15-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.0-1.rhel8.aarch64.rpm pgdg 2.0 841.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_auto_failover_15-2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-4PGDG.rhel9.8.x86_64.rpm pgdg 2.2 789.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_auto_failover_15-2.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 789.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_auto_failover_15-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 811.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_auto_failover_15-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.0-1.rhel9.x86_64.rpm pgdg 2.0 812.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_auto_failover_15-2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-4PGDG.rhel9.8.aarch64.rpm pgdg 2.2 792.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_auto_failover_15-2.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 792.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_auto_failover_15-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 820.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_auto_failover_15-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.0-1.rhel9.aarch64.rpm pgdg 2.0 821.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_auto_failover_15-2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-4PGDG.rhel10.2.x86_64.rpm pgdg 2.2 791.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_auto_failover_15-2.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 791.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_auto_failover_15-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-4PGDG.rhel10.2.aarch64.rpm pgdg 2.2 789.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_auto_failover_15-2.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_auto_failover_15 pg_auto_failover_15-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 788.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_auto_failover_15-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg12+1_amd64.deb pgdg 2.2 368.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg12+1_amd64.deb pgdg 2.2 368.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg12+1_arm64.deb pgdg 2.2 365.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg12+1_arm64.deb pgdg 2.2 365.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg13+1_amd64.deb pgdg 2.2 369.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg13+1_amd64.deb pgdg 2.2 370.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg13+1_arm64.deb pgdg 2.2 366.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg13+1_arm64.deb pgdg 2.2 366.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg22.04+1_amd64.deb pgdg 2.2 391.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg22.04+1_amd64.deb pgdg 2.2 391.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg22.04+1_arm64.deb pgdg 2.2 387.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg22.04+1_arm64.deb pgdg 2.2 388.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg24.04+1_amd64.deb pgdg 2.2 360.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg24.04+1_amd64.deb pgdg 2.2 360.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg24.04+1_arm64.deb pgdg 2.2 357.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg24.04+1_arm64.deb pgdg 2.2 357.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg26.04+1_amd64.deb pgdg 2.2 362.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg26.04+1_amd64.deb pgdg 2.2 363.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-4.pgdg26.04+1_arm64.deb pgdg 2.2 357.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-auto-failover postgresql-15-auto-failover_2.2-3.pgdg26.04+1_arm64.deb pgdg 2.2 357.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-15-auto-failover_2.2-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 810.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_auto_failover_14-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 841.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_auto_failover_14-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.0-1.rhel8.x86_64.rpm pgdg 2.0 840.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_auto_failover_14-2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-1.6.4-1.rhel8.x86_64.rpm pgdg 1.6.4 994.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_auto_failover_14-1.6.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-1.6.2-1.rhel8.x86_64.rpm pgdg 1.6.2 929.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_auto_failover_14-1.6.2-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 808.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_auto_failover_14-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 841.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_auto_failover_14-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.0-1.rhel8.aarch64.rpm pgdg 2.0 840.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_auto_failover_14-2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-4PGDG.rhel9.8.x86_64.rpm pgdg 2.2 789.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_auto_failover_14-2.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 789.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_auto_failover_14-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 811.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_auto_failover_14-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.0-1.rhel9.x86_64.rpm pgdg 2.0 811.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_auto_failover_14-2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-1.6.4-1.rhel9.x86_64.rpm pgdg 1.6.4 966.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_auto_failover_14-1.6.4-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-4PGDG.rhel9.8.aarch64.rpm pgdg 2.2 791.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_auto_failover_14-2.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 792.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_auto_failover_14-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 820.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_auto_failover_14-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.0-1.rhel9.aarch64.rpm pgdg 2.0 821.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_auto_failover_14-2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-4PGDG.rhel10.2.x86_64.rpm pgdg 2.2 792.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_auto_failover_14-2.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 792.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_auto_failover_14-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-4PGDG.rhel10.2.aarch64.rpm pgdg 2.2 789.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_auto_failover_14-2.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_auto_failover_14 pg_auto_failover_14-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 789.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_auto_failover_14-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg12+1_amd64.deb pgdg 2.2 362.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg12+1_amd64.deb pgdg 2.2 362.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg12+1_arm64.deb pgdg 2.2 358.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg12+1_arm64.deb pgdg 2.2 359.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg13+1_amd64.deb pgdg 2.2 364.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg13+1_amd64.deb pgdg 2.2 364.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg13+1_arm64.deb pgdg 2.2 360.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg13+1_arm64.deb pgdg 2.2 360.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg22.04+1_amd64.deb pgdg 2.2 387.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg22.04+1_amd64.deb pgdg 2.2 386.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg22.04+1_arm64.deb pgdg 2.2 383.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg22.04+1_arm64.deb pgdg 2.2 382.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg24.04+1_amd64.deb pgdg 2.2 355.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg24.04+1_amd64.deb pgdg 2.2 354.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg24.04+1_arm64.deb pgdg 2.2 351.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg24.04+1_arm64.deb pgdg 2.2 350.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg26.04+1_amd64.deb pgdg 2.2 357.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg26.04+1_amd64.deb pgdg 2.2 357.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-4.pgdg26.04+1_arm64.deb pgdg 2.2 353.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-auto-failover postgresql-14-auto-failover_2.2-3.pgdg26.04+1_arm64.deb pgdg 2.2 353.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-auto-failover/postgresql-14-auto-failover_2.2-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pgautofailover` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgautofailover;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgautofailover -v 18  # PG 18
pig ext install -y pgautofailover -v 17  # PG 17
pig ext install -y pgautofailover -v 16  # PG 16
pig ext install -y pgautofailover -v 15  # PG 15
pig ext install -y pgautofailover -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_auto_failover_18       # PG 18
dnf install -y pg_auto_failover_17       # PG 17
dnf install -y pg_auto_failover_16       # PG 16
dnf install -y pg_auto_failover_15       # PG 15
dnf install -y pg_auto_failover_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-auto-failover   # PG 18
apt install -y postgresql-17-auto-failover   # PG 17
apt install -y postgresql-16-auto-failover   # PG 16
apt install -y postgresql-15-auto-failover   # PG 15
apt install -y postgresql-14-auto-failover   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgautofailover';
```


**Create Extension**:

```sql
CREATE EXTENSION pgautofailover CASCADE;  -- requires: btree_gist
```




## Usage

> [pgautofailover: pg_auto_failover](https://github.com/hapostgres/pg_auto_failover)

pg_auto_failover is an extension and service for automated PostgreSQL failover. It consists of a monitor node (running the `pgautofailover` extension), and keeper processes on each data node managed by the `pg_autoctl` CLI.

### Architecture

- **Monitor**: a PostgreSQL instance with the `pgautofailover` extension that implements a state machine for failover decisions
- **Keeper** (`pg_autoctl run`): runs on each data node, reports health to the monitor and executes state transitions
- Supports 2+ node setups with synchronous replication by default
- Supports Citus HA (since v2.0)

### Key CLI Commands

```bash
# Create the monitor
pg_autoctl create monitor --pgdata /path/to/monitor --pgport 5000

# Create a data node (primary or secondary auto-assigned)
pg_autoctl create postgres --pgdata /path/to/data --pgport 5001 --monitor postgres://monitor:5000/pg_auto_failover

# Run the keeper (foreground)
pg_autoctl run --pgdata /path/to/data

# Check cluster state
pg_autoctl show state --pgdata /path/to/monitor

# Perform a manual switchover
pg_autoctl perform switchover --pgdata /path/to/monitor

# Perform a manual failover
pg_autoctl perform failover --pgdata /path/to/monitor
```

### Failover Behavior

The monitor tracks node health. When a secondary becomes unavailable or its lag is too high, it is removed from `synchronous_standby_names` on the primary. Failover/switchover operations are blocked until the secondary is healthy again, preventing data loss.

### Documentation

Full documentation: [pg-auto-failover.readthedocs.io](https://pg-auto-failover.readthedocs.io/en/main/)
