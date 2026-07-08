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
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dbms_errlog`**](/ext/e/pg_dbms_errlog) | `2.2` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9270  | [**`pg_dbms_errlog`**](/ext/e/pg_dbms_errlog) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `dbms_errlog` |
{.ext-table}

| **Related** | [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`pg_dbms_job`](/ext/e/pg_dbms_job) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_errlog` | `pg_statement_rollback` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_errlog_$v` | `pg_statement_rollback_$v` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 |
| el8.aarch64 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 | AVAIL PGDG 2.2 1 |
| el9.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| el9.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| el10.x86_64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 |
| el10.aarch64 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 2 | AVAIL PGDG 2.2 1 |
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
@ el8.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel10.x86_64.rpm pgdg 2.2 33.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_errlog_14-2.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_dbms_errlog_14 pg_dbms_errlog_14-2.2-1PGDG.rhel10.aarch64.rpm pgdg 2.2 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_errlog_14-2.2-1PGDG.rhel10.aarch64.rpm
{{< /pgext_matrix >}}


## Install

You can install `pg_dbms_errlog` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_dbms_errlog;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_dbms_errlog -v 18  # PG 18
pig ext install -y pg_dbms_errlog -v 17  # PG 17
pig ext install -y pg_dbms_errlog -v 16  # PG 16
pig ext install -y pg_dbms_errlog -v 15  # PG 15
pig ext install -y pg_dbms_errlog -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_dbms_errlog_18       # PG 18
dnf install -y pg_dbms_errlog_17       # PG 17
dnf install -y pg_dbms_errlog_16       # PG 16
dnf install -y pg_dbms_errlog_15       # PG 15
dnf install -y pg_dbms_errlog_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_statement_rollback, pg_dbms_errlog';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_dbms_errlog CASCADE;  -- requires: pg_statement_rollback
```




## Usage

> [pg_dbms_errlog: Emulate DBMS_ERRLOG Oracle module to log DML errors in a dedicated table](https://github.com/HexaCluster/pg_dbms_errlog)

Enables DML operations to continue after encountering errors by logging failures to an error table, rather than aborting the transaction.

### Enabling

Add to `shared_preload_libraries` in `postgresql.conf`:

```ini
shared_preload_libraries = 'pg_dbms_errlog'
```

```sql
CREATE EXTENSION pg_dbms_errlog;
LOAD 'pg_dbms_errlog';
```

### Create Error Log Table

```sql
BEGIN;
CALL dbms_errlog.create_error_log('employees');
END;
-- Creates table "ERR$_employees" with error logging columns

-- With custom name and schema:
BEGIN;
CALL dbms_errlog.create_error_log('hr.employees', '"ERRORS"."ERR$_EMPTABLE"');
END;
```

### Configuration

```sql
SET pg_dbms_errlog.enabled TO true;       -- enable error logging
SET pg_dbms_errlog.query_tag TO 'daily_load';  -- tag for identifying statements
SET pg_dbms_errlog.reject_limit TO 10;    -- max errors before rollback (-1=unlimited)
SET pg_dbms_errlog.synchronous TO 'transaction'; -- 'transaction', 'query', or 'off'
SET pg_dbms_errlog.no_client_error TO true;      -- suppress client error messages
```

### Usage with pg_statement_rollback

```sql
LOAD 'pg_dbms_errlog';
LOAD 'pg_statement_rollback';

CREATE TABLE hr.raises (emp_id integer, sal integer CHECK(sal > 8000));

BEGIN;
CALL dbms_errlog.create_error_log('hr.raises');
END;

SET pg_dbms_errlog.query_tag TO 'daily_load';
SET pg_dbms_errlog.reject_limit TO 10;
SET pg_dbms_errlog.enabled TO true;

BEGIN;
SET pg_statement_rollback.enabled TO on;
INSERT INTO hr.raises VALUES (145, 15400);  -- Success
INSERT INTO hr.raises VALUES (161, 7700);   -- Failure (logged)
ROLLBACK TO SAVEPOINT "PgSLRAutoSvpt";
INSERT INTO hr.raises VALUES (175, 9680);   -- Success
COMMIT;
```

### Viewing Error Logs

```sql
SELECT * FROM "ERR$_raises";
-- pg_err_number$  | 23514
-- pg_err_mesg$    | new row for relation "raises" violates check constraint
-- pg_err_optyp$   | I
-- pg_err_tag$     | daily_load
-- pg_err_query$   | INSERT INTO hr.raises VALUES (161, 7700);
```

### Flush Queued Errors

```sql
SELECT dbms_errlog.publish_queue();
```
