---
title: "log_fdw"
linkTitle: "log_fdw"
description: "foreign-data wrapper for Postgres log file access"
weight: 8810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/aws/postgresql-logfdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">aws/postgresql-logfdw</div>
    <div class="ext-card__desc">https://github.com/aws/postgresql-logfdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/log_fdw-1.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">log_fdw-1.4.tar.gz</div>
    <div class="ext-card__desc">log_fdw-1.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`log_fdw`**](/ext/e/log_fdw) | `1.4` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8810  | [**`log_fdw`**](/ext/e/log_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_sqlog`](/ext/e/pg_sqlog) [`pgaudit`](/ext/e/pgaudit) [`file_fdw`](/ext/e/file_fdw) [`auto_explain`](/ext/e/auto_explain) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`logerrors`](/ext/e/logerrors) [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 fixed by vonng


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `log_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `log_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-log-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| el8.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| el9.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| el9.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| el10.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| el10.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| d12.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 | AVAIL PIGSTY 1.4 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 log_fdw_18 log_fdw_18-1.4-2PIGSTY.el8.x86_64.rpm pigsty 1.4 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/log_fdw_18-1.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 log_fdw_18 log_fdw_18-1.4-2PIGSTY.el8.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/log_fdw_18-1.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 log_fdw_18 log_fdw_18-1.4-2PIGSTY.el9.x86_64.rpm pigsty 1.4 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/log_fdw_18-1.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 log_fdw_18 log_fdw_18-1.4-2PIGSTY.el9.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/log_fdw_18-1.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 log_fdw_18 log_fdw_18-1.4-2PIGSTY.el10.x86_64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/log_fdw_18-1.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 log_fdw_18 log_fdw_18-1.4-2PIGSTY.el10.aarch64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/log_fdw_18-1.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb pigsty 1.4 27.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb pigsty 1.4 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~trixie_amd64.deb pigsty 1.4 27.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~trixie_arm64.deb pigsty 1.4 27.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~jammy_amd64.deb pigsty 1.4 29.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~jammy_arm64.deb pigsty 1.4 29.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~noble_amd64.deb pigsty 1.4 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-log-fdw postgresql-18-log-fdw_1.4-1PIGSTY~noble_arm64.deb pigsty 1.4 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-18-log-fdw_1.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 log_fdw_17 log_fdw_17-1.4-2PIGSTY.el8.x86_64.rpm pigsty 1.4 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/log_fdw_17-1.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 log_fdw_17 log_fdw_17-1.4-2PIGSTY.el8.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/log_fdw_17-1.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 log_fdw_17 log_fdw_17-1.4-2PIGSTY.el9.x86_64.rpm pigsty 1.4 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/log_fdw_17-1.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 log_fdw_17 log_fdw_17-1.4-2PIGSTY.el9.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/log_fdw_17-1.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 log_fdw_17 log_fdw_17-1.4-2PIGSTY.el10.x86_64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/log_fdw_17-1.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 log_fdw_17 log_fdw_17-1.4-2PIGSTY.el10.aarch64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/log_fdw_17-1.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb pigsty 1.4 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb pigsty 1.4 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~trixie_amd64.deb pigsty 1.4 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~trixie_arm64.deb pigsty 1.4 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~jammy_amd64.deb pigsty 1.4 34.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~jammy_arm64.deb pigsty 1.4 34.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~noble_amd64.deb pigsty 1.4 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-log-fdw postgresql-17-log-fdw_1.4-1PIGSTY~noble_arm64.deb pigsty 1.4 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-17-log-fdw_1.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 log_fdw_16 log_fdw_16-1.4-2PIGSTY.el8.x86_64.rpm pigsty 1.4 20.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/log_fdw_16-1.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 log_fdw_16 log_fdw_16-1.4-2PIGSTY.el8.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/log_fdw_16-1.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 log_fdw_16 log_fdw_16-1.4-2PIGSTY.el9.x86_64.rpm pigsty 1.4 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/log_fdw_16-1.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 log_fdw_16 log_fdw_16-1.4-2PIGSTY.el9.aarch64.rpm pigsty 1.4 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/log_fdw_16-1.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 log_fdw_16 log_fdw_16-1.4-2PIGSTY.el10.x86_64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/log_fdw_16-1.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 log_fdw_16 log_fdw_16-1.4-2PIGSTY.el10.aarch64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/log_fdw_16-1.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb pigsty 1.4 27.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb pigsty 1.4 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~trixie_amd64.deb pigsty 1.4 27.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~trixie_arm64.deb pigsty 1.4 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~jammy_amd64.deb pigsty 1.4 34.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~jammy_arm64.deb pigsty 1.4 34.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~noble_amd64.deb pigsty 1.4 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-log-fdw postgresql-16-log-fdw_1.4-1PIGSTY~noble_arm64.deb pigsty 1.4 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-16-log-fdw_1.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 log_fdw_15 log_fdw_15-1.4-2PIGSTY.el8.x86_64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/log_fdw_15-1.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 log_fdw_15 log_fdw_15-1.4-2PIGSTY.el8.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/log_fdw_15-1.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 log_fdw_15 log_fdw_15-1.4-2PIGSTY.el9.x86_64.rpm pigsty 1.4 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/log_fdw_15-1.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 log_fdw_15 log_fdw_15-1.4-2PIGSTY.el9.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/log_fdw_15-1.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 log_fdw_15 log_fdw_15-1.4-2PIGSTY.el10.x86_64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/log_fdw_15-1.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 log_fdw_15 log_fdw_15-1.4-2PIGSTY.el10.aarch64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/log_fdw_15-1.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb pigsty 1.4 27.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb pigsty 1.4 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~trixie_amd64.deb pigsty 1.4 27.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~trixie_arm64.deb pigsty 1.4 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~jammy_amd64.deb pigsty 1.4 34.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~jammy_arm64.deb pigsty 1.4 34.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~noble_amd64.deb pigsty 1.4 28.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-log-fdw postgresql-15-log-fdw_1.4-1PIGSTY~noble_arm64.deb pigsty 1.4 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-15-log-fdw_1.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 log_fdw_14 log_fdw_14-1.4-2PIGSTY.el8.x86_64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/log_fdw_14-1.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 log_fdw_14 log_fdw_14-1.4-2PIGSTY.el8.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/log_fdw_14-1.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 log_fdw_14 log_fdw_14-1.4-2PIGSTY.el9.x86_64.rpm pigsty 1.4 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/log_fdw_14-1.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 log_fdw_14 log_fdw_14-1.4-2PIGSTY.el9.aarch64.rpm pigsty 1.4 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/log_fdw_14-1.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 log_fdw_14 log_fdw_14-1.4-2PIGSTY.el10.x86_64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/log_fdw_14-1.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 log_fdw_14 log_fdw_14-1.4-2PIGSTY.el10.aarch64.rpm pigsty 1.4 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/log_fdw_14-1.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb pigsty 1.4 27.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb pigsty 1.4 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~trixie_amd64.deb pigsty 1.4 27.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~trixie_arm64.deb pigsty 1.4 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~jammy_amd64.deb pigsty 1.4 34.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~jammy_arm64.deb pigsty 1.4 34.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~noble_amd64.deb pigsty 1.4 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-log-fdw postgresql-14-log-fdw_1.4-1PIGSTY~noble_arm64.deb pigsty 1.4 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/log-fdw/postgresql-14-log-fdw_1.4-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `log_fdw` using `pig build`:

```bash
pig build pkg log_fdw         # build DEB packages
```


## Install

You can install `log_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install log_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y log_fdw -v 18  # PG 18
pig ext install -y log_fdw -v 17  # PG 17
pig ext install -y log_fdw -v 16  # PG 16
pig ext install -y log_fdw -v 15  # PG 15
pig ext install -y log_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y log_fdw_18       # PG 18
dnf install -y log_fdw_17       # PG 17
dnf install -y log_fdw_16       # PG 16
dnf install -y log_fdw_15       # PG 15
dnf install -y log_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-log-fdw   # PG 18
apt install -y postgresql-17-log-fdw   # PG 17
apt install -y postgresql-16-log-fdw   # PG 16
apt install -y postgresql-15-log-fdw   # PG 15
apt install -y postgresql-14-log-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION log_fdw;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION log_fdw;
> CREATE SERVER log_fdw_server FOREIGN DATA WRAPPER log_fdw;
> SELECT * FROM list_postgres_log_files();
> ```
>
> Source: [README](https://github.com/aws/postgresql-logfdw)

`log_fdw` is a PostgreSQL foreign data wrapper for reading PostgreSQL log files through SQL. It provides helper functions to list files in the server log directory and to create foreign tables for individual log files.

### Core Functions

The upstream README documents two SQL entry points:

```sql
create_foreign_table_for_log_file(table_name text, server_name text, log_file_name text)
list_postgres_log_files()
```

`list_postgres_log_files()` is a compatibility wrapper around PostgreSQL core's `pg_ls_logdir()`.

## Basic Workflow

Create the extension and a foreign server:

```sql
CREATE EXTENSION log_fdw;
CREATE SERVER log_fdw_server FOREIGN DATA WRAPPER log_fdw;
```

List files available in the PostgreSQL log directory:

```sql
SELECT * FROM list_postgres_log_files() ORDER BY 1 DESC LIMIT 10;
```

Create foreign tables for CSV logs or plain `.log` files:

```sql
SELECT * FROM create_foreign_table_for_log_file(
  'postgresql_2022_11_28_csv',
  'log_fdw_server',
  'postgresql-2022-11-28.csv'
);

SELECT * FROM create_foreign_table_for_log_file(
  'postgresql_2022_11_28_log',
  'log_fdw_server',
  'postgresql-2022-11-28.log'
);
```

## Querying

Foreign tables created from plain log files expose a single log-entry style column, while CSV log files expose structured columns such as `log_time`, `error_severity`, `message`, and session metadata.

Typical usage is straightforward:

```sql
SELECT * FROM postgresql_2022_11_28_log LIMIT 2;

SELECT log_time, error_severity, message
FROM postgresql_2022_11_28_csv
WHERE error_severity = 'ERROR'
ORDER BY log_time DESC
LIMIT 20;
```

## Privileges

Only superusers can create the extension. The README also notes that superusers can delegate access to non-superusers with the minimum required grants, for example:

```sql
CREATE ROLE foo;
GRANT pg_monitor TO foo;
GRANT CREATE ON SCHEMA bar TO foo;
GRANT USAGE ON FOREIGN SERVER log_fdw_server TO foo;
```

`pg_monitor` is specifically needed when `list_postgres_log_files()` is used, because the underlying `pg_ls_logdir()` function requires it.

## Build Notes

The project can be built standalone with PGXS:

```bash
export USE_PGXS=1
make
make install
```

The source can also be copied into PostgreSQL's `contrib` tree and built there as part of a larger distribution.
