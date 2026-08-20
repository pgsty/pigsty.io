---
title: "pg_dbms_errlog"
linkTitle: "pg_dbms_errlog"
description: "Emulate DBMS_ERRLOG Oracle module to log DML errors in a dedicated table."
weight: 9270
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HexaCluster/pg_dbms_errlog">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HexaCluster/pg_dbms_errlog</div>
    <div class="ext-card__desc">https://github.com/HexaCluster/pg_dbms_errlog</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_dbms_errlog-2.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_dbms_errlog-2.4.tar.gz</div>
    <div class="ext-card__desc">pg_dbms_errlog-2.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dbms_errlog`**](/ext/e/pg_dbms_errlog) | `2.4` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9270  | [**`pg_dbms_errlog`**](/ext/e/pg_dbms_errlog) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `dbms_errlog` |
{.ext-table}

| **Related** | [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_utl_smtp`](/ext/e/pg_utl_smtp) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`orafce`](/ext/e/orafce) [`pg_cron`](/ext/e/pg_cron) [`pgagent`](/ext/e/pgagent) [`pg_task`](/ext/e/pg_task) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires pg_statement_rollback and shared_preload_libraries=pg_dbms_errlog; restart required.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `2.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_errlog` | `pg_statement_rollback` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_errlog_$v` | `pg_statement_rollback_$v` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-dbms-errlog` | `postgresql-$v-pg-statement-rollback` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 |
| el8.aarch64 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 |
| el9.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| el9.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| el10.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| el10.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| d12.x86_64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| d12.aarch64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| d13.x86_64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| d13.aarch64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| u22.x86_64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| u22.aarch64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| u24.x86_64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| u24.aarch64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| u26.x86_64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
| u26.aarch64 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 | AVAIL PIGSTY 2.4 1 |
@ el8.x86_64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_dbms_errlog_18-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 31.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_dbms_errlog_18-2.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2 31.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_errlog_18-2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 32.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_errlog_18-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_errlog_18-2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_errlog_18-2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_errlog_18-2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_errlog_18-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2 31.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_errlog_18-2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_dbms_errlog_18 pg_dbms_errlog_18-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 32.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_errlog_18-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb pigsty 2.4 62.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb pigsty 2.4 61.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb pigsty 2.4 62.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb pigsty 2.4 61.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb pigsty 2.4 67.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb pigsty 2.4 66.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb pigsty 2.4 64.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb pigsty 2.4 64.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb pigsty 2.4 64.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-dbms-errlog postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb pigsty 2.4 64.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-18-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_dbms_errlog_17-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 31.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_dbms_errlog_17-2.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2 31.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_errlog_17-2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 32.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_errlog_17-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_errlog_17-2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_errlog_17-2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_errlog_17-2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_errlog_17-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_errlog_17-2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_dbms_errlog_17 pg_dbms_errlog_17-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_errlog_17-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb pigsty 2.4 62.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb pigsty 2.4 61.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb pigsty 2.4 62.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb pigsty 2.4 61.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb pigsty 2.4 73.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb pigsty 2.4 73.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb pigsty 2.4 64.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb pigsty 2.4 64.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb pigsty 2.4 64.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-dbms-errlog postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb pigsty 2.4 64.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-17-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_dbms_errlog_16-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_dbms_errlog_16-2.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_errlog_16-2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_errlog_16-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_errlog_16-2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_errlog_16-2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_errlog_16-2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_errlog_16-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2 31.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_errlog_16-2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_dbms_errlog_16 pg_dbms_errlog_16-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 32.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_errlog_16-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb pigsty 2.4 62.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb pigsty 2.4 60.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb pigsty 2.4 62.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb pigsty 2.4 61.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb pigsty 2.4 73.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb pigsty 2.4 72.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb pigsty 2.4 64.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb pigsty 2.4 64.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb pigsty 2.4 64.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-dbms-errlog postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb pigsty 2.4 63.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-16-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_dbms_errlog_15-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_dbms_errlog_15-2.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_errlog_15-2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_errlog_15-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_errlog_15-2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_errlog_15-2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_errlog_15-2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 33.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_errlog_15-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_errlog_15-2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_dbms_errlog_15 pg_dbms_errlog_15-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_errlog_15-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb pigsty 2.4 62.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb pigsty 2.4 61.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb pigsty 2.4 62.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb pigsty 2.4 61.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb pigsty 2.4 74.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb pigsty 2.4 73.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb pigsty 2.4 65.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb pigsty 2.4 64.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb pigsty 2.4 64.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-dbms-errlog postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb pigsty 2.4 64.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-15-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 33.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb pigsty 2.4 62.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb pigsty 2.4 61.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb pigsty 2.4 62.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb pigsty 2.4 61.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb pigsty 2.4 73.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb pigsty 2.4 72.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb pigsty 2.4 64.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb pigsty 2.4 64.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb pigsty 2.4 64.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-dbms-errlog postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb pigsty 2.4 64.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-errlog/postgresql-14-pg-dbms-errlog_2.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_dbms_errlog` using `pig build`:

```bash
pig build pkg pg_dbms_errlog         # build DEB packages
```


## Install

You can install `pg_dbms_errlog` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_dbms_errlog;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_dbms_errlog -v 18  # PG 18
pig ext install -y pg_dbms_errlog -v 17  # PG 17
pig ext install -y pg_dbms_errlog -v 16  # PG 16
pig ext install -y pg_dbms_errlog -v 15  # PG 15
pig ext install -y pg_dbms_errlog -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_dbms_errlog_18       # PG 18
dnf install -y pg_dbms_errlog_17       # PG 17
dnf install -y pg_dbms_errlog_16       # PG 16
dnf install -y pg_dbms_errlog_15       # PG 15
dnf install -y pg_dbms_errlog_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-dbms-errlog   # PG 18
apt install -y postgresql-17-pg-dbms-errlog   # PG 17
apt install -y postgresql-16-pg-dbms-errlog   # PG 16
apt install -y postgresql-15-pg-dbms-errlog   # PG 15
apt install -y postgresql-14-pg-dbms-errlog   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_statement_rollback, pg_dbms_errlog';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_dbms_errlog CASCADE;  -- requires: pg_statement_rollback
```

