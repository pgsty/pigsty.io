---
title: "pg_dbms_lock"
linkTitle: "pg_dbms_lock"
description: "Extension to add Oracle DBMS_LOCK full compatibility to PostgreSQL"
weight: 9250
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HexaCluster/pg_dbms_lock">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HexaCluster/pg_dbms_lock</div>
    <div class="ext-card__desc">https://github.com/HexaCluster/pg_dbms_lock</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_dbms_lock-2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_dbms_lock-2.0.tar.gz</div>
    <div class="ext-card__desc">pg_dbms_lock-2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dbms_lock`**](/ext/e/pg_dbms_lock) | `2.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9250  | [**`pg_dbms_lock`**](/ext/e/pg_dbms_lock) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `dbms_lock` |
{.ext-table}

| **Related** | [`pg_background`](/ext/e/pg_background) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_utl_smtp`](/ext/e/pg_utl_smtp) [`pg_dbms_errlog`](/ext/e/pg_dbms_errlog) [`orafce`](/ext/e/orafce) [`pg_cron`](/ext/e/pg_cron) [`pgagent`](/ext/e/pgagent) [`pg_task`](/ext/e/pg_task) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires pg_background >= 2.0; the PIGSTY DEB carries a downstream pg_background v2 API compatibility patch.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_lock` | `pg_background` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_lock_$v` | `pg_background_$v` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-dbms-lock` | `postgresql-$v-pg-background` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 |
| el8.aarch64 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 |
| el9.x86_64 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 |
| el9.aarch64 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 |
| el10.x86_64 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 |
| el10.aarch64 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 | AVAIL PGDG 2.0 3 |
| d12.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
@ el8.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_dbms_lock_18-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel8.noarch.rpm pgdg 1.0 12.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_dbms_lock_18-1.0-3PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_dbms_lock_18-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel8.noarch.rpm pgdg 1.0 12.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_dbms_lock_18-1.0-3PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_lock_18-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_lock_18-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel9.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_lock_18-1.0-3PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_lock_18-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_lock_18-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel9.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_lock_18-1.0-3PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_lock_18-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_lock_18-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel10.noarch.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_lock_18-1.0-3PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_lock_18-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_lock_18-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_dbms_lock_18 pg_dbms_lock_18-1.0-3PGDG.rhel10.noarch.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_lock_18-1.0-3PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-dbms-lock postgresql-18-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-18-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_dbms_lock_17-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_dbms_lock_17-1.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_dbms_lock_17-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_dbms_lock_17-1.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_lock_17-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_lock_17-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_lock_17-1.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_lock_17-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_lock_17-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_lock_17-1.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_lock_17-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_lock_17-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_lock_17-1.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_lock_17-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_lock_17-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_dbms_lock_17 pg_dbms_lock_17-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_lock_17-1.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-dbms-lock postgresql-17-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-17-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_dbms_lock_16-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_dbms_lock_16-1.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_dbms_lock_16-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_dbms_lock_16-1.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_lock_16-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_lock_16-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_lock_16-1.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_lock_16-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_lock_16-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_lock_16-1.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_lock_16-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_lock_16-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_lock_16-1.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_lock_16-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_lock_16-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_dbms_lock_16 pg_dbms_lock_16-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_lock_16-1.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-dbms-lock postgresql-16-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-16-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_dbms_lock_15-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_dbms_lock_15-1.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_dbms_lock_15-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_dbms_lock_15-1.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_lock_15-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_lock_15-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_lock_15-1.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_lock_15-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_lock_15-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_lock_15-1.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_lock_15-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_lock_15-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_lock_15-1.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_lock_15-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_lock_15-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_dbms_lock_15 pg_dbms_lock_15-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_lock_15-1.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-dbms-lock postgresql-15-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-15-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_lock_14-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_lock_14-1.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-2.0-1PGDG.rhel8.10.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dbms_lock_14-2.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-1PGDG.rhel8.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dbms_lock_14-1.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_lock_14-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_lock_14-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_lock_14-1.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-2.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0 12.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_lock_14-2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-3PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_lock_14-1.0-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-1PGDG.rhel9.noarch.rpm pgdg 1.0 12.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_lock_14-1.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_lock_14-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_lock_14-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_lock_14-1.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-2.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0 13.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_lock_14-2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-3PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_lock_14-1.0-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_dbms_lock_14 pg_dbms_lock_14-1.0-2PGDG.rhel10.noarch.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_lock_14-1.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb pigsty 2.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb pigsty 2.0 8.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-dbms-lock postgresql-14-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb pigsty 2.0 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-lock/postgresql-14-pg-dbms-lock_2.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_dbms_lock` using `pig build`:

```bash
pig build pkg pg_dbms_lock         # build DEB packages
```


## Install

You can install `pg_dbms_lock` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_dbms_lock;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_dbms_lock -v 18  # PG 18
pig ext install -y pg_dbms_lock -v 17  # PG 17
pig ext install -y pg_dbms_lock -v 16  # PG 16
pig ext install -y pg_dbms_lock -v 15  # PG 15
pig ext install -y pg_dbms_lock -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_dbms_lock_18       # PG 18
dnf install -y pg_dbms_lock_17       # PG 17
dnf install -y pg_dbms_lock_16       # PG 16
dnf install -y pg_dbms_lock_15       # PG 15
dnf install -y pg_dbms_lock_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-dbms-lock   # PG 18
apt install -y postgresql-17-pg-dbms-lock   # PG 17
apt install -y postgresql-16-pg-dbms-lock   # PG 16
apt install -y postgresql-15-pg-dbms-lock   # PG 15
apt install -y postgresql-14-pg-dbms-lock   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_dbms_lock CASCADE;  -- requires: pg_background
```




