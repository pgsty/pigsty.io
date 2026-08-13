---
title: "db2_fdw"
linkTitle: "db2_fdw"
description: "foreign data wrapper for DB2 access"
weight: 8630
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/wolfgangbrandl/db2_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">wolfgangbrandl/db2_fdw</div>
    <div class="ext-card__desc">https://github.com/wolfgangbrandl/db2_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/db2_fdw-18.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">db2_fdw-18.1.1.tar.gz</div>
    <div class="ext-card__desc">db2_fdw-18.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`db2_fdw`**](/ext/e/db2_fdw) | `18.2.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8630  | [**`db2_fdw`**](/ext/e/db2_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`db_migrator`](/ext/e/db_migrator) [`db2fce`](/ext/e/db2fce) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`mysql_fdw`](/ext/e/mysql_fdw) [`orafce`](/ext/e/orafce) [`postgres_fdw`](/ext/e/postgres_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`sqlite_fdw`](/ext/e/sqlite_fdw) [`informix_fdw`](/ext/e/informix_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Latest PGDG RPM/catalog version is 18.2.0; Pigsty source remains 18.1.1; no DEB package is available.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `18.2.0` | {{< pgvers "18,17,16,15,14" >}} | `db2_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `18.2.0` | {{< pgvers "18,17,16,15,14" >}} | `db2_fdw_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 18.2.0 5 | AVAIL PGDG 18.2.0 6 | AVAIL PGDG 18.2.0 7 | AVAIL PGDG 18.2.0 7 | AVAIL PGDG 18.2.0 8 |
| el8.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 18.2.0 5 | AVAIL PGDG 18.2.0 6 | AVAIL PGDG 18.2.0 7 | AVAIL PGDG 18.2.0 7 | AVAIL PGDG 18.2.0 8 |
| el9.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 18.2.0 5 | AVAIL PGDG 18.2.0 6 | AVAIL PGDG 18.2.0 6 | AVAIL PGDG 18.2.0 6 | AVAIL PGDG 18.2.0 6 |
| el10.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 18.2.0 124.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.2 79.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 79.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 18.2.0 115.0KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.2 72.5KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 72.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.4KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 18.2.0 117.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.2 73.4KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.4KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 18.2.0 124.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.2 79.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 79.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.5KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 59.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 18.2.0 114.7KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.2 72.5KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 72.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 56.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 18.2.0 117.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.2 73.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-7.0.0-1PGDG.rhel10.x86_64.rpm pgdg 7.0.0 57.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-7.0.0-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 18.2.0 124.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.2 79.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 79.1KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 59.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-6.0.1-1PGDG.rhel8.x86_64.rpm pgdg 6.0.1 59.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-6.0.1-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 18.2.0 114.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.2 72.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 72.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 56.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-6.0.1-1PGDG.rhel9.x86_64.rpm pgdg 6.0.1 58.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-6.0.1-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 18.2.0 117.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.2 73.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-7.0.0-1PGDG.rhel10.x86_64.rpm pgdg 7.0.0 57.9KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-7.0.0-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 18.2.0 126.3KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.2 82.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 81.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 60.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-6.0.1-1PGDG.rhel8.x86_64.rpm pgdg 6.0.1 60.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-6.0.1-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 18.2.0 119.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.2 77.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 77.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.3KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 60.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-6.0.1-1PGDG.rhel9.x86_64.rpm pgdg 6.0.1 62.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-6.0.1-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 18.2.0 121.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.2 78.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 78.3KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 70.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 69.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-7.0.0-1PGDG.rhel10.x86_64.rpm pgdg 7.0.0 60.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-7.0.0-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 18.2.0 126.4KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.2 82.1KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 81.9KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 60.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-6.0.1-1PGDG.rhel8.x86_64.rpm pgdg 6.0.1 60.6KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-6.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-5.0.0-1.rhel8.x86_64.rpm pgdg 5.0.0 357.6KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-5.0.0-1.rhel8.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 18.2.0 119.6KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.2 78.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 77.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.4KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.3KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 60.2KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-6.0.1-1PGDG.rhel9.x86_64.rpm pgdg 6.0.1 62.5KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-6.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-5.0.0-1.rhel9.x86_64.rpm pgdg 5.0.0 364.1KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-5.0.0-1.rhel9.x86_64.rpm
@ el10.x86_64 14 db2_fdw_14 db2_fdw_14-18.2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 18.2.0 121.6KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/db2_fdw_14-18.2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.2 78.5KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/db2_fdw_14-18.1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 78.3KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/db2_fdw_14-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 70.1KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/db2_fdw_14-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 70.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/db2_fdw_14-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 db2_fdw_14 db2_fdw_14-7.0.0-1PGDG.rhel10.x86_64.rpm pgdg 7.0.0 61.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/db2_fdw_14-7.0.0-1PGDG.rhel10.x86_64.rpm
{{< /pgext_matrix >}}


## Install

You can install `db2_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install db2_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y db2_fdw -v 18  # PG 18
pig ext install -y db2_fdw -v 17  # PG 17
pig ext install -y db2_fdw -v 16  # PG 16
pig ext install -y db2_fdw -v 15  # PG 15
pig ext install -y db2_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y db2_fdw_18       # PG 18
dnf install -y db2_fdw_17       # PG 17
dnf install -y db2_fdw_16       # PG 16
dnf install -y db2_fdw_15       # PG 15
dnf install -y db2_fdw_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION db2_fdw;
```




## Usage

Sources: [README](https://github.com/wolfgangbrandl/db2_fdw), [current upstream README](https://github.com/pg-fdw/db2_fdw/blob/master/README.md)

`db2_fdw` is a PostgreSQL foreign data wrapper for querying and modifying IBM Db2 tables from PostgreSQL. It pushes down required columns and `WHERE` conditions where possible, and provides helper functions for connection cleanup and diagnostics.

### Create Server

```sql
CREATE EXTENSION db2_fdw;

