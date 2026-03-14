---
title: "db_migrator"
linkTitle: "db_migrator"
description: "Tools to migrate other databases to PostgreSQL"
weight: 9540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/db_migrator">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/db_migrator</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/db_migrator</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/db_migrator-RELEASE_1_0_0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">db_migrator-RELEASE_1_0_0.tar.gz</div>
    <div class="ext-card__desc">db_migrator-RELEASE_1_0_0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`db_migrator`**](/ext/e/db_migrator) | `1.0.0` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9540  | [**`db_migrator`**](/ext/e/db_migrator) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`orafce`](/ext/e/orafce) [`pg_bulkload`](/ext/e/pg_bulkload) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`pgtt`](/ext/e/pgtt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `db_migrator` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `db_migrator_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-db-migrator` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 db_migrator_18 db_migrator_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db_migrator_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 db_migrator_18 db_migrator_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db_migrator_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 db_migrator_18 db_migrator_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db_migrator_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 db_migrator_18 db_migrator_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db_migrator_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 db_migrator_18 db_migrator_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db_migrator_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 db_migrator_18 db_migrator_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db_migrator_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-db-migrator postgresql-18-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-18-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 db_migrator_17 db_migrator_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db_migrator_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 db_migrator_17 db_migrator_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db_migrator_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 db_migrator_17 db_migrator_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db_migrator_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 db_migrator_17 db_migrator_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db_migrator_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 db_migrator_17 db_migrator_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db_migrator_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 db_migrator_17 db_migrator_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db_migrator_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-db-migrator postgresql-17-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-17-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 db_migrator_16 db_migrator_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db_migrator_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 db_migrator_16 db_migrator_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db_migrator_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 db_migrator_16 db_migrator_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db_migrator_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 db_migrator_16 db_migrator_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db_migrator_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 db_migrator_16 db_migrator_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db_migrator_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 db_migrator_16 db_migrator_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db_migrator_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-db-migrator postgresql-16-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-16-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 db_migrator_15 db_migrator_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db_migrator_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 db_migrator_15 db_migrator_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db_migrator_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 db_migrator_15 db_migrator_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db_migrator_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 db_migrator_15 db_migrator_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db_migrator_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 db_migrator_15 db_migrator_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db_migrator_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 db_migrator_15 db_migrator_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db_migrator_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-db-migrator postgresql-15-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-15-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 db_migrator_14 db_migrator_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/db_migrator_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 db_migrator_14 db_migrator_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/db_migrator_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 db_migrator_14 db_migrator_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/db_migrator_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 db_migrator_14 db_migrator_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/db_migrator_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 db_migrator_14 db_migrator_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/db_migrator_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 db_migrator_14 db_migrator_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/db_migrator_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-db-migrator postgresql-14-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/db-migrator/postgresql-14-db-migrator_1.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `db_migrator` using `pig build`:

```bash
pig build pkg db_migrator         # build RPM / DEB packages
```


## Install

You can install `db_migrator` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install db_migrator;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y db_migrator -v 18  # PG 18
pig ext install -y db_migrator -v 17  # PG 17
pig ext install -y db_migrator -v 16  # PG 16
pig ext install -y db_migrator -v 15  # PG 15
pig ext install -y db_migrator -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y db_migrator_18       # PG 18
dnf install -y db_migrator_17       # PG 17
dnf install -y db_migrator_16       # PG 16
dnf install -y db_migrator_15       # PG 15
dnf install -y db_migrator_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-db-migrator   # PG 18
apt install -y postgresql-17-db-migrator   # PG 17
apt install -y postgresql-16-db-migrator   # PG 16
apt install -y postgresql-15-db-migrator   # PG 15
apt install -y postgresql-14-db-migrator   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION db_migrator;
```



## Usage

> [db_migrator: Tools to migrate other databases to PostgreSQL](https://github.com/cybertec-postgresql/db_migrator)

A framework for migrating databases from other data sources to PostgreSQL using foreign data wrappers and source-specific plugins.

### Enabling

```sql
CREATE EXTENSION db_migrator;
```

### Available Plugins

- **ora_migrator** - Oracle migration
- **mysql_migrator** - MySQL/MariaDB migration
- **mssql_migrator** - Microsoft SQL Server migration

### Complete Migration Example (Oracle)

```sql
-- Setup (as superuser)
CREATE EXTENSION oracle_fdw;
CREATE SERVER oracle FOREIGN DATA WRAPPER oracle_fdw
    OPTIONS (dbserver '//dbserver.mydomain.com/ORADB');
GRANT USAGE ON FOREIGN SERVER oracle TO migrator;
CREATE USER MAPPING FOR migrator SERVER oracle
    OPTIONS (user 'orauser', password 'orapwd');

-- Migrate (as migrator user)
CREATE EXTENSION ora_migrator;

SELECT db_migrate(
    plugin => 'ora_migrator',
    server => 'oracle',
    only_schemas => '{TESTSCHEMA1,TESTSCHEMA2}'
);
```

### Step-by-Step Migration

For more control, execute migration in stages:

```sql
-- 1. Create staging schemas and snapshot metadata
SELECT db_migrate_prepare(
    plugin => 'ora_migrator',
    server => 'oracle',
    only_schemas => '{SCHEMA1}'
);

-- 2. Review and modify staging data
-- Edit pgsql_stage tables to customize type mappings, rename objects, etc.
UPDATE pgsql_stage.tables SET migrate = TRUE WHERE ...;

-- 3. Create schemas and migrate data
SELECT db_migrate_mkforeign(plugin => 'ora_migrator', server => 'oracle');
SELECT db_migrate_tables(plugin => 'ora_migrator');

-- 4. Create constraints and indexes
SELECT db_migrate_constraints(plugin => 'ora_migrator');
SELECT db_migrate_indexes(plugin => 'ora_migrator');

-- 5. Cleanup
SELECT db_migrate_finish();
```

### Key Features

- Migrates tables, sequences, indexes, constraints, views, functions
- Data type mapping from source to PostgreSQL types (customizable)
- Continues on errors, reporting which objects failed
- Uses FDW staging schema for metadata inspection before migration
- Schema and object name translation via plugin functions
