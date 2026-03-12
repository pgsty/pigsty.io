---
title: "dbt2"
linkTitle: "dbt2"
description: "OSDL-DBT-2 test kit"
weight: 3220
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/osdldbt/dbt2">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">osdldbt/dbt2</div>
    <div class="ext-card__desc">https://github.com/osdldbt/dbt2</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`dbt2`**](/ext/e/dbt2) | `0.61.7` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license artistic" href="/ext/license#artistic">Artistic</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3220  | [**`dbt2`**](/ext/e/dbt2) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgtap`](/ext/e/pgtap) [`faker`](/ext/e/faker) [`plpgsql`](/ext/e/plpgsql) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_tle`](/ext/e/pg_tle) [`plv8`](/ext/e/plv8) [`pllua`](/ext/e/pllua) [`hstore_pllua`](/ext/e/hstore_pllua) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.61.7` | {{< pgvers "18,17,16,15,14" >}} | `dbt2` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.61.7` | {{< pgvers "18,17,16,15,14" >}} | `dbt2-pg$v-extensions` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.53.7 1 | AVAIL PGDG 0.53.7 5 | AVAIL PGDG 0.53.7 6 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.53.7 1 | AVAIL PGDG 0.53.7 4 | AVAIL PGDG 0.53.7 4 |
