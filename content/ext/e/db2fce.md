---
title: "db2fce"
linkTitle: "db2fce"
description: "DB2 compatibility functions, types, operators, and SYSIBM.SYSDUMMY1 for PostgreSQL."
weight: 9200
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/credativ/db2fce">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">credativ/db2fce</div>
    <div class="ext-card__desc">https://github.com/credativ/db2fce</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/db2fce-0.0.17.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">db2fce-0.0.17.tar.gz</div>
    <div class="ext-card__desc">db2fce-0.0.17.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`db2fce`**](/ext/e/db2fce) | `0.0.17` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9200  | [**`db2fce`**](/ext/e/db2fce) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `db2` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`orafce`](/ext/e/orafce) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_dbms_job`](/ext/e/pg_dbms_job) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGDG APT is complete for PG14-18; Pigsty RPM noarch spec fills the PGDG YUM gap for PG14-18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.0.17` | {{< pgvers "18,17,16,15,14" >}} | `db2fce` | `plpgsql` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.17` | {{< pgvers "18,17,16,15,14" >}} | `db2fce_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.0.17` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-db2fce` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 | AVAIL PIGSTY 0.0.17 1 |
| d12.x86_64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| d12.aarch64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| d13.x86_64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| d13.aarch64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| u22.x86_64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| u22.aarch64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| u24.x86_64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| u24.aarch64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| u26.x86_64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
| u26.aarch64 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 | AVAIL PGDG 0.0.17 1 |
@ el8.x86_64 18 db2fce_18 db2fce_18-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db2fce_18-0.0.17-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 db2fce_18 db2fce_18-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db2fce_18-0.0.17-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 db2fce_18 db2fce_18-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db2fce_18-0.0.17-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 db2fce_18 db2fce_18-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db2fce_18-0.0.17-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 db2fce_18 db2fce_18-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db2fce_18-0.0.17-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 db2fce_18 db2fce_18-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db2fce_18-0.0.17-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg13+1_all.deb
@ u22.x86_64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u24.x86_64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-db2fce postgresql-18-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-18-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ el8.x86_64 17 db2fce_17 db2fce_17-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db2fce_17-0.0.17-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 db2fce_17 db2fce_17-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db2fce_17-0.0.17-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 db2fce_17 db2fce_17-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db2fce_17-0.0.17-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 db2fce_17 db2fce_17-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db2fce_17-0.0.17-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 db2fce_17 db2fce_17-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db2fce_17-0.0.17-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 db2fce_17 db2fce_17-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db2fce_17-0.0.17-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d13.x86_64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg13+1_all.deb
@ u22.x86_64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u24.x86_64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u26.x86_64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-db2fce postgresql-17-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-17-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ el8.x86_64 16 db2fce_16 db2fce_16-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db2fce_16-0.0.17-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 db2fce_16 db2fce_16-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db2fce_16-0.0.17-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 db2fce_16 db2fce_16-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db2fce_16-0.0.17-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 db2fce_16 db2fce_16-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db2fce_16-0.0.17-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 db2fce_16 db2fce_16-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db2fce_16-0.0.17-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 db2fce_16 db2fce_16-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db2fce_16-0.0.17-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d13.x86_64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg13+1_all.deb
@ u22.x86_64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u24.x86_64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u26.x86_64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-db2fce postgresql-16-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-16-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ el8.x86_64 15 db2fce_15 db2fce_15-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db2fce_15-0.0.17-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 db2fce_15 db2fce_15-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db2fce_15-0.0.17-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 db2fce_15 db2fce_15-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db2fce_15-0.0.17-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 db2fce_15 db2fce_15-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db2fce_15-0.0.17-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 db2fce_15 db2fce_15-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db2fce_15-0.0.17-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 db2fce_15 db2fce_15-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db2fce_15-0.0.17-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d13.x86_64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg13+1_all.deb
@ u22.x86_64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u22.aarch64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u24.x86_64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u26.x86_64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-db2fce postgresql-15-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-15-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ el8.x86_64 14 db2fce_14 db2fce_14-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db2fce_14-0.0.17-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 db2fce_14 db2fce_14-0.0.17-1PIGSTY.el8.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db2fce_14-0.0.17-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 db2fce_14 db2fce_14-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db2fce_14-0.0.17-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 db2fce_14 db2fce_14-0.0.17-1PIGSTY.el9.noarch.rpm pigsty 0.0.17 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db2fce_14-0.0.17-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 db2fce_14 db2fce_14-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db2fce_14-0.0.17-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 db2fce_14 db2fce_14-0.0.17-1PIGSTY.el10.noarch.rpm pigsty 0.0.17 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db2fce_14-0.0.17-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg12+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg12+1_all.deb
@ d13.x86_64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg13+1_all.deb pgdg 0.0.17 8.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg13+1_all.deb
@ u22.x86_64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u22.aarch64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg22.04+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg22.04+1_all.deb
@ u24.x86_64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg24.04+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg24.04+1_all.deb
@ u26.x86_64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-db2fce postgresql-14-db2fce_0.0.17-1.pgdg26.04+1_all.deb pgdg 0.0.17 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/db2fce/postgresql-14-db2fce_0.0.17-1.pgdg26.04+1_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `db2fce` using `pig build`:

```bash
pig build pkg db2fce         # build RPM / DEB packages
```


## Install

You can install `db2fce` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install db2fce;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y db2fce -v 18  # PG 18
pig ext install -y db2fce -v 17  # PG 17
pig ext install -y db2fce -v 16  # PG 16
pig ext install -y db2fce -v 15  # PG 15
pig ext install -y db2fce -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y db2fce_18       # PG 18
dnf install -y db2fce_17       # PG 17
dnf install -y db2fce_16       # PG 16
dnf install -y db2fce_15       # PG 15
dnf install -y db2fce_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-db2fce   # PG 18
apt install -y postgresql-17-db2fce   # PG 17
apt install -y postgresql-16-db2fce   # PG 16
apt install -y postgresql-15-db2fce   # PG 15
apt install -y postgresql-14-db2fce   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION db2fce CASCADE;  -- requires: plpgsql
```




## Usage

Sources: [README](https://github.com/credativ/db2fce/blob/master/README.md), [SQL objects](https://github.com/credativ/db2fce/blob/master/db2fce.sql), [control file](https://github.com/credativ/db2fce/blob/master/db2fce.control)

`db2fce` provides a DB2 compatibility environment for PostgreSQL. It creates DB2-style functions, types, operators, and the `SYSIBM.SYSDUMMY1` compatibility view so SQL originally written for IBM Db2 can be adapted with fewer changes.

### Enable

```sql
CREATE EXTENSION db2fce;

SET search_path = db2, sysibm, public;
```

The extension creates most compatibility objects in the `db2` schema and creates `sysibm.sysdummy1` for DB2 queries that expect a dummy single-row table.

```sql
SELECT * FROM sysibm.sysdummy1;
```

### Compatibility Functions

The `db2` schema includes date/time helpers such as `microsecond`, `second`, `minute`, `hour`, `day`, `month`, `year`, `days`, `months_between`, `date`, `time`, and `timestamp_format`.

String and conversion helpers include `locate`, `translate`, `lcase`, `upper`, `lower`, `strip`, `char`, `integer`, `int`, `double`, `decimal`, `dec`, `hex`, `round`, `digits`, and `value`.

### Operators

The SQL layer also defines DB2-style operators such as `^=` for inequality and `!!` for concatenation across several data types.

```sql
SELECT db2.int('42');
SELECT db2.days(current_date);
SELECT 'db' !! '2';
```

### Notes

Adding `db2` to `search_path` lets many DB2 function calls work without schema qualification. Some names that conflict with PostgreSQL syntax or built-in behavior may still need explicit `db2.` qualification.
