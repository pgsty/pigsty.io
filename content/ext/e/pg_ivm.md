---
title: "pg_ivm"
linkTitle: "pg_ivm"
description: "incremental view maintenance on PostgreSQL"
weight: 2840
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/sraoss/pg_ivm">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">sraoss/pg_ivm</div>
    <div class="ext-card__desc">https://github.com/sraoss/pg_ivm</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_ivm-1.17.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_ivm-1.17.tar.gz</div>
    <div class="ext-card__desc">pg_ivm-1.17.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_ivm`**](/ext/e/pg_ivm) | `1.17` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2840  | [**`pg_ivm`**](/ext/e/pg_ivm) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pg_incremental`](/ext/e/pg_incremental) [`pg_trickle`](/ext/e/pg_trickle) [`timescaledb`](/ext/e/timescaledb) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_partman`](/ext/e/pg_partman) [`pg_ttl_index`](/ext/e/pg_ttl_index) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_lake`](/ext/e/pg_lake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Preload in every writing session; restore_immv(replace=true) needs superuser.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.17` | {{< pgvers "18,17,16,15,14" >}} | `pg_ivm` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.17` | {{< pgvers "18,17,16,15,14" >}} | `pg_ivm_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.17` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-ivm` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.17 7 | AVAIL PIGSTY 1.17 9 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 15 | AVAIL PIGSTY 1.17 19 |
| el8.aarch64 | AVAIL PIGSTY 1.17 7 | AVAIL PIGSTY 1.17 9 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 15 | AVAIL PIGSTY 1.17 15 |
| el9.x86_64 | AVAIL PIGSTY 1.17 9 | AVAIL PIGSTY 1.17 11 | AVAIL PIGSTY 1.17 12 | AVAIL PIGSTY 1.17 17 | AVAIL PIGSTY 1.17 20 |
| el9.aarch64 | AVAIL PIGSTY 1.17 9 | AVAIL PIGSTY 1.17 11 | AVAIL PIGSTY 1.17 12 | AVAIL PIGSTY 1.17 17 | AVAIL PIGSTY 1.17 17 |
| el10.x86_64 | AVAIL PIGSTY 1.17 9 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 10 |
| el10.aarch64 | AVAIL PIGSTY 1.17 9 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 10 | AVAIL PIGSTY 1.17 10 |
| d12.x86_64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| d12.aarch64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| d13.x86_64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| d13.aarch64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| u22.x86_64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| u22.aarch64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| u24.x86_64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| u24.aarch64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| u26.x86_64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
| u26.aarch64 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 | AVAIL PIGSTY 1.17 4 |
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.17-1PGSTY.el8.x86_64.rpm pigsty 1.17 138.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ivm_18-1.17-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.17-1PGDG.rhel8.10.x86_64.rpm pgdg 1.17 54.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.17-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.16-1PGDG.rhel8.10.x86_64.rpm pgdg 1.16 53.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.16-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.15-1PGDG.rhel8.10.x86_64.rpm pgdg 1.15 52.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.15-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel8.10.x86_64.rpm pgdg 1.14 50.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.14-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel8.x86_64.rpm pgdg 1.12 43.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.12-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.17-1PGSTY.el8.aarch64.rpm pigsty 1.17 135.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ivm_18-1.17-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.17-1PGDG.rhel8.10.aarch64.rpm pgdg 1.17 51.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.17-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.16-1PGDG.rhel8.10.aarch64.rpm pgdg 1.16 51.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.16-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.15-1PGDG.rhel8.10.aarch64.rpm pgdg 1.15 50.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.15-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel8.10.aarch64.rpm pgdg 1.14 48.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.14-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel8.aarch64.rpm pgdg 1.12 41.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.12-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.17-1PGSTY.el9.x86_64.rpm pigsty 1.17 140.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ivm_18-1.17-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.17-1PGDG.rhel9.8.x86_64.rpm pgdg 1.17 53.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.17-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.16-1PGDG.rhel9.8.x86_64.rpm pgdg 1.16 53.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.16-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.15-1PGDG.rhel9.8.x86_64.rpm pgdg 1.15 52.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.15-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel9.8.x86_64.rpm pgdg 1.14 49.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.14-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel9.7.x86_64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.14-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel9.6.x86_64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.14-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 49.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel9.x86_64.rpm pgdg 1.12 43.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.12-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.17-1PGSTY.el9.aarch64.rpm pigsty 1.17 139.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ivm_18-1.17-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.17-1PGDG.rhel9.8.aarch64.rpm pgdg 1.17 52.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.17-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.16-1PGDG.rhel9.8.aarch64.rpm pgdg 1.16 51.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.16-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.15-1PGDG.rhel9.8.aarch64.rpm pgdg 1.15 50.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.15-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel9.8.aarch64.rpm pgdg 1.14 48.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.14-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel9.7.aarch64.rpm pgdg 1.14 48.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.14-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel9.6.aarch64.rpm pgdg 1.14 48.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.14-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel9.aarch64.rpm pgdg 1.12 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.12-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.17-1PGSTY.el10.x86_64.rpm pigsty 1.17 142.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ivm_18-1.17-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.17-1PGDG.rhel10.2.x86_64.rpm pgdg 1.17 54.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.17-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.16-1PGDG.rhel10.2.x86_64.rpm pgdg 1.16 54.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.16-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.15-1PGDG.rhel10.2.x86_64.rpm pgdg 1.15 53.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.15-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel10.2.x86_64.rpm pgdg 1.14 50.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.14-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel10.1.x86_64.rpm pgdg 1.14 50.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.14-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel10.0.x86_64.rpm pgdg 1.14 51.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.14-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 50.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel10.x86_64.rpm pgdg 1.12 44.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.12-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.17-1PGSTY.el10.aarch64.rpm pigsty 1.17 140.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ivm_18-1.17-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.17-1PGDG.rhel10.2.aarch64.rpm pgdg 1.17 53.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.17-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.16-1PGDG.rhel10.2.aarch64.rpm pgdg 1.16 53.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.16-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.15-1PGDG.rhel10.2.aarch64.rpm pgdg 1.15 52.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.15-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel10.2.aarch64.rpm pgdg 1.14 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.14-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel10.1.aarch64.rpm pgdg 1.14 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.14-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.14-1PGDG.rhel10.0.aarch64.rpm pgdg 1.14 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.14-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 49.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel10.aarch64.rpm pgdg 1.12 42.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.12-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb pigsty 1.17 126.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg12+1_amd64.deb pgdg 1.15 124.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg12+1_amd64.deb pgdg 1.15 124.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb pigsty 1.17 122.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg12+1_arm64.deb pgdg 1.15 120.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg12+1_arm64.deb pgdg 1.15 121.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~trixie_amd64.deb pigsty 1.17 126.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg13+1_amd64.deb pgdg 1.15 124.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg13+1_amd64.deb pgdg 1.15 124.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~trixie_arm64.deb pigsty 1.17 122.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg13+1_arm64.deb pgdg 1.15 120.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg13+1_arm64.deb pgdg 1.15 120.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~jammy_amd64.deb pigsty 1.17 138.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb pgdg 1.15 127.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb pgdg 1.15 127.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 121.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~jammy_arm64.deb pigsty 1.17 135.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb pgdg 1.15 123.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb pgdg 1.15 124.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 117.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~noble_amd64.deb pigsty 1.17 131.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb pgdg 1.15 124.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb pgdg 1.15 124.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~noble_arm64.deb pigsty 1.17 130.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb pgdg 1.15 120.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb pgdg 1.15 120.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~resolute_amd64.deb pigsty 1.17 130.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb pgdg 1.15 122.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb pgdg 1.15 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb pgdg 1.13 117.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.17-1PGSTY~resolute_arm64.deb pigsty 1.17 128.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.17-1PGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb pgdg 1.15 119.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb pgdg 1.15 119.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb pgdg 1.13 113.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.17-1PGSTY.el8.x86_64.rpm pigsty 1.17 137.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ivm_17-1.17-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.17-1PGDG.rhel8.10.x86_64.rpm pgdg 1.17 54.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.17-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.16-1PGDG.rhel8.10.x86_64.rpm pgdg 1.16 53.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.16-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.15-1PGDG.rhel8.10.x86_64.rpm pgdg 1.15 52.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.15-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel8.10.x86_64.rpm pgdg 1.14 50.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.14-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel8.x86_64.rpm pgdg 1.9 40.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.9-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.17-1PGSTY.el8.aarch64.rpm pigsty 1.17 134.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ivm_17-1.17-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.17-1PGDG.rhel8.10.aarch64.rpm pgdg 1.17 51.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.17-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.16-1PGDG.rhel8.10.aarch64.rpm pgdg 1.16 51.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.16-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.15-1PGDG.rhel8.10.aarch64.rpm pgdg 1.15 50.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.15-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel8.10.aarch64.rpm pgdg 1.14 48.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.14-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 40.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel8.aarch64.rpm pgdg 1.9 38.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.9-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.17-1PGSTY.el9.x86_64.rpm pigsty 1.17 140.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ivm_17-1.17-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.17-1PGDG.rhel9.8.x86_64.rpm pgdg 1.17 53.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.17-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.16-1PGDG.rhel9.8.x86_64.rpm pgdg 1.16 53.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.16-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.15-1PGDG.rhel9.8.x86_64.rpm pgdg 1.15 52.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.15-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel9.8.x86_64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.14-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel9.7.x86_64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.14-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel9.6.x86_64.rpm pgdg 1.14 49.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.14-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 43.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel9.x86_64.rpm pgdg 1.9 41.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.9-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.17-1PGSTY.el9.aarch64.rpm pigsty 1.17 138.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ivm_17-1.17-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.17-1PGDG.rhel9.8.aarch64.rpm pgdg 1.17 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.17-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.16-1PGDG.rhel9.8.aarch64.rpm pgdg 1.16 51.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.16-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.15-1PGDG.rhel9.8.aarch64.rpm pgdg 1.15 50.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.15-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel9.8.aarch64.rpm pgdg 1.14 48.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.14-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel9.7.aarch64.rpm pgdg 1.14 48.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.14-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel9.6.aarch64.rpm pgdg 1.14 48.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.14-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel9.aarch64.rpm pgdg 1.9 39.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.9-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.17-1PGSTY.el10.x86_64.rpm pigsty 1.17 141.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ivm_17-1.17-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.17-1PGDG.rhel10.2.x86_64.rpm pgdg 1.17 54.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.17-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.16-1PGDG.rhel10.2.x86_64.rpm pgdg 1.16 54.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.16-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.15-1PGDG.rhel10.2.x86_64.rpm pgdg 1.15 53.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.15-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel10.2.x86_64.rpm pgdg 1.14 50.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.14-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel10.1.x86_64.rpm pgdg 1.14 50.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.14-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel10.0.x86_64.rpm pgdg 1.14 51.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.14-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 50.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 44.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 43.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.17-1PGSTY.el10.aarch64.rpm pigsty 1.17 140.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ivm_17-1.17-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.17-1PGDG.rhel10.2.aarch64.rpm pgdg 1.17 54.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.17-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.16-1PGDG.rhel10.2.aarch64.rpm pgdg 1.16 53.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.16-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.15-1PGDG.rhel10.2.aarch64.rpm pgdg 1.15 52.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.15-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel10.2.aarch64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.14-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel10.1.aarch64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.14-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.14-1PGDG.rhel10.0.aarch64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.14-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 49.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 42.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb pigsty 1.17 125.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg12+1_amd64.deb pgdg 1.15 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg12+1_amd64.deb pgdg 1.15 124.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb pigsty 1.17 122.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg12+1_arm64.deb pgdg 1.15 120.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg12+1_arm64.deb pgdg 1.15 120.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~trixie_amd64.deb pigsty 1.17 126.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg13+1_amd64.deb pgdg 1.15 123.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg13+1_amd64.deb pgdg 1.15 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~trixie_arm64.deb pigsty 1.17 121.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg13+1_arm64.deb pgdg 1.15 120.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg13+1_arm64.deb pgdg 1.15 120.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~jammy_amd64.deb pigsty 1.17 158.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb pgdg 1.15 147.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb pgdg 1.15 148.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 141.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~jammy_arm64.deb pigsty 1.17 156.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb pgdg 1.15 143.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb pgdg 1.15 144.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 137.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~noble_amd64.deb pigsty 1.17 131.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb pgdg 1.15 124.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb pgdg 1.15 124.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~noble_arm64.deb pigsty 1.17 130.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb pgdg 1.15 120.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb pgdg 1.15 120.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 114.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~resolute_amd64.deb pigsty 1.17 129.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb pgdg 1.15 122.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb pgdg 1.15 123.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb pgdg 1.13 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.17-1PGSTY~resolute_arm64.deb pigsty 1.17 127.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.17-1PGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb pgdg 1.15 118.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb pgdg 1.15 119.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb pgdg 1.13 113.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.17-1PGSTY.el8.x86_64.rpm pigsty 1.17 138.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ivm_16-1.17-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.17-1PGDG.rhel8.10.x86_64.rpm pgdg 1.17 54.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.17-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.16-1PGDG.rhel8.10.x86_64.rpm pgdg 1.16 53.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.16-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.15-1PGDG.rhel8.10.x86_64.rpm pgdg 1.15 52.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.15-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel8.10.x86_64.rpm pgdg 1.14 50.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.14-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 43.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 39.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.17-1PGSTY.el8.aarch64.rpm pigsty 1.17 134.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ivm_16-1.17-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.17-1PGDG.rhel8.10.aarch64.rpm pgdg 1.17 51.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.17-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.16-1PGDG.rhel8.10.aarch64.rpm pgdg 1.16 51.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.16-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.15-1PGDG.rhel8.10.aarch64.rpm pgdg 1.15 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.15-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel8.10.aarch64.rpm pgdg 1.14 48.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.14-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 40.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 37.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 39.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.17-1PGSTY.el9.x86_64.rpm pigsty 1.17 140.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ivm_16-1.17-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.17-1PGDG.rhel9.8.x86_64.rpm pgdg 1.17 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.17-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.16-1PGDG.rhel9.8.x86_64.rpm pgdg 1.16 53.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.16-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.15-1PGDG.rhel9.8.x86_64.rpm pgdg 1.15 52.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.15-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel9.8.x86_64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.14-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel9.7.x86_64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.14-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel9.6.x86_64.rpm pgdg 1.14 49.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.14-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 49.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 43.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.17-1PGSTY.el9.aarch64.rpm pigsty 1.17 139.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ivm_16-1.17-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.17-1PGDG.rhel9.8.aarch64.rpm pgdg 1.17 52.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.17-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.16-1PGDG.rhel9.8.aarch64.rpm pgdg 1.16 51.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.16-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.15-1PGDG.rhel9.8.aarch64.rpm pgdg 1.15 50.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.15-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel9.8.aarch64.rpm pgdg 1.14 48.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.14-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel9.7.aarch64.rpm pgdg 1.14 48.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.14-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel9.6.aarch64.rpm pgdg 1.14 48.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.14-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 42.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 39.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 41.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.17-1PGSTY.el10.x86_64.rpm pigsty 1.17 141.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ivm_16-1.17-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.17-1PGDG.rhel10.2.x86_64.rpm pgdg 1.17 55.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.17-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.16-1PGDG.rhel10.2.x86_64.rpm pgdg 1.16 54.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.16-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.15-1PGDG.rhel10.2.x86_64.rpm pgdg 1.15 53.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.15-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel10.2.x86_64.rpm pgdg 1.14 50.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.14-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel10.1.x86_64.rpm pgdg 1.14 50.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.14-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel10.0.x86_64.rpm pgdg 1.14 51.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.14-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 50.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 43.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.17-1PGSTY.el10.aarch64.rpm pigsty 1.17 140.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ivm_16-1.17-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.17-1PGDG.rhel10.2.aarch64.rpm pgdg 1.17 54.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.17-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.16-1PGDG.rhel10.2.aarch64.rpm pgdg 1.16 53.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.16-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.15-1PGDG.rhel10.2.aarch64.rpm pgdg 1.15 52.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.15-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel10.2.aarch64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.14-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel10.1.aarch64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.14-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.14-1PGDG.rhel10.0.aarch64.rpm pgdg 1.14 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.14-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 42.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb pigsty 1.17 125.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg12+1_amd64.deb pgdg 1.15 124.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg12+1_amd64.deb pgdg 1.15 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb pigsty 1.17 122.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg12+1_arm64.deb pgdg 1.15 120.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg12+1_arm64.deb pgdg 1.15 121.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~trixie_amd64.deb pigsty 1.17 125.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg13+1_amd64.deb pgdg 1.15 123.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg13+1_amd64.deb pgdg 1.15 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~trixie_arm64.deb pigsty 1.17 122.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg13+1_arm64.deb pgdg 1.15 120.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg13+1_arm64.deb pgdg 1.15 120.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~jammy_amd64.deb pigsty 1.17 157.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb pgdg 1.15 146.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb pgdg 1.15 147.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 140.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~jammy_arm64.deb pigsty 1.17 155.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb pgdg 1.15 142.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb pgdg 1.15 143.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 136.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~noble_amd64.deb pigsty 1.17 131.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb pgdg 1.15 124.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb pgdg 1.15 124.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~noble_arm64.deb pigsty 1.17 133.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb pgdg 1.15 120.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb pgdg 1.15 120.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 114.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~resolute_amd64.deb pigsty 1.17 130.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb pgdg 1.15 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb pgdg 1.15 123.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb pgdg 1.13 117.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.17-1PGSTY~resolute_arm64.deb pigsty 1.17 127.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.17-1PGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb pgdg 1.15 118.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb pgdg 1.15 119.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb pgdg 1.13 113.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.17-1PGSTY.el8.x86_64.rpm pigsty 1.17 137.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ivm_15-1.17-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.17-1PGDG.rhel8.10.x86_64.rpm pgdg 1.17 54.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.17-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.16-1PGDG.rhel8.10.x86_64.rpm pgdg 1.16 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.16-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.15-1PGDG.rhel8.10.x86_64.rpm pgdg 1.15 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.15-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel8.10.x86_64.rpm pgdg 1.14 50.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.14-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 43.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 43.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel8.x86_64.rpm pgdg 1.5.1 39.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.5.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel8.x86_64.rpm pgdg 1.5 39.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel8.x86_64.rpm pgdg 1.4 38.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel8.x86_64.rpm pgdg 1.3 37.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.17-1PGSTY.el8.aarch64.rpm pigsty 1.17 134.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ivm_15-1.17-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.17-1PGDG.rhel8.10.aarch64.rpm pgdg 1.17 52.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.17-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.16-1PGDG.rhel8.10.aarch64.rpm pgdg 1.16 51.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.16-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.15-1PGDG.rhel8.10.aarch64.rpm pgdg 1.15 50.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.15-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel8.10.aarch64.rpm pgdg 1.14 48.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.14-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 41.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 38.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 39.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel8.aarch64.rpm pgdg 1.5.1 37.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.5.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel8.aarch64.rpm pgdg 1.5 37.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.5-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel8.aarch64.rpm pgdg 1.4 36.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel8.aarch64.rpm pgdg 1.3 36.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.17-1PGSTY.el9.x86_64.rpm pigsty 1.17 140.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ivm_15-1.17-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.17-1PGDG.rhel9.8.x86_64.rpm pgdg 1.17 54.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.17-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.16-1PGDG.rhel9.8.x86_64.rpm pgdg 1.16 53.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.16-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.15-1PGDG.rhel9.8.x86_64.rpm pgdg 1.15 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.15-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel9.8.x86_64.rpm pgdg 1.14 50.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.14-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel9.7.x86_64.rpm pgdg 1.14 50.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.14-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel9.6.x86_64.rpm pgdg 1.14 50.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.14-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 50.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 44.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 43.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 43.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel9.x86_64.rpm pgdg 1.5.1 41.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.5.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel9.x86_64.rpm pgdg 1.5 41.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.5-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel9.x86_64.rpm pgdg 1.4 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel9.x86_64.rpm pgdg 1.3 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.17-1PGSTY.el9.aarch64.rpm pigsty 1.17 139.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ivm_15-1.17-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.17-1PGDG.rhel9.8.aarch64.rpm pgdg 1.17 53.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.17-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.16-1PGDG.rhel9.8.aarch64.rpm pgdg 1.16 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.16-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.15-1PGDG.rhel9.8.aarch64.rpm pgdg 1.15 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.15-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel9.8.aarch64.rpm pgdg 1.14 49.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.14-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel9.7.aarch64.rpm pgdg 1.14 49.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.14-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel9.6.aarch64.rpm pgdg 1.14 49.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.14-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 42.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 42.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 39.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 42.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 42.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel9.aarch64.rpm pgdg 1.5.1 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.5.1-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel9.aarch64.rpm pgdg 1.5 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.5-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel9.aarch64.rpm pgdg 1.4 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel9.aarch64.rpm pgdg 1.3 38.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.17-1PGSTY.el10.x86_64.rpm pigsty 1.17 141.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ivm_15-1.17-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.17-1PGDG.rhel10.2.x86_64.rpm pgdg 1.17 55.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.17-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.16-1PGDG.rhel10.2.x86_64.rpm pgdg 1.16 54.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.16-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.15-1PGDG.rhel10.2.x86_64.rpm pgdg 1.15 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.15-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel10.2.x86_64.rpm pgdg 1.14 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.14-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel10.1.x86_64.rpm pgdg 1.14 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.14-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel10.0.x86_64.rpm pgdg 1.14 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.14-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 45.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 44.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.17-1PGSTY.el10.aarch64.rpm pigsty 1.17 140.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ivm_15-1.17-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.17-1PGDG.rhel10.2.aarch64.rpm pgdg 1.17 54.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.17-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.16-1PGDG.rhel10.2.aarch64.rpm pgdg 1.16 53.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.16-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.15-1PGDG.rhel10.2.aarch64.rpm pgdg 1.15 52.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.15-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel10.2.aarch64.rpm pgdg 1.14 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.14-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel10.1.aarch64.rpm pgdg 1.14 50.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.14-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.14-1PGDG.rhel10.0.aarch64.rpm pgdg 1.14 50.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.14-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 50.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 43.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb pigsty 1.17 125.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg12+1_amd64.deb pgdg 1.15 124.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg12+1_amd64.deb pgdg 1.15 124.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb pigsty 1.17 145.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg12+1_arm64.deb pgdg 1.15 120.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg12+1_arm64.deb pgdg 1.15 120.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~trixie_amd64.deb pigsty 1.17 125.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg13+1_amd64.deb pgdg 1.15 124.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg13+1_amd64.deb pgdg 1.15 124.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~trixie_arm64.deb pigsty 1.17 121.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg13+1_arm64.deb pgdg 1.15 119.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg13+1_arm64.deb pgdg 1.15 120.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~jammy_amd64.deb pigsty 1.17 157.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb pgdg 1.15 146.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb pgdg 1.15 146.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 140.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~jammy_arm64.deb pigsty 1.17 155.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb pgdg 1.15 142.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb pgdg 1.15 143.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 136.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~noble_amd64.deb pigsty 1.17 131.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb pgdg 1.15 124.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb pgdg 1.15 124.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~noble_arm64.deb pigsty 1.17 130.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb pgdg 1.15 120.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb pgdg 1.15 120.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~resolute_amd64.deb pigsty 1.17 129.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb pgdg 1.15 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb pgdg 1.15 123.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb pgdg 1.13 117.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.17-1PGSTY~resolute_arm64.deb pigsty 1.17 127.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.17-1PGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb pgdg 1.15 118.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb pgdg 1.15 119.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb pgdg 1.13 113.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.17-1PGSTY.el8.x86_64.rpm pigsty 1.17 229.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ivm_14-1.17-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.17-1PGDG.rhel8.10.x86_64.rpm pgdg 1.17 82.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.17-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.16-1PGDG.rhel8.10.x86_64.rpm pgdg 1.16 82.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.16-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.15-1PGDG.rhel8.10.x86_64.rpm pgdg 1.15 80.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.15-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel8.10.x86_64.rpm pgdg 1.14 78.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.14-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 78.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 71.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 71.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 68.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 71.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 71.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel8.x86_64.rpm pgdg 1.5.1 69.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.5.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel8.x86_64.rpm pgdg 1.5 69.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel8.x86_64.rpm pgdg 1.4 68.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel8.x86_64.rpm pgdg 1.3 67.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.2-1.rhel8.x86_64.rpm pgdg 1.2 66.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.1-1.rhel8.x86_64.rpm pgdg 1.1 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.0-.rhel8.x86_64.rpm pgdg 1.0 74.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.0-.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.0-alpha1.rhel8.x86_64.rpm pgdg 1.0 62.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.0-alpha1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.17-1PGSTY.el8.aarch64.rpm pigsty 1.17 223.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ivm_14-1.17-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.17-1PGDG.rhel8.10.aarch64.rpm pgdg 1.17 77.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.17-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.16-1PGDG.rhel8.10.aarch64.rpm pgdg 1.16 77.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.16-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.15-1PGDG.rhel8.10.aarch64.rpm pgdg 1.15 76.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.15-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel8.10.aarch64.rpm pgdg 1.14 74.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.14-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 73.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 67.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 66.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 64.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 67.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 66.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel8.aarch64.rpm pgdg 1.5.1 64.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.5.1-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel8.aarch64.rpm pgdg 1.5 64.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.5-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel8.aarch64.rpm pgdg 1.4 63.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel8.aarch64.rpm pgdg 1.3 63.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.17-1PGSTY.el9.x86_64.rpm pigsty 1.17 234.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ivm_14-1.17-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.17-1PGDG.rhel9.8.x86_64.rpm pgdg 1.17 83.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.17-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.16-1PGDG.rhel9.8.x86_64.rpm pgdg 1.16 82.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.16-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.15-1PGDG.rhel9.8.x86_64.rpm pgdg 1.15 81.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.15-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel9.8.x86_64.rpm pgdg 1.14 79.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.14-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel9.7.x86_64.rpm pgdg 1.14 79.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.14-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel9.6.x86_64.rpm pgdg 1.14 80.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.14-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 79.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 73.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 73.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 71.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 74.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 74.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel9.x86_64.rpm pgdg 1.5.1 72.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.5.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel9.x86_64.rpm pgdg 1.5 72.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel9.x86_64.rpm pgdg 1.4 71.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel9.x86_64.rpm pgdg 1.3 71.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.2-1.rhel9.x86_64.rpm pgdg 1.2 69.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.1-1.rhel9.x86_64.rpm pgdg 1.1 34.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.0-.rhel9.x86_64.rpm pgdg 1.0 77.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.0-.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.17-1PGSTY.el9.aarch64.rpm pigsty 1.17 231.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ivm_14-1.17-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.17-1PGDG.rhel9.8.aarch64.rpm pgdg 1.17 81.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.17-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.16-1PGDG.rhel9.8.aarch64.rpm pgdg 1.16 80.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.16-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.15-1PGDG.rhel9.8.aarch64.rpm pgdg 1.15 79.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.15-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel9.8.aarch64.rpm pgdg 1.14 77.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.14-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel9.7.aarch64.rpm pgdg 1.14 77.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.14-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel9.6.aarch64.rpm pgdg 1.14 77.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.14-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 77.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 70.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 70.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 68.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 71.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 71.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel9.aarch64.rpm pgdg 1.5.1 69.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.5.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel9.aarch64.rpm pgdg 1.5 69.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.5-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel9.aarch64.rpm pgdg 1.4 68.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel9.aarch64.rpm pgdg 1.3 68.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.17-1PGSTY.el10.x86_64.rpm pigsty 1.17 235.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ivm_14-1.17-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.17-1PGDG.rhel10.2.x86_64.rpm pgdg 1.17 84.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.17-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.16-1PGDG.rhel10.2.x86_64.rpm pgdg 1.16 84.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.16-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.15-1PGDG.rhel10.2.x86_64.rpm pgdg 1.15 83.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.15-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel10.2.x86_64.rpm pgdg 1.14 81.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.14-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel10.1.x86_64.rpm pgdg 1.14 81.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.14-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel10.0.x86_64.rpm pgdg 1.14 81.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.14-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 80.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 74.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 74.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.17-1PGSTY.el10.aarch64.rpm pigsty 1.17 232.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ivm_14-1.17-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.17-1PGDG.rhel10.2.aarch64.rpm pgdg 1.17 82.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.17-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.16-1PGDG.rhel10.2.aarch64.rpm pgdg 1.16 81.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.16-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.15-1PGDG.rhel10.2.aarch64.rpm pgdg 1.15 81.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.15-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel10.2.aarch64.rpm pgdg 1.14 78.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.14-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel10.1.aarch64.rpm pgdg 1.14 78.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.14-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.14-1PGDG.rhel10.0.aarch64.rpm pgdg 1.14 78.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.14-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 79.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 72.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 72.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb pigsty 1.17 216.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg12+1_amd64.deb pgdg 1.15 214.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg12+1_amd64.deb pgdg 1.15 214.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 209.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb pigsty 1.17 208.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg12+1_arm64.deb pgdg 1.15 206.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg12+1_arm64.deb pgdg 1.15 207.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 201.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~trixie_amd64.deb pigsty 1.17 215.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg13+1_amd64.deb pgdg 1.15 213.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg13+1_amd64.deb pgdg 1.15 214.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 208.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~trixie_arm64.deb pigsty 1.17 208.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg13+1_arm64.deb pgdg 1.15 207.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg13+1_arm64.deb pgdg 1.15 207.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 201.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~jammy_amd64.deb pigsty 1.17 260.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb pgdg 1.15 244.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb pgdg 1.15 245.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 238.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~jammy_arm64.deb pigsty 1.17 258.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb pgdg 1.15 236.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb pgdg 1.15 237.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 230.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~noble_amd64.deb pigsty 1.17 225.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb pgdg 1.15 214.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb pgdg 1.15 214.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 208.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~noble_arm64.deb pigsty 1.17 222.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb pgdg 1.15 207.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb pgdg 1.15 207.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 202.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~resolute_amd64.deb pigsty 1.17 222.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb pgdg 1.15 211.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb pgdg 1.15 211.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb pgdg 1.13 206.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.17-1PGSTY~resolute_arm64.deb pigsty 1.17 218.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.17-1PGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb pgdg 1.15 203.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb pgdg 1.15 204.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.15-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb pgdg 1.13 198.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_ivm` using `pig build`:

```bash
pig build pkg pg_ivm         # build RPM / DEB packages
```


## Install

You can install `pg_ivm` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_ivm;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_ivm -v 18  # PG 18
pig ext install -y pg_ivm -v 17  # PG 17
pig ext install -y pg_ivm -v 16  # PG 16
pig ext install -y pg_ivm -v 15  # PG 15
pig ext install -y pg_ivm -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_ivm_18       # PG 18
dnf install -y pg_ivm_17       # PG 17
dnf install -y pg_ivm_16       # PG 16
dnf install -y pg_ivm_15       # PG 15
dnf install -y pg_ivm_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-ivm   # PG 18
apt install -y postgresql-17-pg-ivm   # PG 17
apt install -y postgresql-16-pg-ivm   # PG 16
apt install -y postgresql-15-pg-ivm   # PG 15
apt install -y postgresql-14-pg-ivm   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_ivm';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_ivm;
```

## Usage

Sources:

- [Official v1.17 README](https://github.com/sraoss/pg_ivm/blob/v1.17/README.md)
- [v1.17 release notes](https://github.com/sraoss/pg_ivm/releases/tag/v1.17)
- [1.16 to 1.17 upgrade SQL](https://github.com/sraoss/pg_ivm/blob/v1.17/pg_ivm--1.16--1.17.sql)
- [pg_ivm_dump_metadata utility](https://github.com/sraoss/pg_ivm/blob/v1.17/scripts/pg_ivm_dump_metadata)

`pg_ivm` provides immediate incremental view maintenance for PostgreSQL. An Incrementally Maintainable Materialized View (IMMV) is stored as a table with triggers and metadata in the `pgivm` schema; base-table changes update the IMMV inside the same transaction instead of recomputing the complete query.

### Enable and Create an IMMV

Load the library for every session that can modify an IMMV's base tables. A cluster-wide setup requires a restart:

```ini
shared_preload_libraries = 'pg_ivm'
```

`session_preload_libraries = 'pg_ivm'` is also supported when managed consistently for all relevant sessions.

```sql
CREATE EXTENSION pg_ivm;

CREATE TABLE accounts (
    account_id bigint PRIMARY KEY,
    branch_id integer NOT NULL,
    balance numeric NOT NULL
);
INSERT INTO accounts VALUES (42, 1, 1000);

SELECT pgivm.create_immv(
    'account_totals',
    'SELECT branch_id, count(*) AS accounts, sum(balance) AS balance
     FROM accounts
     GROUP BY branch_id'
);

UPDATE accounts
SET balance = balance + 100
WHERE account_id = 42;

SELECT * FROM account_totals;
```

### Manage and Inspect IMMVs

- `pgivm.create_immv(name, query)`: creates and populates an IMMV, returning its row count.
- `pgivm.refresh_immv(name, with_data)`: fully rebuilds the IMMV; `false` disables maintenance until a later populated refresh.
- `pgivm.get_immv_def(regclass)`: returns the stored view definition.
- `pgivm.restore_immv(name, query, populate, replace)`: reconstructs metadata, triggers, and indexes for an existing IMMV table; 1.17 adds the optional replacement flag.
- `pgivm.get_create_immv_commands()` and `pgivm.get_restore_immv_commands()`: emit SQL for rebuilding IMMVs or restoring their metadata.

Version 1.15 includes a helper for dump or `pg_upgrade` workflows:

```bash
pg_ivm_dump_metadata -d application > pg_ivm_metadata.sql
```

The script emits `pgivm.restore_immv()` calls. Restore the table data first, then execute the saved metadata SQL so incremental maintenance resumes without recreating the tables.

### Restrictions and Operational Caveats

- Supported definitions include selected joins, `DISTINCT`, simple subqueries/CTEs, and built-in `count`, `sum`, `avg`, `min`, and `max` aggregates. Unsupported constructs include `HAVING`, window functions, `ORDER BY`, `LIMIT/OFFSET`, set operations, `DISTINCT ON`, and user-defined aggregates.
- Efficient maintenance depends on a suitable unique index. `create_immv()` creates one automatically only when the definition supplies usable grouping, distinct, or base-table primary-key columns.
- Creation and refresh take `AccessExclusiveLock`. Upstream warns about consistency risks for creation under `REPEATABLE READ` or `SERIALIZABLE`; use `READ COMMITTED` or refresh afterward.
- `restore_immv()` fails on an already registered relation unless `replace = true`; that option requires a superuser. Without replacement the caller must own the IMMV. A table-definition mismatch still fails.
- Version 1.15 also fixes incorrect maintenance after repeated trigger-driven modifications and a v1.14 outer-join maintenance crash.

### Upgrade to 1.16

Version 1.16 adds PostgreSQL 19 support and fixes a crash when maintaining and dropping an IMMV in one transaction, maintenance involving columns without default equality operators, large OID handling, and maintenance lock-release timing. Install matching files and ensure modifying sessions load the new library, then run:

```sql
ALTER EXTENSION pg_ivm UPDATE TO '1.16';
```

### Upgrade to 1.17

Upstream supports PostgreSQL 13–19. Version 1.17 fixes the restored IMMV population flag, preventing duplicate maintenance triggers after a later refresh; it also improves automatic unique-index derivation, rejects set-returning target lists and fixes index-creation crashes with LATERAL subqueries.

Install matching files, ensure modifying sessions use the new library, then update each database:

```sql
ALTER EXTENSION pg_ivm UPDATE TO '1.17';
```

For a PostgreSQL major upgrade, put the new option first when exporting metadata before the upgrade:

```bash
pg_ivm_dump_metadata --pg-upgrade application > pg_ivm_metadata.sql
```

The generated restore calls replace the old catalog entries left by the major upgrade. Run the saved SQL after completing the upgrade, as a superuser. The IMMV tables and their data must already be present; replacement is not a substitute for restoring the data.
