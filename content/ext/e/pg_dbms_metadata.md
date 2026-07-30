---
title: "pg_dbms_metadata"
linkTitle: "pg_dbms_metadata"
description: "Extension to add Oracle DBMS_METADATA compatibility to PostgreSQL"
weight: 9240
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HexaCluster/pg_dbms_metadata">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HexaCluster/pg_dbms_metadata</div>
    <div class="ext-card__desc">https://github.com/HexaCluster/pg_dbms_metadata</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_dbms_metadata-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_dbms_metadata-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_dbms_metadata-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dbms_metadata`**](/ext/e/pg_dbms_metadata) | `1.0.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9240  | [**`pg_dbms_metadata`**](/ext/e/pg_dbms_metadata) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `dbms_metadata` |
{.ext-table}

| **Related** | [`pg_get_functiondef`](/ext/e/pg_get_functiondef) [`ddlx`](/ext/e/ddlx) [`orafce`](/ext/e/orafce) [`pg_readme`](/ext/e/pg_readme) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`pg_dbms_errlog`](/ext/e/pg_dbms_errlog) [`pg_utl_smtp`](/ext/e/pg_utl_smtp) [`pgdd`](/ext/e/pgdd) [`meta`](/ext/e/meta) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGDG RPM lacks PG15 on EL8 aarch64; PIGSTY DEB covers PG14-18 on amd64 and arm64.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_metadata` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_metadata_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-dbms-metadata` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 |
| el8.aarch64 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PGDG 1.0.0 1 |
| el9.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el9.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el10.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el10.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_dbms_metadata_18 pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_dbms_metadata_18-1.0.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-dbms-metadata postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-18-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_dbms_metadata_17-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_dbms_metadata_17-1.0.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_metadata_17-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_dbms_metadata_17-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_metadata_17-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_dbms_metadata_17-1.0.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_dbms_metadata_17 pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_dbms_metadata_17-1.0.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-dbms-metadata postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-17-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_dbms_metadata_16-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_dbms_metadata_16-1.0.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_metadata_16-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_dbms_metadata_16-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_metadata_16-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_dbms_metadata_16-1.0.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_dbms_metadata_16 pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_dbms_metadata_16-1.0.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-dbms-metadata postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-16-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_dbms_metadata_15-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PIGSTY.el8.noarch.rpm pigsty 1.0.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dbms_metadata_15-1.0.0-2PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-dbms-metadata postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-15-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 13.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-dbms-metadata postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dbms-metadata/postgresql-14-pg-dbms-metadata_1.0.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_dbms_metadata` using `pig build`:

```bash
pig build pkg pg_dbms_metadata         # build DEB packages
```


## Install

You can install `pg_dbms_metadata` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_dbms_metadata;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_dbms_metadata -v 18  # PG 18
pig ext install -y pg_dbms_metadata -v 17  # PG 17
pig ext install -y pg_dbms_metadata -v 16  # PG 16
pig ext install -y pg_dbms_metadata -v 15  # PG 15
pig ext install -y pg_dbms_metadata -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_dbms_metadata_18       # PG 18
dnf install -y pg_dbms_metadata_17       # PG 17
dnf install -y pg_dbms_metadata_16       # PG 16
dnf install -y pg_dbms_metadata_15       # PG 15
dnf install -y pg_dbms_metadata_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-dbms-metadata   # PG 18
apt install -y postgresql-17-pg-dbms-metadata   # PG 17
apt install -y postgresql-16-pg-dbms-metadata   # PG 16
apt install -y postgresql-15-pg-dbms-metadata   # PG 15
apt install -y postgresql-14-pg-dbms-metadata   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_dbms_metadata;
```




## Usage

> [pg_dbms_metadata: Extension to add Oracle DBMS_METADATA compatibility to PostgreSQL](https://github.com/HexaCluster/pg_dbms_metadata)

### Enabling

```sql
CREATE EXTENSION pg_dbms_metadata;
```

### GET_DDL

Extract DDL of database objects. Supported types: TABLE, VIEW, SEQUENCE, PROCEDURE, FUNCTION, TRIGGER, INDEX, CONSTRAINT, CHECK_CONSTRAINT, REF_CONSTRAINT, TYPE, ENUM.

```sql
SELECT dbms_metadata.get_ddl('TABLE', 'employees', 'public');
SELECT dbms_metadata.get_ddl('VIEW', 'active_users', 'myschema');
SELECT dbms_metadata.get_ddl('FUNCTION', 'calculate_tax', 'public');
SELECT dbms_metadata.get_ddl('INDEX', 'idx_name', 'public');

-- Schema is optional; uses search_path when omitted
SELECT dbms_metadata.get_ddl('SEQUENCE', 'my_seq');
```

### GET_DEPENDENT_DDL

Extract DDL of all dependent objects of a specified type for a base object. Supported: SEQUENCE, TRIGGER, CONSTRAINT, REF_CONSTRAINT, INDEX, ENUM.

```sql
SELECT dbms_metadata.get_dependent_ddl('CONSTRAINT', 'employees', 'public');
SELECT dbms_metadata.get_dependent_ddl('INDEX', 'orders', 'sales');
SELECT dbms_metadata.get_dependent_ddl('TRIGGER', 'accounts');
```

### GET_GRANTED_DDL

Extract SQL statements to recreate granted privileges and roles. Supported: ROLE_GRANT.

```sql
SELECT dbms_metadata.get_granted_ddl('ROLE_GRANT', 'user_test');
```

### SET_TRANSFORM_PARAM

Customize DDL output with session-level transform parameters:

```sql
-- Append SQL terminator (;) to each DDL statement
CALL dbms_metadata.set_transform_param('SQLTERMINATOR', true);

-- Exclude constraints from TABLE DDL
CALL dbms_metadata.set_transform_param('CONSTRAINTS', false);

-- Exclude foreign keys from TABLE DDL
CALL dbms_metadata.set_transform_param('REF_CONSTRAINTS', false);

-- Exclude partitioning clauses
CALL dbms_metadata.set_transform_param('PARTITIONING', false);

-- Exclude storage parameters
CALL dbms_metadata.set_transform_param('STORAGE', false);

-- Reset all params to defaults
CALL dbms_metadata.set_transform_param('DEFAULT', true);
```