| el9.x86_64 | AVAIL PGDG 0.61.7 1 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 4 | AVAIL PGDG 0.61.7 8 | AVAIL PGDG 0.61.7 7 |
| el9.aarch64 | AVAIL PGDG 0.61.7 1 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 4 | AVAIL PGDG 0.61.7 8 | AVAIL PGDG 0.61.7 8 |
| el10.x86_64 | AVAIL PGDG 0.61.7 1 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 2 |
| el10.aarch64 | AVAIL PGDG 0.61.7 1 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 2 | AVAIL PGDG 0.61.7 2 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el9.x86_64 18 dbt2-pg18-extensions dbt2-pg18-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm pgdg 0.61.7 29.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/dbt2-pg18-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 dbt2-pg18-extensions dbt2-pg18-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm pgdg 0.61.7 29.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/dbt2-pg18-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 dbt2-pg18-extensions dbt2-pg18-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm pgdg 0.61.7 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/dbt2-pg18-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 dbt2-pg18-extensions dbt2-pg18-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm pgdg 0.61.7 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/dbt2-pg18-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm
@ el9.x86_64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm pgdg 0.61.7 29.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/dbt2-pg17-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm pgdg 0.61.6 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/dbt2-pg17-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm pgdg 0.61.7 29.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/dbt2-pg17-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm pgdg 0.61.6 29.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/dbt2-pg17-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm pgdg 0.61.7 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/dbt2-pg17-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm pgdg 0.61.6 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/dbt2-pg17-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm pgdg 0.61.7 30.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/dbt2-pg17-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 dbt2-pg17-extensions dbt2-pg17-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm pgdg 0.61.6 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/dbt2-pg17-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm
@ el8.x86_64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.53.7-1PGDG.rhel8.x86_64.rpm pgdg 0.53.7 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/dbt2-pg16-extensions-0.53.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.53.7-1PGDG.rhel8.aarch64.rpm pgdg 0.53.7 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/dbt2-pg16-extensions-0.53.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm pgdg 0.61.7 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/dbt2-pg16-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm pgdg 0.61.6 30.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/dbt2-pg16-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.53.7-1PGDG.rhel9.x86_64.rpm pgdg 0.53.7 30.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/dbt2-pg16-extensions-0.53.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.53.6-1PGDG.rhel9.x86_64.rpm pgdg 0.53.6 30.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/dbt2-pg16-extensions-0.53.6-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm pgdg 0.61.7 29.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/dbt2-pg16-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm pgdg 0.61.6 29.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/dbt2-pg16-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.53.7-1PGDG.rhel9.aarch64.rpm pgdg 0.53.7 30.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/dbt2-pg16-extensions-0.53.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.53.6-1PGDG.rhel9.aarch64.rpm pgdg 0.53.6 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/dbt2-pg16-extensions-0.53.6-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm pgdg 0.61.7 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/dbt2-pg16-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm pgdg 0.61.6 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/dbt2-pg16-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm pgdg 0.61.7 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/dbt2-pg16-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 dbt2-pg16-extensions dbt2-pg16-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm pgdg 0.61.6 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/dbt2-pg16-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm
@ el8.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.7-1PGDG.rhel8.x86_64.rpm pgdg 0.53.7 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/dbt2-pg15-extensions-0.53.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.4-1PGDG.rhel8.x86_64.rpm pgdg 0.53.4 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/dbt2-pg15-extensions-0.53.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.50.1-1.rhel8.x86_64.rpm pgdg 0.50.1 29.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/dbt2-pg15-extensions-0.50.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.49.1-1.rhel8.x86_64.rpm pgdg 0.49.1 29.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/dbt2-pg15-extensions-0.49.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.48.7-1.rhel8.x86_64.rpm pgdg 0.48.7 29.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/dbt2-pg15-extensions-0.48.7-1.rhel8.x86_64.rpm
@ el8.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.7-1PGDG.rhel8.aarch64.rpm pgdg 0.53.7 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/dbt2-pg15-extensions-0.53.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.4-1PGDG.rhel8.aarch64.rpm pgdg 0.53.4 29.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/dbt2-pg15-extensions-0.53.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.50.1-1.rhel8.aarch64.rpm pgdg 0.50.1 29.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/dbt2-pg15-extensions-0.50.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.49.1-1.rhel8.aarch64.rpm pgdg 0.49.1 29.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/dbt2-pg15-extensions-0.49.1-1.rhel8.aarch64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm pgdg 0.61.7 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm pgdg 0.61.6 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.7-1PGDG.rhel9.x86_64.rpm pgdg 0.53.7 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.53.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.4-1PGDG.rhel9.x86_64.rpm pgdg 0.53.4 30.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.53.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.50.1-1.rhel9.x86_64.rpm pgdg 0.50.1 30.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.50.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.49.1-1.rhel9.x86_64.rpm pgdg 0.49.1 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.49.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.48.7-1.rhel9.x86_64.rpm pgdg 0.48.7 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.48.7-1.rhel9.x86_64.rpm
@ el9.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.48.3-2.rhel9.x86_64.rpm pgdg 0.48.3 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/dbt2-pg15-extensions-0.48.3-2.rhel9.x86_64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm pgdg 0.61.7 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm pgdg 0.61.6 29.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.7-1PGDG.rhel9.aarch64.rpm pgdg 0.53.7 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.53.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.53.4-1PGDG.rhel9.aarch64.rpm pgdg 0.53.4 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.53.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.50.1-1.rhel9.aarch64.rpm pgdg 0.50.1 29.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.50.1-1.rhel9.aarch64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.49.1-1.rhel9.aarch64.rpm pgdg 0.49.1 29.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.49.1-1.rhel9.aarch64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.48.7-1.rhel9.aarch64.rpm pgdg 0.48.7 29.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.48.7-1.rhel9.aarch64.rpm
@ el9.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.48.3-2.rhel9.aarch64.rpm pgdg 0.48.3 29.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/dbt2-pg15-extensions-0.48.3-2.rhel9.aarch64.rpm
@ el10.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm pgdg 0.61.7 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/dbt2-pg15-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm pgdg 0.61.6 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/dbt2-pg15-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm pgdg 0.61.7 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/dbt2-pg15-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 dbt2-pg15-extensions dbt2-pg15-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm pgdg 0.61.6 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/dbt2-pg15-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm
@ el8.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.7-1PGDG.rhel8.x86_64.rpm pgdg 0.53.7 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/dbt2-pg14-extensions-0.53.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.4-1PGDG.rhel8.x86_64.rpm pgdg 0.53.4 29.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/dbt2-pg14-extensions-0.53.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.50.1-1.rhel8.x86_64.rpm pgdg 0.50.1 29.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/dbt2-pg14-extensions-0.50.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.49.1-1.rhel8.x86_64.rpm pgdg 0.49.1 29.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/dbt2-pg14-extensions-0.49.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.48.7-1.rhel8.x86_64.rpm pgdg 0.48.7 29.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/dbt2-pg14-extensions-0.48.7-1.rhel8.x86_64.rpm
@ el8.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.48.3-2.rhel8.x86_64.rpm pgdg 0.48.3 29.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/dbt2-pg14-extensions-0.48.3-2.rhel8.x86_64.rpm
@ el8.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.7-1PGDG.rhel8.aarch64.rpm pgdg 0.53.7 29.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/dbt2-pg14-extensions-0.53.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.4-1PGDG.rhel8.aarch64.rpm pgdg 0.53.4 29.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/dbt2-pg14-extensions-0.53.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.50.1-1.rhel8.aarch64.rpm pgdg 0.50.1 29.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/dbt2-pg14-extensions-0.50.1-1.rhel8.aarch64.rpm
@ el8.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.49.1-1.rhel8.aarch64.rpm pgdg 0.49.1 29.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/dbt2-pg14-extensions-0.49.1-1.rhel8.aarch64.rpm
@ el9.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm pgdg 0.61.7 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/dbt2-pg14-extensions-0.61.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm pgdg 0.61.6 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/dbt2-pg14-extensions-0.61.6-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.7-1PGDG.rhel9.x86_64.rpm pgdg 0.53.7 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/dbt2-pg14-extensions-0.53.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.4-1PGDG.rhel9.x86_64.rpm pgdg 0.53.4 30.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/dbt2-pg14-extensions-0.53.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.50.1-1.rhel9.x86_64.rpm pgdg 0.50.1 30.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/dbt2-pg14-extensions-0.50.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.49.1-1.rhel9.x86_64.rpm pgdg 0.49.1 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/dbt2-pg14-extensions-0.49.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.48.7-1.rhel9.x86_64.rpm pgdg 0.48.7 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/dbt2-pg14-extensions-0.48.7-1.rhel9.x86_64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm pgdg 0.61.7 29.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.61.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm pgdg 0.61.6 29.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.61.6-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.7-1PGDG.rhel9.aarch64.rpm pgdg 0.53.7 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.53.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.53.4-1PGDG.rhel9.aarch64.rpm pgdg 0.53.4 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.53.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.50.1-1.rhel9.aarch64.rpm pgdg 0.50.1 29.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.50.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.49.1-1.rhel9.aarch64.rpm pgdg 0.49.1 29.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.49.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.48.7-1.rhel9.aarch64.rpm pgdg 0.48.7 29.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.48.7-1.rhel9.aarch64.rpm
@ el9.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.48.3-2.rhel9.aarch64.rpm pgdg 0.48.3 29.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/dbt2-pg14-extensions-0.48.3-2.rhel9.aarch64.rpm
@ el10.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm pgdg 0.61.7 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/dbt2-pg14-extensions-0.61.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm pgdg 0.61.6 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/dbt2-pg14-extensions-0.61.6-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm pgdg 0.61.7 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/dbt2-pg14-extensions-0.61.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 dbt2-pg14-extensions dbt2-pg14-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm pgdg 0.61.6 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/dbt2-pg14-extensions-0.61.6-2PGDG.rhel10.aarch64.rpm
{{< /pgext_matrix >}}