## Usage

Sources:

- [Official v2.4 README](https://github.com/HexaCluster/pg_dbms_errlog/blob/v2.4/README.md)
- [v2.4 release changelog](https://github.com/HexaCluster/pg_dbms_errlog/blob/v2.4/ChangeLog)
- [v2.4 control file](https://github.com/HexaCluster/pg_dbms_errlog/blob/v2.4/pg_dbms_errlog.control)
- [v2.4 extension SQL](https://github.com/HexaCluster/pg_dbms_errlog/blob/v2.4/sql/pg_dbms_errlog--2.4.sql)

`pg_dbms_errlog` provides Oracle-style DML error logging for PostgreSQL. It queues an error from a failed `INSERT`, `UPDATE`, or `DELETE`, writes it to a registered `ERR$_...` table through background workers, and lets the surrounding script continue after rolling back to a savepoint. It requires either `pg_statement_rollback` or explicit savepoint management by the caller.

### Enable the Extension

Add the library to `shared_preload_libraries`, ensure `max_worker_processes` can accommodate `pg_dbms_errlog.max_workers` plus the fixed worker, and restart PostgreSQL:

```conf
shared_preload_libraries = 'pg_dbms_errlog'
```

```sql
CREATE EXTENSION pg_dbms_errlog;
```

Create and register an error table for each DML target:

```sql
CREATE TABLE raises (
    employee_id integer,
    salary integer CHECK (salary > 8000)
);

CALL dbms_errlog.create_error_log('raises');
-- Creates and registers public."ERR$_raises" by default.
```

### Log and Continue after an Error

```sql
LOAD 'pg_statement_rollback';

SET pg_statement_rollback.enabled = on;
SET pg_dbms_errlog.enabled = on;
SET pg_dbms_errlog.query_tag = 'daily_load';
SET pg_dbms_errlog.reject_limit = 10;

BEGIN;
INSERT INTO raises VALUES (145, 15400);
INSERT INTO raises VALUES (161, 7700);  -- logged failure
ROLLBACK TO SAVEPOINT "PgSLRAutoSvpt";
INSERT INTO raises VALUES (175, 9680);
COMMIT;

SELECT * FROM "ERR$_raises";
```

The error table contains `pg_err_number$`, `pg_err_mesg$`, `pg_err_optyp$`, `pg_err_tag$`, `pg_err_query$`, and `pg_err_detail$`.

### API and Configuration Index

- `dbms_errlog.create_error_log(dml_table_name, err_log_table_name, err_log_table_owner, err_log_table_space)`: creates and registers an error table.
- `dbms_errlog.publish_queue(wait_for_completion)`: asks workers to process queued errors; execution is not granted to `PUBLIC` by default.
- `dbms_errlog.queue_size()`: reports queued errors.
- `pg_dbms_errlog.synchronous`: `transaction` by default, `query`, or `off`. Transaction mode guarantees that only errors from committed transactions are logged.
- `pg_dbms_errlog.reject_limit`: transaction-wide error limit; `-1` is unlimited and `0` logs nothing and rolls back.
- `pg_dbms_errlog.no_client_error`: suppresses client error messages while retaining server logging; enabled by default.
- `pg_dbms_errlog.frequency` and `pg_dbms_errlog.max_workers`: asynchronous worker timing and concurrency.

### Caveats

- A caller needs DML privileges on the target and error tables; creating an error table also requires execution and registration-table privileges described upstream.
- `INSERT INTO ... SELECT ...` is one PostgreSQL statement and cannot preserve only successful rows in the Oracle manner.
- Syntax and other parse-time errors are not logged. Stored query text must remain below PostgreSQL's 1 GB value limit.
- Version `2.4` changes no SQL API; it fixes worker shutdown loops and a dynamic-background-worker crash.
