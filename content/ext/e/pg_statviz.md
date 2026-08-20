---
title: "pg_statviz"
linkTitle: "pg_statviz"
description: "Capture PostgreSQL statistics snapshots for time-series analysis and visualization"
weight: 6080
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/vyruss/pg_statviz">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">vyruss/pg_statviz</div>
    <div class="ext-card__desc">https://github.com/vyruss/pg_statviz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_statviz`**](/ext/e/pg_statviz) | `1.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6080  | [**`pg_statviz`**](/ext/e/pg_statviz) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgstatviz` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) `pgsampler` [`pgmonitor`](/ext/e/pgmonitor) `pg_mon` [`timescaledb`](/ext/e/timescaledb) `town` [`pg_stl`](/ext/e/pg_stl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Cataloged but hidden from default package groups. GitHub release and control are 1.1 while PGXN still serves 1.0. PGDG DEB 1.1 covers active PG14-18 except Ubuntu 22.04 and recommends the separate Python utility, so a normal APT install can pull its Python stack. PGDG RPM remains at 0.9, lacks PG17, and provides PG18 only on EL10; its metadata declares no PostgreSQL dependency, labels GPLv2+ although upstream uses the PostgreSQL License, and describes a CLI although the subpackage contains only extension SQL and control files. The extension itself is pure SQL and PL/pgSQL and needs no preload.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_statviz` | `plpgsql` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.9` | {{< pgvers "18,16,15,14" >}} | `pg_statviz_extension_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-statviz` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.9 2 | AVAIL PGDG 0.9 4 | AVAIL PGDG 0.9 4 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.9 2 | AVAIL PGDG 0.9 4 | AVAIL PGDG 0.9 4 |
