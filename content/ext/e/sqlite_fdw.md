---
title: "sqlite_fdw"
linkTitle: "sqlite_fdw"
description: "SQLite Foreign Data Wrapper"
weight: 8640
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgspider/sqlite_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgspider/sqlite_fdw</div>
    <div class="ext-card__desc">https://github.com/pgspider/sqlite_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/sqlite_fdw-2.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">sqlite_fdw-2.5.0.tar.gz</div>
    <div class="ext-card__desc">sqlite_fdw-2.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`sqlite_fdw`**](/ext/e/sqlite_fdw) | `2.5.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8640  | [**`sqlite_fdw`**](/ext/e/sqlite_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pglite_fusion`](/ext/e/pglite_fusion) [`omni_sqlite`](/ext/e/omni_sqlite) [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`informix_fdw`](/ext/e/informix_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) [`firebird_fdw`](/ext/e/firebird_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> break on el8 due to sqlite-lib version low


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.5.0` | {{< pgvers "18,17,16,15,14" >}} | `sqlite_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.5.0` | {{< pgvers "18,17,16,15,14" >}} | `sqlite_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-sqlite-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PGDG 2.4.0 1 | AVAIL PGDG 2.4.0 1 | AVAIL PGDG 2.4.0 3 | AVAIL PGDG 2.4.0 4 |
| el8.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PGDG 2.4.0 1 | AVAIL PGDG 2.4.0 1 | AVAIL PGDG 2.4.0 3 | AVAIL PGDG 2.4.0 3 |
| el9.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PGDG 2.5.0 4 | AVAIL PGDG 2.5.0 4 | AVAIL PGDG 2.5.0 6 | AVAIL PGDG 2.5.0 6 |
| el9.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PGDG 2.5.0 4 | AVAIL PGDG 2.5.0 4 | AVAIL PGDG 2.5.0 6 | AVAIL PGDG 2.5.0 6 |
| el10.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PGDG 2.5.0 3 | AVAIL PGDG 2.5.0 3 | AVAIL PGDG 2.5.0 3 | AVAIL PGDG 2.5.0 3 |
| el10.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PGDG 2.5.0 3 | AVAIL PGDG 2.5.0 3 | AVAIL PGDG 2.5.0 3 | AVAIL PGDG 2.5.0 3 |
| d12.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
@ el8.x86_64 18 sqlite_fdw_18 sqlite_fdw_18-2.5.0-3PIGSTY.el8.x86_64.rpm pigsty 2.5.0 68.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/sqlite_fdw_18-2.5.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 sqlite_fdw_18 sqlite_fdw_18-2.5.0-3PIGSTY.el8.aarch64.rpm pigsty 2.5.0 65.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/sqlite_fdw_18-2.5.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 sqlite_fdw_18 sqlite_fdw_18-2.5.0-3PIGSTY.el9.x86_64.rpm pigsty 2.5.0 65.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sqlite_fdw_18-2.5.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 sqlite_fdw_18 sqlite_fdw_18-2.5.0-3PIGSTY.el9.aarch64.rpm pigsty 2.5.0 64.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sqlite_fdw_18-2.5.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 sqlite_fdw_18 sqlite_fdw_18-2.5.0-3PIGSTY.el10.x86_64.rpm pigsty 2.5.0 67.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sqlite_fdw_18-2.5.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 sqlite_fdw_18 sqlite_fdw_18-2.5.0-3PIGSTY.el10.aarch64.rpm pigsty 2.5.0 65.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sqlite_fdw_18-2.5.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~bookworm_amd64.deb pigsty 2.5.0 154.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~bookworm_arm64.deb pigsty 2.5.0 149.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~trixie_amd64.deb pigsty 2.5.0 154.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~trixie_arm64.deb pigsty 2.5.0 150.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~jammy_amd64.deb pigsty 2.5.0 167.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~jammy_arm64.deb pigsty 2.5.0 165.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~noble_amd64.deb pigsty 2.5.0 159.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~noble_arm64.deb pigsty 2.5.0 157.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~resolute_amd64.deb pigsty 2.5.0 158.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-sqlite-fdw postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~resolute_arm64.deb pigsty 2.5.0 156.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-18-sqlite-fdw_2.5.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.4.0-4PGDG.rhel8.x86_64.rpm pgdg 2.4.0 57.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/sqlite_fdw_17-2.4.0-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.4.0-4PGDG.rhel8.aarch64.rpm pgdg 2.4.0 55.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/sqlite_fdw_17-2.4.0-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-4PGDG.rhel9.8.x86_64.rpm pgdg 2.5.0 65.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/sqlite_fdw_17-2.5.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-2PIGSTY.el9.x86_64.rpm pigsty 2.5.0 65.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sqlite_fdw_17-2.5.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-1PGDG.rhel9.x86_64.rpm pgdg 2.5.0 64.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/sqlite_fdw_17-2.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.4.0-4PGDG.rhel9.x86_64.rpm pgdg 2.4.0 56.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/sqlite_fdw_17-2.4.0-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-4PGDG.rhel9.8.aarch64.rpm pgdg 2.5.0 63.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/sqlite_fdw_17-2.5.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-2PIGSTY.el9.aarch64.rpm pigsty 2.5.0 64.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sqlite_fdw_17-2.5.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-1PGDG.rhel9.aarch64.rpm pgdg 2.5.0 63.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/sqlite_fdw_17-2.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.4.0-4PGDG.rhel9.aarch64.rpm pgdg 2.4.0 55.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/sqlite_fdw_17-2.4.0-4PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-4PGDG.rhel10.2.x86_64.rpm pgdg 2.5.0 66.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/sqlite_fdw_17-2.5.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-2PIGSTY.el10.x86_64.rpm pigsty 2.5.0 67.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sqlite_fdw_17-2.5.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-2PGDG.rhel10.x86_64.rpm pgdg 2.5.0 66.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/sqlite_fdw_17-2.5.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-4PGDG.rhel10.2.aarch64.rpm pgdg 2.5.0 64.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/sqlite_fdw_17-2.5.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-2PIGSTY.el10.aarch64.rpm pigsty 2.5.0 65.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sqlite_fdw_17-2.5.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 sqlite_fdw_17 sqlite_fdw_17-2.5.0-2PGDG.rhel10.aarch64.rpm pgdg 2.5.0 64.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/sqlite_fdw_17-2.5.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 153.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 148.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 154.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 150.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 188.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 185.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 159.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 156.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 157.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-sqlite-fdw postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 155.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-17-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.4.0-1PGDG.rhel8.x86_64.rpm pgdg 2.4.0 57.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/sqlite_fdw_16-2.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.4.0-1PGDG.rhel8.aarch64.rpm pgdg 2.4.0 55.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/sqlite_fdw_16-2.4.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-4PGDG.rhel9.8.x86_64.rpm pgdg 2.5.0 63.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/sqlite_fdw_16-2.5.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-2PIGSTY.el9.x86_64.rpm pigsty 2.5.0 64.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sqlite_fdw_16-2.5.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-1PGDG.rhel9.x86_64.rpm pgdg 2.5.0 63.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/sqlite_fdw_16-2.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.4.0-1PGDG.rhel9.x86_64.rpm pgdg 2.4.0 56.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/sqlite_fdw_16-2.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-4PGDG.rhel9.8.aarch64.rpm pgdg 2.5.0 62.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/sqlite_fdw_16-2.5.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-2PIGSTY.el9.aarch64.rpm pigsty 2.5.0 63.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sqlite_fdw_16-2.5.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-1PGDG.rhel9.aarch64.rpm pgdg 2.5.0 62.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/sqlite_fdw_16-2.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.4.0-1PGDG.rhel9.aarch64.rpm pgdg 2.4.0 54.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/sqlite_fdw_16-2.4.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-4PGDG.rhel10.2.x86_64.rpm pgdg 2.5.0 65.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/sqlite_fdw_16-2.5.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-2PIGSTY.el10.x86_64.rpm pigsty 2.5.0 66.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sqlite_fdw_16-2.5.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-2PGDG.rhel10.x86_64.rpm pgdg 2.5.0 65.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/sqlite_fdw_16-2.5.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-4PGDG.rhel10.2.aarch64.rpm pgdg 2.5.0 63.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/sqlite_fdw_16-2.5.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-2PIGSTY.el10.aarch64.rpm pigsty 2.5.0 64.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sqlite_fdw_16-2.5.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 sqlite_fdw_16 sqlite_fdw_16-2.5.0-2PGDG.rhel10.aarch64.rpm pgdg 2.5.0 63.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/sqlite_fdw_16-2.5.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 151.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 147.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 152.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 148.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 183.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 181.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 157.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 155.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 155.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-sqlite-fdw postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 153.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-16-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.4.0-1PGDG.rhel8.x86_64.rpm pgdg 2.4.0 58.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/sqlite_fdw_15-2.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.3.0-1.rhel8.x86_64.rpm pgdg 2.3.0 53.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/sqlite_fdw_15-2.3.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.2.0-1.rhel8.x86_64.rpm pgdg 2.2.0 159.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/sqlite_fdw_15-2.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.4.0-1PGDG.rhel8.aarch64.rpm pgdg 2.4.0 55.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/sqlite_fdw_15-2.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.3.0-1.rhel8.aarch64.rpm pgdg 2.3.0 50.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/sqlite_fdw_15-2.3.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.2.0-1.rhel8.aarch64.rpm pgdg 2.2.0 155.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/sqlite_fdw_15-2.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-4PGDG.rhel9.8.x86_64.rpm pgdg 2.5.0 66.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/sqlite_fdw_15-2.5.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-2PIGSTY.el9.x86_64.rpm pigsty 2.5.0 67.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sqlite_fdw_15-2.5.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-1PGDG.rhel9.x86_64.rpm pgdg 2.5.0 66.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/sqlite_fdw_15-2.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.4.0-1PGDG.rhel9.x86_64.rpm pgdg 2.4.0 58.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/sqlite_fdw_15-2.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.3.0-1.rhel9.x86_64.rpm pgdg 2.3.0 53.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/sqlite_fdw_15-2.3.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.2.0-1.rhel9.x86_64.rpm pgdg 2.2.0 162.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/sqlite_fdw_15-2.2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-4PGDG.rhel9.8.aarch64.rpm pgdg 2.5.0 64.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/sqlite_fdw_15-2.5.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-2PIGSTY.el9.aarch64.rpm pigsty 2.5.0 65.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sqlite_fdw_15-2.5.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-1PGDG.rhel9.aarch64.rpm pgdg 2.5.0 64.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/sqlite_fdw_15-2.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.4.0-1PGDG.rhel9.aarch64.rpm pgdg 2.4.0 56.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/sqlite_fdw_15-2.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.3.0-1.rhel9.aarch64.rpm pgdg 2.3.0 52.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/sqlite_fdw_15-2.3.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.2.0-1.rhel9.aarch64.rpm pgdg 2.2.0 159.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/sqlite_fdw_15-2.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-4PGDG.rhel10.2.x86_64.rpm pgdg 2.5.0 67.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/sqlite_fdw_15-2.5.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-2PIGSTY.el10.x86_64.rpm pigsty 2.5.0 68.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sqlite_fdw_15-2.5.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-2PGDG.rhel10.x86_64.rpm pgdg 2.5.0 67.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/sqlite_fdw_15-2.5.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-4PGDG.rhel10.2.aarch64.rpm pgdg 2.5.0 65.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/sqlite_fdw_15-2.5.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-2PIGSTY.el10.aarch64.rpm pigsty 2.5.0 66.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sqlite_fdw_15-2.5.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 sqlite_fdw_15 sqlite_fdw_15-2.5.0-2PGDG.rhel10.aarch64.rpm pgdg 2.5.0 66.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/sqlite_fdw_15-2.5.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 152.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 148.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 152.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 148.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 185.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 183.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 158.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 157.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 157.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-sqlite-fdw postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 155.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-15-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.4.0-1PGDG.rhel8.x86_64.rpm pgdg 2.4.0 58.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/sqlite_fdw_14-2.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.3.0-1.rhel8.x86_64.rpm pgdg 2.3.0 53.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/sqlite_fdw_14-2.3.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.1.1-1.rhel8.x86_64.rpm pgdg 2.1.1 157.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/sqlite_fdw_14-2.1.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.1.0-1.rhel8.x86_64.rpm pgdg 2.1.0 154.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/sqlite_fdw_14-2.1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.4.0-1PGDG.rhel8.aarch64.rpm pgdg 2.4.0 55.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/sqlite_fdw_14-2.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.3.0-1.rhel8.aarch64.rpm pgdg 2.3.0 50.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/sqlite_fdw_14-2.3.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.2.0-1.rhel8.aarch64.rpm pgdg 2.2.0 156.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/sqlite_fdw_14-2.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-4PGDG.rhel9.8.x86_64.rpm pgdg 2.5.0 66.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/sqlite_fdw_14-2.5.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-2PIGSTY.el9.x86_64.rpm pigsty 2.5.0 67.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sqlite_fdw_14-2.5.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-1PGDG.rhel9.x86_64.rpm pgdg 2.5.0 66.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/sqlite_fdw_14-2.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.4.0-1PGDG.rhel9.x86_64.rpm pgdg 2.4.0 58.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/sqlite_fdw_14-2.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.3.0-1.rhel9.x86_64.rpm pgdg 2.3.0 53.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/sqlite_fdw_14-2.3.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.1.1-1.rhel9.x86_64.rpm pgdg 2.1.1 159.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/sqlite_fdw_14-2.1.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-4PGDG.rhel9.8.aarch64.rpm pgdg 2.5.0 64.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/sqlite_fdw_14-2.5.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-2PIGSTY.el9.aarch64.rpm pigsty 2.5.0 65.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sqlite_fdw_14-2.5.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-1PGDG.rhel9.aarch64.rpm pgdg 2.5.0 64.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/sqlite_fdw_14-2.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.4.0-1PGDG.rhel9.aarch64.rpm pgdg 2.4.0 56.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/sqlite_fdw_14-2.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.3.0-1.rhel9.aarch64.rpm pgdg 2.3.0 52.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/sqlite_fdw_14-2.3.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.2.0-1.rhel9.aarch64.rpm pgdg 2.2.0 160.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/sqlite_fdw_14-2.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-4PGDG.rhel10.2.x86_64.rpm pgdg 2.5.0 67.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/sqlite_fdw_14-2.5.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-2PIGSTY.el10.x86_64.rpm pigsty 2.5.0 68.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sqlite_fdw_14-2.5.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-2PGDG.rhel10.x86_64.rpm pgdg 2.5.0 67.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/sqlite_fdw_14-2.5.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-4PGDG.rhel10.2.aarch64.rpm pgdg 2.5.0 65.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/sqlite_fdw_14-2.5.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-2PIGSTY.el10.aarch64.rpm pigsty 2.5.0 66.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sqlite_fdw_14-2.5.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 sqlite_fdw_14 sqlite_fdw_14-2.5.0-2PGDG.rhel10.aarch64.rpm pgdg 2.5.0 66.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/sqlite_fdw_14-2.5.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 152.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 148.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 153.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 149.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 185.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 183.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 159.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 157.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 157.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-sqlite-fdw postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 155.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sqlite-fdw/postgresql-14-sqlite-fdw_2.5.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `sqlite_fdw` using `pig build`:

```bash
pig build pkg sqlite_fdw         # build RPM / DEB packages
```


## Install

You can install `sqlite_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install sqlite_fdw;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y sqlite_fdw -v 18  # PG 18
pig ext install -y sqlite_fdw -v 17  # PG 17
pig ext install -y sqlite_fdw -v 16  # PG 16
pig ext install -y sqlite_fdw -v 15  # PG 15
pig ext install -y sqlite_fdw -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y sqlite_fdw_18       # PG 18
dnf install -y sqlite_fdw_17       # PG 17
dnf install -y sqlite_fdw_16       # PG 16
dnf install -y sqlite_fdw_15       # PG 15
dnf install -y sqlite_fdw_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-sqlite-fdw   # PG 18
apt install -y postgresql-17-sqlite-fdw   # PG 17
apt install -y postgresql-16-sqlite-fdw   # PG 16
apt install -y postgresql-15-sqlite-fdw   # PG 15
apt install -y postgresql-14-sqlite-fdw   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION sqlite_fdw;
```




## Usage

> [sqlite_fdw: SQLite Foreign Data Wrapper](https://github.com/pgspider/sqlite_fdw)

### Create Server

```sql
CREATE EXTENSION sqlite_fdw;

CREATE SERVER sqlite_server FOREIGN DATA WRAPPER sqlite_fdw
  OPTIONS (database '/path/to/database.db');
```

**Server Options:** `database` (required, path to SQLite file), `updatable` (default `true`), `truncatable` (default `false`), `keep_connections` (default `true`), `batch_size` (default 1), `force_readonly` (default `false`).

No `CREATE USER MAPPING` is required since SQLite has no authentication model.

### Create Foreign Table

```sql
CREATE FOREIGN TABLE remote_data (
  id integer OPTIONS (key 'true'),
  name text,
  created timestamp OPTIONS (column_type 'INT'),
  data bytea
)
SERVER sqlite_server
OPTIONS (table 'data_table');
```

**Table Options:** `table` (SQLite table name if different from PostgreSQL name), `updatable`, `truncatable`, `batch_size`.

**Column Options:** `column_name` (map to different SQLite column name), `column_type` (SQLite affinity: `INT` for epoch timestamps, `BLOB` for UUIDs), `key` (mark as primary key for UPDATE/DELETE).

### CRUD Operations

```sql
SELECT * FROM remote_data WHERE id > 100;
INSERT INTO remote_data (id, name) VALUES (1, 'test');
UPDATE remote_data SET name = 'updated' WHERE id = 1;
DELETE FROM remote_data WHERE id = 1;
```

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA public
  FROM SERVER sqlite_server INTO local_schema;
```

**Import Options:** `import_default` (default `false`), `import_not_null` (default `true`).

### Data Type Mapping

| SQLite Type | PostgreSQL Type |
|-------------|-----------------|
| int | bigint |
| text, char, clob | text |
| blob | bytea |
| real, float, double | double precision |
| datetime | timestamp |
| uuid | uuid |
| json, jsonb | json, jsonb |

Timestamps can be stored as TEXT (ISO format) or INT (Unix epoch, use `column_type 'INT'`). UUIDs can be stored as TEXT (36 chars) or BLOB (16 bytes). The SQLite database file must be readable (and writable for DML) by the PostgreSQL OS user.