## Install

You can install `dbt2` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install dbt2;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y dbt2 -v 18  # PG 18
pig ext install -y dbt2 -v 17  # PG 17
pig ext install -y dbt2 -v 16  # PG 16
pig ext install -y dbt2 -v 15  # PG 15
pig ext install -y dbt2 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y dbt2-pg18-extensions       # PG 18
dnf install -y dbt2-pg17-extensions       # PG 17
dnf install -y dbt2-pg16-extensions       # PG 16
dnf install -y dbt2-pg15-extensions       # PG 15
dnf install -y dbt2-pg14-extensions       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION dbt2;
```




## Usage

> [dbt2: OSDL-DBT-2 test kit](https://github.com/osdldbt/dbt2)

`dbt2` is a TPC-C benchmark implementation for PostgreSQL. The extension provides stored procedures that implement the five standard TPC-C transaction types.

```sql
CREATE EXTENSION dbt2;
```

### TPC-C Transaction Types

The extension provides stored procedures for the five standard TPC-C transactions:

- **New Order**: Creates a new order with multiple line items, updating stock levels
- **Payment**: Processes a customer payment, updating warehouse and district balances
- **Order Status**: Retrieves the status of a customer's most recent order
- **Delivery**: Processes pending orders for delivery across all districts
- **Stock Level**: Checks the count of recently sold items with low stock

### Benchmark Workflow

The `dbt2` system consists of:

1. **Database extension** (`dbt2`): Stored procedures for TPC-C transactions
2. **Data loader**: Populates the benchmark tables with TPC-C data
3. **Driver**: Generates transaction workloads simulating terminal users
4. **Client**: Manages connections between the driver and database

### Running Benchmarks

The benchmark is typically run using the `dbt2` command-line tools (separate from the extension):

```bash
# Build the benchmark database
dbt2 build --dbms pgsql --warehouses 10

# Run the benchmark
dbt2 run --dbms pgsql --warehouses 10 --duration 300 --connections 10

# Generate report
dbt2 report --dbms pgsql
```

### TPC-C Schema

The benchmark uses these standard tables: `warehouse`, `district`, `customer`, `history`, `new_order`, `orders`, `order_line`, `item`, and `stock`.

Refer to the `doc/` directory in the repository for detailed configuration and tuning options.