| el9.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.9 3 | AVAIL PGDG 0.9 5 | AVAIL PGDG 0.9 5 |
| el9.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.9 3 | AVAIL PGDG 0.9 5 | AVAIL PGDG 0.9 5 |
| el10.x86_64 | AVAIL PGDG 0.9 3 | MISS PGDG - 0 | AVAIL PGDG 0.9 4 | AVAIL PGDG 0.9 4 | AVAIL PGDG 0.9 4 |
| el10.aarch64 | AVAIL PGDG 0.9 2 | MISS PGDG - 0 | AVAIL PGDG 0.9 3 | AVAIL PGDG 0.9 3 | AVAIL PGDG 0.9 3 |
| d12.x86_64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
| d12.aarch64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
| d13.x86_64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
| d13.aarch64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
| u24.aarch64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
| u26.x86_64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
| u26.aarch64 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 | AVAIL PGDG 1.1 3 |
@ el10.x86_64 18 pg_statviz_extension_18 pg_statviz_extension_18-0.9-1PGDG.rhel10.2.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statviz_extension_18-0.9-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_statviz_extension_18 pg_statviz_extension_18-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statviz_extension_18-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 18 pg_statviz_extension_18 pg_statviz_extension_18-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 15.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statviz_extension_18-0.9-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 18 pg_statviz_extension_18 pg_statviz_extension_18-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_statviz_extension_18-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 18 pg_statviz_extension_18 pg_statviz_extension_18-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_statviz_extension_18-0.9-1PGDG.rhel10.0.noarch.rpm
@ d12.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg12+1_all.deb
@ d12.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg12+1_all.deb
@ d12.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg13+1_all.deb
@ d13.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg13+1_all.deb
@ d13.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg13+1_all.deb
@ u24.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.x86_64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-statviz postgresql-18-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-18-statviz_1.0-1.pgdg26.04+1_all.deb
@ d12.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg12+1_all.deb
@ d12.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg12+1_all.deb
@ d12.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg12+1_all.deb
@ d13.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg13+1_all.deb
@ d13.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg13+1_all.deb
@ d13.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg13+1_all.deb
@ u24.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg24.04+1_all.deb
@ u26.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.x86_64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-statviz postgresql-17-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-17-statviz_1.0-1.pgdg26.04+1_all.deb
@ el8.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel8.10.noarch.rpm pgdg 0.9 15.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_statviz_extension_16-0.9-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.6-1PGDG.rhel8.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_statviz_extension_16-0.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel8.10.noarch.rpm pgdg 0.9 15.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_statviz_extension_16-0.9-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.6-1PGDG.rhel8.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_statviz_extension_16-0.6-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel9.7.noarch.rpm pgdg 0.9 14.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statviz_extension_16-0.9-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel9.6.noarch.rpm pgdg 0.9 14.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statviz_extension_16-0.9-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.6-1PGDG.rhel9.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statviz_extension_16-0.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel9.7.noarch.rpm pgdg 0.9 14.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statviz_extension_16-0.9-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel9.6.noarch.rpm pgdg 0.9 14.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statviz_extension_16-0.9-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.6-1PGDG.rhel9.noarch.rpm pgdg 0.6 11.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statviz_extension_16-0.6-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel10.2.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statviz_extension_16-0.9-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statviz_extension_16-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 15.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statviz_extension_16-0.9-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.6-1PGDG.rhel10.noarch.rpm pgdg 0.6 12.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statviz_extension_16-0.6-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_statviz_extension_16-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_statviz_extension_16-0.9-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 16 pg_statviz_extension_16 pg_statviz_extension_16-0.6-1PGDG.rhel10.noarch.rpm pgdg 0.6 12.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_statviz_extension_16-0.6-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg12+1_all.deb
@ d12.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg12+1_all.deb
@ d12.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg12+1_all.deb
@ d13.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg13+1_all.deb
@ d13.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg13+1_all.deb
@ d13.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg13+1_all.deb
@ u24.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg24.04+1_all.deb
@ u26.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.x86_64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-statviz postgresql-16-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-16-statviz_1.0-1.pgdg26.04+1_all.deb
@ el8.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel8.10.noarch.rpm pgdg 0.9 15.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statviz_extension_15-0.9-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.6-1PGDG.rhel8.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statviz_extension_15-0.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.5-1PGDG.rhel8.noarch.rpm pgdg 0.5 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statviz_extension_15-0.5-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.4-1PGDG.rhel8.noarch.rpm pgdg 0.4 11.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statviz_extension_15-0.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel8.10.noarch.rpm pgdg 0.9 15.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statviz_extension_15-0.9-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.6-1PGDG.rhel8.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statviz_extension_15-0.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.5-1PGDG.rhel8.noarch.rpm pgdg 0.5 11.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statviz_extension_15-0.5-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.4-1PGDG.rhel8.noarch.rpm pgdg 0.4 11.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statviz_extension_15-0.4-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel9.7.noarch.rpm pgdg 0.9 14.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statviz_extension_15-0.9-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel9.6.noarch.rpm pgdg 0.9 14.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statviz_extension_15-0.9-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.6-1PGDG.rhel9.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statviz_extension_15-0.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.5-1PGDG.rhel9.noarch.rpm pgdg 0.5 11.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statviz_extension_15-0.5-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.4-1PGDG.rhel9.noarch.rpm pgdg 0.4 11.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statviz_extension_15-0.4-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel9.7.noarch.rpm pgdg 0.9 14.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statviz_extension_15-0.9-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel9.6.noarch.rpm pgdg 0.9 14.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statviz_extension_15-0.9-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.6-1PGDG.rhel9.noarch.rpm pgdg 0.6 11.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statviz_extension_15-0.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.5-1PGDG.rhel9.noarch.rpm pgdg 0.5 11.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statviz_extension_15-0.5-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.4-1PGDG.rhel9.noarch.rpm pgdg 0.4 11.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statviz_extension_15-0.4-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel10.2.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statviz_extension_15-0.9-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statviz_extension_15-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 15.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statviz_extension_15-0.9-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.6-1PGDG.rhel10.noarch.rpm pgdg 0.6 12.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statviz_extension_15-0.6-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_statviz_extension_15-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_statviz_extension_15-0.9-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 15 pg_statviz_extension_15 pg_statviz_extension_15-0.6-1PGDG.rhel10.noarch.rpm pgdg 0.6 12.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_statviz_extension_15-0.6-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg12+1_all.deb
@ d12.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg12+1_all.deb
@ d12.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg12+1_all.deb
@ d13.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg13+1_all.deb
@ d13.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg13+1_all.deb
@ d13.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg13+1_all.deb
@ u24.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg24.04+1_all.deb
@ u26.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.x86_64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-statviz postgresql-15-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-15-statviz_1.0-1.pgdg26.04+1_all.deb
@ el8.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel8.10.noarch.rpm pgdg 0.9 15.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statviz_extension_14-0.9-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.6-1PGDG.rhel8.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statviz_extension_14-0.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.5-1PGDG.rhel8.noarch.rpm pgdg 0.5 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statviz_extension_14-0.5-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.4-1PGDG.rhel8.noarch.rpm pgdg 0.4 11.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statviz_extension_14-0.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel8.10.noarch.rpm pgdg 0.9 15.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statviz_extension_14-0.9-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.6-1PGDG.rhel8.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statviz_extension_14-0.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.5-1PGDG.rhel8.noarch.rpm pgdg 0.5 11.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statviz_extension_14-0.5-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.4-1PGDG.rhel8.noarch.rpm pgdg 0.4 11.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statviz_extension_14-0.4-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel9.7.noarch.rpm pgdg 0.9 14.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statviz_extension_14-0.9-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel9.6.noarch.rpm pgdg 0.9 14.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statviz_extension_14-0.9-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.6-1PGDG.rhel9.noarch.rpm pgdg 0.6 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statviz_extension_14-0.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.5-1PGDG.rhel9.noarch.rpm pgdg 0.5 11.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statviz_extension_14-0.5-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.4-1PGDG.rhel9.noarch.rpm pgdg 0.4 11.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statviz_extension_14-0.4-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel9.7.noarch.rpm pgdg 0.9 14.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statviz_extension_14-0.9-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel9.6.noarch.rpm pgdg 0.9 14.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statviz_extension_14-0.9-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.6-1PGDG.rhel9.noarch.rpm pgdg 0.6 11.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statviz_extension_14-0.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.5-1PGDG.rhel9.noarch.rpm pgdg 0.5 11.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statviz_extension_14-0.5-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.4-1PGDG.rhel9.noarch.rpm pgdg 0.4 11.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statviz_extension_14-0.4-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel10.2.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statviz_extension_14-0.9-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statviz_extension_14-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 15.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statviz_extension_14-0.9-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.6-1PGDG.rhel10.noarch.rpm pgdg 0.6 12.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statviz_extension_14-0.6-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel10.1.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_statviz_extension_14-0.9-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.9-1PGDG.rhel10.0.noarch.rpm pgdg 0.9 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_statviz_extension_14-0.9-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 14 pg_statviz_extension_14 pg_statviz_extension_14-0.6-1PGDG.rhel10.noarch.rpm pgdg 0.6 12.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_statviz_extension_14-0.6-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg12+1_all.deb
@ d12.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg12+1_all.deb
@ d12.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg12+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg12+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg12+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg12+1_all.deb
@ d13.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg13+1_all.deb
@ d13.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg13+1_all.deb
@ d13.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg13+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg13+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg13+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg13+1_all.deb
@ u24.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg24.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg24.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg24.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg24.04+1_all.deb
@ u26.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.x86_64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.1-1.pgdg26.04+1_all.deb pgdg 1.1 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-2.pgdg26.04+1_all.deb pgdg 1.0 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-2.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-statviz postgresql-14-statviz_1.0-1.pgdg26.04+1_all.deb pgdg 1.0 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-statviz/postgresql-14-statviz_1.0-1.pgdg26.04+1_all.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_statviz` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_statviz;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_statviz -v 18  # PG 18
pig ext install -y pg_statviz -v 17  # PG 17
pig ext install -y pg_statviz -v 16  # PG 16
pig ext install -y pg_statviz -v 15  # PG 15
pig ext install -y pg_statviz -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_statviz_extension_18       # PG 18
dnf install -y pg_statviz_extension_17       # PG 17
dnf install -y pg_statviz_extension_16       # PG 16
dnf install -y pg_statviz_extension_15       # PG 15
dnf install -y pg_statviz_extension_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-statviz   # PG 18
apt install -y postgresql-17-statviz   # PG 17
apt install -y postgresql-16-statviz   # PG 16
apt install -y postgresql-15-statviz   # PG 15
apt install -y postgresql-14-statviz   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_statviz CASCADE;  -- requires: plpgsql
```

