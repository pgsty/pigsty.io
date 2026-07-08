---
title: "pg_background"
linkTitle: "pg_background"
description: "Run SQL queries in the background"
weight: 1110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/vibhorkum/pg_background">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">vibhorkum/pg_background</div>
    <div class="ext-card__desc">https://github.com/vibhorkum/pg_background</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_background-2.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_background-2.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_background-2.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_background`**](/ext/e/pg_background) | `2.0.2` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1110  | [**`pg_background`**](/ext/e/pg_background) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`pg_later`](/ext/e/pg_later) [`pgq`](/ext/e/pgq) [`timescaledb`](/ext/e/timescaledb) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`periods`](/ext/e/periods) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_background` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_background_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-background` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.0.2 8 | AVAIL PGDG 2.0.2 9 | AVAIL PGDG 2.0.2 9 | AVAIL PGDG 2.0.2 10 | AVAIL PGDG 2.0.2 9 |
| el8.aarch64 | AVAIL PGDG 2.0.2 9 | AVAIL PGDG 2.0.2 10 | AVAIL PGDG 2.0.2 10 | AVAIL PGDG 2.0.2 11 | AVAIL PGDG 2.0.2 10 |
| el9.x86_64 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 20 | AVAIL PGDG 2.0.2 20 | AVAIL PGDG 2.0.2 21 | AVAIL PGDG 2.0.2 20 |
| el9.aarch64 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 20 | AVAIL PGDG 2.0.2 20 | AVAIL PGDG 2.0.2 21 | AVAIL PGDG 2.0.2 20 |
| el10.x86_64 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 19 |
| el10.aarch64 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 19 | AVAIL PGDG 2.0.2 16 |
| d12.x86_64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| d12.aarch64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| d13.x86_64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| d13.aarch64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| u22.x86_64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| u22.aarch64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| u24.x86_64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| u24.aarch64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| u26.x86_64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
| u26.aarch64 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 | AVAIL PGDG 2.0.2 4 |
@ el8.x86_64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 65.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_18-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0 63.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.3 58.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.9.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 22.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 63.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 62.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_18-2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0 61.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-2.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.9.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 54.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 62.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_18-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-2.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0 61.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-2.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.3 57.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.3 57.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 54.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 54.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 54.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.1 54.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8 46.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 41.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 22.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 62.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_18-2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0 60.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-2.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0 60.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-2.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0 60.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-2.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.3 56.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 53.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 53.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.1 53.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8 45.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 40.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 63.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 63.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 64.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 62.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_18-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0 61.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0 61.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-2.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0 62.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-2.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.3 57.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.3 57.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.3 57.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 54.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 54.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.1 54.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8 47.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel10.x86_64.rpm pgdg 1.5 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.5-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 61.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_18-2.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-2.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-2.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-2.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-2.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel10.aarch64.rpm pgdg 1.5 22.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg12+1_amd64.deb pgdg 2.0.2 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg12+1_amd64.deb pgdg 2.0 67.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0 100.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 58.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg12+1_arm64.deb pgdg 2.0.2 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg12+1_arm64.deb pgdg 2.0 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0 99.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg13+1_amd64.deb pgdg 2.0.2 68.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg13+1_amd64.deb pgdg 2.0 68.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~trixie_amd64.deb pigsty 2.0 101.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg13+1_arm64.deb pgdg 2.0.2 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg13+1_arm64.deb pgdg 2.0 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~trixie_arm64.deb pigsty 2.0 99.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb pgdg 2.0.2 69.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg22.04+1_amd64.deb pgdg 2.0 69.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~jammy_amd64.deb pigsty 2.0 107.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb pgdg 2.0.2 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg22.04+1_arm64.deb pgdg 2.0 67.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~jammy_arm64.deb pigsty 2.0 105.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 58.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb pgdg 2.0.2 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg24.04+1_amd64.deb pgdg 2.0 68.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~noble_amd64.deb pigsty 2.0 104.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb pgdg 2.0.2 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg24.04+1_arm64.deb pgdg 2.0 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~noble_arm64.deb pigsty 2.0 103.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb pgdg 2.0.2 67.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg26.04+1_amd64.deb pgdg 2.0 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~resolute_amd64.deb pigsty 2.0 103.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb pgdg 2.0.2 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-2.pgdg26.04+1_arm64.deb pgdg 2.0 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_2.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_2.0-1PIGSTY~resolute_arm64.deb pigsty 2.0 102.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-18-pg-background_2.0-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 56.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 65.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_17-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.3 58.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.9.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel8.x86_64.rpm pgdg 1.2 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_17-2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0 61.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-2.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.3 57.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.9.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 54.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel8.aarch64.rpm pgdg 1.2 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 62.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_17-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-2.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0 61.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-2.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.3 57.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 54.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 54.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.1 54.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8 46.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 41.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel9.x86_64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 62.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_17-2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0 60.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-2.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0 60.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-2.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0 60.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-2.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.3 56.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 53.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 53.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.1 53.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8 45.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 40.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel9.aarch64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 64.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_17-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0 61.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0 61.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-2.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0 62.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-2.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.3 57.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 54.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 54.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.1 54.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8 47.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 61.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_17-2.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0 61.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-2.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0 61.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-2.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-2.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0 61.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-2.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.1 53.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg12+1_amd64.deb pgdg 2.0.2 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg12+1_amd64.deb pgdg 2.0 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0 100.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg12+1_arm64.deb pgdg 2.0.2 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg12+1_arm64.deb pgdg 2.0 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0 99.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg13+1_amd64.deb pgdg 2.0.2 67.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg13+1_amd64.deb pgdg 2.0 68.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~trixie_amd64.deb pigsty 2.0 101.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg13+1_arm64.deb pgdg 2.0.2 66.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg13+1_arm64.deb pgdg 2.0 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~trixie_arm64.deb pigsty 2.0 99.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 57.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb pgdg 2.0.2 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg22.04+1_amd64.deb pgdg 2.0 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~jammy_amd64.deb pigsty 2.0 115.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb pgdg 2.0.2 74.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg22.04+1_arm64.deb pgdg 2.0 74.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~jammy_arm64.deb pigsty 2.0 113.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 63.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb pgdg 2.0.2 68.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg24.04+1_amd64.deb pgdg 2.0 68.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~noble_amd64.deb pigsty 2.0 104.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb pgdg 2.0.2 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg24.04+1_arm64.deb pgdg 2.0 66.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~noble_arm64.deb pigsty 2.0 103.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb pgdg 2.0.2 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg26.04+1_amd64.deb pgdg 2.0 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~resolute_amd64.deb pigsty 2.0 103.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 58.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb pgdg 2.0.2 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-2.pgdg26.04+1_arm64.deb pgdg 2.0 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_2.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_2.0-1PIGSTY~resolute_arm64.deb pigsty 2.0 102.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-17-pg-background_2.0-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 56.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 65.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_16-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0 63.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.3 58.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.9.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_16-2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0 61.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-2.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.3 57.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.9.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 54.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 61.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_16-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-2.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0 61.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-2.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.3 57.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 54.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 54.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.1 54.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8 46.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 62.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_16-2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0 60.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-2.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0 60.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-2.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0 60.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-2.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.3 56.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 53.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 53.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.1 53.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8 45.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 40.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 64.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_16-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0 61.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0 61.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-2.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0 62.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-2.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.3 57.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 54.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 54.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.1 54.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8 47.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 42.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 63.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 61.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_16-2.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-2.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-2.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-2.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-2.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.1 53.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 40.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg12+1_amd64.deb pgdg 2.0.2 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg12+1_amd64.deb pgdg 2.0 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0 100.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg12+1_arm64.deb pgdg 2.0.2 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg12+1_arm64.deb pgdg 2.0 66.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0 99.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg13+1_amd64.deb pgdg 2.0.2 68.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg13+1_amd64.deb pgdg 2.0 68.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~trixie_amd64.deb pigsty 2.0 101.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg13+1_arm64.deb pgdg 2.0.2 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg13+1_arm64.deb pgdg 2.0 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~trixie_arm64.deb pigsty 2.0 99.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb pgdg 2.0.2 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg22.04+1_amd64.deb pgdg 2.0 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~jammy_amd64.deb pigsty 2.0 115.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb pgdg 2.0.2 74.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg22.04+1_arm64.deb pgdg 2.0 74.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~jammy_arm64.deb pigsty 2.0 113.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 63.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb pgdg 2.0.2 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg24.04+1_amd64.deb pgdg 2.0 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~noble_amd64.deb pigsty 2.0 104.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb pgdg 2.0.2 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg24.04+1_arm64.deb pgdg 2.0 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~noble_arm64.deb pigsty 2.0 103.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb pgdg 2.0.2 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg26.04+1_amd64.deb pgdg 2.0 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~resolute_amd64.deb pigsty 2.0 103.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 58.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb pgdg 2.0.2 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-2.pgdg26.04+1_arm64.deb pgdg 2.0 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_2.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_2.0-1PIGSTY~resolute_arm64.deb pigsty 2.0 102.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-16-pg-background_2.0-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 56.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 65.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_15-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0 63.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.3 58.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.9.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.0-1.rhel8.x86_64.rpm pgdg 1.0 39.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_15-2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0 61.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-2.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.3 57.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.9.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 54.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.0-1.rhel8.aarch64.rpm pgdg 1.0 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 63.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 63.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 63.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 62.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_15-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0 61.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0 61.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-2.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0 61.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-2.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.3 57.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 54.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 54.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.1 54.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8 46.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.0-1.rhel9.x86_64.rpm pgdg 1.0 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 62.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 62.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 62.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 61.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_15-2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0 60.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-2.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0 60.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-2.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0 61.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-2.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.3 56.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.3 56.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 53.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 53.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.1 53.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 40.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.0-1.rhel9.aarch64.rpm pgdg 1.0 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 63.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 63.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 64.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 62.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_15-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0 62.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0 62.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-2.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0 62.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-2.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.3 57.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 54.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 54.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.1 54.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8 47.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 42.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 61.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_15-2.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-2.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-2.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-2.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0 61.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-2.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.1 53.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg12+1_amd64.deb pgdg 2.0.2 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg12+1_amd64.deb pgdg 2.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0 101.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg12+1_arm64.deb pgdg 2.0.2 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg12+1_arm64.deb pgdg 2.0 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0 99.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg13+1_amd64.deb pgdg 2.0.2 67.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg13+1_amd64.deb pgdg 2.0 68.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~trixie_amd64.deb pigsty 2.0 101.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg13+1_arm64.deb pgdg 2.0.2 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg13+1_arm64.deb pgdg 2.0 66.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~trixie_arm64.deb pigsty 2.0 99.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb pgdg 2.0.2 76.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg22.04+1_amd64.deb pgdg 2.0 76.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~jammy_amd64.deb pigsty 2.0 115.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb pgdg 2.0.2 75.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg22.04+1_arm64.deb pgdg 2.0 75.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~jammy_arm64.deb pigsty 2.0 113.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 63.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb pgdg 2.0.2 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg24.04+1_amd64.deb pgdg 2.0 68.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~noble_amd64.deb pigsty 2.0 104.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb pgdg 2.0.2 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg24.04+1_arm64.deb pgdg 2.0 66.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~noble_arm64.deb pigsty 2.0 103.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb pgdg 2.0.2 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg26.04+1_amd64.deb pgdg 2.0 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~resolute_amd64.deb pigsty 2.0 103.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 58.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb pgdg 2.0.2 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-2.pgdg26.04+1_arm64.deb pgdg 2.0 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_2.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_2.0-1PIGSTY~resolute_arm64.deb pigsty 2.0 102.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-15-pg-background_2.0-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 56.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 65.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_14-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0 63.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-2.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.3 58.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.9.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.0-1.rhel8.x86_64.rpm pgdg 1.0 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 63.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_14-2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0 61.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-2.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.3 57.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.9.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 54.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.0-1.rhel8.aarch64.rpm pgdg 1.0 38.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 63.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 63.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 63.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 62.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_14-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0 61.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-2.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0 61.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-2.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0 61.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-2.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.3 57.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.3 57.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.3 57.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 54.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 54.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 62.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 62.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_14-2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0 60.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-2.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0 60.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-2.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0 61.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-2.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.3 56.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.3 56.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.3 56.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 53.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 53.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.1 53.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8 45.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.0-1.rhel9.aarch64.rpm pgdg 1.0 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 63.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 63.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 64.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 62.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_14-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0 62.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-2.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0 62.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-2.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0 62.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-2.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.3 57.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.3 57.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 54.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 54.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.1 54.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8 47.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 42.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 63.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 61.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_14-2.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-2.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-2.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0 61.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-2.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.9.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.3 56.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.9.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 53.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.9.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg12+1_amd64.deb pgdg 2.0.2 92.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg12+1_amd64.deb pgdg 2.0 92.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0 100.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 83.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg12+1_arm64.deb pgdg 2.0.2 91.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg12+1_arm64.deb pgdg 2.0 90.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0 99.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 81.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg13+1_amd64.deb pgdg 2.0.2 92.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg13+1_amd64.deb pgdg 2.0 92.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~trixie_amd64.deb pigsty 2.0 101.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 83.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg13+1_arm64.deb pgdg 2.0.2 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg13+1_arm64.deb pgdg 2.0 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~trixie_arm64.deb pigsty 2.0 99.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 82.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb pgdg 2.0.2 101.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg22.04+1_amd64.deb pgdg 2.0 101.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~jammy_amd64.deb pigsty 2.0 115.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb pgdg 2.0.2 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg22.04+1_arm64.deb pgdg 2.0 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~jammy_arm64.deb pigsty 2.0 113.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 87.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb pgdg 2.0.2 93.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg24.04+1_amd64.deb pgdg 2.0 93.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~noble_amd64.deb pigsty 2.0 104.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 83.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb pgdg 2.0.2 91.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg24.04+1_arm64.deb pgdg 2.0 91.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~noble_arm64.deb pigsty 2.0 103.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 82.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb pgdg 2.0.2 92.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg26.04+1_amd64.deb pgdg 2.0 92.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~resolute_amd64.deb pigsty 2.0 103.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 83.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb pgdg 2.0.2 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-2.pgdg26.04+1_arm64.deb pgdg 2.0 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_2.0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_2.0-1PIGSTY~resolute_arm64.deb pigsty 2.0 102.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-background/postgresql-14-pg-background_2.0-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 81.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_background` using `pig build`:

```bash
pig build pkg pg_background         # build RPM / DEB packages
```


## Install

You can install `pg_background` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_background;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_background -v 18  # PG 18
pig ext install -y pg_background -v 17  # PG 17
pig ext install -y pg_background -v 16  # PG 16
pig ext install -y pg_background -v 15  # PG 15
pig ext install -y pg_background -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_background_18       # PG 18
dnf install -y pg_background_17       # PG 17
dnf install -y pg_background_16       # PG 16
dnf install -y pg_background_15       # PG 15
dnf install -y pg_background_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-background   # PG 18
apt install -y postgresql-17-pg-background   # PG 17
apt install -y postgresql-16-pg-background   # PG 16
apt install -y postgresql-15-pg-background   # PG 15
apt install -y postgresql-14-pg-background   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_background;
```




