---
title: "pgelog"
linkTitle: "pgelog"
description: "Extended logging via pseudo-autonomous transactions"
weight: 5870
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/anfiau/pgelog">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">anfiau/pgelog</div>
    <div class="ext-card__desc">https://github.com/anfiau/pgelog</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgelog-1.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgelog-1.0.2.tar.gz</div>
    <div class="ext-card__desc">pgelog-1.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgelog`**](/ext/e/pgelog) | `1.0.2` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5870  | [**`pgelog`**](/ext/e/pgelog) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dblink`](/ext/e/dblink) [`pg_variables`](/ext/e/pg_variables) [`table_log`](/ext/e/table_log) [`pgaudit`](/ext/e/pgaudit) [`logerrors`](/ext/e/logerrors) [`dblink`](/ext/e/dblink) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release tag 1.0.2 still ships extension SQL version 1.0; requires the dblink extension at runtime in addition to pg_variables.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pgelog` | `dblink`, `pg_variables` |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pgelog_$v` | `postgresql$v-contrib`, `pg_variables_$v` |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgelog` | `postgresql-$v-pg-variables` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
@ el8.x86_64 18 pgelog_18 pgelog_18-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgelog_18-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgelog_18 pgelog_18-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgelog_18-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgelog_18 pgelog_18-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgelog_18-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgelog_18 pgelog_18-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgelog_18-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgelog_18 pgelog_18-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgelog_18-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgelog_18 pgelog_18-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgelog_18-1.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~noble_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~noble_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgelog_17 pgelog_17-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgelog_17-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgelog_17 pgelog_17-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgelog_17-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgelog_17 pgelog_17-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgelog_17-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgelog_17 pgelog_17-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgelog_17-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgelog_17 pgelog_17-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgelog_17-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgelog_17 pgelog_17-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgelog_17-1.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~noble_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~noble_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgelog_16 pgelog_16-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgelog_16-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgelog_16 pgelog_16-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgelog_16-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgelog_16 pgelog_16-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgelog_16-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgelog_16 pgelog_16-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgelog_16-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgelog_16 pgelog_16-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgelog_16-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgelog_16 pgelog_16-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgelog_16-1.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~noble_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~noble_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgelog_15 pgelog_15-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgelog_15-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgelog_15 pgelog_15-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgelog_15-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgelog_15 pgelog_15-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 15.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgelog_15-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgelog_15 pgelog_15-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgelog_15-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgelog_15 pgelog_15-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgelog_15-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgelog_15 pgelog_15-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgelog_15-1.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~noble_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~noble_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgelog_14 pgelog_14-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgelog_14-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgelog_14 pgelog_14-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgelog_14-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgelog_14 pgelog_14-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 15.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgelog_14-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgelog_14 pgelog_14-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 15.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgelog_14-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgelog_14 pgelog_14-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgelog_14-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgelog_14 pgelog_14-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 15.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgelog_14-1.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb pigsty 1.0.2 9.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~noble_amd64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~noble_arm64.deb pigsty 1.0.2 9.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgelog` using `pig build`:

```bash
pig build pkg pgelog         # build RPM / DEB packages
```


## Install

You can install `pgelog` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgelog;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgelog -v 18  # PG 18
pig ext install -y pgelog -v 17  # PG 17
pig ext install -y pgelog -v 16  # PG 16
pig ext install -y pgelog -v 15  # PG 15
pig ext install -y pgelog -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgelog_18       # PG 18
dnf install -y pgelog_17       # PG 17
dnf install -y pgelog_16       # PG 16
dnf install -y pgelog_15       # PG 15
dnf install -y pgelog_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgelog   # PG 18
apt install -y postgresql-17-pgelog   # PG 17
apt install -y postgresql-16-pgelog   # PG 16
apt install -y postgresql-15-pgelog   # PG 15
apt install -y postgresql-14-pgelog   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgelog CASCADE;  -- requires: dblink, pg_variables
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION IF NOT EXISTS dblink;
> CREATE EXTENSION IF NOT EXISTS pg_variables;
> CREATE EXTENSION pgelog;
> SELECT pgelog_to_log('SQL', 'standalone', 'Test of logging by pgelog', '1');
> ```
>
> Source: [README](https://github.com/anfiau/pgelog)

`pgelog` writes log records into PostgreSQL tables using pseudo-autonomous transactions implemented through `dblink`. The key goal is that log entries survive even when the caller's main transaction rolls back.

## Prerequisites

The README requires:

- PostgreSQL 11 or newer
- `dblink`
- `pg_variables`
- local passwordless `dblink` access, typically via a `peer` local entry in `pg_hba.conf`

It also warns that each session may open one extra connection for `dblink`, so `max_connections` should be sized accordingly.

## Objects

The extension creates:

- `pgelog_params` for configuration
- `pgelog_logs` as the base log table
- `pgelog_vw_logs` as a log view with timing information

The log table/view stores fields such as timestamp, log type, source function, phase, message text, transaction id, SQLSTATE, SQLERRM, and connection name.

## Basic Logging

Write a log entry:

```sql
SELECT pgelog_to_log('SQL', 'standalone', 'Test of logging by pgelog', '1');
```

Read the latest log:

```sql
SELECT log_stamp, log_info
FROM pgelog_logs
ORDER BY log_stamp DESC
LIMIT 1;
```

## PL/pgSQL Exception Logging

The README includes a larger PL/pgSQL example that catches exceptions, collects diagnostics, writes a `FAIL` log entry through `pgelog_to_log(...)`, and then re-raises the exception. This is the main pattern for capturing rollback-resistant failure logs.

## Configuration

Configuration parameters are managed with:

```sql
SELECT pgelog_get_param('pgelog_ttl_minutes');
SELECT pgelog_set_param('pgelog_ttl_minutes', '2880');
```

The README documents `pgelog_ttl_minutes` and other parameters through the `pgelog_params` table and helper functions.
