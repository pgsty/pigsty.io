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
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dbms_metadata`**](/ext/e/pg_dbms_metadata) | `1.0.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9240  | [**`pg_dbms_metadata`**](/ext/e/pg_dbms_metadata) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `dbms_metadata` |
{.ext-table}

| **Related** | [`orafce`](/ext/e/orafce) [`pgtt`](/ext/e/pgtt) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`oracle_fdw`](/ext/e/oracle_fdw) [`session_variable`](/ext/e/session_variable) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`ddlx`](/ext/e/ddlx) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgdg missing el8.aarch64.pg15


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_metadata` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_dbms_metadata_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 |
| el8.aarch64 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | AVAIL PGDG 1.0.0 1 | MISS PGDG - 0 | AVAIL PGDG 1.0.0 1 |
| el9.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el9.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el10.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el10.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 1 |
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
@ el8.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_dbms_metadata_15-1.0.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_dbms_metadata_15-1.0.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_dbms_metadata_15 pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_dbms_metadata_15-1.0.0-2PGDG.rhel10.noarch.rpm
@ el8.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 17.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0.0 17.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 17.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_dbms_metadata_14-1.0.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0.0 17.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_dbms_metadata_14 pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm pgdg 1.0.0 17.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_dbms_metadata_14-1.0.0-2PGDG.rhel10.noarch.rpm
{{< /pgext_matrix >}}


## Install

You can install `pg_dbms_metadata` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
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
