---
title: "pg_strom"
linkTitle: "pg_strom"
description: "PG-Strom - big-data processing acceleration using GPU and NVME"
weight: 2530
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/heterodb/pg-strom">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">heterodb/pg-strom</div>
    <div class="ext-card__desc">https://github.com/heterodb/pg-strom</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_strom`**](/ext/e/pg_strom) | `6.1` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2530  | [**`pg_strom`**](/ext/e/pg_strom) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_orca`](/ext/e/pg_orca) [`columnar`](/ext/e/columnar) [`citus`](/ext/e/citus) [`pg_clickhouse`](/ext/e/pg_clickhouse) [`storage_engine`](/ext/e/storage_engine) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) [`index_advisor`](/ext/e/index_advisor) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> RPM only: version 6.1 is available for PostgreSQL 15-18; PostgreSQL 14 remains on 3.5; no DEB package is available.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `6.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_strom` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `6.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_strom_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 6.1 1 | AVAIL PGDG 6.1 3 | AVAIL PGDG 6.1 9 | AVAIL PGDG 6.1 11 | AVAIL PGDG 3.5 2 |
| el8.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 6.1 2 | AVAIL PGDG 6.1 3 | AVAIL PGDG 6.1 9 | AVAIL PGDG 6.1 11 | AVAIL PGDG 3.5 3 |
| el9.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 6.1 2 | AVAIL PGDG 6.1 2 | AVAIL PGDG 6.1 2 | AVAIL PGDG 6.1 2 | AVAIL PIGSTY 3.5 1 |
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
@ el8.x86_64 18 pg_strom_18 pg_strom_18-6.1-2PGDG.rhel8.10.x86_64.rpm pgdg 6.1 725.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/pg_strom_18-6.1-2PGDG.rhel8.10.x86_64.rpm
@ el9.x86_64 18 pg_strom_18 pg_strom_18-6.1-2PGDG.rhel9.7.x86_64.rpm pgdg 6.1 691.0KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/pg_strom_18-6.1-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_strom_18 pg_strom_18-6.1-1PGDG.el9.x86_64.rpm pgdg 6.1 691.0KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/pg_strom_18-6.1-1PGDG.el9.x86_64.rpm
@ el10.x86_64 18 pg_strom_18 pg_strom_18-6.1-2PGDG.rhel10.1.x86_64.rpm pgdg 6.1 710.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/pg_strom_18-6.1-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_strom_18 pg_strom_18-6.1-1PGDG.el10.x86_64.rpm pgdg 6.1 705.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/pg_strom_18-6.1-1PGDG.el10.x86_64.rpm
@ el8.x86_64 17 pg_strom_17 pg_strom_17-6.1-2PGDG.rhel8.10.x86_64.rpm pgdg 6.1 725.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/pg_strom_17-6.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_strom_17 pg_strom_17-6.0-1PGDG.rhel8.x86_64.rpm pgdg 6.0 565.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/pg_strom_17-6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_strom_17 pg_strom_17-5.2.2-1PGDG.rhel8.x86_64.rpm pgdg 5.2.2 472.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/pg_strom_17-5.2.2-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 17 pg_strom_17 pg_strom_17-6.1-2PGDG.rhel9.7.x86_64.rpm pgdg 6.1 690.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/pg_strom_17-6.1-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_strom_17 pg_strom_17-6.0-1PGDG.rhel9.x86_64.rpm pgdg 6.0 539.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/pg_strom_17-6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_strom_17 pg_strom_17-5.2.2-1PGDG.rhel9.x86_64.rpm pgdg 5.2.2 467.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/pg_strom_17-5.2.2-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 17 pg_strom_17 pg_strom_17-6.1-2PGDG.rhel10.1.x86_64.rpm pgdg 6.1 710.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/pg_strom_17-6.1-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_strom_17 pg_strom_17-6.1-1PGDG.el10.x86_64.rpm pgdg 6.1 705.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/pg_strom_17-6.1-1PGDG.el10.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-6.1-2PGDG.rhel8.10.x86_64.rpm pgdg 6.1 725.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-6.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-6.0-1PGDG.rhel8.x86_64.rpm pgdg 6.0 565.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-5.2.2-1PGDG.rhel8.x86_64.rpm pgdg 5.2.2 472.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-5.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-5.1.2-1PGDG.rhel8.x86_64.rpm pgdg 5.1.2 462.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-5.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-5.1.1-1PGDG.rhel8.x86_64.rpm pgdg 5.1.1 461.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-5.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-5.0.4-1PGDG.rhel8.x86_64.rpm pgdg 5.0.4 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-5.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-5.0.3-1PGDG.rhel8.x86_64.rpm pgdg 5.0.3 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-5.0.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-5.0.2-1PGDG.rhel8.x86_64.rpm pgdg 5.0.2 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-5.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_strom_16 pg_strom_16-5.0-1PGDG.rhel8.x86_64.rpm pgdg 5.0 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/pg_strom_16-5.0-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-6.1-2PGDG.rhel9.7.x86_64.rpm pgdg 6.1 691.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-6.1-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-6.0-1PGDG.rhel9.x86_64.rpm pgdg 6.0 539.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-5.2.2-1PGDG.rhel9.x86_64.rpm pgdg 5.2.2 467.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-5.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-5.1.2-1PGDG.rhel9.x86_64.rpm pgdg 5.1.2 455.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-5.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-5.1.1-1PGDG.rhel9.x86_64.rpm pgdg 5.1.1 455.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-5.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-5.0.4-1PGDG.rhel9.x86_64.rpm pgdg 5.0.4 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-5.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-5.0.3-1PGDG.rhel9.x86_64.rpm pgdg 5.0.3 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-5.0.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-5.0.2-1PGDG.rhel9.x86_64.rpm pgdg 5.0.2 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-5.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_strom_16 pg_strom_16-5.0-1PGDG.rhel9.x86_64.rpm pgdg 5.0 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/pg_strom_16-5.0-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 16 pg_strom_16 pg_strom_16-6.1-2PGDG.rhel10.1.x86_64.rpm pgdg 6.1 710.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/pg_strom_16-6.1-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_strom_16 pg_strom_16-6.1-1PGDG.el10.x86_64.rpm pgdg 6.1 705.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/pg_strom_16-6.1-1PGDG.el10.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-6.1-2PGDG.rhel8.10.x86_64.rpm pgdg 6.1 730.8KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-6.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-6.0-1PGDG.rhel8.x86_64.rpm pgdg 6.0 569.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-5.2.2-1PGDG.rhel8.x86_64.rpm pgdg 5.2.2 475.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-5.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-5.1.2-1PGDG.rhel8.x86_64.rpm pgdg 5.1.2 464.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-5.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-5.1.1-1PGDG.rhel8.x86_64.rpm pgdg 5.1.1 464.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-5.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-5.0.4-1PGDG.rhel8.x86_64.rpm pgdg 5.0.4 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-5.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-5.0.3-1PGDG.rhel8.x86_64.rpm pgdg 5.0.3 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-5.0.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-5.0.2-1PGDG.rhel8.x86_64.rpm pgdg 5.0.2 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-5.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-5.0-1PGDG.rhel8.x86_64.rpm pgdg 5.0 19.2MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-3.5-1.rhel8.x86_64.rpm pgdg 3.5 28.6MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-3.5-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_strom_15 pg_strom_15-3.4-1.rhel8.x86_64.rpm pgdg 3.4 28.4MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/pg_strom_15-3.4-1.rhel8.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-6.1-2PGDG.rhel9.7.x86_64.rpm pgdg 6.1 699.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-6.1-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-6.0-1PGDG.rhel9.x86_64.rpm pgdg 6.0 545.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-5.2.2-1PGDG.rhel9.x86_64.rpm pgdg 5.2.2 474.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-5.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-5.1.2-1PGDG.rhel9.x86_64.rpm pgdg 5.1.2 464.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-5.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-5.1.1-1PGDG.rhel9.x86_64.rpm pgdg 5.1.1 463.8KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-5.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-5.0.4-1PGDG.rhel9.x86_64.rpm pgdg 5.0.4 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-5.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-5.0.3-1PGDG.rhel9.x86_64.rpm pgdg 5.0.3 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-5.0.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-5.0.2-1PGDG.rhel9.x86_64.rpm pgdg 5.0.2 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-5.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-5.0-1PGDG.rhel9.x86_64.rpm pgdg 5.0 8.6MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-3.5-1.rhel9.x86_64.rpm pgdg 3.5 21.2MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-3.5-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_strom_15 pg_strom_15-3.4-1.rhel9.x86_64.rpm pgdg 3.4 21.0MiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/pg_strom_15-3.4-1.rhel9.x86_64.rpm
@ el10.x86_64 15 pg_strom_15 pg_strom_15-6.1-2PGDG.rhel10.1.x86_64.rpm pgdg 6.1 734.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/pg_strom_15-6.1-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_strom_15 pg_strom_15-6.1-1PGDG.el10.x86_64.rpm pgdg 6.1 730.1KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/pg_strom_15-6.1-1PGDG.el10.x86_64.rpm
@ el8.x86_64 14 pg_strom_14 pg_strom_14-3.5-1.rhel8.x86_64.rpm pgdg 3.5 28.6MiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/pg_strom_14-3.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_strom_14 pg_strom_14-3.4-1.rhel8.x86_64.rpm pgdg 3.4 28.4MiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/pg_strom_14-3.4-1.rhel8.x86_64.rpm
@ el9.x86_64 14 pg_strom_14 pg_strom_14-3.5-1.rhel9.x86_64.rpm pgdg 3.5 21.2MiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/pg_strom_14-3.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_strom_14 pg_strom_14-3.4-1.rhel9.x86_64.rpm pgdg 3.4 21.0MiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/pg_strom_14-3.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_strom_14 pg_strom_14-3.3.2-1.rhel9.x86_64.rpm pgdg 3.3.2 21.0MiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/pg_strom_14-3.3.2-1.rhel9.x86_64.rpm
@ el10.x86_64 14 pg_strom_14 pg_strom_14-3.5-1PIGSTY.el10.x86_64.rpm pigsty 3.5 25.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strom_14-3.5-1PIGSTY.el10.x86_64.rpm
{{< /pgext_matrix >}}


