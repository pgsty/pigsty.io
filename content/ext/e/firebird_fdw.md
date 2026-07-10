---
title: "firebird_fdw"
linkTitle: "firebird_fdw"
description: "Foreign data wrapper for Firebird"
weight: 8750
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ibarwick/firebird_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ibarwick/firebird_fdw</div>
    <div class="ext-card__desc">https://github.com/ibarwick/firebird_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/firebird_fdw-1.4.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">firebird_fdw-1.4.2.tar.gz</div>
    <div class="ext-card__desc">firebird_fdw-1.4.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`firebird_fdw`**](/ext/e/firebird_fdw) | `1.4.2` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8750  | [**`firebird_fdw`**](/ext/e/firebird_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`wrappers`](/ext/e/wrappers) [`odbc_fdw`](/ext/e/odbc_fdw) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `firebird_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `firebird_fdw_$v` | `libfq` |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-firebird-fdw` | `libfq` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 4 |
| el8.aarch64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 2 | AVAIL PIGSTY 1.4.2 2 |
| el9.x86_64 | AVAIL PIGSTY 1.4.2 8 | AVAIL PIGSTY 1.4.2 8 | AVAIL PIGSTY 1.4.2 8 | AVAIL PIGSTY 1.4.2 8 | AVAIL PIGSTY 1.4.2 10 |
| el9.aarch64 | AVAIL PIGSTY 1.4.2 8 | AVAIL PIGSTY 1.4.2 8 | AVAIL PIGSTY 1.4.2 9 | AVAIL PIGSTY 1.4.2 9 | AVAIL PIGSTY 1.4.2 10 |
| el10.x86_64 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 |
| el10.aarch64 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 3 |
| d12.x86_64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| u26.x86_64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
| u26.aarch64 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 | AVAIL PIGSTY 1.4.2 1 |
@ el8.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-2PIGSTY.el8.x86_64.rpm pigsty 1.4.2 53.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_18-1.4.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-2PIGSTY.el8.aarch64.rpm pigsty 1.4.2 51.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_18-1.4.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-2PIGSTY.el9.x86_64.rpm pigsty 1.4.2 53.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_18-1.4.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 52.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.2 52.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.2 52.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 52.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 52.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.6.x86_64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.1-3PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 52.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-2PIGSTY.el9.aarch64.rpm pigsty 1.4.2 52.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_18-1.4.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 51.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.2 51.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.2 51.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 51.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 51.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.6.aarch64.rpm pgdg 1.4.1 51.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.1-3PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 51.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-2PIGSTY.el10.x86_64.rpm pigsty 1.4.2 54.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/firebird_fdw_18-1.4.2-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 53.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/firebird_fdw_18-1.4.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 53.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/firebird_fdw_18-1.4.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-2PIGSTY.el10.aarch64.rpm pigsty 1.4.2 52.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/firebird_fdw_18-1.4.2-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 51.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/firebird_fdw_18-1.4.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 52.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/firebird_fdw_18-1.4.1-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb pigsty 1.4.2 139.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb pigsty 1.4.2 136.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb pigsty 1.4.2 139.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb pigsty 1.4.2 136.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb pigsty 1.4.2 148.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb pigsty 1.4.2 146.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb pigsty 1.4.2 142.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb pigsty 1.4.2 141.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb pigsty 1.4.2 141.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb pigsty 1.4.2 139.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-2PIGSTY.el8.x86_64.rpm pigsty 1.4.2 53.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_17-1.4.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-2PIGSTY.el8.aarch64.rpm pigsty 1.4.2 51.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_17-1.4.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-2PIGSTY.el9.x86_64.rpm pigsty 1.4.2 53.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_17-1.4.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 52.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.2 52.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.2 52.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.6.x86_64.rpm pgdg 1.4.1 52.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.1-3PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.0-3PGDG.rhel9.x86_64.rpm pgdg 1.4.0 52.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.0-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-2PIGSTY.el9.aarch64.rpm pigsty 1.4.2 52.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_17-1.4.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 51.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.2 51.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.2 51.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 51.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 51.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.6.aarch64.rpm pgdg 1.4.1 51.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.1-3PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.0-3PGDG.rhel9.aarch64.rpm pgdg 1.4.0 51.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.0-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-2PIGSTY.el10.x86_64.rpm pigsty 1.4.2 54.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/firebird_fdw_17-1.4.2-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 53.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/firebird_fdw_17-1.4.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 53.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/firebird_fdw_17-1.4.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-2PIGSTY.el10.aarch64.rpm pigsty 1.4.2 52.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/firebird_fdw_17-1.4.2-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 51.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/firebird_fdw_17-1.4.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 51.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/firebird_fdw_17-1.4.1-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb pigsty 1.4.2 139.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb pigsty 1.4.2 136.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb pigsty 1.4.2 139.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb pigsty 1.4.2 136.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb pigsty 1.4.2 167.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb pigsty 1.4.2 166.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb pigsty 1.4.2 142.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb pigsty 1.4.2 141.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb pigsty 1.4.2 140.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb pigsty 1.4.2 139.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-2PIGSTY.el8.x86_64.rpm pigsty 1.4.2 53.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_16-1.4.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-2PIGSTY.el8.aarch64.rpm pigsty 1.4.2 51.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_16-1.4.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-2PIGSTY.el9.x86_64.rpm pigsty 1.4.2 53.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_16-1.4.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 52.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.4.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.2 52.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.2 52.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.4.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.6.x86_64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.4.1-3PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.3.1-1PGDG.rhel9.x86_64.rpm pgdg 1.3.1 51.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-2PIGSTY.el9.aarch64.rpm pigsty 1.4.2 52.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_16-1.4.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 51.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.2 51.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.2 51.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 51.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 51.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.6.aarch64.rpm pgdg 1.4.1 51.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.1-3PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 51.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.3.1-1PGDG.rhel9.aarch64.rpm pgdg 1.3.1 49.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.3.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-2PIGSTY.el10.x86_64.rpm pigsty 1.4.2 54.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/firebird_fdw_16-1.4.2-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 53.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/firebird_fdw_16-1.4.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 53.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/firebird_fdw_16-1.4.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-2PIGSTY.el10.aarch64.rpm pigsty 1.4.2 52.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/firebird_fdw_16-1.4.2-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 51.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/firebird_fdw_16-1.4.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 51.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/firebird_fdw_16-1.4.1-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb pigsty 1.4.2 139.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb pigsty 1.4.2 136.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb pigsty 1.4.2 139.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb pigsty 1.4.2 136.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb pigsty 1.4.2 167.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb pigsty 1.4.2 165.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb pigsty 1.4.2 142.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb pigsty 1.4.2 141.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb pigsty 1.4.2 141.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb pigsty 1.4.2 139.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-2PIGSTY.el8.x86_64.rpm pigsty 1.4.2 54.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_15-1.4.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-2PIGSTY.el8.aarch64.rpm pigsty 1.4.2 52.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_15-1.4.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.3.0-1.rhel8.aarch64.rpm pgdg 1.3.0 49.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/firebird_fdw_15-1.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-2PIGSTY.el9.x86_64.rpm pigsty 1.4.2 54.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_15-1.4.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 53.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.4.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.2 53.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.2 53.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 53.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.4.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 53.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.6.x86_64.rpm pgdg 1.4.1 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.4.1-3PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.3.0-1.rhel9.x86_64.rpm pgdg 1.3.0 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.3.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-2PIGSTY.el9.aarch64.rpm pigsty 1.4.2 53.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_15-1.4.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 52.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.2 52.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.2 52.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.6.aarch64.rpm pgdg 1.4.1 52.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.1-3PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.3.0-1.rhel9.aarch64.rpm pgdg 1.3.0 51.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.3.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-2PIGSTY.el10.x86_64.rpm pigsty 1.4.2 55.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/firebird_fdw_15-1.4.2-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/firebird_fdw_15-1.4.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 54.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/firebird_fdw_15-1.4.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-2PIGSTY.el10.aarch64.rpm pigsty 1.4.2 54.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/firebird_fdw_15-1.4.2-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/firebird_fdw_15-1.4.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 53.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/firebird_fdw_15-1.4.1-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb pigsty 1.4.2 139.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb pigsty 1.4.2 136.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb pigsty 1.4.2 139.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb pigsty 1.4.2 136.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb pigsty 1.4.2 168.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb pigsty 1.4.2 166.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb pigsty 1.4.2 143.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb pigsty 1.4.2 142.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb pigsty 1.4.2 141.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb pigsty 1.4.2 140.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-2PIGSTY.el8.x86_64.rpm pigsty 1.4.2 54.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_14-1.4.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-2.rhel8.x86_64.rpm pgdg 1.2.3 151.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/firebird_fdw_14-1.2.3-2.rhel8.x86_64.rpm
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-1.rhel8.x86_64.rpm pgdg 1.2.3 151.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/firebird_fdw_14-1.2.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.2-1.rhel8.x86_64.rpm pgdg 1.2.2 151.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/firebird_fdw_14-1.2.2-1.rhel8.x86_64.rpm
@ el8.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-2PIGSTY.el8.aarch64.rpm pigsty 1.4.2 52.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_14-1.4.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.3.0-1.rhel8.aarch64.rpm pgdg 1.3.0 49.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/firebird_fdw_14-1.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-2PIGSTY.el9.x86_64.rpm pigsty 1.4.2 55.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_14-1.4.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 53.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.4.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.2 53.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.2 53.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 53.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.4.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 53.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.6.x86_64.rpm pgdg 1.4.1 53.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.4.1-3PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.3.0-1.rhel9.x86_64.rpm pgdg 1.3.0 52.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.3.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-2.rhel9.x86_64.rpm pgdg 1.2.3 153.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.2.3-2.rhel9.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-1.rhel9.x86_64.rpm pgdg 1.2.3 153.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.2.3-1.rhel9.x86_64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-2PIGSTY.el9.aarch64.rpm pigsty 1.4.2 54.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_14-1.4.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 52.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.2 52.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.2 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.6.aarch64.rpm pgdg 1.4.1 52.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.1-3PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 52.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.3.0-1.rhel9.aarch64.rpm pgdg 1.3.0 51.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.3.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-3.rhel9.aarch64.rpm pgdg 1.2.3 152.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.2.3-3.rhel9.aarch64.rpm
@ el10.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-2PIGSTY.el10.x86_64.rpm pigsty 1.4.2 55.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/firebird_fdw_14-1.4.2-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 54.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/firebird_fdw_14-1.4.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 54.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/firebird_fdw_14-1.4.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-2PIGSTY.el10.aarch64.rpm pigsty 1.4.2 54.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/firebird_fdw_14-1.4.2-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 53.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/firebird_fdw_14-1.4.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 53.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/firebird_fdw_14-1.4.1-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb pigsty 1.4.2 141.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb pigsty 1.4.2 138.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb pigsty 1.4.2 141.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb pigsty 1.4.2 138.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb pigsty 1.4.2 169.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb pigsty 1.4.2 167.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb pigsty 1.4.2 144.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb pigsty 1.4.2 144.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb pigsty 1.4.2 143.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb pigsty 1.4.2 141.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.2-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `firebird_fdw` using `pig build`:

