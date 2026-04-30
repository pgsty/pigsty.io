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
| [**`db2_fdw`**](/ext/e/db2_fdw) | `18.1.1` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8630  | [**`db2_fdw`**](/ext/e/db2_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`odbc_fdw`](/ext/e/odbc_fdw) [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `18.1.1` | {{< pgvers "18,17,16,15,14" >}} | `db2_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `18.1.1` | {{< pgvers "18,17,16,15,14" >}} | `db2_fdw_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 18.1.1 3 | AVAIL PGDG 18.1.1 4 | AVAIL PGDG 18.1.1 5 | AVAIL PGDG 18.1.1 5 | AVAIL PGDG 18.1.1 6 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 18.1.1 3 | AVAIL PGDG 18.1.1 4 | AVAIL PGDG 18.1.1 5 | AVAIL PGDG 18.1.1 5 | AVAIL PGDG 18.1.1 6 |
| el9.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 18.1.1 3 | AVAIL PGDG 18.1.1 4 | AVAIL PGDG 18.1.1 4 | AVAIL PGDG 18.1.1 4 | AVAIL PGDG 18.1.1 4 |
| el10.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u26.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u26.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 79.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/db2_fdw_18-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 72.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.4KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/db2_fdw_18-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.4KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 db2_fdw_18 db2_fdw_18-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/db2_fdw_18-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 79.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.5KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 db2_fdw_17 db2_fdw_17-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 59.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/db2_fdw_17-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 72.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 db2_fdw_17 db2_fdw_17-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 56.6KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/db2_fdw_17-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 db2_fdw_17 db2_fdw_17-7.0.0-1PGDG.rhel10.x86_64.rpm pgdg 7.0.0 57.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/db2_fdw_17-7.0.0-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 79.1KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 70.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 59.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 db2_fdw_16 db2_fdw_16-6.0.1-1PGDG.rhel8.x86_64.rpm pgdg 6.0.1 59.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/db2_fdw_16-6.0.1-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 72.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 64.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 56.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 db2_fdw_16 db2_fdw_16-6.0.1-1PGDG.rhel9.x86_64.rpm pgdg 6.0.1 58.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/db2_fdw_16-6.0.1-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 65.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 db2_fdw_16 db2_fdw_16-7.0.0-1PGDG.rhel10.x86_64.rpm pgdg 7.0.0 57.9KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/db2_fdw_16-7.0.0-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 81.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 60.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 db2_fdw_15 db2_fdw_15-6.0.1-1PGDG.rhel8.x86_64.rpm pgdg 6.0.1 60.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/db2_fdw_15-6.0.1-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 77.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.3KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 60.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 db2_fdw_15 db2_fdw_15-6.0.1-1PGDG.rhel9.x86_64.rpm pgdg 6.0.1 62.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/db2_fdw_15-6.0.1-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.1.1-1PGDG.rhel10.1.x86_64.rpm pgdg 18.1.1 78.3KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.1.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-2PGDG.rhel10.x86_64.rpm pgdg 18.0.1 70.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.0.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-18.0.1-1PGDG.rhel10.x86_64.rpm pgdg 18.0.1 69.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-18.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 db2_fdw_15 db2_fdw_15-7.0.0-1PGDG.rhel10.x86_64.rpm pgdg 7.0.0 60.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/db2_fdw_15-7.0.0-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1.1 81.9KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-2PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.1KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.0.1-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-1PGDG.rhel8.x86_64.rpm pgdg 18.0.1 73.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-18.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-7.0.0-1PGDG.rhel8.x86_64.rpm pgdg 7.0.0 60.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-7.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-6.0.1-1PGDG.rhel8.x86_64.rpm pgdg 6.0.1 60.6KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-6.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 db2_fdw_14 db2_fdw_14-5.0.0-1.rhel8.x86_64.rpm pgdg 5.0.0 357.6KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/db2_fdw_14-5.0.0-1.rhel8.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.1.1-1PGDG.rhel9.7.x86_64.rpm pgdg 18.1.1 77.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.1.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-2PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.4KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.0.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-18.0.1-1PGDG.rhel9.x86_64.rpm pgdg 18.0.1 69.3KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-18.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-7.0.0-1PGDG.rhel9.x86_64.rpm pgdg 7.0.0 60.2KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-7.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-6.0.1-1PGDG.rhel9.x86_64.rpm pgdg 6.0.1 62.5KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-6.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 db2_fdw_14 db2_fdw_14-5.0.0-1.rhel9.x86_64.rpm pgdg 5.0.0 364.1KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/db2_fdw_14-5.0.0-1.rhel9.x86_64.rpm
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

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

> [db2_fdw: Foreign data wrapper for DB2 access](https://github.com/wolfgangbrandl/db2_fdw)

### Create Server

```sql
CREATE EXTENSION db2_fdw;

CREATE SERVER db2srv FOREIGN DATA WRAPPER db2_fdw
  OPTIONS (dbserver 'SAMPLE');
```

**Server Options:** `dbserver` (required, DB2 database connection string).

### Create User Mapping

```sql
CREATE USER MAPPING FOR PUBLIC SERVER db2srv
  OPTIONS (user 'db2inst1', password 'secret');
```

Use empty strings for `user` and `password` to enable external authentication.

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

**Table Options:** `table` (required, DB2 table name, case-sensitive, typically uppercase), `schema` (table owner), `readonly` (default `false`), `prefetch` (rows per round-trip, default 200, range 0-10240), `max_long` (max LONG column length, default 32767).

**Column Options:** `key` (set to `true` for primary key columns, required for UPDATE/DELETE).

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

### Data Type Mapping

| DB2 Type | PostgreSQL Types |
|----------|------------------|
| CHAR | char |
| VARCHAR | varchar |
| CLOB | text |
| BLOB | bytea |
| SMALLINT, INTEGER, BIGINT | smallint, integer, bigint |
| DOUBLE | numeric, float |
| DATE | date |
| TIMESTAMP | timestamp |
| TIME | time |

WHERE conditions and column projections are pushed down to DB2 to minimize data transfer.