## Usage

Sources: [official README](https://github.com/vibhorkum/pg_background/blob/master/README.md), [v2.0 release notes](https://github.com/vibhorkum/pg_background/releases/tag/v2.0), [migration guide](https://github.com/vibhorkum/pg_background/blob/v2.0/docs/MIGRATION.md).

`pg_background` executes SQL inside PostgreSQL background worker processes. Workers run independent transactions inside the server, which is useful for asynchronous maintenance, autonomous side effects, bounded long-running tasks, and progress-tracked jobs.

Version 2.0 makes the unsuffixed API canonical. The old `_v2` names remain deprecated aliases through the 2.x line, but new code should use names such as `pg_background_launch`, `pg_background_result`, and `pg_background_run`.

### One-Shot Execution

Use `pg_background_run` when the SQL has side effects and you only need execution metadata:

```sql
CREATE EXTENSION pg_background;

SELECT completed, has_error, sqlstate, error_message,
       row_count, command_tag, elapsed_ms, timed_out
FROM pg_background_run(
  'INSERT INTO audit_log(ts, who) VALUES (clock_timestamp(), current_user)',
  queue_size := 0,
  timeout_ms := 30000,
  label := 'audit-login'
);
```

### Launch And Fetch Results

Use the launch/result pattern when the background SQL returns rows:

```sql
SELECT * FROM pg_background_launch(
  'SELECT count(*) FROM large_table',
  queue_size := 65536,
  label := 'count-large-table'
) AS h;

SELECT * FROM pg_background_result(h.pid, h.cookie) AS (count bigint);
```

Results can be consumed once. Keep both `pid` and `cookie`; the cookie protects later calls from PID reuse.

### Fire And Forget

For side effects where no result rows need to be consumed:

```sql
SELECT * FROM pg_background_submit(
  $$VACUUM (ANALYZE) public.events$$,
  queue_size := 65536,
  label := 'vacuum-events'
);
```

### Core API

- `pg_background_launch(sql, queue_size, label)` launches a worker and returns `pg_background_handle(pid, cookie)`.
- `pg_background_submit(sql, queue_size, label)` launches fire-and-forget work and returns a handle.
- `pg_background_result(pid, cookie)` consumes result rows once.
- `pg_background_result_info(pid, cookie)` returns completion and row-count metadata without consuming rows.
- `pg_background_error_info(pid, cookie)` returns structured SQL error details.
- `pg_background_wait(pid, cookie, timeout_ms DEFAULT 0)` waits for completion; `timeout_ms <= 0` blocks indefinitely.
- `pg_background_cancel(pid, cookie, grace_ms DEFAULT 0)` requests cooperative cancellation.
- `pg_background_detach(pid, cookie)` stops tracking a worker while letting it continue.
- `pg_background_outcome(pid, cookie)` returns a combined status snapshot without raising on missing state.
- `pg_background_list` and `pg_background_activity` are monitoring views; `pg_background_stats()` returns session counters.

Convenience helpers include `pg_background_run_query`, `pg_background_drain`, `pg_background_wait_any`, `pg_background_cancel_by_label`, and `pg_background_purge`.

### Progress Reporting

Report progress from inside the worker SQL, then poll it from the launcher:

```sql
SELECT * FROM pg_background_launch($$
  SELECT pg_background_report_progress(0, 'starting');
  SELECT pg_sleep(1);
  SELECT pg_background_report_progress(100, 'done');
$$) AS h;

SELECT * FROM pg_background_get_progress(h.pid, h.cookie);
```

`pg_background_report_progress` is the 2.0 name; the earlier `pg_background_progress` name was hard-renamed.

### GUCs And Loading

`pg_background` does not require `shared_preload_libraries`. Preloading is optional and mainly useful when you want its GUCs available before the extension is first loaded in a session.

```sql
SET pg_background.max_workers = 10;
SET pg_background.default_queue_size = '256KB';
SET pg_background.worker_timeout = '5min';
```

- `pg_background.max_workers` defaults to `16`.
- `pg_background.default_queue_size` defaults to `65536` bytes.
- `pg_background.worker_timeout` defaults to `0`, meaning no execution timeout.

### Caveats

- Pigsty packages `pg_background` 2.0 for PostgreSQL 14-18; upstream 2.0 also validates PostgreSQL 19 beta.
- Upgrades from pre-1.8 installs must first reach the 1.8/1.10 release line before updating to 2.0.
- The original v1 PID-only API was removed. Unsuffixed names now have cookie-protected semantics and return/use `(pid, cookie)`.
- `pg_background_cancel_v2_grace` and `pg_background_wait_v2_timeout` are folded into `pg_background_cancel(..., grace_ms)` and `pg_background_wait(..., timeout_ms)`.
- `pg_background_status_v2` was removed; use `pg_background_outcome(pid, cookie)`.
