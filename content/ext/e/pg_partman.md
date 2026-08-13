---
title: "pg_partman"
linkTitle: "pg_partman"
description: "Extension to manage partitioned tables by time or ID"
weight: 2510
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgpartman/pg_partman">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgpartman/pg_partman</div>
    <div class="ext-card__desc">https://github.com/pgpartman/pg_partman</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_partman-5.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_partman-5.5.0.tar.gz</div>
    <div class="ext-card__desc">pg_partman-5.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_partman`**](/ext/e/pg_partman) | `5.5.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2510  | [**`pg_partman`**](/ext/e/pg_partman) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`timescaledb`](/ext/e/timescaledb) [`pg_ttl_index`](/ext/e/pg_ttl_index) [`citus`](/ext/e/citus) [`pg_fkpart`](/ext/e/pg_fkpart) [`timeseries`](/ext/e/timeseries) [`pg_cron`](/ext/e/pg_cron) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | `partman_to_cstore` [`timeseries`](/ext/e/timeseries) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_partman` | `plpgsql` |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_partman_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-partman` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 5.5.0 9 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 18 | AVAIL PIGSTY 5.5.0 22 | AVAIL PIGSTY 5.5.0 26 |
| el8.aarch64 | AVAIL PIGSTY 5.5.0 9 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 18 | AVAIL PIGSTY 5.5.0 21 | AVAIL PIGSTY 5.5.0 21 |
| el9.x86_64 | AVAIL PGDG 5.5.0 14 | AVAIL PGDG 5.5.0 19 | AVAIL PGDG 5.5.0 23 | AVAIL PGDG 5.5.0 27 | AVAIL PGDG 5.5.0 29 |
| el9.aarch64 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 19 | AVAIL PIGSTY 5.5.0 23 | AVAIL PIGSTY 5.5.0 26 | AVAIL PIGSTY 5.5.0 26 |
| el10.x86_64 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 |
| el10.aarch64 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 | AVAIL PIGSTY 5.5.0 14 |
| d12.x86_64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| d12.aarch64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| d13.x86_64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| d13.aarch64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| u22.x86_64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| u22.aarch64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| u24.x86_64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| u24.aarch64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| u26.x86_64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
| u26.aarch64 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 | AVAIL PIGSTY 5.5.0 4 |
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.5.0-1PIGSTY.el8.x86_64.rpm pigsty 5.5.0 290.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_partman_18-5.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.3 279.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.4.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.3.1-1PGDG.rhel8.x86_64.rpm pgdg 5.3.1 271.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.3.0-1PGDG.rhel8.x86_64.rpm pgdg 5.3.0 270.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_partman_18 pg_partman_18-5.2.4-2PGDG.rhel8.x86_64.rpm pgdg 5.2.4 262.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_partman_18-5.2.4-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.5.0-1PIGSTY.el8.aarch64.rpm pigsty 5.5.0 290.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_partman_18-5.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.4.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.3.1-1PGDG.rhel8.aarch64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.3.0-1PGDG.rhel8.aarch64.rpm pgdg 5.3.0 270.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_partman_18 pg_partman_18-5.2.4-2PGDG.rhel8.aarch64.rpm pgdg 5.2.4 262.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_partman_18-5.2.4-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.5.0-2PGDG.rhel9.8.x86_64.rpm pgdg 5.5.0 218.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.5.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.5.0-1PIGSTY.el9.x86_64.rpm pigsty 5.5.0 230.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_partman_18-5.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel9.8.x86_64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.3 218.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.2 218.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.2 218.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.1 217.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.1 217.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.0 216.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.3.1-1PGDG.rhel9.x86_64.rpm pgdg 5.3.1 213.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.3.0-1PGDG.rhel9.x86_64.rpm pgdg 5.3.0 213.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_partman_18 pg_partman_18-5.2.4-2PGDG.rhel9.x86_64.rpm pgdg 5.2.4 208.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_partman_18-5.2.4-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.5.0-1PIGSTY.el9.aarch64.rpm pigsty 5.5.0 230.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_partman_18-5.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.5.0 220.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel9.8.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.1 217.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.1 217.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.0 216.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.3.1-1PGDG.rhel9.aarch64.rpm pgdg 5.3.1 213.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.3.0-1PGDG.rhel9.aarch64.rpm pgdg 5.3.0 212.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_partman_18 pg_partman_18-5.2.4-2PGDG.rhel9.aarch64.rpm pgdg 5.2.4 207.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_partman_18-5.2.4-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.5.0-1PIGSTY.el10.x86_64.rpm pigsty 5.5.0 232.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_partman_18-5.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel10.2.x86_64.rpm pgdg 5.4.3 220.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.3 221.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.2 220.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.2 220.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.1 220.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.1 220.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.0 218.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.0 218.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.3.1-1PGDG.rhel10.x86_64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.3.0-1PGDG.rhel10.x86_64.rpm pgdg 5.3.0 215.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_partman_18 pg_partman_18-5.2.4-2PGDG.rhel10.x86_64.rpm pgdg 5.2.4 210.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_partman_18-5.2.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.5.0-1PIGSTY.el10.aarch64.rpm pigsty 5.5.0 232.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_partman_18-5.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel10.2.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.2 220.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.2-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.2 220.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.3.1-1PGDG.rhel10.aarch64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.3.0-1PGDG.rhel10.aarch64.rpm pgdg 5.3.0 215.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_partman_18 pg_partman_18-5.2.4-2PGDG.rhel10.aarch64.rpm pgdg 5.2.4 210.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_partman_18-5.2.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~bookworm_amd64.deb pigsty 5.5.0 187.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg12+1_amd64.deb pgdg 5.5.0 242.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg12+1_amd64.deb pgdg 5.4.3 238.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg12+1_amd64.deb pgdg 5.4.2 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~bookworm_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg12+1_arm64.deb pgdg 5.5.0 242.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg12+1_arm64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg12+1_arm64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~trixie_amd64.deb pigsty 5.5.0 187.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg13+1_amd64.deb pgdg 5.5.0 242.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg13+1_amd64.deb pgdg 5.4.3 238.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg13+1_amd64.deb pgdg 5.4.2 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~trixie_arm64.deb pigsty 5.5.0 187.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg13+1_arm64.deb pgdg 5.5.0 242.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg13+1_arm64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg13+1_arm64.deb pgdg 5.4.2 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~jammy_amd64.deb pigsty 5.5.0 183.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg22.04+1_amd64.deb pgdg 5.5.0 234.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg22.04+1_amd64.deb pgdg 5.4.3 231.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg22.04+1_amd64.deb pgdg 5.4.2 231.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~jammy_arm64.deb pigsty 5.5.0 183.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg22.04+1_arm64.deb pgdg 5.5.0 234.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg22.04+1_arm64.deb pgdg 5.4.3 230.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg22.04+1_arm64.deb pgdg 5.4.2 230.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~noble_amd64.deb pigsty 5.5.0 182.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg24.04+1_amd64.deb pgdg 5.5.0 234.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg24.04+1_amd64.deb pgdg 5.4.3 230.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg24.04+1_amd64.deb pgdg 5.4.2 230.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~noble_arm64.deb pigsty 5.5.0 182.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg24.04+1_arm64.deb pgdg 5.5.0 233.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg24.04+1_arm64.deb pgdg 5.4.3 230.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg24.04+1_arm64.deb pgdg 5.4.2 230.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~resolute_amd64.deb pigsty 5.5.0 182.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg26.04+1_amd64.deb pgdg 5.5.0 233.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg26.04+1_amd64.deb pgdg 5.4.3 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg26.04+1_amd64.deb pgdg 5.4.2 230.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-2PIGSTY~resolute_arm64.deb pigsty 5.5.0 182.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-2PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-partman postgresql-18-partman_5.5.0-1.pgdg26.04+1_arm64.deb pgdg 5.5.0 233.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.3-1.pgdg26.04+1_arm64.deb pgdg 5.4.3 230.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-partman postgresql-18-partman_5.4.2-1.pgdg26.04+1_arm64.deb pgdg 5.4.2 230.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-18-partman_5.4.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.5.0-1PIGSTY.el8.x86_64.rpm pigsty 5.5.0 290.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_partman_17-5.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.4.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.3.1-1PGDG.rhel8.x86_64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.3.0-1PGDG.rhel8.x86_64.rpm pgdg 5.3.0 270.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.2.4-1PGDG.rhel8.x86_64.rpm pgdg 5.2.4 261.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.2.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.2.3-1PGDG.rhel8.x86_64.rpm pgdg 5.2.3 260.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.2.2-1PGDG.rhel8.x86_64.rpm pgdg 5.2.2 260.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.2.1-1PGDG.rhel8.x86_64.rpm pgdg 5.2.1 259.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.2.0-1PGDG.rhel8.x86_64.rpm pgdg 5.2.0 259.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_partman_17 pg_partman_17-5.1.0-2PGDG.rhel8.x86_64.rpm pgdg 5.1.0 254.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_partman_17-5.1.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.5.0-1PIGSTY.el8.aarch64.rpm pigsty 5.5.0 290.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_partman_17-5.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.4.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.3.1-1PGDG.rhel8.aarch64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.3.0-1PGDG.rhel8.aarch64.rpm pgdg 5.3.0 270.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.2.4-1PGDG.rhel8.aarch64.rpm pgdg 5.2.4 261.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.2.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.2.3-1PGDG.rhel8.aarch64.rpm pgdg 5.2.3 260.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.2.2-1PGDG.rhel8.aarch64.rpm pgdg 5.2.2 260.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.2.1-1PGDG.rhel8.aarch64.rpm pgdg 5.2.1 259.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.2.0-1PGDG.rhel8.aarch64.rpm pgdg 5.2.0 259.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_partman_17 pg_partman_17-5.1.0-2PGDG.rhel8.aarch64.rpm pgdg 5.1.0 254.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_partman_17-5.1.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.5.0-2PGDG.rhel9.8.x86_64.rpm pgdg 5.5.0 218.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.5.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.5.0-1PIGSTY.el9.x86_64.rpm pigsty 5.5.0 230.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_partman_17-5.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel9.8.x86_64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.3 218.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.2 218.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.1 217.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.1 217.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.0 216.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.3.1-1PGDG.rhel9.x86_64.rpm pgdg 5.3.1 213.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.3.0-1PGDG.rhel9.x86_64.rpm pgdg 5.3.0 212.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.2.4-1PGDG.rhel9.x86_64.rpm pgdg 5.2.4 207.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.2.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.2.3-1PGDG.rhel9.x86_64.rpm pgdg 5.2.3 206.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.2.2-1PGDG.rhel9.x86_64.rpm pgdg 5.2.2 206.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.2.1-1PGDG.rhel9.x86_64.rpm pgdg 5.2.1 205.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.2.0-1PGDG.rhel9.x86_64.rpm pgdg 5.2.0 205.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_partman_17 pg_partman_17-5.1.0-2PGDG.rhel9.x86_64.rpm pgdg 5.1.0 201.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_partman_17-5.1.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.5.0-1PIGSTY.el9.aarch64.rpm pigsty 5.5.0 230.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_partman_17-5.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.5.0 220.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel9.8.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.1 217.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.1 217.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.0 216.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.3.1-1PGDG.rhel9.aarch64.rpm pgdg 5.3.1 213.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.3.0-1PGDG.rhel9.aarch64.rpm pgdg 5.3.0 212.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.2.4-1PGDG.rhel9.aarch64.rpm pgdg 5.2.4 207.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.2.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.2.3-1PGDG.rhel9.aarch64.rpm pgdg 5.2.3 207.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.2.2-1PGDG.rhel9.aarch64.rpm pgdg 5.2.2 206.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.2.1-1PGDG.rhel9.aarch64.rpm pgdg 5.2.1 205.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.2.0-1PGDG.rhel9.aarch64.rpm pgdg 5.2.0 205.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_partman_17 pg_partman_17-5.1.0-2PGDG.rhel9.aarch64.rpm pgdg 5.1.0 201.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_partman_17-5.1.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.5.0-1PIGSTY.el10.x86_64.rpm pigsty 5.5.0 232.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_partman_17-5.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel10.2.x86_64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.3 221.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.2 220.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.2 220.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.1 220.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.1 220.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.0 218.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.0 218.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.3.1-1PGDG.rhel10.x86_64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.3.0-1PGDG.rhel10.x86_64.rpm pgdg 5.3.0 215.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_partman_17 pg_partman_17-5.2.4-2PGDG.rhel10.x86_64.rpm pgdg 5.2.4 210.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_partman_17-5.2.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.5.0-1PIGSTY.el10.aarch64.rpm pigsty 5.5.0 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_partman_17-5.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.5.0 223.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel10.2.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.2 220.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.2-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.2 220.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.0 218.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.3.1-1PGDG.rhel10.aarch64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.3.0-1PGDG.rhel10.aarch64.rpm pgdg 5.3.0 215.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_partman_17 pg_partman_17-5.2.4-2PGDG.rhel10.aarch64.rpm pgdg 5.2.4 210.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_partman_17-5.2.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~bookworm_amd64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg12+1_amd64.deb pgdg 5.5.0 242.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg12+1_amd64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg12+1_amd64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~bookworm_arm64.deb pigsty 5.5.0 187.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg12+1_arm64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg12+1_arm64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg12+1_arm64.deb pgdg 5.4.2 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~trixie_amd64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg13+1_amd64.deb pgdg 5.5.0 242.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg13+1_amd64.deb pgdg 5.4.3 238.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg13+1_amd64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~trixie_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg13+1_arm64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg13+1_arm64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg13+1_arm64.deb pgdg 5.4.2 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~jammy_amd64.deb pigsty 5.5.0 187.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg22.04+1_amd64.deb pgdg 5.5.0 239.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg22.04+1_amd64.deb pgdg 5.4.3 235.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg22.04+1_amd64.deb pgdg 5.4.2 235.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~jammy_arm64.deb pigsty 5.5.0 187.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg22.04+1_arm64.deb pgdg 5.5.0 238.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg22.04+1_arm64.deb pgdg 5.4.3 235.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg22.04+1_arm64.deb pgdg 5.4.2 235.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~noble_amd64.deb pigsty 5.5.0 181.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg24.04+1_amd64.deb pgdg 5.5.0 234.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg24.04+1_amd64.deb pgdg 5.4.3 230.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg24.04+1_amd64.deb pgdg 5.4.2 230.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~noble_arm64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg24.04+1_arm64.deb pgdg 5.5.0 233.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg24.04+1_arm64.deb pgdg 5.4.3 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg24.04+1_arm64.deb pgdg 5.4.2 230.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~resolute_amd64.deb pigsty 5.5.0 182.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg26.04+1_amd64.deb pgdg 5.5.0 233.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg26.04+1_amd64.deb pgdg 5.4.3 230.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg26.04+1_amd64.deb pgdg 5.4.2 230.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-2PIGSTY~resolute_arm64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-2PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-partman postgresql-17-partman_5.5.0-1.pgdg26.04+1_arm64.deb pgdg 5.5.0 233.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.3-1.pgdg26.04+1_arm64.deb pgdg 5.4.3 229.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-partman postgresql-17-partman_5.4.2-1.pgdg26.04+1_arm64.deb pgdg 5.4.2 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-17-partman_5.4.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.5.0-1PIGSTY.el8.x86_64.rpm pigsty 5.5.0 290.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_partman_16-5.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.4.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.3.1-1PGDG.rhel8.x86_64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.3.0-1PGDG.rhel8.x86_64.rpm pgdg 5.3.0 270.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.2.4-1PGDG.rhel8.x86_64.rpm pgdg 5.2.4 261.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.2.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.2.3-1PGDG.rhel8.x86_64.rpm pgdg 5.2.3 260.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.2.2-1PGDG.rhel8.x86_64.rpm pgdg 5.2.2 260.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.2.1-1PGDG.rhel8.x86_64.rpm pgdg 5.2.1 259.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.2.0-1PGDG.rhel8.x86_64.rpm pgdg 5.2.0 259.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.1.0-1PGDG.rhel8.x86_64.rpm pgdg 5.1.0 254.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 249.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-5.0.0-1PGDG.rhel8.x86_64.rpm pgdg 5.0.0 248.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-5.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-4.7.4-1PGDG.rhel8.x86_64.rpm pgdg 4.7.4 246.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-4.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_partman_16 pg_partman_16-4.7.3-3.rhel8.x86_64.rpm pgdg 4.7.3 246.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_partman_16-4.7.3-3.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.5.0-1PIGSTY.el8.aarch64.rpm pigsty 5.5.0 290.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_partman_16-5.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.2 278.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.4.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.0 275.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.3.1-1PGDG.rhel8.aarch64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.3.0-1PGDG.rhel8.aarch64.rpm pgdg 5.3.0 270.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.2.4-1PGDG.rhel8.aarch64.rpm pgdg 5.2.4 261.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.2.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.2.3-1PGDG.rhel8.aarch64.rpm pgdg 5.2.3 260.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.2.2-1PGDG.rhel8.aarch64.rpm pgdg 5.2.2 260.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.2.1-1PGDG.rhel8.aarch64.rpm pgdg 5.2.1 259.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.2.0-1PGDG.rhel8.aarch64.rpm pgdg 5.2.0 259.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.1.0-1PGDG.rhel8.aarch64.rpm pgdg 5.1.0 254.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 249.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-5.0.0-1PGDG.rhel8.aarch64.rpm pgdg 5.0.0 248.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-5.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-4.7.4-1PGDG.rhel8.aarch64.rpm pgdg 4.7.4 246.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-4.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_partman_16 pg_partman_16-4.7.3-3.rhel8.aarch64.rpm pgdg 4.7.3 246.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_partman_16-4.7.3-3.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.5.0-2PGDG.rhel9.8.x86_64.rpm pgdg 5.5.0 218.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.5.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.5.0-1PIGSTY.el9.x86_64.rpm pigsty 5.5.0 230.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_partman_16-5.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel9.8.x86_64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.2 218.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.1 217.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.1 217.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.0 216.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.3.1-1PGDG.rhel9.x86_64.rpm pgdg 5.3.1 213.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.3.0-1PGDG.rhel9.x86_64.rpm pgdg 5.3.0 212.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.2.4-1PGDG.rhel9.x86_64.rpm pgdg 5.2.4 207.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.2.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.2.3-1PGDG.rhel9.x86_64.rpm pgdg 5.2.3 206.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.2.2-1PGDG.rhel9.x86_64.rpm pgdg 5.2.2 206.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.2.1-1PGDG.rhel9.x86_64.rpm pgdg 5.2.1 206.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.2.0-1PGDG.rhel9.x86_64.rpm pgdg 5.2.0 205.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.1.0-1PGDG.rhel9.x86_64.rpm pgdg 5.1.0 201.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 197.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-5.0.0-1PGDG.rhel9.x86_64.rpm pgdg 5.0.0 197.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-5.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-4.7.4-1PGDG.rhel9.x86_64.rpm pgdg 4.7.4 198.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-4.7.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_partman_16 pg_partman_16-4.7.3-3.rhel9.x86_64.rpm pgdg 4.7.3 194.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_partman_16-4.7.3-3.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.5.0-1PIGSTY.el9.aarch64.rpm pigsty 5.5.0 230.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_partman_16-5.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.5.0 220.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel9.8.aarch64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.2 218.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.1 217.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.1 217.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.3.1-1PGDG.rhel9.aarch64.rpm pgdg 5.3.1 213.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.3.0-1PGDG.rhel9.aarch64.rpm pgdg 5.3.0 212.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.2.4-1PGDG.rhel9.aarch64.rpm pgdg 5.2.4 207.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.2.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.2.3-1PGDG.rhel9.aarch64.rpm pgdg 5.2.3 207.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.2.2-1PGDG.rhel9.aarch64.rpm pgdg 5.2.2 206.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.2.1-1PGDG.rhel9.aarch64.rpm pgdg 5.2.1 205.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.2.0-1PGDG.rhel9.aarch64.rpm pgdg 5.2.0 205.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.1.0-1PGDG.rhel9.aarch64.rpm pgdg 5.1.0 201.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 197.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-5.0.0-1PGDG.rhel9.aarch64.rpm pgdg 5.0.0 197.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-5.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-4.7.4-1PGDG.rhel9.aarch64.rpm pgdg 4.7.4 198.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-4.7.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_partman_16 pg_partman_16-4.7.3-3.rhel9.aarch64.rpm pgdg 4.7.3 194.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_partman_16-4.7.3-3.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.5.0-1PIGSTY.el10.x86_64.rpm pigsty 5.5.0 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_partman_16-5.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel10.2.x86_64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.3 220.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.3 221.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.2 220.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.2 220.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.1 220.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.1 220.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.0 218.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.3.1-1PGDG.rhel10.x86_64.rpm pgdg 5.3.1 216.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.3.0-1PGDG.rhel10.x86_64.rpm pgdg 5.3.0 215.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_partman_16 pg_partman_16-5.2.4-2PGDG.rhel10.x86_64.rpm pgdg 5.2.4 210.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_partman_16-5.2.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.5.0-1PIGSTY.el10.aarch64.rpm pigsty 5.5.0 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_partman_16-5.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel10.2.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.2 220.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.2-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.2 220.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.3.1-1PGDG.rhel10.aarch64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.3.0-1PGDG.rhel10.aarch64.rpm pgdg 5.3.0 215.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_partman_16 pg_partman_16-5.2.4-2PGDG.rhel10.aarch64.rpm pgdg 5.2.4 210.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_partman_16-5.2.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~bookworm_amd64.deb pigsty 5.5.0 187.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg12+1_amd64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg12+1_amd64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg12+1_amd64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~bookworm_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg12+1_arm64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg12+1_arm64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg12+1_arm64.deb pgdg 5.4.2 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~trixie_amd64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg13+1_amd64.deb pgdg 5.5.0 242.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg13+1_amd64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg13+1_amd64.deb pgdg 5.4.2 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~trixie_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg13+1_arm64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg13+1_arm64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg13+1_arm64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~jammy_amd64.deb pigsty 5.5.0 187.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg22.04+1_amd64.deb pgdg 5.5.0 238.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg22.04+1_amd64.deb pgdg 5.4.3 235.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg22.04+1_amd64.deb pgdg 5.4.2 235.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~jammy_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg22.04+1_arm64.deb pgdg 5.5.0 238.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg22.04+1_arm64.deb pgdg 5.4.3 235.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg22.04+1_arm64.deb pgdg 5.4.2 234.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~noble_amd64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg24.04+1_amd64.deb pgdg 5.5.0 233.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg24.04+1_amd64.deb pgdg 5.4.3 230.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg24.04+1_amd64.deb pgdg 5.4.2 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~noble_arm64.deb pigsty 5.5.0 181.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg24.04+1_arm64.deb pgdg 5.5.0 233.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg24.04+1_arm64.deb pgdg 5.4.3 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg24.04+1_arm64.deb pgdg 5.4.2 230.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~resolute_amd64.deb pigsty 5.5.0 182.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg26.04+1_amd64.deb pgdg 5.5.0 233.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg26.04+1_amd64.deb pgdg 5.4.3 230.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg26.04+1_amd64.deb pgdg 5.4.2 230.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-2PIGSTY~resolute_arm64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-2PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-partman postgresql-16-partman_5.5.0-1.pgdg26.04+1_arm64.deb pgdg 5.5.0 233.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.3-1.pgdg26.04+1_arm64.deb pgdg 5.4.3 229.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-partman postgresql-16-partman_5.4.2-1.pgdg26.04+1_arm64.deb pgdg 5.4.2 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-16-partman_5.4.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.5.0-1PIGSTY.el8.x86_64.rpm pigsty 5.5.0 290.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_partman_15-5.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.4.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.3.1-1PGDG.rhel8.x86_64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.3.0-1PGDG.rhel8.x86_64.rpm pgdg 5.3.0 270.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.2.4-1PGDG.rhel8.x86_64.rpm pgdg 5.2.4 261.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.2.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.2.3-1PGDG.rhel8.x86_64.rpm pgdg 5.2.3 260.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.2.2-1PGDG.rhel8.x86_64.rpm pgdg 5.2.2 260.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.2.1-1PGDG.rhel8.x86_64.rpm pgdg 5.2.1 259.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.2.0-1PGDG.rhel8.x86_64.rpm pgdg 5.2.0 259.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.1.0-1PGDG.rhel8.x86_64.rpm pgdg 5.1.0 254.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 249.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-5.0.0-1PGDG.rhel8.x86_64.rpm pgdg 5.0.0 248.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-5.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-4.7.4-1PGDG.rhel8.x86_64.rpm pgdg 4.7.4 246.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-4.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-4.7.3-3.rhel8.x86_64.rpm pgdg 4.7.3 246.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-4.7.3-3.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-4.7.3-1.rhel8.x86_64.rpm pgdg 4.7.3 246.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-4.7.3-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-4.7.2-1.rhel8.x86_64.rpm pgdg 4.7.2 245.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-4.7.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-4.7.1-1.rhel8.x86_64.rpm pgdg 4.7.1 260.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-4.7.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_partman_15 pg_partman_15-4.7.0-2.rhel8.x86_64.rpm pgdg 4.7.0 260.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_partman_15-4.7.0-2.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.5.0-1PIGSTY.el8.aarch64.rpm pigsty 5.5.0 290.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_partman_15-5.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.2 278.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.4.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.0 275.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.3.1-1PGDG.rhel8.aarch64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.3.0-1PGDG.rhel8.aarch64.rpm pgdg 5.3.0 270.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.2.4-1PGDG.rhel8.aarch64.rpm pgdg 5.2.4 261.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.2.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.2.3-1PGDG.rhel8.aarch64.rpm pgdg 5.2.3 260.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.2.2-1PGDG.rhel8.aarch64.rpm pgdg 5.2.2 260.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.2.1-1PGDG.rhel8.aarch64.rpm pgdg 5.2.1 259.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.2.0-1PGDG.rhel8.aarch64.rpm pgdg 5.2.0 259.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.1.0-1PGDG.rhel8.aarch64.rpm pgdg 5.1.0 254.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 249.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-5.0.0-1PGDG.rhel8.aarch64.rpm pgdg 5.0.0 248.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-5.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-4.7.4-1PGDG.rhel8.aarch64.rpm pgdg 4.7.4 246.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-4.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-4.7.3-3.rhel8.aarch64.rpm pgdg 4.7.3 246.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-4.7.3-3.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-4.7.3-1.rhel8.aarch64.rpm pgdg 4.7.3 246.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-4.7.3-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-4.7.2-1.rhel8.aarch64.rpm pgdg 4.7.2 245.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-4.7.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_partman_15 pg_partman_15-4.7.1-1.rhel8.aarch64.rpm pgdg 4.7.1 260.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_partman_15-4.7.1-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.5.0-2PGDG.rhel9.8.x86_64.rpm pgdg 5.5.0 218.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.5.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.5.0-1PIGSTY.el9.x86_64.rpm pigsty 5.5.0 230.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_partman_15-5.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel9.8.x86_64.rpm pgdg 5.4.3 218.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.3 218.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.2 218.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.1 217.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.1 217.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.0 216.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.3.1-1PGDG.rhel9.x86_64.rpm pgdg 5.3.1 213.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.3.0-1PGDG.rhel9.x86_64.rpm pgdg 5.3.0 213.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.2.4-1PGDG.rhel9.x86_64.rpm pgdg 5.2.4 207.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.2.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.2.3-1PGDG.rhel9.x86_64.rpm pgdg 5.2.3 206.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.2.2-1PGDG.rhel9.x86_64.rpm pgdg 5.2.2 206.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.2.1-1PGDG.rhel9.x86_64.rpm pgdg 5.2.1 206.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.2.0-1PGDG.rhel9.x86_64.rpm pgdg 5.2.0 205.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.1.0-1PGDG.rhel9.x86_64.rpm pgdg 5.1.0 201.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 197.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-5.0.0-1PGDG.rhel9.x86_64.rpm pgdg 5.0.0 197.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-5.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-4.7.4-1PGDG.rhel9.x86_64.rpm pgdg 4.7.4 198.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-4.7.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-4.7.3-3.rhel9.x86_64.rpm pgdg 4.7.3 198.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-4.7.3-3.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-4.7.3-1.rhel9.x86_64.rpm pgdg 4.7.3 198.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-4.7.3-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-4.7.2-1.rhel9.x86_64.rpm pgdg 4.7.2 198.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-4.7.2-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-4.7.1-1.rhel9.x86_64.rpm pgdg 4.7.1 213.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-4.7.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_partman_15 pg_partman_15-4.7.0-2.rhel9.x86_64.rpm pgdg 4.7.0 213.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_partman_15-4.7.0-2.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.5.0-1PIGSTY.el9.aarch64.rpm pigsty 5.5.0 230.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_partman_15-5.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.5.0 220.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel9.8.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.2 218.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.1 217.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.1 217.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.0 216.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.0 216.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.3.1-1PGDG.rhel9.aarch64.rpm pgdg 5.3.1 213.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.3.0-1PGDG.rhel9.aarch64.rpm pgdg 5.3.0 212.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.2.4-1PGDG.rhel9.aarch64.rpm pgdg 5.2.4 207.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.2.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.2.3-1PGDG.rhel9.aarch64.rpm pgdg 5.2.3 206.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.2.2-1PGDG.rhel9.aarch64.rpm pgdg 5.2.2 206.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.2.1-1PGDG.rhel9.aarch64.rpm pgdg 5.2.1 205.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.2.0-1PGDG.rhel9.aarch64.rpm pgdg 5.2.0 205.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.1.0-1PGDG.rhel9.aarch64.rpm pgdg 5.1.0 201.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 197.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-5.0.0-1PGDG.rhel9.aarch64.rpm pgdg 5.0.0 197.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-5.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-4.7.4-1PGDG.rhel9.aarch64.rpm pgdg 4.7.4 198.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-4.7.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-4.7.3-3.rhel9.aarch64.rpm pgdg 4.7.3 198.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-4.7.3-3.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-4.7.3-1.rhel9.aarch64.rpm pgdg 4.7.3 198.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-4.7.3-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-4.7.2-1.rhel9.aarch64.rpm pgdg 4.7.2 197.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-4.7.2-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_partman_15 pg_partman_15-4.7.1-1.rhel9.aarch64.rpm pgdg 4.7.1 212.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_partman_15-4.7.1-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.5.0-1PIGSTY.el10.x86_64.rpm pigsty 5.5.0 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_partman_15-5.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel10.2.x86_64.rpm pgdg 5.4.3 220.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.3 221.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.2 220.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.2 220.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.1 220.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.0 218.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.0 218.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.3.1-1PGDG.rhel10.x86_64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.3.0-1PGDG.rhel10.x86_64.rpm pgdg 5.3.0 215.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_partman_15 pg_partman_15-5.2.4-2PGDG.rhel10.x86_64.rpm pgdg 5.2.4 210.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_partman_15-5.2.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.5.0-1PIGSTY.el10.aarch64.rpm pigsty 5.5.0 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_partman_15-5.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel10.2.aarch64.rpm pgdg 5.4.3 220.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.2 220.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.2-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.2 220.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.1 219.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.0 218.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.3.1-1PGDG.rhel10.aarch64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.3.0-1PGDG.rhel10.aarch64.rpm pgdg 5.3.0 215.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_partman_15 pg_partman_15-5.2.4-2PGDG.rhel10.aarch64.rpm pgdg 5.2.4 210.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_partman_15-5.2.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~bookworm_amd64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg12+1_amd64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg12+1_amd64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg12+1_amd64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~bookworm_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg12+1_arm64.deb pgdg 5.5.0 242.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg12+1_arm64.deb pgdg 5.4.3 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg12+1_arm64.deb pgdg 5.4.2 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~trixie_amd64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg13+1_amd64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg13+1_amd64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg13+1_amd64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~trixie_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg13+1_arm64.deb pgdg 5.5.0 242.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg13+1_arm64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg13+1_arm64.deb pgdg 5.4.2 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~jammy_amd64.deb pigsty 5.5.0 187.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg22.04+1_amd64.deb pgdg 5.5.0 238.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg22.04+1_amd64.deb pgdg 5.4.3 235.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg22.04+1_amd64.deb pgdg 5.4.2 235.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~jammy_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg22.04+1_arm64.deb pgdg 5.5.0 238.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg22.04+1_arm64.deb pgdg 5.4.3 235.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg22.04+1_arm64.deb pgdg 5.4.2 234.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~noble_amd64.deb pigsty 5.5.0 182.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg24.04+1_amd64.deb pgdg 5.5.0 233.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg24.04+1_amd64.deb pgdg 5.4.3 230.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg24.04+1_amd64.deb pgdg 5.4.2 230.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~noble_arm64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg24.04+1_arm64.deb pgdg 5.5.0 233.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg24.04+1_arm64.deb pgdg 5.4.3 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg24.04+1_arm64.deb pgdg 5.4.2 230.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~resolute_amd64.deb pigsty 5.5.0 182.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg26.04+1_amd64.deb pgdg 5.5.0 233.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg26.04+1_amd64.deb pgdg 5.4.3 230.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg26.04+1_amd64.deb pgdg 5.4.2 230.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-2PIGSTY~resolute_arm64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-2PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-partman postgresql-15-partman_5.5.0-1.pgdg26.04+1_arm64.deb pgdg 5.5.0 233.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.3-1.pgdg26.04+1_arm64.deb pgdg 5.4.3 229.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-partman postgresql-15-partman_5.4.2-1.pgdg26.04+1_arm64.deb pgdg 5.4.2 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-15-partman_5.4.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.5.0-1PIGSTY.el8.x86_64.rpm pigsty 5.5.0 290.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_partman_14-5.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.3 279.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.4.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.3.1-1PGDG.rhel8.x86_64.rpm pgdg 5.3.1 271.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.3.0-1PGDG.rhel8.x86_64.rpm pgdg 5.3.0 270.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.2.4-1PGDG.rhel8.x86_64.rpm pgdg 5.2.4 261.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.2.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.2.3-1PGDG.rhel8.x86_64.rpm pgdg 5.2.3 260.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.2.2-1PGDG.rhel8.x86_64.rpm pgdg 5.2.2 260.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.2.1-1PGDG.rhel8.x86_64.rpm pgdg 5.2.1 259.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.2.0-1PGDG.rhel8.x86_64.rpm pgdg 5.2.0 259.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.1.0-1PGDG.rhel8.x86_64.rpm pgdg 5.1.0 254.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 249.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-5.0.0-1PGDG.rhel8.x86_64.rpm pgdg 5.0.0 248.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-5.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.7.4-1PGDG.rhel8.x86_64.rpm pgdg 4.7.4 246.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.7.3-3.rhel8.x86_64.rpm pgdg 4.7.3 246.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.7.3-3.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.7.3-1.rhel8.x86_64.rpm pgdg 4.7.3 246.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.7.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.7.2-1.rhel8.x86_64.rpm pgdg 4.7.2 245.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.7.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.7.1-1.rhel8.x86_64.rpm pgdg 4.7.1 260.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.7.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.7.0-1.rhel8.x86_64.rpm pgdg 4.7.0 259.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.7.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.6.2-1.rhel8.x86_64.rpm pgdg 4.6.2 256.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.6.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.6.1-1.rhel8.x86_64.rpm pgdg 4.6.1 255.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.6.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.6.0-1.rhel8.x86_64.rpm pgdg 4.6.0 252.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.6.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_partman_14 pg_partman_14-4.5.1-2.rhel8.x86_64.rpm pgdg 4.5.1 246.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_partman_14-4.5.1-2.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.5.0-1PIGSTY.el8.aarch64.rpm pigsty 5.5.0 290.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_partman_14-5.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.5.0 284.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.3 279.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.2 279.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.4.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.1 278.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.4.0 275.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.3.1-1PGDG.rhel8.aarch64.rpm pgdg 5.3.1 271.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.3.0-1PGDG.rhel8.aarch64.rpm pgdg 5.3.0 270.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.2.4-1PGDG.rhel8.aarch64.rpm pgdg 5.2.4 261.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.2.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.2.3-1PGDG.rhel8.aarch64.rpm pgdg 5.2.3 260.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.2.2-1PGDG.rhel8.aarch64.rpm pgdg 5.2.2 260.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.2.1-1PGDG.rhel8.aarch64.rpm pgdg 5.2.1 259.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.2.0-1PGDG.rhel8.aarch64.rpm pgdg 5.2.0 259.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.1.0-1PGDG.rhel8.aarch64.rpm pgdg 5.1.0 254.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 249.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-5.0.0-1PGDG.rhel8.aarch64.rpm pgdg 5.0.0 248.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-5.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-4.7.4-1PGDG.rhel8.aarch64.rpm pgdg 4.7.4 246.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-4.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-4.7.3-3.rhel8.aarch64.rpm pgdg 4.7.3 246.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-4.7.3-3.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-4.7.3-1.rhel8.aarch64.rpm pgdg 4.7.3 246.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-4.7.3-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-4.7.2-1.rhel8.aarch64.rpm pgdg 4.7.2 245.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-4.7.2-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_partman_14 pg_partman_14-4.7.1-1.rhel8.aarch64.rpm pgdg 4.7.1 260.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_partman_14-4.7.1-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.5.0-2PGDG.rhel9.8.x86_64.rpm pgdg 5.5.0 218.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.5.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.5.0-1PIGSTY.el9.x86_64.rpm pigsty 5.5.0 230.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_partman_14-5.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel9.8.x86_64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.3 218.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.2 218.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.1 217.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.1 217.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.4.0 216.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.3.1-1PGDG.rhel9.x86_64.rpm pgdg 5.3.1 213.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.3.0-1PGDG.rhel9.x86_64.rpm pgdg 5.3.0 212.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.2.4-1PGDG.rhel9.x86_64.rpm pgdg 5.2.4 207.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.2.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.2.3-1PGDG.rhel9.x86_64.rpm pgdg 5.2.3 206.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.2.2-1PGDG.rhel9.x86_64.rpm pgdg 5.2.2 206.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.2.1-1PGDG.rhel9.x86_64.rpm pgdg 5.2.1 205.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.2.0-1PGDG.rhel9.x86_64.rpm pgdg 5.2.0 205.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.1.0-1PGDG.rhel9.x86_64.rpm pgdg 5.1.0 201.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 197.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-5.0.0-1PGDG.rhel9.x86_64.rpm pgdg 5.0.0 197.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-5.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.7.4-1PGDG.rhel9.x86_64.rpm pgdg 4.7.4 198.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.7.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.7.3-3.rhel9.x86_64.rpm pgdg 4.7.3 198.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.7.3-3.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.7.3-1.rhel9.x86_64.rpm pgdg 4.7.3 198.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.7.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.7.2-1.rhel9.x86_64.rpm pgdg 4.7.2 198.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.7.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.7.1-1.rhel9.x86_64.rpm pgdg 4.7.1 213.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.7.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.7.0-1.rhel9.x86_64.rpm pgdg 4.7.0 213.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.7.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.6.2-1.rhel9.x86_64.rpm pgdg 4.6.2 211.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.6.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_partman_14 pg_partman_14-4.6.1-1.rhel9.x86_64.rpm pgdg 4.6.1 210.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_partman_14-4.6.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.5.0-1PIGSTY.el9.aarch64.rpm pigsty 5.5.0 230.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_partman_14-5.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.5.0 220.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel9.8.aarch64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.3 218.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.3 218.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.2 218.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.1 217.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.1 217.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.4.0 216.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.3.1-1PGDG.rhel9.aarch64.rpm pgdg 5.3.1 213.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.3.0-1PGDG.rhel9.aarch64.rpm pgdg 5.3.0 212.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.2.4-1PGDG.rhel9.aarch64.rpm pgdg 5.2.4 207.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.2.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.2.3-1PGDG.rhel9.aarch64.rpm pgdg 5.2.3 206.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.2.2-1PGDG.rhel9.aarch64.rpm pgdg 5.2.2 206.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.2.1-1PGDG.rhel9.aarch64.rpm pgdg 5.2.1 205.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.2.0-1PGDG.rhel9.aarch64.rpm pgdg 5.2.0 205.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.1.0-1PGDG.rhel9.aarch64.rpm pgdg 5.1.0 201.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 197.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-5.0.0-1PGDG.rhel9.aarch64.rpm pgdg 5.0.0 197.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-5.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-4.7.4-1PGDG.rhel9.aarch64.rpm pgdg 4.7.4 198.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-4.7.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-4.7.3-3.rhel9.aarch64.rpm pgdg 4.7.3 198.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-4.7.3-3.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-4.7.3-1.rhel9.aarch64.rpm pgdg 4.7.3 198.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-4.7.3-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-4.7.2-1.rhel9.aarch64.rpm pgdg 4.7.2 197.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-4.7.2-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_partman_14 pg_partman_14-4.7.1-1.rhel9.aarch64.rpm pgdg 4.7.1 212.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_partman_14-4.7.1-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.5.0-1PIGSTY.el10.x86_64.rpm pigsty 5.5.0 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_partman_14-5.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.5.0 223.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel10.2.x86_64.rpm pgdg 5.4.3 220.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.3 220.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.3 221.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.2 220.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.2 220.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.1 220.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.1 220.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 5.4.0 218.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 5.4.0 218.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.3.1-1PGDG.rhel10.x86_64.rpm pgdg 5.3.1 216.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.3.0-1PGDG.rhel10.x86_64.rpm pgdg 5.3.0 215.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_partman_14 pg_partman_14-5.2.4-2PGDG.rhel10.x86_64.rpm pgdg 5.2.4 210.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_partman_14-5.2.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.5.0-1PIGSTY.el10.aarch64.rpm pigsty 5.5.0 232.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_partman_14-5.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.5.0 223.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel10.2.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.3-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.3 220.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.2 220.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.2-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.2 220.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.1 220.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 5.4.0 218.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 5.4.0 218.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.3.1-1PGDG.rhel10.aarch64.rpm pgdg 5.3.1 216.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.3.0-1PGDG.rhel10.aarch64.rpm pgdg 5.3.0 215.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.3.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_partman_14 pg_partman_14-5.2.4-2PGDG.rhel10.aarch64.rpm pgdg 5.2.4 210.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_partman_14-5.2.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~bookworm_amd64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg12+1_amd64.deb pgdg 5.5.0 242.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg12+1_amd64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg12+1_amd64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~bookworm_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg12+1_arm64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg12+1_arm64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg12+1_arm64.deb pgdg 5.4.2 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~trixie_amd64.deb pigsty 5.5.0 187.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg13+1_amd64.deb pgdg 5.5.0 242.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg13+1_amd64.deb pgdg 5.4.3 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg13+1_amd64.deb pgdg 5.4.2 237.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~trixie_arm64.deb pigsty 5.5.0 187.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg13+1_arm64.deb pgdg 5.5.0 242.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg13+1_arm64.deb pgdg 5.4.3 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg13+1_arm64.deb pgdg 5.4.2 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~jammy_amd64.deb pigsty 5.5.0 186.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg22.04+1_amd64.deb pgdg 5.5.0 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg22.04+1_amd64.deb pgdg 5.4.3 234.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg22.04+1_amd64.deb pgdg 5.4.2 233.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~jammy_arm64.deb pigsty 5.5.0 185.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg22.04+1_arm64.deb pgdg 5.5.0 237.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg22.04+1_arm64.deb pgdg 5.4.3 233.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg22.04+1_arm64.deb pgdg 5.4.2 233.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~noble_amd64.deb pigsty 5.5.0 182.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg24.04+1_amd64.deb pgdg 5.5.0 233.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg24.04+1_amd64.deb pgdg 5.4.3 230.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg24.04+1_amd64.deb pgdg 5.4.2 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~noble_arm64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg24.04+1_arm64.deb pgdg 5.5.0 233.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg24.04+1_arm64.deb pgdg 5.4.3 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg24.04+1_arm64.deb pgdg 5.4.2 230.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~resolute_amd64.deb pigsty 5.5.0 182.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg26.04+1_amd64.deb pgdg 5.5.0 233.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg26.04+1_amd64.deb pgdg 5.4.3 230.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg26.04+1_amd64.deb pgdg 5.4.2 230.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-2PIGSTY~resolute_arm64.deb pigsty 5.5.0 182.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-2PIGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-partman postgresql-14-partman_5.5.0-1.pgdg26.04+1_arm64.deb pgdg 5.5.0 233.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.5.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.3-1.pgdg26.04+1_arm64.deb pgdg 5.4.3 229.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-partman postgresql-14-partman_5.4.2-1.pgdg26.04+1_arm64.deb pgdg 5.4.2 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-partman/postgresql-14-partman_5.4.2-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_partman` using `pig build`:

```bash
pig build pkg pg_partman         # build RPM / DEB packages
```


## Install

You can install `pg_partman` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_partman;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_partman -v 18  # PG 18
pig ext install -y pg_partman -v 17  # PG 17
pig ext install -y pg_partman -v 16  # PG 16
pig ext install -y pg_partman -v 15  # PG 15
pig ext install -y pg_partman -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_partman_18       # PG 18
dnf install -y pg_partman_17       # PG 17
dnf install -y pg_partman_16       # PG 16
dnf install -y pg_partman_15       # PG 15
dnf install -y pg_partman_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-partman   # PG 18
apt install -y postgresql-17-partman   # PG 17
apt install -y postgresql-16-partman   # PG 16
apt install -y postgresql-15-partman   # PG 15
apt install -y postgresql-14-partman   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_partman CASCADE;  -- requires: plpgsql
```

