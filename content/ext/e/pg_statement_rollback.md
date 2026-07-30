---
title: "pg_statement_rollback"
linkTitle: "pg_statement_rollback"
description: "Server side rollback at statement level for PostgreSQL like Oracle or DB2"
weight: 9130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/lzlabs/pg_statement_rollback">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">lzlabs/pg_statement_rollback</div>
    <div class="ext-card__desc">https://github.com/lzlabs/pg_statement_rollback</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_statement_rollback-1.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_statement_rollback-1.5.tar.gz</div>
    <div class="ext-card__desc">pg_statement_rollback-1.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_statement_rollback`**](/ext/e/pg_statement_rollback) | `1.6` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9130  | [**`pg_statement_rollback`**](/ext/e/pg_statement_rollback) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) [`pgtt`](/ext/e/pgtt) [`ivorysql_ora`](/ext/e/ivorysql_ora) [`session_variable`](/ext/e/session_variable) [`db_migrator`](/ext/e/db_migrator) [`db2_fdw`](/ext/e/db2_fdw) [`babelfishpg_common`](/ext/e/babelfishpg_common) [`tds_fdw`](/ext/e/tds_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_dbms_errlog`](/ext/e/pg_dbms_errlog) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `pg_statement_rollback` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `pg_statement_rollback_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-statement-rollback` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.6 2 | AVAIL PGDG 1.6 2 | AVAIL PGDG 1.6 2 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 |
| el8.aarch64 | AVAIL PGDG 1.6 2 | AVAIL PGDG 1.6 2 | AVAIL PGDG 1.6 2 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 |
| el9.x86_64 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 4 | AVAIL PGDG 1.6 3 |
| el9.aarch64 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 4 | AVAIL PGDG 1.6 4 |
| el10.x86_64 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 |
| el10.aarch64 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 |
| d12.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| d12.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| d13.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| d13.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u22.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u22.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u24.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u24.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u26.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u26.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
@ el8.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 20.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_statement_rollback_18-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 20.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_statement_rollback_18-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 20.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_statement_rollback_18-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_statement_rollback_18-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_statement_rollback_18-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_statement_rollback_18-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 19.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_statement_rollback_18-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 19.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_statement_rollback_18-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_statement_rollback_18-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 19.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_statement_rollback_18-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statement_rollback_18-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statement_rollback_18-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel10.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statement_rollback_18-1.5-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_statement_rollback_18-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_statement_rollback_18-1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel10.aarch64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_statement_rollback_18-1.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 28.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 28.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 28.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb pigsty 1.5 28.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-statement-rollback postgresql-18-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb pigsty 1.5 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-18-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 20.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_statement_rollback_17-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel8.x86_64.rpm pgdg 1.4 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_statement_rollback_17-1.4-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 20.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_statement_rollback_17-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel8.aarch64.rpm pgdg 1.4 19.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_statement_rollback_17-1.4-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_statement_rollback_17-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_statement_rollback_17-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel9.x86_64.rpm pgdg 1.4 19.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_statement_rollback_17-1.4-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_statement_rollback_17-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_statement_rollback_17-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel9.aarch64.rpm pgdg 1.4 19.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_statement_rollback_17-1.4-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_statement_rollback_17-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_statement_rollback_17-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_statement_rollback_17-1.4-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_statement_rollback_17-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_statement_rollback_17-1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-4PGDG.rhel10.aarch64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_statement_rollback_17-1.4-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 28.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 28.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 31.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 31.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb pigsty 1.5 28.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-statement-rollback postgresql-17-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb pigsty 1.5 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-17-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 20.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_statement_rollback_16-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel8.x86_64.rpm pgdg 1.4 19.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_statement_rollback_16-1.4-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 20.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_statement_rollback_16-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.4 19.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_statement_rollback_16-1.4-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statement_rollback_16-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statement_rollback_16-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel9.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statement_rollback_16-1.4-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statement_rollback_16-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statement_rollback_16-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statement_rollback_16-1.4-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statement_rollback_16-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statement_rollback_16-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statement_rollback_16-1.4-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_statement_rollback_16-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_statement_rollback_16-1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-4PGDG.rhel10.aarch64.rpm pgdg 1.4 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_statement_rollback_16-1.4-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 28.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 28.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 31.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 31.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb pigsty 1.5 28.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-statement-rollback postgresql-16-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb pigsty 1.5 28.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-16-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 20.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statement_rollback_15-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel8.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statement_rollback_15-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel8.x86_64.rpm pgdg 1.3 36.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statement_rollback_15-1.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statement_rollback_15-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel8.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statement_rollback_15-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel8.aarch64.rpm pgdg 1.3 36.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statement_rollback_15-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statement_rollback_15-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statement_rollback_15-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel9.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statement_rollback_15-1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel9.x86_64.rpm pgdg 1.3 37.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statement_rollback_15-1.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 19.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statement_rollback_15-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statement_rollback_15-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel9.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statement_rollback_15-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel9.aarch64.rpm pgdg 1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statement_rollback_15-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statement_rollback_15-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statement_rollback_15-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statement_rollback_15-1.4-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_statement_rollback_15-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_statement_rollback_15-1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-4PGDG.rhel10.aarch64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_statement_rollback_15-1.4-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 27.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 31.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 30.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb pigsty 1.5 28.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-statement-rollback postgresql-15-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb pigsty 1.5 27.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-15-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 20.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statement_rollback_14-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel8.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statement_rollback_14-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.3-1.rhel8.x86_64.rpm pgdg 1.3 37.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statement_rollback_14-1.3-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statement_rollback_14-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel8.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statement_rollback_14-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.3-1.rhel8.aarch64.rpm pgdg 1.3 36.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statement_rollback_14-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statement_rollback_14-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statement_rollback_14-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel9.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statement_rollback_14-1.4-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 19.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statement_rollback_14-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statement_rollback_14-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel9.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statement_rollback_14-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.3-1.rhel9.aarch64.rpm pgdg 1.3 36.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statement_rollback_14-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statement_rollback_14-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statement_rollback_14-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statement_rollback_14-1.4-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_statement_rollback_14-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_statement_rollback_14-1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-4PGDG.rhel10.aarch64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_statement_rollback_14-1.4-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 27.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 31.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 30.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 27.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb pigsty 1.5 28.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-statement-rollback postgresql-14-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb pigsty 1.5 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statement-rollback/postgresql-14-pg-statement-rollback_1.5-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_statement_rollback` using `pig build`:

```bash
pig build pkg pg_statement_rollback         # build DEB packages
```


## Install

You can install `pg_statement_rollback` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_statement_rollback;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_statement_rollback -v 18  # PG 18
pig ext install -y pg_statement_rollback -v 17  # PG 17
pig ext install -y pg_statement_rollback -v 16  # PG 16
pig ext install -y pg_statement_rollback -v 15  # PG 15
pig ext install -y pg_statement_rollback -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_statement_rollback_18       # PG 18
dnf install -y pg_statement_rollback_17       # PG 17
dnf install -y pg_statement_rollback_16       # PG 16
dnf install -y pg_statement_rollback_15       # PG 15
dnf install -y pg_statement_rollback_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-statement-rollback   # PG 18
apt install -y postgresql-17-pg-statement-rollback   # PG 17
apt install -y postgresql-16-pg-statement-rollback   # PG 16
apt install -y postgresql-15-pg-statement-rollback   # PG 15
apt install -y postgresql-14-pg-statement-rollback   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_statement_rollback';
```