## Install

You can install `pg_strom` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_strom;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_strom -v 18  # PG 18
pig ext install -y pg_strom -v 17  # PG 17
pig ext install -y pg_strom -v 16  # PG 16
pig ext install -y pg_strom -v 15  # PG 15
pig ext install -y pg_strom -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_strom_18       # PG 18
dnf install -y pg_strom_17       # PG 17
dnf install -y pg_strom_16       # PG 16
dnf install -y pg_strom_15       # PG 15
dnf install -y pg_strom_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_strom;
```




## Usage

> [pg_strom: Big-data processing acceleration using GPU and NVME](https://github.com/heterodb/pg-strom)

PG-Strom is a PostgreSQL extension that offloads analytical SQL workloads to GPU processors.
It automatically generates GPU code from SQL, accelerating scan, join, aggregation, and sort operations.
Full documentation is available at [https://heterodb.github.io/pg-strom/](https://heterodb.github.io/pg-strom/).

### Documentation Index

| Topic | Description |
|:------|:------------|
| [Install](https://heterodb.github.io/pg-strom/install/) | Prerequisites, CUDA setup, RPM/source installation |
| [Basic Operations](https://heterodb.github.io/pg-strom/operations/) | GpuScan, GpuJoin, GpuPreAgg fundamentals |
| [BRIN Index](https://heterodb.github.io/pg-strom/brin/) | BRIN index support for GPU table scans |
| [Partitioning](https://heterodb.github.io/pg-strom/partition/) | Partition-wise GPU execution |
| [PostGIS](https://heterodb.github.io/pg-strom/postgis/) | GPU-accelerated PostGIS functions |
| [GPU-Sort](https://heterodb.github.io/pg-strom/gpusort/) | GPU-accelerated sorting with bitonic sort |
| [GPUDirect SQL](https://heterodb.github.io/pg-strom/ssd2gpu/) | NVMe-to-GPU direct data transfer |
| [Apache Arrow / Arrow_Fdw](https://heterodb.github.io/pg-strom/arrow_fdw/) | Columnar Arrow file foreign data wrapper |
| [GPU Cache](https://heterodb.github.io/pg-strom/gpucache/) | In-GPU-memory table caching |
| [Pinned Inner Buffer](https://heterodb.github.io/pg-strom/pinned_buffer/) | Retaining inner-table results on GPU |
| [Data Types](https://heterodb.github.io/pg-strom/ref_types/) | GPU-supported data types (int1, float2, etc.) |
| [Functions & Operators](https://heterodb.github.io/pg-strom/ref_devfuncs/) | GPU-executable functions and operators |
| [SQL Objects](https://heterodb.github.io/pg-strom/ref_sqlfuncs/) | System views and utility functions |
| [GUC Parameters](https://heterodb.github.io/pg-strom/ref_params/) | All configuration parameters |
| [Troubleshooting](https://heterodb.github.io/pg-strom/troubles/) | Diagnostics and common issues |


### Prerequisites

PG-Strom requires an NVIDIA GPU (compute capability 7.5+ / Turing or later), CUDA Toolkit 12.2+, and PostgreSQL 15+.
It must be loaded via `shared_preload_libraries`.

```ini
# postgresql.conf
shared_preload_libraries = 'pg_strom'
max_worker_processes = 100
shared_buffers = 10GB
work_mem = 1GB
```

```sql
CREATE EXTENSION pg_strom;
SELECT pgstrom.device_info;  -- verify GPU detection
```


### GpuScan: GPU-Accelerated Table Scan

PG-Strom replaces sequential scans with GPU-parallel scans. WHERE clause filters
are compiled into GPU kernels and executed on the device. This appears as `GpuScan`
in EXPLAIN output.

```sql
-- GPU will accelerate this filtered scan automatically
EXPLAIN (ANALYZE, COSTS OFF)
SELECT * FROM lineorder WHERE lo_quantity > 40 AND lo_discount BETWEEN 1 AND 3;
```

```
 Custom Scan (GpuScan) on lineorder
   GPU Filter: ((lo_quantity > 40) AND (lo_discount >= 1) AND (lo_discount <= 3))
   Rows Removed by GPU Filter: 59532300
   ...