## Usage

Sources:

- [pg_partman 5.5.0 README](https://github.com/pgpartman/pg_partman/blob/v5.5.0/README.md)
- [pg_partman 5.5.0 changelog](https://github.com/pgpartman/pg_partman/blob/v5.5.0/CHANGELOG.md)
- [pg_partman usage guide](https://github.com/pgpartman/pg_partman/blob/v5.5.0/doc/pg_partman_howto.md)
- [pg_partman reference](https://github.com/pgpartman/pg_partman/blob/v5.5.0/doc/pg_partman.md)
- [pg_partman 5.5.0 control file](https://github.com/pgpartman/pg_partman/blob/v5.5.0/pg_partman.control)

`pg_partman` automates PostgreSQL declarative partition sets by time or integer ID. It creates future partitions, applies retention, moves existing data, and can run maintenance through either SQL scheduling or an optional background worker. PostgreSQL tables remain ordinary native partitioned tables.

### Core Workflow

```sql
CREATE SCHEMA partman;
CREATE EXTENSION pg_partman SCHEMA partman;

CREATE TABLE public.measurements (
    id bigint GENERATED ALWAYS AS IDENTITY,
    created_at timestamptz NOT NULL,
    value numeric
) PARTITION BY RANGE (created_at);

SELECT partman.create_partition(
    p_parent_table := 'public.measurements',
    p_control := 'created_at',
    p_interval := '1 day'
);

CALL partman.run_maintenance_proc();
SELECT * FROM partman.show_partitions('public.measurements');
```

`create_partition()` is the current name for creating a managed set. The older `create_parent()` remains available for backward compatibility in the 5.x line. Template tables carry properties that PostgreSQL does not automatically propagate; changes made to a template after children exist apply only to future children unless old partitions are adjusted separately.

### Retention and Data Movement

```sql
UPDATE partman.part_config
SET retention = '30 days',
    retention_keep_table = false
WHERE parent_table = 'public.measurements';

CALL partman.partition_data_proc('public.measurements');
CALL partman.undo_partition_proc('public.measurements');
```

Retention is destructive when child tables are configured to be dropped. If another table references the partition set with a foreign key, set `detach_before_drop` only after ensuring referencing rows no longer block detach or drop. When using `retention_schema`, version 5.5 requires that schema and each moved child table to have the same owner.

### Background Worker

Add the worker library before server start:

```conf
shared_preload_libraries = 'pg_partman_bgw'
pg_partman_bgw.interval = 3600
pg_partman_bgw.dbname = 'mydb'
pg_partman_bgw.role = 'partman_maintainer'
```

Changing `shared_preload_libraries` requires a restart; the other worker settings can be reloaded. The worker role needs full access to the pg_partman schema and every managed partition set. Use a dedicated non-superuser role and grant it membership in the roles that own those tables:

```sql
CREATE ROLE partman_maintainer WITH LOGIN;
GRANT table_owner TO partman_maintainer;
```

The 5.5 default for `pg_partman_bgw.role` is `partman_maintainer`. An upgrade can therefore stop a previously implicit worker configuration from succeeding until that role exists and has the required privileges.

### Version 5.5 Upgrade

```sql
ALTER EXTENSION pg_partman UPDATE TO '5.5.0';
```

Version 5.5 fixes several SQL-injection and privilege-escalation paths, adds `maintenance_role` columns for RLS policies on configuration rows, and lets maintenance continue with other partition sets after one set fails. A failed set gets a warning and a null last-run marker, so monitoring must alert on both PostgreSQL logs and configuration status.

The release also adds `detach_before_drop`, inherits per-column statistics targets, and changes the retention-schema ownership rule. Review PUBLIC grants after extension updates because some update scripts recreate extension functions or procedures.

### Operational Boundaries

- PostgreSQL 14 or newer is required; version 5 uses only native declarative partitioning.
- `pg_jobmon` is optional. Installing it adds job monitoring but also another privilege boundary.
- pg_partman can be installed and run without superuser privileges when the owner, schema, table, procedure, function, temporary-table, and optional RLS grants are configured as documented.
- Only one scheduler should own routine maintenance. Do not run the background worker and an external scheduler concurrently without deliberate coordination.
- A large maintenance run can hold many locks and move substantial data. Test retention and migration on representative data, monitor the default partition, and keep backups independent of partition retention.