## Usage

Sources:

- [pg_statement_rollback v1.6 README](https://github.com/lzlabs/pg_statement_rollback/blob/v1.6/README.md)
- [Changes from v1.5 to v1.6](https://github.com/lzlabs/pg_statement_rollback/compare/v1.5...v1.6)

pg_statement_rollback keeps an explicit transaction usable after a statement error by creating an automatic savepoint before each eligible statement. It emulates the statement-level rollback behavior familiar from some other databases, but the client must still issue ROLLBACK TO SAVEPOINT after an error.

The module is loaded into a backend and does not require CREATE EXTENSION.

### Load the Module

Load it for one session:

    LOAD 'pg_statement_rollback.so';

For a selected role or database, add it to session_preload_libraries and reconnect:

    session_preload_libraries = 'pg_statement_rollback'

Use shared_preload_libraries only if the deployment specifically needs server-wide loading; changing either preload list at server scope requires the corresponding restart or reconnect boundary.

### Recover from a Failed Statement

    BEGIN;
    INSERT INTO accounts(id, balance) VALUES (1, 100);
    INSERT INTO accounts(id, balance) VALUES (1, 200);
    -- duplicate-key error
    ROLLBACK TO SAVEPOINT "PgSLRAutoSvpt";
    UPDATE accounts SET balance = 150 WHERE id = 1;
    COMMIT;

The savepoint name is case-sensitive when quoted. Applications must detect the statement error and send the rollback command before continuing.

### Configuration Index

- pg_statement_rollback.enabled enables automatic savepoints for the current session.
- pg_statement_rollback.savepoint_name changes the automatic savepoint name and is superuser-controlled.
- pg_statement_rollback.enable_writeonly limits savepoint creation to statements that can write.

### Version 1.6 Behavior

Version 1.6 adds PostgreSQL 19 build support and improves detection of read-only transactions. The module no longer creates automatic savepoints in read-only transactions and releases its initial savepoint before SET TRANSACTION ... READ ONLY, which avoids interfering with dump and other read-only sessions.

### Caveats

- This is not transparent retry logic: clients must explicitly roll back to the automatic savepoint.
- Savepoints add overhead to every covered statement. Measure write-heavy workloads before enabling the module broadly.
- The upstream README warns of a crash with assertion-enabled PostgreSQL builds; do not treat development-build behavior as production-safe without testing.
- Transaction-wide errors, connection failures, and errors that invalidate the session cannot be repaired by a savepoint.