```


### GpuJoin: GPU-Accelerated Hash Join

Multi-table joins are offloaded as GPU hash joins. PG-Strom consolidates
sequential scan-join-aggregate chains into a single GPU kernel to minimize
CPU-GPU data transfer.

```sql
EXPLAIN (ANALYZE, COSTS OFF)
SELECT d_year, s_nation, sum(lo_revenue) AS revenue
  FROM lineorder, date1, supplier
 WHERE lo_orderdate = d_datekey
   AND lo_suppkey = s_suppkey
   AND s_region = 'ASIA'
 GROUP BY d_year, s_nation
 ORDER BY d_year, s_nation;
```

```
 Sort
   Sort Key: date1.d_year, supplier.s_nation
   ->  Custom Scan (GpuPreAgg) on lineorder
         GPU Projection: ...
         GPU Join Quals [1]: (lo_orderdate = d_datekey)  ... [HashJoin]
         GPU Join Quals [2]: (lo_suppkey = s_suppkey)    ... [HashJoin]
         GPU Outer Quals: (s_region = 'ASIA')
         GPU Group Key: d_year, s_nation
         ->  Seq Scan on date1
         ->  Seq Scan on supplier
```


### GpuPreAgg: GPU-Accelerated Aggregation

GROUP BY and aggregate functions (SUM, AVG, COUNT, MIN, MAX, STDDEV, etc.) are
executed on the GPU. PG-Strom performs a preliminary aggregation on the device,
then the CPU handles the final merge.

```sql
EXPLAIN (ANALYZE, COSTS OFF)
SELECT lo_shipmode, count(*), avg(lo_quantity)
  FROM lineorder
 GROUP BY lo_shipmode;