```bash
pig build pkg firebird_fdw         # build RPM / DEB packages
```


## Install

You can install `firebird_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install firebird_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y firebird_fdw -v 18  # PG 18
pig ext install -y firebird_fdw -v 17  # PG 17
pig ext install -y firebird_fdw -v 16  # PG 16
pig ext install -y firebird_fdw -v 15  # PG 15
pig ext install -y firebird_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y firebird_fdw_18       # PG 18
dnf install -y firebird_fdw_17       # PG 17
dnf install -y firebird_fdw_16       # PG 16
dnf install -y firebird_fdw_15       # PG 15
dnf install -y firebird_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-firebird-fdw   # PG 18
apt install -y postgresql-17-firebird-fdw   # PG 17
apt install -y postgresql-16-firebird-fdw   # PG 16
apt install -y postgresql-15-firebird-fdw   # PG 15
apt install -y postgresql-14-firebird-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION firebird_fdw;
```




## Usage

Sources: [upstream README](https://github.com/ibarwick/firebird_fdw), [1.4.2 README](https://github.com/ibarwick/firebird_fdw/blob/REL_1_4_STABLE/README.md), [1.4.2 tag](https://github.com/ibarwick/firebird_fdw/tree/1.4.2).

`firebird_fdw` connects PostgreSQL to Firebird databases through the foreign data wrapper API. It supports reads, writes, `IMPORT FOREIGN SCHEMA`, predicate pushdown for supported expressions, connection caching, and foreign-table `TRUNCATE` on PostgreSQL 14+.

### Create Server

```sql
CREATE EXTENSION firebird_fdw;

CREATE SERVER firebird_server FOREIGN DATA WRAPPER firebird_fdw
  OPTIONS (address 'localhost', database '/path/to/database.fdb');
```

Server options include:

- `address`, default `localhost`.
- `port`, default `3050`.
- `database`, the Firebird database name or path.
- `updatable`, default `true`; table-level settings can override it.
- `disable_pushdowns`, useful for debugging or benchmarking.
- `quote_identifiers`, to quote table and column identifiers by default.
- `implicit_bool_type`, for integer-backed Firebird boolean columns.
- `batch_size`, for multi-row inserts on PostgreSQL 14+.

### Create User Mapping

```sql
CREATE USER MAPPING FOR CURRENT_USER SERVER firebird_server
  OPTIONS (username 'sysdba', password 'masterke');
```

### Create Foreign Table

```sql
CREATE FOREIGN TABLE fb_test (
  id smallint,
  val varchar(2048)
)
SERVER firebird_server
OPTIONS (table_name 'fdw_test');
```

With column name mapping:

```sql
CREATE FOREIGN TABLE fb_mapped (
  id smallint OPTIONS (column_name 'test_id'),
  val varchar(2048) OPTIONS (column_name 'test_val')
)
SERVER firebird_server
OPTIONS (table_name 'fdw_test');
```

With a custom query, the foreign table is read-only:

```sql
CREATE FOREIGN TABLE fb_query (
  id smallint,
  val varchar(2048)
)
SERVER firebird_server
OPTIONS (query $$ SELECT id, val FROM fdw_test WHERE id > 10 $$);
```

Table options include `table_name`, `query`, `updatable`, `estimated_row_count`, `quote_identifier`, and `batch_size`. Column options include `column_name`, `quote_identifier`, and `implicit_bool_type`.

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA someschema
  FROM SERVER firebird_server
  INTO public
  OPTIONS (import_views 'true', verbose 'true');
```

Import options include `import_not_null`, `import_views`, `updatable`, and `verbose`. The schema name has no special Firebird meaning and can be any value accepted by PostgreSQL's `IMPORT FOREIGN SCHEMA` syntax.

### CRUD Operations

```sql
SELECT * FROM fb_test WHERE id > 5;
INSERT INTO fb_test VALUES (10, 'new record');
UPDATE fb_test SET val = 'updated' WHERE id = 10;
DELETE FROM fb_test WHERE id = 10;
TRUNCATE fb_test;
```

`UPDATE` and `DELETE` use Firebird's `RDB$DB_KEY`. `TRUNCATE` is implemented as an unqualified Firebird `DELETE` because Firebird has no native `TRUNCATE` statement.

### Utility Functions

- `firebird_fdw_version()` returns the FDW version as an integer.
- `firebird_fdw_close_connections()` closes cached Firebird connections for the current PostgreSQL session.
- `firebird_fdw_server_options(servername text)` shows effective server option values and whether each was explicitly provided.
- `firebird_fdw_diag()` returns diagnostic key/value data, including FDW and `libfq` versions.
- `firebird_version()` reports Firebird server versions for configured foreign servers and may open connections to do so.

### Caveats

- Pigsty packages `firebird_fdw` 1.4.2 for PostgreSQL 14-18. Upstream documents compatibility with PostgreSQL 10-19, with newer FDW API features available only on newer PostgreSQL releases.
- Upstream supports Firebird 2.5 and later; older Firebird versions are not a tested target.
- `firebird_fdw` and `libfq` are developed together, so package compatibility depends on matching those libraries.
- Custom-query foreign tables cannot be updated.
- The `implicit_bool_type` feature is experimental and is designed around integer columns representing boolean values.
