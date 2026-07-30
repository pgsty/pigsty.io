---
title: "pgbouncer_fdw"
linkTitle: "pgbouncer_fdw"
description: "Extension for querying PgBouncer stats from normal SQL views & running pgbouncer commands from normal SQL functions"
weight: 8650
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrunchyData/pgbouncer_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrunchyData/pgbouncer_fdw</div>
    <div class="ext-card__desc">https://github.com/CrunchyData/pgbouncer_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgbouncer_fdw-1.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgbouncer_fdw-1.4.0.tar.gz</div>
    <div class="ext-card__desc">pgbouncer_fdw-1.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgbouncer_fdw`**](/ext/e/pgbouncer_fdw) | `1.4.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8650  | [**`pgbouncer_fdw`**](/ext/e/pgbouncer_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dblink`](/ext/e/dblink) [`pgnodemx`](/ext/e/pgnodemx) [`pgmonitor`](/ext/e/pgmonitor) [`pgpool_adm`](/ext/e/pgpool_adm) [`system_stats`](/ext/e/system_stats) [`pg_stat_ch`](/ext/e/pg_stat_ch) [`pg_datasentinel`](/ext/e/pg_datasentinel) [`pgsentinel`](/ext/e/pgsentinel) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires dblink and PgBouncer >= 1.17; live queries require a configured PgBouncer admin console.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pgbouncer_fdw` | `dblink` |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pgbouncer_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgbouncer-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.4.0 1 | AVAIL PGDG 1.4.0 4 | AVAIL PGDG 1.4.0 6 | AVAIL PGDG 1.4.0 6 | AVAIL PGDG 1.4.0 8 |
| el8.aarch64 | AVAIL PGDG 1.4.0 1 | AVAIL PGDG 1.4.0 4 | AVAIL PGDG 1.4.0 6 | AVAIL PGDG 1.4.0 6 | AVAIL PGDG 1.4.0 6 |
| el9.x86_64 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 5 | AVAIL PGDG 1.4.0 7 | AVAIL PGDG 1.4.0 7 | AVAIL PGDG 1.4.0 7 |
| el9.aarch64 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 5 | AVAIL PGDG 1.4.0 7 | AVAIL PGDG 1.4.0 7 | AVAIL PGDG 1.4.0 7 |
| el10.x86_64 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 |
| el10.aarch64 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 | AVAIL PGDG 1.4.0 2 |
| d12.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
@ el8.x86_64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.0 22.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.x86_64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.0 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgbouncer_fdw_18 pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.aarch64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgbouncer_fdw_18-1.4.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pgbouncer-fdw postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-18-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgbouncer_fdw_17-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 21.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgbouncer_fdw_17-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.1.0-2PGDG.rhel8.x86_64.rpm pgdg 1.1.0 19.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgbouncer_fdw_17-1.1.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgbouncer_fdw_17-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 21.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgbouncer_fdw_17-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.1.0-2PGDG.rhel8.aarch64.rpm pgdg 1.1.0 19.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgbouncer_fdw_17-1.1.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 21.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgbouncer_fdw_17-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgbouncer_fdw_17-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.1.0-2PGDG.rhel9.x86_64.rpm pgdg 1.1.0 18.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgbouncer_fdw_17-1.1.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 21.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgbouncer_fdw_17-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgbouncer_fdw_17-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.1.0-2PGDG.rhel9.aarch64.rpm pgdg 1.1.0 18.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgbouncer_fdw_17-1.1.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.0 22.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.x86_64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.0 22.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgbouncer_fdw_17 pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.aarch64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgbouncer_fdw_17-1.4.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pgbouncer-fdw postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-17-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgbouncer_fdw_16-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 21.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgbouncer_fdw_16-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 19.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgbouncer_fdw_16-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 18.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgbouncer_fdw_16-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-0.4-3.rhel8.x86_64.rpm pgdg 0.4 13.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgbouncer_fdw_16-0.4-3.rhel8.x86_64.rpm
@ el8.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgbouncer_fdw_16-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgbouncer_fdw_16-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 19.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgbouncer_fdw_16-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 18.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgbouncer_fdw_16-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-0.4-3.rhel8.aarch64.rpm pgdg 0.4 13.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgbouncer_fdw_16-0.4-3.rhel8.aarch64.rpm
@ el9.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 21.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgbouncer_fdw_16-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgbouncer_fdw_16-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 18.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgbouncer_fdw_16-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 18.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgbouncer_fdw_16-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-0.4-3.rhel9.x86_64.rpm pgdg 0.4 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgbouncer_fdw_16-0.4-3.rhel9.x86_64.rpm
@ el9.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 21.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgbouncer_fdw_16-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgbouncer_fdw_16-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 18.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgbouncer_fdw_16-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgbouncer_fdw_16-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-0.4-3.rhel9.aarch64.rpm pgdg 0.4 12.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgbouncer_fdw_16-0.4-3.rhel9.aarch64.rpm
@ el10.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.0 22.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.x86_64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.0 22.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgbouncer_fdw_16 pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.aarch64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgbouncer_fdw_16-1.4.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pgbouncer-fdw postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-16-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgbouncer_fdw_15-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 21.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgbouncer_fdw_15-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgbouncer_fdw_15-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 18.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgbouncer_fdw_15-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-0.4-2.rhel8.x86_64.rpm pgdg 0.4 13.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgbouncer_fdw_15-0.4-2.rhel8.x86_64.rpm
@ el8.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgbouncer_fdw_15-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgbouncer_fdw_15-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgbouncer_fdw_15-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 18.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgbouncer_fdw_15-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-0.4-2.rhel8.aarch64.rpm pgdg 0.4 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgbouncer_fdw_15-0.4-2.rhel8.aarch64.rpm
@ el9.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 21.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgbouncer_fdw_15-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgbouncer_fdw_15-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 18.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgbouncer_fdw_15-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgbouncer_fdw_15-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-0.4-2.rhel9.x86_64.rpm pgdg 0.4 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgbouncer_fdw_15-0.4-2.rhel9.x86_64.rpm
@ el9.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 21.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgbouncer_fdw_15-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgbouncer_fdw_15-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgbouncer_fdw_15-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgbouncer_fdw_15-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-0.4-2.rhel9.aarch64.rpm pgdg 0.4 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgbouncer_fdw_15-0.4-2.rhel9.aarch64.rpm
@ el10.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.0 22.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.x86_64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.0 22.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgbouncer_fdw_15 pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.aarch64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgbouncer_fdw_15-1.4.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pgbouncer-fdw postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-15-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 21.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 19.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-0.4-2.rhel8.x86_64.rpm pgdg 0.4 13.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-0.4-2.rhel8.x86_64.rpm
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-0.4-1.rhel8.x86_64.rpm pgdg 0.4 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-0.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-0.3-2.rhel8.x86_64.rpm pgdg 0.3 12.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgbouncer_fdw_14-0.3-2.rhel8.x86_64.rpm
@ el8.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgbouncer_fdw_14-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 21.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgbouncer_fdw_14-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgbouncer_fdw_14-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 18.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgbouncer_fdw_14-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-0.4-2.rhel8.aarch64.rpm pgdg 0.4 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgbouncer_fdw_14-0.4-2.rhel8.aarch64.rpm
@ el9.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 21.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 21.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgbouncer_fdw_14-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgbouncer_fdw_14-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 18.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgbouncer_fdw_14-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgbouncer_fdw_14-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-0.4-2.rhel9.x86_64.rpm pgdg 0.4 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgbouncer_fdw_14-0.4-2.rhel9.x86_64.rpm
@ el9.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 21.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 21.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgbouncer_fdw_14-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgbouncer_fdw_14-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 18.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgbouncer_fdw_14-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgbouncer_fdw_14-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-0.4-2.rhel9.aarch64.rpm pgdg 0.4 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgbouncer_fdw_14-0.4-2.rhel9.aarch64.rpm
@ el10.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.0 22.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.x86_64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.0 22.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgbouncer_fdw_14 pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.aarch64.rpm pgdg 1.4.0 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgbouncer_fdw_14-1.4.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb pigsty 1.4.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pgbouncer-fdw postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb pigsty 1.4.0 16.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgbouncer-fdw/postgresql-14-pgbouncer-fdw_1.4.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pgbouncer_fdw` using `pig build`:

```bash
pig build pkg pgbouncer_fdw         # build DEB packages
```


## Install

You can install `pgbouncer_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgbouncer_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgbouncer_fdw -v 18  # PG 18
pig ext install -y pgbouncer_fdw -v 17  # PG 17
pig ext install -y pgbouncer_fdw -v 16  # PG 16
pig ext install -y pgbouncer_fdw -v 15  # PG 15
pig ext install -y pgbouncer_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgbouncer_fdw_18       # PG 18
dnf install -y pgbouncer_fdw_17       # PG 17
dnf install -y pgbouncer_fdw_16       # PG 16
dnf install -y pgbouncer_fdw_15       # PG 15
dnf install -y pgbouncer_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgbouncer-fdw   # PG 18
apt install -y postgresql-17-pgbouncer-fdw   # PG 17
apt install -y postgresql-16-pgbouncer-fdw   # PG 16
apt install -y postgresql-15-pgbouncer-fdw   # PG 15
apt install -y postgresql-14-pgbouncer-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgbouncer_fdw CASCADE;  -- requires: dblink
```




## Usage

> [pgbouncer_fdw: Extension for querying PgBouncer stats from normal SQL views and running PgBouncer commands from normal SQL functions](https://github.com/CrunchyData/pgbouncer_fdw)

### Create Server

```sql
CREATE EXTENSION pgbouncer_fdw;

CREATE SERVER pgbouncer FOREIGN DATA WRAPPER dblink_fdw
  OPTIONS (host 'localhost', port '6432', dbname 'pgbouncer');
```

For multiple PgBouncer instances:

```sql
CREATE SERVER pgbouncer1 FOREIGN DATA WRAPPER dblink_fdw
  OPTIONS (host '192.168.1.10', port '6432', dbname 'pgbouncer');
CREATE SERVER pgbouncer2 FOREIGN DATA WRAPPER dblink_fdw
  OPTIONS (host '192.168.1.11', port '6432', dbname 'pgbouncer');

INSERT INTO pgbouncer_fdw_targets (target_host) VALUES ('pgbouncer1'), ('pgbouncer2');
UPDATE pgbouncer_fdw_targets SET active = false WHERE target_host = 'pgbouncer';
```

### Create User Mapping

```sql
CREATE USER MAPPING FOR PUBLIC SERVER pgbouncer
  OPTIONS (user 'ccp_monitoring', password 'mypassword');
```

### Available Views

| View | Description |
|------|-------------|
| `pgbouncer_clients` | Client connection details |
| `pgbouncer_pools` | Connection pool statistics |
| `pgbouncer_servers` | Backend server status |
| `pgbouncer_stats` | Statistics summary |
| `pgbouncer_databases` | Database definitions |
| `pgbouncer_config` | Configuration parameters |
| `pgbouncer_lists` | Internal lists |
| `pgbouncer_dns_hosts` | DNS host cache |
| `pgbouncer_dns_zones` | DNS zone cache |
| `pgbouncer_sockets` | Socket information |
| `pgbouncer_users` | User configuration |

```sql
SELECT * FROM pgbouncer_pools;
SELECT * FROM pgbouncer_stats;
SELECT database, cl_active, cl_waiting, sv_active FROM pgbouncer_pools;
```

When monitoring multiple instances, each row includes a `pgbouncer_target_host` column identifying the source.

### Command Functions

Administrative functions (require explicit `GRANT EXECUTE`):

```sql
SELECT pgbouncer_command_reload();              -- Reload configuration
SELECT pgbouncer_command_pause('mydb');          -- Pause a database
SELECT pgbouncer_command_resume('mydb');         -- Resume a database
SELECT pgbouncer_command_kill('mydb');           -- Kill connections
SELECT pgbouncer_command_disable('mydb');        -- Disable a database
SELECT pgbouncer_command_enable('mydb');         -- Enable a database
SELECT pgbouncer_command_reconnect('mydb');      -- Reconnect to backend
SELECT pgbouncer_command_set('key', 'value');    -- Set a parameter
SELECT pgbouncer_command_shutdown();             -- Shutdown PgBouncer
SELECT pgbouncer_command_suspend();              -- Suspend operations
SELECT pgbouncer_command_wait_close('mydb');     -- Wait for connections to close
```

### Permissions

```sql
GRANT USAGE ON FOREIGN SERVER pgbouncer TO monitoring_user;
GRANT SELECT ON pgbouncer_pools TO monitoring_user;
GRANT SELECT ON pgbouncer_stats TO monitoring_user;
GRANT EXECUTE ON FUNCTION pgbouncer_command_reload() TO admin_user;
```