CREATE SERVER db2srv FOREIGN DATA WRAPPER db2_fdw
  OPTIONS (dbserver 'SAMPLE');
```

**Server options:** `dbserver` (required Db2 connection string), `batch_size` (currently reserved for future batch behavior), and `no_encoding_error` (`ON`, `OFF`, `YES`, `NO`, `TRUE`, or `FALSE`).

### Create User Mapping

```sql
CREATE USER MAPPING FOR PUBLIC SERVER db2srv
  OPTIONS (user 'db2inst1', password 'secret');
```

Use empty strings for `user` and `password` to enable external authentication through the Db2 client environment.

### Create Foreign Table

```sql
CREATE FOREIGN TABLE employee (
  empno char(6) OPTIONS (key 'true'),
  firstname varchar(12),
  lastname varchar(15),
  salary numeric
)
SERVER db2srv
OPTIONS (schema 'DB2INST1', table 'EMPLOYEE');
```

**Table options:** `table` (required, Db2 table name or simple query, case-sensitive, typically uppercase), `schema` (table owner), `readonly` (default `false`), `sample_percent` (ANALYZE sampling), `prefetch` (rows per round-trip, default `100`, range `0`-`1024`), `fetch_size` (accepted but currently fixed at `1`), `batch_size`, and `no_encoding_error`. `max_long` is documented upstream as deprecated and no longer used.

**Column options:** `key` (set to `true` for all primary key columns, required for `UPDATE` and `DELETE`), plus Db2 metadata options such as `db2type`, `db2size`, `db2bytes`, `db2chars`, `db2scale`, `db2null`, and `db2ccsid` on imported tables.

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA "DB2INST1" FROM SERVER db2srv INTO public;
```

**Import Options:** `case` (`keep`, `lower`, or `smart`, default `smart`), `readonly`.

### CRUD Operations

```sql
SELECT * FROM employee WHERE empno = '000010';
INSERT INTO employee (empno, firstname, lastname, salary) VALUES ('999999', 'John', 'Doe', 50000);
UPDATE employee SET salary = 55000 WHERE empno = '999999';
DELETE FROM employee WHERE empno = '999999';
```

### Connection Helpers

```sql
SELECT db2_close_connections();
SELECT db2_diag();
SELECT db2_diag('db2srv');
```

`db2_close_connections()` closes cached Db2 connections in the current session. `db2_diag()` reports db2_fdw, PostgreSQL, Db2 client, and optionally remote server diagnostic details.

### Data Type Mapping

| DB2 Type | PostgreSQL Types |
|----------|------------------|
| CHAR | char |
| VARCHAR | varchar |
| CLOB | text |
| VARGRAPHIC, GRAPHIC | text |
| BLOB | bytea |
| SMALLINT, INTEGER, BIGINT | smallint, integer, bigint |
| DOUBLE | numeric, float |
| DATE | date |
| TIMESTAMP | timestamp |
| TIME | time |

WHERE conditions and column projections are pushed down to DB2 to minimize data transfer.