```

```
 Finalize GroupAggregate
   Group Key: lo_shipmode
   ->  Custom Scan (GpuPreAgg) on lineorder
         GPU Projection: lo_shipmode, pgstrom.nrows(), pgstrom.psum(lo_quantity)
         GPU Group Key: lo_shipmode
```


### GPU-Sort

GPU-Sort uses a bitonic sorting algorithm for ORDER BY and window functions.
It requires CPU fallback to be disabled so all data resides in GPU memory.

```sql
SET pg_strom.cpu_fallback = off;

EXPLAIN (ANALYZE, COSTS OFF)
SELECT *, rank() OVER (PARTITION BY lo_shipmode ORDER BY lo_revenue DESC) AS rnk
  FROM lineorder
 WHERE lo_quantity > 45;
```


### Arrow_Fdw: Apache Arrow Columnar Store

Arrow_Fdw maps Apache Arrow files as foreign tables, enabling GPU-accelerated
queries on columnar data. Combined with GPUDirect SQL, data flows directly
from NVMe storage to the GPU.

```sql
-- Create a foreign table from an Arrow file
CREATE FOREIGN TABLE arrow_logs (
    ts         timestamp,
    sensor_id  int,
    signal     float4
) SERVER arrow_fdw
  OPTIONS (file '/data/logs/sensor_2024.arrow');

