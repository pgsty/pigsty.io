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
| [**`pg_statement_rollback`**](/ext/e/pg_statement_rollback) | `1.5` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9130  | [**`pg_statement_rollback`**](/ext/e/pg_statement_rollback) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`oracle_fdw`](/ext/e/oracle_fdw) [`orafce`](/ext/e/orafce) [`pgtt`](/ext/e/pgtt) [`session_variable`](/ext/e/session_variable) [`safeupdate`](/ext/e/safeupdate) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`pg_hint_plan`](/ext/e/pg_hint_plan) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_statement_rollback`](/ext/e/pg_statement_rollback) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_statement_rollback` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_statement_rollback_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-statement-rollback` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| el8.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| el9.x86_64 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 3 | AVAIL PGDG 1.5 2 |
| el9.aarch64 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 3 | AVAIL PGDG 1.5 3 |
| el10.x86_64 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 |
| el10.aarch64 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 |
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
@ el8.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 20.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_statement_rollback_18-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_statement_rollback_18-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_statement_rollback_18-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 19.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_statement_rollback_18-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_statement_rollback_18-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 19.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_statement_rollback_18-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statement_rollback_18-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_statement_rollback_18 pg_statement_rollback_18-1.5-1PGDG.rhel10.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_statement_rollback_18-1.5-1PGDG.rhel10.x86_64.rpm
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
@ el8.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel8.x86_64.rpm pgdg 1.4 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_statement_rollback_17-1.4-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel8.aarch64.rpm pgdg 1.4 19.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_statement_rollback_17-1.4-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_statement_rollback_17-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel9.x86_64.rpm pgdg 1.4 19.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_statement_rollback_17-1.4-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_statement_rollback_17-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-3PGDG.rhel9.aarch64.rpm pgdg 1.4 19.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_statement_rollback_17-1.4-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_statement_rollback_17-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_statement_rollback_17 pg_statement_rollback_17-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_statement_rollback_17-1.4-4PGDG.rhel10.x86_64.rpm
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
@ el8.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel8.x86_64.rpm pgdg 1.4 19.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_statement_rollback_16-1.4-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.4 19.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_statement_rollback_16-1.4-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statement_rollback_16-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel9.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_statement_rollback_16-1.4-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statement_rollback_16-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_statement_rollback_16-1.4-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statement_rollback_16-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_statement_rollback_16 pg_statement_rollback_16-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_statement_rollback_16-1.4-4PGDG.rhel10.x86_64.rpm
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
@ el8.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel8.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statement_rollback_15-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel8.x86_64.rpm pgdg 1.3 36.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_statement_rollback_15-1.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel8.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statement_rollback_15-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel8.aarch64.rpm pgdg 1.3 36.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_statement_rollback_15-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statement_rollback_15-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel9.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statement_rollback_15-1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel9.x86_64.rpm pgdg 1.3 37.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_statement_rollback_15-1.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statement_rollback_15-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-1.rhel9.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statement_rollback_15-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.3-1.rhel9.aarch64.rpm pgdg 1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_statement_rollback_15-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statement_rollback_15-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_statement_rollback_15 pg_statement_rollback_15-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_statement_rollback_15-1.4-4PGDG.rhel10.x86_64.rpm
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
@ el8.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel8.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statement_rollback_14-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.3-1.rhel8.x86_64.rpm pgdg 1.3 37.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_statement_rollback_14-1.3-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel8.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statement_rollback_14-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.3-1.rhel8.aarch64.rpm pgdg 1.3 36.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_statement_rollback_14-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.5-3PGDG.rhel9.8.x86_64.rpm pgdg 1.5 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statement_rollback_14-1.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel9.x86_64.rpm pgdg 1.4 19.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_statement_rollback_14-1.4-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.5-3PGDG.rhel9.8.aarch64.rpm pgdg 1.5 19.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statement_rollback_14-1.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-1.rhel9.aarch64.rpm pgdg 1.4 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statement_rollback_14-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.3-1.rhel9.aarch64.rpm pgdg 1.3 36.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_statement_rollback_14-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.5-3PGDG.rhel10.2.x86_64.rpm pgdg 1.5 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statement_rollback_14-1.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_statement_rollback_14 pg_statement_rollback_14-1.4-4PGDG.rhel10.x86_64.rpm pgdg 1.4 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_statement_rollback_14-1.4-4PGDG.rhel10.x86_64.rpm
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

> [pg_statement_rollback: Server side rollback at statement level for PostgreSQL like Oracle or DB2](https://github.com/lzlabs/pg_statement_rollback)

Provides automatic server-side savepoints before each statement, allowing individual statement failures without aborting the entire transaction.

### Enabling

```sql
LOAD 'pg_statement_rollback.so';
SET pg_statement_rollback.enabled TO on;
```

Or in `postgresql.conf` for all sessions:

```ini
session_preload_libraries = 'pg_statement_rollback'
pg_statement_rollback.enabled = on
```

### Basic Usage

```sql
BEGIN;
CREATE TABLE test(id integer);
INSERT INTO test SELECT 1;
SELECT COUNT(*) FROM test;         -- returns 1

INSERT INTO test SELECT 'wrong';   -- ERROR: invalid input syntax
ROLLBACK TO SAVEPOINT "PgSLRAutoSvpt";  -- rollback only the failed statement

SELECT COUNT(*) FROM test;         -- still returns 1
COMMIT;
```

Without this extension, the error would abort the entire transaction and all subsequent statements would fail with "current transaction is aborted".

### Configuration

```sql
-- Enable/disable at any time in a session
SET pg_statement_rollback.enabled TO off;

-- Change the savepoint name (superuser only)
SET pg_statement_rollback.savepoint_name TO 'my_savepoint';

-- Limit savepoints to write-only statements (default: on)
SET pg_statement_rollback.enable_writeonly TO off;
```

### Key Behaviors

- Automatic savepoints are created server-side with minimal performance overhead
- By default, savepoints are only created after write statements (INSERT, UPDATE, DELETE, etc.)
- When `enable_writeonly` is on, SELECT statements do not trigger automatic savepoints
- The client must still call `ROLLBACK TO SAVEPOINT "PgSLRAutoSvpt"` when handling errors