## Usage

Sources:

- [pg_statviz v1.1 release](https://github.com/vyruss/pg_statviz/releases/tag/v1.1)
- [pg_statviz v1.1 README](https://github.com/vyruss/pg_statviz/blob/v1.1/README.md)
- [pg_statviz v1.1 installation SQL](https://github.com/vyruss/pg_statviz/blob/v1.1/pg_statviz--1.1.sql)
- [pg_statviz v1.1 control file](https://github.com/vyruss/pg_statviz/blob/v1.1/pg_statviz.control)
- [pg_statviz v1.1 metadata](https://github.com/vyruss/pg_statviz/blob/v1.1/META.json)
- [pg_statviz v1.1 Python package metadata](https://github.com/vyruss/pg_statviz/blob/v1.1/pyproject.toml)
- [pg_statviz v1.1 AI provider implementation](https://github.com/vyruss/pg_statviz/blob/v1.1/src/pg_statviz/libs/ai.py)
- [Official PGXN distribution](https://pgxn.org/dist/pg_statviz/)

`pg_statviz` v1.1 is a pure SQL and PL/pgSQL statistics snapshot extension plus a separately installed Python visualization utility. The extension stores cumulative and dynamic PostgreSQL statistics in the fixed `pgstatviz` schema; the utility reads a selected time range and generates charts or optional AI-assisted HTML reports. It requires PostgreSQL 13 or later, needs no `shared_preload_libraries`, and does not require a restart. The utility requires Python 3.11 or later.

### Capture and Retain Snapshots

Have an administrator install the extension, then let a dedicated collection role inherit `pg_monitor` and schedule `pgstatviz.snapshot()` with cron or another external job runner.

```sql
CREATE EXTENSION pg_statviz;

GRANT pg_monitor TO stats_collector;

SELECT pgstatviz.snapshot();

DELETE FROM pgstatviz.snapshots
WHERE snapshot_tstamp < CURRENT_DATE - 90;
```

Deleting parent rows cascades to the associated samples. `pgstatviz.delete_snapshots()` instead truncates the complete history. Pick an interval and retention window based on the shortest event worth observing and the resulting table growth; raw PostgreSQL counters are cumulative and can reset independently, so analyze timestamped deltas rather than treating stored values as rates.

### Stored Data and Version Boundaries

The main relations are `pgstatviz.snapshots`, `pgstatviz.buf`, `pgstatviz.conf`, `pgstatviz.conn`, `pgstatviz.db`, `pgstatviz.io`, `pgstatviz.lock`, `pgstatviz.repl`, `pgstatviz.slru`, `pgstatviz.wait`, and `pgstatviz.wal`. Samples include configuration values, connection user names and ages, replication application and slot names, waits, locks, I/O, database counters, and WAL counters. Protect the tables, dumps, charts, and reports as operational data.

Configuration is stored only when it changes, so `pgstatviz.conf` need not contain one row for every snapshot. `pg_stat_wal` data is collected on PostgreSQL 14 and later; `pg_stat_io` data is collected on PostgreSQL 16 and later, with PostgreSQL 18's byte-based fields handled separately. On older supported versions those tables remain part of the schema, but the unavailable collectors are skipped.

The extension marks its snapshot tables for extension-aware dumps. This allows history to be moved with `pg_dump`, but retention and backup size still need deliberate limits.

### Visualize a Time Range

Install the utility separately and pass normal libpq connection options. The `analyze` command runs every analysis module; individual modules such as `conn`, `io`, `wait`, and `wal` can be selected when a narrower report is sufficient.

```bash
pip install pg_statviz

pg_statviz analyze \
  -h /var/run/postgresql -d mydb -U stats_reader \
  -D 2026-08-01T00:00 2026-08-02T00:00 \
  -O /srv/pg_statviz/reports
```

Restrict database credentials and report-directory access. A visualization role needs read access to the captured schema but does not need permission to collect or delete snapshots.

### Privilege Boundary

The v1.1 installation SQL grants every member of `pg_monitor` schema usage, function execution, and `SELECT`, `INSERT`, `DELETE`, and `TRUNCATE` on all `pgstatviz` tables. Consequently, membership allows both snapshot collection and complete history removal through `pgstatviz.delete_snapshots()`; it is not a read-only visualization role.

If collection, visualization, and retention administration must be separated, revise the default grants after installation and grant only the required functions and table privileges to dedicated roles. Recheck those grants after an extension update.

### Optional AI and Cloud Data Review

Normal chart generation makes no LLM request. AI mode requires the optional `pg_statviz[ai]` dependencies and an explicit `--ai` flag. Claude is the default cloud provider and reads `ANTHROPIC_API_KEY`; Gemini reads `GOOGLE_API_KEY`; `--ai local` uses a local Ollama service. The current defaults are `claude-sonnet-4-6`, `gemini-2.5-flash`, and `gemma4:e4b`; these are implementation defaults, not a guarantee that a provider account or local runtime will continue to offer them.

```bash
pip install 'pg_statviz[ai]'

pg_statviz analyze \
  -h /var/run/postgresql -d mydb -U stats_reader \
  -D 2026-08-01T00:00 2026-08-02T00:00 \
  -O /srv/pg_statviz/reports \
  --ai gemini
```

For a cloud provider, the request can include chart images and summarized series together with the captured PostgreSQL version, primary/standby role, hostname, relevant configuration values, deterministic findings, user or role names, and replication identifiers. Treat that as an explicit operational-data export: review provider retention and regional policy, minimize the selected time range, secure generated HTML and PNG files, and use an approved outbound path. The prompt's data envelopes reduce prompt-injection risk but do not provide confidentiality, authorization, or a substitute for provider governance.