-- Query with GPU acceleration
SELECT sensor_id, avg(signal)
  FROM arrow_logs
 WHERE ts BETWEEN '2024-01-01' AND '2024-06-30'
 GROUP BY sensor_id;

-- Map an entire directory of Arrow files
CREATE FOREIGN TABLE arrow_archive (
    ts         timestamp,
    device_id  int,
    value      float8
) SERVER arrow_fdw
  OPTIONS (dir '/data/archive', suffix '.arrow');
```

Export PostgreSQL data to Arrow format using the `pg2arrow` CLI tool:

```bash
pg2arrow -d mydb -c "SELECT * FROM sensor_data" -o /data/sensor_data.arrow
```


### GPU Cache

GPU Cache keeps a copy of a PostgreSQL table in GPU device memory for
ultra-fast analytical queries on frequently updated data (suitable for tables up to ~10GB).
Synchronization is log-based via a row-level trigger.

```sql
-- Enable GPU Cache on a table
CREATE TRIGGER row_sync
  AFTER INSERT OR UPDATE OR DELETE ON realtime_metrics
  FOR ROW EXECUTE FUNCTION pgstrom.gpucache_sync_trigger();
ALTER TABLE realtime_metrics ENABLE ALWAYS TRIGGER row_sync;

-- With custom parameters
CREATE TRIGGER row_sync
  AFTER INSERT OR UPDATE OR DELETE ON dpoints
  FOR ROW EXECUTE FUNCTION pgstrom.gpucache_sync_trigger(
    'gpu_device_id=0,max_num_rows=5000000,redo_buffer_size=200m,gpu_sync_interval=4'
  );

-- Monitor GPU Cache status
SELECT * FROM pgstrom.gpucache_info;

-- Preload tables at startup (postgresql.conf)
-- pg_strom.gpucache_auto_preload = 'mydb.public.realtime_metrics'
```


### GPUDirect SQL

GPUDirect SQL enables peer-to-peer DMA transfers from NVMe-SSD storage directly
to GPU memory, bypassing CPU and system RAM entirely. This is ideal for large
analytical scans where the GPU filters data before the CPU sees it.

Requirements: NVMe-SSD storage, NVIDIA GPUDirect Storage support, `nvidia-fs` kernel module.

```sql
-- GPUDirect SQL activates automatically for large tables on NVMe
-- The threshold is controlled by:
SET pg_strom.gpudirect_threshold = '2GB';
SET pg_strom.gpudirect_enabled = on;

-- Check GPUDirect driver status
SHOW pg_strom.gpudirect_driver;
```

In EXPLAIN output, GPUDirect SQL appears as a note on the scan node indicating
direct NVMe-to-GPU data transfer.


### PostGIS GPU Acceleration

PG-Strom accelerates several PostGIS functions on the GPU, including
`st_contains`, `st_crosses`, `st_relate`, and `st_makepoint`.
GpuJoin can leverage GiST (R-Tree) indexes for spatial join acceleration.

```sql
-- GPU-accelerated spatial filter
EXPLAIN (ANALYZE, COSTS OFF)
SELECT * FROM gps_points
 WHERE st_contains(
    'POLYGON((139.6 35.5, 139.8 35.5, 139.8 35.7, 139.6 35.7, 139.6 35.5))'::geometry,
    st_makepoint(longitude, latitude)
 );

-- GPU-accelerated spatial join with GiST index
EXPLAIN (ANALYZE, COSTS OFF)
SELECT a.id, b.name
  FROM gps_points a, city_boundaries b
 WHERE st_contains(b.geom, st_makepoint(a.longitude, a.latitude));
