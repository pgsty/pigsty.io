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

| **Related** | [`dblink`](/ext/e/dblink) [`pg_variables`](/ext/e/pg_variables) [`pg_stat_log`](/ext/e/pg_stat_log) [`logerrors`](/ext/e/logerrors) [`pgaudit`](/ext/e/pgaudit) [`table_log`](/ext/e/table_log) [`pg_drop_events`](/ext/e/pg_drop_events) [`pgmemento`](/ext/e/pgmemento) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`pg_sqlog`](/ext/e/pg_sqlog) [`log_fdw`](/ext/e/log_fdw) [`pgdisablelogerror`](/ext/e/pgdisablelogerror) |
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
| u26.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
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
@ u26.x86_64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgelog postgresql-18-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-18-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgelog postgresql-17-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-17-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgelog postgresql-16-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-16-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgelog postgresql-15-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-15-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgelog postgresql-14-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb pigsty 1.0.2 9.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgelog/postgresql-14-pgelog_1.0.2-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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

Source: [README](https://github.com/anfiau/pgelog/blob/master/README.md), [control file](https://github.com/anfiau/pgelog/blob/master/pgelog.control), [extension SQL 1.0.2](https://github.com/anfiau/pgelog/blob/master/pgelog--1.0.2.sql), [Tag v1.0.2](https://github.com/anfiau/pgelog/tree/v1.0.2)

`pgelog` writes rollback-resistant log rows through pseudo-autonomous transactions implemented with `dblink`. It caches the extra connection in `pg_variables` so repeated logging in the same session is cheaper.

### Requirements and install

- PostgreSQL 11+
- `dblink`
- `pg_variables`
- passwordless local `dblink` access, typically via `peer`

```sql
CREATE EXTENSION IF NOT EXISTS dblink;
CREATE EXTENSION IF NOT EXISTS pg_variables;
CREATE EXTENSION pgelog;
```

### Main objects and functions

```sql
SELECT pgelog_to_log('SQL', 'standalone', 'Test of logging by pgelog', '1');

SELECT pgelog_get_param('pgelog_ttl_minutes');
SELECT pgelog_set_param('pgelog_ttl_minutes', '2880');
```

- `pgelog_logs`: base log table.
- `pgelog_vw_logs`: log view with timing deltas.
- `pgelog_params`: configuration table.
- `pgelog_to_log(...)`: write a log row that survives rollback.
- `pgelog_get_param(...)`, `pgelog_set_param(...)`, `pgelog_delete_param(...)`: manage extension settings.

### Typical use

The official README shows `pgelog_to_log(...)` in PL/pgSQL exception handlers: collect diagnostics with `GET STACKED DIAGNOSTICS`, write a `FAIL` log row, then re-raise the error.

### Caveats

- Each session can open one additional `dblink` connection, so `max_connections` should account for that.
- Upstream `v1.0.2` still ships extension SQL under the same user-visible object family; Pigsty's note about runtime `dblink` plus `pg_variables` requirements is confirmed by the control file and README.