## Usage

> [pg_dbms_lock: Extension to add Oracle DBMS_LOCK full compatibility to PostgreSQL](https://github.com/HexaCluster/pg_dbms_lock)

Uses PostgreSQL advisory locks to emulate Oracle DBMS_LOCK behavior.

### Enabling

```sql
CREATE EXTENSION pg_dbms_lock;
```

### ALLOCATE_UNIQUE

Allocate a unique lock identifier for a named lock:

```sql
DO $$
DECLARE
    lockhandle varchar;
BEGIN
    CALL dbms_lock.allocate_unique(
        lockname => 'printer_lock',
        lockhandle => lockhandle
    );
    RAISE NOTICE 'Handle: %', lockhandle;
END;
$$;
```

### REQUEST

Request a lock with a specific mode (Exclusive=6, Shared=4):

```sql
DO $$
DECLARE
    lock_res int;
BEGIN
    lock_res := dbms_lock.request(
        id => 123,
        lockmode => 6,           -- Exclusive
        timeout => 300,
        release_on_commit => false
    );
    IF lock_res <> 0 THEN
        RAISE EXCEPTION 'Lock request failed: %', lock_res;
    END IF;
END;
$$;
```

Return values: 0=Success, 1=Timeout, 3=Parameter error, 4=Already own lock, 5=Illegal handle.

### RELEASE

Explicitly release a previously acquired lock:

```sql
DO $$
DECLARE
    lock_res int;
BEGIN
    lock_res := dbms_lock.release(id => 123);
    IF lock_res <> 0 THEN
        RAISE EXCEPTION 'Release failed: %', lock_res;
    END IF;
END;
$$;
```

### SLEEP

Suspend the session for a given duration:

```sql
CALL dbms_lock.sleep(0.70);  -- sleep 0.7 seconds
```

### Complete Example

```sql
DO $$
DECLARE
    lock_res int;
    printer_lockhandle varchar;
BEGIN
    CALL dbms_lock.allocate_unique('printer_lock', printer_lockhandle);
    lock_res := dbms_lock.request(lockhandle => printer_lockhandle, lockmode => 6, timeout => 5);
    IF lock_res <> 0 THEN
        RAISE EXCEPTION 'REQUEST failed: %', lock_res;
    END IF;
    -- do exclusive work here
    lock_res := dbms_lock.release(lockhandle => printer_lockhandle);
END;
$$;
```
