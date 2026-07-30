---
title: "odbc_fdw"
linkTitle: "odbc_fdw"
description: "Foreign data wrapper for accessing remote databases using ODBC"
weight: 8520
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/devrimgunduz/odbc_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">devrimgunduz/odbc_fdw</div>
    <div class="ext-card__desc">https://github.com/devrimgunduz/odbc_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/odbc_fdw-0.6.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">odbc_fdw-0.6.1.tar.gz</div>
    <div class="ext-card__desc">odbc_fdw-0.6.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`odbc_fdw`**](/ext/e/odbc_fdw) | `0.5.2` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8520  | [**`odbc_fdw`**](/ext/e/odbc_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`jdbc_fdw`](/ext/e/jdbc_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Package/source version 0.6.1; SQL extension version 0.5.2. Live queries require an installed ODBC driver and configured DSN.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.5.2` | {{< pgvers "18,17,16,15,14" >}} | `odbc_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.6.1` | {{< pgvers "18,17,16,15,14" >}} | `odbc_fdw_$v` | `unixODBC` |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-odbc-fdw` | `libodbc2` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.6.1 1 | AVAIL PGDG 0.6.1 2 | AVAIL PGDG 0.6.1 2 | AVAIL PGDG 0.6.1 2 | AVAIL PGDG 0.6.1 2 |
| el8.aarch64 | AVAIL PGDG 0.6.1 1 | AVAIL PGDG 0.6.1 2 | AVAIL PGDG 0.6.1 2 | AVAIL PGDG 0.6.1 2 | AVAIL PGDG 0.6.1 2 |
| el9.x86_64 | AVAIL PGDG 0.6.1 1 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 |
| el9.aarch64 | AVAIL PGDG 0.6.1 1 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 |
| el10.x86_64 | AVAIL PGDG 0.6.1 1 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 |
| el10.aarch64 | AVAIL PGDG 0.6.1 1 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 | AVAIL PGDG 0.6.1 3 |
| d12.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 |
@ el8.x86_64 18 odbc_fdw_18 odbc_fdw_18-0.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.6.1 28.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/odbc_fdw_18-0.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 odbc_fdw_18 odbc_fdw_18-0.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.6.1 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/odbc_fdw_18-0.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 odbc_fdw_18 odbc_fdw_18-0.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 0.6.1 29.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/odbc_fdw_18-0.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 18 odbc_fdw_18 odbc_fdw_18-0.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 0.6.1 28.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/odbc_fdw_18-0.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 18 odbc_fdw_18 odbc_fdw_18-0.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 0.6.1 30.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/odbc_fdw_18-0.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 odbc_fdw_18 odbc_fdw_18-0.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.6.1 28.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/odbc_fdw_18-0.6.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb pigsty 0.6.1 48.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb pigsty 0.6.1 47.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb pigsty 0.6.1 49.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb pigsty 0.6.1 47.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb pigsty 0.6.1 53.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb pigsty 0.6.1 52.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb pigsty 0.6.1 51.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb pigsty 0.6.1 50.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb pigsty 0.6.1 50.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-odbc-fdw postgresql-18-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb pigsty 0.6.1 50.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-18-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.6.1 28.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/odbc_fdw_17-0.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/odbc_fdw_17-0.5.1-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.6.1 28.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/odbc_fdw_17-0.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/odbc_fdw_17-0.5.1-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 0.6.1 29.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/odbc_fdw_17-0.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-5PGDG.rhel9.8.x86_64.rpm pgdg 0.5.1 26.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/odbc_fdw_17-0.5.1-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/odbc_fdw_17-0.5.1-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 0.6.1 28.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/odbc_fdw_17-0.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-5PGDG.rhel9.8.aarch64.rpm pgdg 0.5.1 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/odbc_fdw_17-0.5.1-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/odbc_fdw_17-0.5.1-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 0.6.1 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/odbc_fdw_17-0.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-5PGDG.rhel10.2.x86_64.rpm pgdg 0.5.1 27.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/odbc_fdw_17-0.5.1-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/odbc_fdw_17-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.6.1 28.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/odbc_fdw_17-0.6.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-5PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/odbc_fdw_17-0.5.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/odbc_fdw_17-0.5.1-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb pigsty 0.6.1 48.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb pigsty 0.6.1 47.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb pigsty 0.6.1 49.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb pigsty 0.6.1 47.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb pigsty 0.6.1 60.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb pigsty 0.6.1 59.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb pigsty 0.6.1 51.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb pigsty 0.6.1 50.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb pigsty 0.6.1 50.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-odbc-fdw postgresql-17-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb pigsty 0.6.1 50.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-17-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.6.1 28.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/odbc_fdw_16-0.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/odbc_fdw_16-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.6.1 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/odbc_fdw_16-0.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/odbc_fdw_16-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 0.6.1 29.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/odbc_fdw_16-0.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-5PGDG.rhel9.8.x86_64.rpm pgdg 0.5.1 26.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/odbc_fdw_16-0.5.1-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/odbc_fdw_16-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 0.6.1 28.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/odbc_fdw_16-0.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-5PGDG.rhel9.8.aarch64.rpm pgdg 0.5.1 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/odbc_fdw_16-0.5.1-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/odbc_fdw_16-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 0.6.1 30.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/odbc_fdw_16-0.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-5PGDG.rhel10.2.x86_64.rpm pgdg 0.5.1 27.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/odbc_fdw_16-0.5.1-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/odbc_fdw_16-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.6.1 28.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/odbc_fdw_16-0.6.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-5PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/odbc_fdw_16-0.5.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/odbc_fdw_16-0.5.1-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb pigsty 0.6.1 48.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb pigsty 0.6.1 47.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb pigsty 0.6.1 49.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb pigsty 0.6.1 47.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb pigsty 0.6.1 60.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb pigsty 0.6.1 59.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb pigsty 0.6.1 51.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb pigsty 0.6.1 50.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb pigsty 0.6.1 50.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-odbc-fdw postgresql-16-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb pigsty 0.6.1 50.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-16-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.6.1 28.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/odbc_fdw_15-0.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/odbc_fdw_15-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.6.1 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/odbc_fdw_15-0.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/odbc_fdw_15-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 0.6.1 29.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/odbc_fdw_15-0.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-5PGDG.rhel9.8.x86_64.rpm pgdg 0.5.1 26.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/odbc_fdw_15-0.5.1-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/odbc_fdw_15-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 0.6.1 28.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/odbc_fdw_15-0.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-5PGDG.rhel9.8.aarch64.rpm pgdg 0.5.1 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/odbc_fdw_15-0.5.1-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/odbc_fdw_15-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 0.6.1 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/odbc_fdw_15-0.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-5PGDG.rhel10.2.x86_64.rpm pgdg 0.5.1 27.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/odbc_fdw_15-0.5.1-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/odbc_fdw_15-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.6.1 28.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/odbc_fdw_15-0.6.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-5PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 26.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/odbc_fdw_15-0.5.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/odbc_fdw_15-0.5.1-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb pigsty 0.6.1 48.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb pigsty 0.6.1 47.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb pigsty 0.6.1 49.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb pigsty 0.6.1 47.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb pigsty 0.6.1 59.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb pigsty 0.6.1 59.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb pigsty 0.6.1 51.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb pigsty 0.6.1 50.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb pigsty 0.6.1 50.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-odbc-fdw postgresql-15-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb pigsty 0.6.1 50.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-15-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.6.1 28.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/odbc_fdw_14-0.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/odbc_fdw_14-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.6.1 28.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/odbc_fdw_14-0.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/odbc_fdw_14-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 0.6.1 29.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/odbc_fdw_14-0.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-5PGDG.rhel9.8.x86_64.rpm pgdg 0.5.1 26.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/odbc_fdw_14-0.5.1-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/odbc_fdw_14-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 0.6.1 28.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/odbc_fdw_14-0.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-5PGDG.rhel9.8.aarch64.rpm pgdg 0.5.1 26.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/odbc_fdw_14-0.5.1-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/odbc_fdw_14-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 0.6.1 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/odbc_fdw_14-0.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-5PGDG.rhel10.2.x86_64.rpm pgdg 0.5.1 27.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/odbc_fdw_14-0.5.1-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/odbc_fdw_14-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.6.1 28.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/odbc_fdw_14-0.6.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-5PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/odbc_fdw_14-0.5.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/odbc_fdw_14-0.5.1-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb pigsty 0.6.1 48.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb pigsty 0.6.1 47.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb pigsty 0.6.1 48.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb pigsty 0.6.1 47.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb pigsty 0.6.1 59.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb pigsty 0.6.1 58.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb pigsty 0.6.1 51.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb pigsty 0.6.1 50.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb pigsty 0.6.1 50.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-odbc-fdw postgresql-14-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb pigsty 0.6.1 50.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/odbc-fdw/postgresql-14-odbc-fdw_0.6.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `odbc_fdw` using `pig build`:

```bash
pig build pkg odbc_fdw         # build DEB packages
```


## Install

You can install `odbc_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install odbc_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y odbc_fdw -v 18  # PG 18
pig ext install -y odbc_fdw -v 17  # PG 17
pig ext install -y odbc_fdw -v 16  # PG 16
pig ext install -y odbc_fdw -v 15  # PG 15
pig ext install -y odbc_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y odbc_fdw_18       # PG 18
dnf install -y odbc_fdw_17       # PG 17
dnf install -y odbc_fdw_16       # PG 16
dnf install -y odbc_fdw_15       # PG 15
dnf install -y odbc_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-odbc-fdw   # PG 18
apt install -y postgresql-17-odbc-fdw   # PG 17
apt install -y postgresql-16-odbc-fdw   # PG 16
apt install -y postgresql-15-odbc-fdw   # PG 15
apt install -y postgresql-14-odbc-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION odbc_fdw;
```

## Usage

Sources:

- [odbc_fdw 0.6.1 README](https://github.com/devrimgunduz/odbc_fdw/blob/0.6.1/README.md)
- [odbc_fdw changelog](https://github.com/devrimgunduz/odbc_fdw/blob/0.6.1/NEWS.md)
- [Extension control file](https://github.com/devrimgunduz/odbc_fdw/blob/0.6.1/odbc_fdw.control)
- [0.6.0 to 0.6.1 comparison](https://github.com/devrimgunduz/odbc_fdw/compare/0.6.0...0.6.1)

`odbc_fdw` exposes tables or driver-specific queries from an ODBC data source as PostgreSQL foreign tables. It is primarily a read/query bridge across heterogeneous systems; validate data-type conversions and remote-driver behavior before relying on it for production queries.

### Core Workflow

```sql
CREATE EXTENSION odbc_fdw;

-- In 0.6.1 a superuser must set the server-level dsn or driver option.
CREATE SERVER warehouse_odbc
  FOREIGN DATA WRAPPER odbc_fdw
  OPTIONS (dsn 'warehouse');

CREATE USER MAPPING FOR analyst
  SERVER warehouse_odbc
  OPTIONS (odbc_UID 'reporter', odbc_PWD 'secret');

CREATE FOREIGN TABLE remote_customer (
  id bigint,
  name text,
  created_at timestamp
) SERVER warehouse_odbc
  OPTIONS (schema 'sales', table 'customer');

SELECT * FROM remote_customer WHERE id = 42;
```

Use `driver` instead of `dsn` for a DSN-less connection. Other driver attributes use the `odbc_` prefix and may be placed on the server, user mapping, or foreign table. Put credentials in a user mapping. Quote case-sensitive attribute names, and wrap values containing `=` or `;` in braces as required by the driver.

### Queries and Import

`sql_query` overrides `table`; pair it with `sql_count` when the FDW needs an explicit row-count query:

```sql
CREATE FOREIGN TABLE active_customer (
  id bigint,
  name text
) SERVER warehouse_odbc
  OPTIONS (
    sql_query 'SELECT id, name FROM sales.customer WHERE active = 1',
    sql_count 'SELECT count(*) FROM sales.customer WHERE active = 1'
  );

IMPORT FOREIGN SCHEMA sales
  FROM SERVER warehouse_odbc
  INTO imported
  OPTIONS (prefix 'odbc_');
```

### Important Objects and Options

- `dsn` or `driver` selects the ODBC data source; 0.6.1 restricts these server options to superusers because the driver manager loads shared libraries.
- `schema`, `table`, `sql_query`, and `sql_count` select the remote relation or query.
- `prefix` changes local names created by `IMPORT FOREIGN SCHEMA`.
- `ODBCTablesList(server_name, ...)` lists visible remote tables.
- `ODBCTableSize(server_name, table_name)` and `ODBCQuerySize(server_name, query)` return remote row counts.

Version 0.6.0 restores compatibility and fixes crashes on recent PostgreSQL releases. Version 0.6.1 escapes remote literals and identifiers to prevent SQL injection, restricts driver selection, and redacts common credential attributes in debug connection strings. Upgrade before allowing delegated FDW use, while retaining normal server ownership and user-mapping controls.

Only the ODBC types listed by the upstream README are fully supported. Identifier length, driver SQL dialect, encodings, null handling, and binary values can vary. The source/package release is 0.6.1, while the control file and install SQL continue to declare extension version 0.5.2.
