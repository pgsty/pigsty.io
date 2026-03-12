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
  <a class="ext-card ext-card--source" href="firebird_fdw-1.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">firebird_fdw-1.4.1.tar.gz</div>
    <div class="ext-card__desc">firebird_fdw-1.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`firebird_fdw`**](/ext/e/firebird_fdw) | `1.4.1` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8750  | [**`firebird_fdw`**](/ext/e/firebird_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`wrappers`](/ext/e/wrappers) [`odbc_fdw`](/ext/e/odbc_fdw) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg18 breaks


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `firebird_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `firebird_fdw_$v` | `libfq` |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-firebird-fdw` | `libfq` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 4 |
| el8.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 2 | AVAIL PIGSTY 1.4.1 2 |
| el9.x86_64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 5 |
| el9.aarch64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 4 | AVAIL PGDG 1.4.1 4 | AVAIL PGDG 1.4.1 5 |
| el10.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
@ el8.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 53.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_18-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 52.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_18-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 52.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 53.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_18-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 52.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/firebird_fdw_18-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 51.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 52.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_18-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 firebird_fdw_18 firebird_fdw_18-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 51.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/firebird_fdw_18-1.4.1-1PGDG.rhel9.aarch64.rpm
@ d12.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 140.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 137.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 141.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 137.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 150.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 148.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 143.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-firebird-fdw postgresql-18-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 143.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-18-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 53.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_17-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 52.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_17-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 54.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_17-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 firebird_fdw_17 firebird_fdw_17-1.4.0-3PGDG.rhel9.x86_64.rpm pgdg 1.4.0 52.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/firebird_fdw_17-1.4.0-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 51.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 52.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_17-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 firebird_fdw_17 firebird_fdw_17-1.4.0-3PGDG.rhel9.aarch64.rpm pgdg 1.4.0 51.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/firebird_fdw_17-1.4.0-3PGDG.rhel9.aarch64.rpm
@ d12.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 140.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 137.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 140.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 137.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 169.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 167.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 143.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-firebird-fdw postgresql-17-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 142.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-17-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 53.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_16-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 52.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_16-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 53.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_16-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 firebird_fdw_16 firebird_fdw_16-1.3.1-1PGDG.rhel9.x86_64.rpm pgdg 1.3.1 51.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/firebird_fdw_16-1.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 51.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 52.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_16-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 51.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 firebird_fdw_16 firebird_fdw_16-1.3.1-1PGDG.rhel9.aarch64.rpm pgdg 1.3.1 49.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/firebird_fdw_16-1.3.1-1PGDG.rhel9.aarch64.rpm
@ d12.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 140.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 137.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 140.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 137.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 169.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 167.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 143.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-firebird-fdw postgresql-16-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 142.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-16-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 54.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_15-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 52.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_15-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.3.0-1.rhel8.aarch64.rpm pgdg 1.3.0 49.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/firebird_fdw_15-1.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 53.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 54.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_15-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 firebird_fdw_15 firebird_fdw_15-1.3.0-1.rhel9.x86_64.rpm pgdg 1.3.0 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/firebird_fdw_15-1.3.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 53.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_15-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 firebird_fdw_15 firebird_fdw_15-1.3.0-1.rhel9.aarch64.rpm pgdg 1.3.0 51.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/firebird_fdw_15-1.3.0-1.rhel9.aarch64.rpm
@ d12.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 141.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 138.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 141.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 138.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 170.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 168.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 144.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-firebird-fdw postgresql-15-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 143.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-15-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 54.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/firebird_fdw_14-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-2.rhel8.x86_64.rpm pgdg 1.2.3 151.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/firebird_fdw_14-1.2.3-2.rhel8.x86_64.rpm
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-1.rhel8.x86_64.rpm pgdg 1.2.3 151.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/firebird_fdw_14-1.2.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.2-1.rhel8.x86_64.rpm pgdg 1.2.2 151.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/firebird_fdw_14-1.2.2-1.rhel8.x86_64.rpm
@ el8.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 52.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/firebird_fdw_14-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.3.0-1.rhel8.aarch64.rpm pgdg 1.3.0 49.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/firebird_fdw_14-1.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.7.x86_64.rpm pgdg 1.4.1 53.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.4.1-3PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 55.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/firebird_fdw_14-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.3.0-1.rhel9.x86_64.rpm pgdg 1.3.0 52.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.3.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-2.rhel9.x86_64.rpm pgdg 1.2.3 153.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.2.3-2.rhel9.x86_64.rpm
@ el9.x86_64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-1.rhel9.x86_64.rpm pgdg 1.2.3 153.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/firebird_fdw_14-1.2.3-1.rhel9.x86_64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-3PGDG.rhel9.7.aarch64.rpm pgdg 1.4.1 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.1-3PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 54.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/firebird_fdw_14-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 52.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.3.0-1.rhel9.aarch64.rpm pgdg 1.3.0 51.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.3.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 firebird_fdw_14 firebird_fdw_14-1.2.3-3.rhel9.aarch64.rpm pgdg 1.2.3 152.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/firebird_fdw_14-1.2.3-3.rhel9.aarch64.rpm
@ d12.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 141.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 138.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 141.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 138.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 169.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 167.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 144.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-firebird-fdw postgresql-14-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 143.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/firebird-fdw/postgresql-14-firebird-fdw_1.4.1-1PIGSTY~noble_arm64.deb
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

> [firebird_fdw: Foreign data wrapper for Firebird](https://github.com/ibarwick/firebird_fdw)

### Create Server

```sql
CREATE EXTENSION firebird_fdw;

CREATE SERVER firebird_server FOREIGN DATA WRAPPER firebird_fdw
  OPTIONS (address 'localhost', database '/path/to/database.fdb');
```

**Server Options:** `address` (default `localhost`), `port` (default `3050`), `database` (required, path to Firebird database file), `updatable` (default `true`), `disable_pushdowns` (disable WHERE clause pushdown), `quote_identifiers`, `implicit_bool_type` (enable integer-to-boolean conversion), `batch_size` (PostgreSQL 14+).

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

With a custom query (read-only):

```sql
CREATE FOREIGN TABLE fb_query (
  id smallint,
  val varchar(2048)
)
SERVER firebird_server
OPTIONS (query $$ SELECT id, val FROM fdw_test WHERE id > 10 $$);
```

**Table Options:** `table_name`, `query` (mutually exclusive with `table_name`, read-only), `updatable`, `estimated_row_count`, `quote_identifier`, `batch_size`.

**Column Options:** `column_name`, `quote_identifier`, `implicit_bool_type`.

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA someschema
  FROM SERVER firebird_server
  INTO public
  OPTIONS (import_views 'true', verbose 'true');
```

**Import Options:** `import_not_null` (default `true`), `import_views` (default `true`), `updatable`, `verbose`.

The schema parameter has no particular meaning in Firebird and can be set to any value.

### CRUD Operations

```sql
SELECT * FROM fb_test WHERE id > 5;
INSERT INTO fb_test VALUES (10, 'new record');
UPDATE fb_test SET val = 'updated' WHERE id = 10;
DELETE FROM fb_test WHERE id = 10;
```