```

```
 Custom Scan (GpuJoin) on gps_points a
   GPU Projection: a.id, b.name
   GPU GiST Join Quals [1]: st_contains(b.geom, st_makepoint(a.longitude, a.latitude))
   ->  Custom Scan (GpuScan) on city_boundaries b
```


### Custom Data Types

PG-Strom provides additional data types optimized for GPU processing:

| Type | Size | Description |
|:-----|:-----|:------------|
| `int1` | 1 byte | 8-bit integer |
| `float2` | 2 bytes | Half-precision floating-point (IEEE 754) |

These types are especially useful for compact storage of large datasets where
precision can be reduced to save memory and increase GPU throughput.


### System Views and Functions

```sql
-- GPU device properties
SELECT * FROM pgstrom.device_info;

-- GPU Cache status
SELECT * FROM pgstrom.gpucache_info;

-- Module version info
SELECT pgstrom.githash();

-- Import Arrow file as foreign table
SELECT pgstrom.arrow_fdw_import_file('arrow_table', '/data/file.arrow');

-- GPU Cache management
SELECT pgstrom.gpucache_apply_redo('realtime_metrics'::regclass);
SELECT pgstrom.gpucache_compaction('realtime_metrics'::regclass);
SELECT pgstrom.gpucache_recovery('realtime_metrics'::regclass);
```


### Key GUC Parameters

**Feature toggles:**

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `pg_strom.enabled` | `on` | Master switch for all PG-Strom features |
| `pg_strom.enable_gpuscan` | `on` | Enable/disable GpuScan |
| `pg_strom.enable_gpujoin` | `on` | Enable/disable GpuJoin |
| `pg_strom.enable_gpuhashjoin` | `on` | Enable/disable GpuHashJoin |
| `pg_strom.enable_gpugistindex` | `on` | Enable/disable GpuGiSTIndex join |
| `pg_strom.enable_gpupreagg` | `on` | Enable/disable GpuPreAgg |
| `pg_strom.enable_gpusort` | `on` | Enable/disable GPU-Sort |
| `pg_strom.enable_brin` | `on` | Enable/disable BRIN index on GPU scans |
| `pg_strom.enable_gpucache` | `on` | Enable/disable GPU Cache usage |
| `pg_strom.cpu_fallback` | `notice` | CPU fallback behavior on GPU recheck errors |

**Optimizer cost parameters:**

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `pg_strom.gpu_setup_cost` | `100 * seq_page_cost` | Startup cost for GPU device initialization |
| `pg_strom.gpu_tuple_cost` | `cpu_tuple_cost` | Per-tuple CPU-GPU transfer cost |
| `pg_strom.gpu_operator_cost` | `cpu_operator_cost / 16` | Per-operator GPU execution cost |

**GPUDirect SQL:**

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `pg_strom.gpudirect_enabled` | `on` | Enable/disable GPUDirect SQL |
| `pg_strom.gpudirect_threshold` | auto | Minimum table size to trigger GPUDirect SQL |
| `pg_strom.gpu_direct_seq_page_cost` | `seq_page_cost / 4` | Scan cost via GPUDirect SQL |

**Arrow_Fdw:**

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `arrow_fdw.enabled` | `on` | Enable/disable Arrow_Fdw |
| `arrow_fdw.metadata_cache_size` | `512MB` | Shared memory for Arrow metadata cache |

**GPU memory management:**

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `pg_strom.gpu_mempool_segment_sz` | `1GB` | GPU memory pool segment size |
| `pg_strom.gpu_mempool_max_ratio` | `50%` | Max device memory for the pool |
| `pg_strom.gpu_mempool_min_ratio` | `5%` | Min preserved memory pool ratio |
| `pg_strom.cuda_visible_devices` | (all) | Restrict to specific GPU device IDs |

**Execution:**

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `pg_strom.max_async_tasks` | `12` | Max concurrent GPU tasks per query |
| `pg_strom.enable_partitionwise_gpujoin` | `on` | Push GpuJoin into partitions |
| `pg_strom.enable_partitionwise_gpupreagg` | `on` | Push GpuPreAgg into partitions |
