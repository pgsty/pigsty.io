---
title: "plprofiler"
linkTitle: "plprofiler"
description: "server-side support for profiling PL/pgSQL functions"
weight: 3070
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsql/plprofiler">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsql/plprofiler</div>
    <div class="ext-card__desc">https://github.com/bigsql/plprofiler</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plprofiler`**](/ext/e/plprofiler) | `4.2.5` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license artistic10" href="/ext/license#artistic10">Artistic-1.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3070  | [**`plprofiler`**](/ext/e/plprofiler) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql_check`](/ext/e/plpgsql_check) [`pldbgapi`](/ext/e/pldbgapi) [`pglinter`](/ext/e/pglinter) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`auto_explain`](/ext/e/auto_explain) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_show_plans`](/ext/e/pg_show_plans) [`hypopg`](/ext/e/hypopg) [`index_advisor`](/ext/e/index_advisor) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.5` | {{< pgvers "18,17,16,15,14" >}} | `plprofiler` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.5` | {{< pgvers "18,17,16,15,14" >}} | `plprofiler_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plprofiler` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 2 | AVAIL PGDG 4.2.5 2 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 |
| el8.aarch64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 2 | AVAIL PGDG 4.2.5 2 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 |
| el9.x86_64 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 6 | AVAIL PGDG 4.2.5 6 |
| el9.aarch64 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 6 | AVAIL PGDG 4.2.5 6 |
| el10.x86_64 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 4 |
| el10.aarch64 | AVAIL PGDG 4.2.5 4 | AVAIL PGDG 4.2.5 3 | AVAIL PGDG 4.2.5 3 | AVAIL PGDG 4.2.5 3 | AVAIL PGDG 4.2.5 3 |
| d12.x86_64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| d12.aarch64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| d13.x86_64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| d13.aarch64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| u22.x86_64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| u22.aarch64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| u24.x86_64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| u24.aarch64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| u26.x86_64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
| u26.aarch64 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 | AVAIL PGDG 4.2.5 1 |
@ el8.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel8.10.x86_64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plprofiler_18-4.2.5-5PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel8.10.aarch64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plprofiler_18-4.2.5-5PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel9.8.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plprofiler_18-4.2.5-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel9.7.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plprofiler_18-4.2.5-5PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel9.6.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plprofiler_18-4.2.5-5PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-2PGDG.rhel9.x86_64.rpm pgdg 4.2.5 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plprofiler_18-4.2.5-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel9.8.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plprofiler_18-4.2.5-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel9.7.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plprofiler_18-4.2.5-5PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel9.6.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plprofiler_18-4.2.5-5PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-2PGDG.rhel9.aarch64.rpm pgdg 4.2.5 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plprofiler_18-4.2.5-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel10.2.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plprofiler_18-4.2.5-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel10.1.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plprofiler_18-4.2.5-5PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel10.0.x86_64.rpm pgdg 4.2.5 7.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plprofiler_18-4.2.5-5PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 plprofiler_18 plprofiler_18-4.2.5-2PGDG.rhel10.x86_64.rpm pgdg 4.2.5 7.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plprofiler_18-4.2.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel10.2.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plprofiler_18-4.2.5-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel10.1.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plprofiler_18-4.2.5-5PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-5PGDG.rhel10.0.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plprofiler_18-4.2.5-5PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 plprofiler_18 plprofiler_18-4.2.5-2PGDG.rhel10.aarch64.rpm pgdg 4.2.5 7.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plprofiler_18-4.2.5-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg12+1_amd64.deb pgdg 4.2.5 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg12+1_arm64.deb pgdg 4.2.5 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg13+1_amd64.deb pgdg 4.2.5 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg13+1_arm64.deb pgdg 4.2.5 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb pgdg 4.2.5 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb pgdg 4.2.5 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb pgdg 4.2.5 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb pgdg 4.2.5 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb pgdg 4.2.5 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-plprofiler postgresql-18-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb pgdg 4.2.5 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-18-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel8.10.x86_64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plprofiler_17-4.2.5-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-1PGDG.rhel8.x86_64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plprofiler_17-4.2.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel8.10.aarch64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plprofiler_17-4.2.5-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-1PGDG.rhel8.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plprofiler_17-4.2.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel9.8.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plprofiler_17-4.2.5-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel9.7.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plprofiler_17-4.2.5-5PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel9.6.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plprofiler_17-4.2.5-5PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-1PGDG.rhel9.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plprofiler_17-4.2.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel9.8.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plprofiler_17-4.2.5-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel9.7.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plprofiler_17-4.2.5-5PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel9.6.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plprofiler_17-4.2.5-5PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-1PGDG.rhel9.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plprofiler_17-4.2.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel10.2.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plprofiler_17-4.2.5-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel10.1.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plprofiler_17-4.2.5-5PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel10.0.x86_64.rpm pgdg 4.2.5 7.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plprofiler_17-4.2.5-5PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 plprofiler_17 plprofiler_17-4.2.5-2PGDG.rhel10.x86_64.rpm pgdg 4.2.5 7.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plprofiler_17-4.2.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel10.2.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plprofiler_17-4.2.5-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel10.1.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plprofiler_17-4.2.5-5PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 plprofiler_17 plprofiler_17-4.2.5-5PGDG.rhel10.0.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plprofiler_17-4.2.5-5PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg12+1_amd64.deb pgdg 4.2.5 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg12+1_arm64.deb pgdg 4.2.5 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg13+1_amd64.deb pgdg 4.2.5 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg13+1_arm64.deb pgdg 4.2.5 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb pgdg 4.2.5 52.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb pgdg 4.2.5 51.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb pgdg 4.2.5 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb pgdg 4.2.5 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb pgdg 4.2.5 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-plprofiler postgresql-17-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb pgdg 4.2.5 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-17-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel8.10.x86_64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plprofiler_16-4.2.5-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 plprofiler_16 plprofiler_16-4.2.4-1PGDG.rhel8.x86_64.rpm pgdg 4.2.4 6.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plprofiler_16-4.2.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel8.10.aarch64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plprofiler_16-4.2.5-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 plprofiler_16 plprofiler_16-4.2.4-1PGDG.rhel8.aarch64.rpm pgdg 4.2.4 6.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plprofiler_16-4.2.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel9.8.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plprofiler_16-4.2.5-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel9.7.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plprofiler_16-4.2.5-5PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel9.6.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plprofiler_16-4.2.5-5PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 plprofiler_16 plprofiler_16-4.2.4-1PGDG.rhel9.x86_64.rpm pgdg 4.2.4 6.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plprofiler_16-4.2.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel9.8.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plprofiler_16-4.2.5-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel9.7.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plprofiler_16-4.2.5-5PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel9.6.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plprofiler_16-4.2.5-5PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 plprofiler_16 plprofiler_16-4.2.4-1PGDG.rhel9.aarch64.rpm pgdg 4.2.4 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plprofiler_16-4.2.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel10.2.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plprofiler_16-4.2.5-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel10.1.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plprofiler_16-4.2.5-5PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel10.0.x86_64.rpm pgdg 4.2.5 7.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plprofiler_16-4.2.5-5PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 plprofiler_16 plprofiler_16-4.2.5-2PGDG.rhel10.x86_64.rpm pgdg 4.2.5 7.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plprofiler_16-4.2.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel10.2.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plprofiler_16-4.2.5-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel10.1.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plprofiler_16-4.2.5-5PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 plprofiler_16 plprofiler_16-4.2.5-5PGDG.rhel10.0.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plprofiler_16-4.2.5-5PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg12+1_amd64.deb pgdg 4.2.5 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg12+1_arm64.deb pgdg 4.2.5 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg13+1_amd64.deb pgdg 4.2.5 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg13+1_arm64.deb pgdg 4.2.5 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb pgdg 4.2.5 52.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb pgdg 4.2.5 51.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb pgdg 4.2.5 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb pgdg 4.2.5 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb pgdg 4.2.5 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-plprofiler postgresql-16-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb pgdg 4.2.5 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-16-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel8.10.x86_64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plprofiler_15-4.2.5-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 plprofiler_15 plprofiler_15-4.2.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2.2 6.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plprofiler_15-4.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 plprofiler_15 plprofiler_15-4.2.1-1.rhel8.x86_64.rpm pgdg 4.2.1 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plprofiler_15-4.2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 plprofiler_15 plprofiler_15-4.2-1.rhel8.x86_64.rpm pgdg 4.2 6.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plprofiler_15-4.2-1.rhel8.x86_64.rpm
@ el8.aarch64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel8.10.aarch64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plprofiler_15-4.2.5-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 plprofiler_15 plprofiler_15-4.2.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2.2 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plprofiler_15-4.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 plprofiler_15 plprofiler_15-4.2.1-1.rhel8.aarch64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plprofiler_15-4.2.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 plprofiler_15 plprofiler_15-4.2-1.rhel8.aarch64.rpm pgdg 4.2 6.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plprofiler_15-4.2-1.rhel8.aarch64.rpm
@ el9.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel9.8.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plprofiler_15-4.2.5-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel9.7.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plprofiler_15-4.2.5-5PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel9.6.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plprofiler_15-4.2.5-5PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 plprofiler_15 plprofiler_15-4.2.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2.2 6.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plprofiler_15-4.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 plprofiler_15 plprofiler_15-4.2.1-1.rhel9.x86_64.rpm pgdg 4.2.1 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plprofiler_15-4.2.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 plprofiler_15 plprofiler_15-4.2-1.rhel9.x86_64.rpm pgdg 4.2 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plprofiler_15-4.2-1.rhel9.x86_64.rpm
@ el9.aarch64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel9.8.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plprofiler_15-4.2.5-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel9.7.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plprofiler_15-4.2.5-5PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel9.6.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plprofiler_15-4.2.5-5PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 plprofiler_15 plprofiler_15-4.2.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2.2 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plprofiler_15-4.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 plprofiler_15 plprofiler_15-4.2.1-1.rhel9.aarch64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plprofiler_15-4.2.1-1.rhel9.aarch64.rpm
@ el9.aarch64 15 plprofiler_15 plprofiler_15-4.2-1.rhel9.aarch64.rpm pgdg 4.2 6.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plprofiler_15-4.2-1.rhel9.aarch64.rpm
@ el10.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel10.2.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plprofiler_15-4.2.5-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel10.1.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plprofiler_15-4.2.5-5PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel10.0.x86_64.rpm pgdg 4.2.5 7.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plprofiler_15-4.2.5-5PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 plprofiler_15 plprofiler_15-4.2.5-2PGDG.rhel10.x86_64.rpm pgdg 4.2.5 7.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plprofiler_15-4.2.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel10.2.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plprofiler_15-4.2.5-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel10.1.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plprofiler_15-4.2.5-5PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 plprofiler_15 plprofiler_15-4.2.5-5PGDG.rhel10.0.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plprofiler_15-4.2.5-5PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg12+1_amd64.deb pgdg 4.2.5 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg12+1_arm64.deb pgdg 4.2.5 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg13+1_amd64.deb pgdg 4.2.5 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg13+1_arm64.deb pgdg 4.2.5 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb pgdg 4.2.5 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb pgdg 4.2.5 51.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb pgdg 4.2.5 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb pgdg 4.2.5 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb pgdg 4.2.5 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-plprofiler postgresql-15-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb pgdg 4.2.5 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-15-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel8.10.x86_64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plprofiler_14-4.2.5-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 plprofiler_14 plprofiler_14-4.2.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2.2 6.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plprofiler_14-4.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 plprofiler_14 plprofiler_14-4.2.1-1.rhel8.x86_64.rpm pgdg 4.2.1 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plprofiler_14-4.2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 plprofiler_14 plprofiler_14-4.2-1.rhel8.x86_64.rpm pgdg 4.2 6.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plprofiler_14-4.2-1.rhel8.x86_64.rpm
@ el8.aarch64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel8.10.aarch64.rpm pgdg 4.2.5 7.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plprofiler_14-4.2.5-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 plprofiler_14 plprofiler_14-4.2.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2.2 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plprofiler_14-4.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 plprofiler_14 plprofiler_14-4.2.1-1.rhel8.aarch64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plprofiler_14-4.2.1-1.rhel8.aarch64.rpm
@ el8.aarch64 14 plprofiler_14 plprofiler_14-4.2-1.rhel8.aarch64.rpm pgdg 4.2 6.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plprofiler_14-4.2-1.rhel8.aarch64.rpm
@ el9.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel9.8.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plprofiler_14-4.2.5-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel9.7.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plprofiler_14-4.2.5-5PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel9.6.x86_64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plprofiler_14-4.2.5-5PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 plprofiler_14 plprofiler_14-4.2.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2.2 6.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plprofiler_14-4.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 plprofiler_14 plprofiler_14-4.2.1-1.rhel9.x86_64.rpm pgdg 4.2.1 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plprofiler_14-4.2.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 plprofiler_14 plprofiler_14-4.2-1.rhel9.x86_64.rpm pgdg 4.2 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plprofiler_14-4.2-1.rhel9.x86_64.rpm
@ el9.aarch64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel9.8.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plprofiler_14-4.2.5-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel9.7.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plprofiler_14-4.2.5-5PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel9.6.aarch64.rpm pgdg 4.2.5 6.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plprofiler_14-4.2.5-5PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 plprofiler_14 plprofiler_14-4.2.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2.2 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plprofiler_14-4.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 plprofiler_14 plprofiler_14-4.2.1-1.rhel9.aarch64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plprofiler_14-4.2.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 plprofiler_14 plprofiler_14-4.2-1.rhel9.aarch64.rpm pgdg 4.2 6.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plprofiler_14-4.2-1.rhel9.aarch64.rpm
@ el10.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel10.2.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plprofiler_14-4.2.5-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel10.1.x86_64.rpm pgdg 4.2.5 7.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plprofiler_14-4.2.5-5PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel10.0.x86_64.rpm pgdg 4.2.5 7.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plprofiler_14-4.2.5-5PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 plprofiler_14 plprofiler_14-4.2.5-2PGDG.rhel10.x86_64.rpm pgdg 4.2.5 7.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plprofiler_14-4.2.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel10.2.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plprofiler_14-4.2.5-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel10.1.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plprofiler_14-4.2.5-5PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 plprofiler_14 plprofiler_14-4.2.5-5PGDG.rhel10.0.aarch64.rpm pgdg 4.2.5 7.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plprofiler_14-4.2.5-5PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg12+1_amd64.deb pgdg 4.2.5 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg12+1_arm64.deb pgdg 4.2.5 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg13+1_amd64.deb pgdg 4.2.5 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg13+1_arm64.deb pgdg 4.2.5 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb pgdg 4.2.5 50.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb pgdg 4.2.5 49.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb pgdg 4.2.5 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb pgdg 4.2.5 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb pgdg 4.2.5 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-plprofiler postgresql-14-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb pgdg 4.2.5 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plprofiler/postgresql-14-plprofiler_4.2.5-4.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `plprofiler` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install plprofiler;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y plprofiler -v 18  # PG 18
pig ext install -y plprofiler -v 17  # PG 17
pig ext install -y plprofiler -v 16  # PG 16
pig ext install -y plprofiler -v 15  # PG 15
pig ext install -y plprofiler -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y plprofiler_18       # PG 18
dnf install -y plprofiler_17       # PG 17
dnf install -y plprofiler_16       # PG 16
dnf install -y plprofiler_15       # PG 15
dnf install -y plprofiler_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-plprofiler   # PG 18
apt install -y postgresql-17-plprofiler   # PG 17
apt install -y postgresql-16-plprofiler   # PG 16
apt install -y postgresql-15-plprofiler   # PG 15
apt install -y postgresql-14-plprofiler   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'plprofiler';
```


**Create Extension**:

```sql
CREATE EXTENSION plprofiler;
```




## Usage

> [plprofiler: server-side support for profiling PL/pgSQL functions](https://github.com/bigsql/plprofiler)

`plprofiler` is a profiling tool for PL/pgSQL functions that identifies performance bottlenecks and generates interactive flame graph reports.

```sql
CREATE EXTENSION plprofiler;
```

### Configuration

Add to `postgresql.conf`:

```text
shared_preload_libraries = 'plprofiler'
```

### Command-Line Tool

The `plprofiler` command-line utility controls profiling and generates reports:

```bash
# Profile a specific SQL command
plprofiler run -d mydb --command "SELECT my_function()" --output report.html

# Monitor profiling in real-time
plprofiler monitor -d mydb

# Save profiling data for later analysis
plprofiler save -d mydb --name "my_profile"

# Generate HTML report with flame graphs
plprofiler report -d mydb --from-data "my_profile" --output report.html

# List saved profiling datasets
plprofiler list -d mydb

# Reset profiling data
plprofiler reset-data -d mydb

# Export/import profiling data
plprofiler export -d mydb --from-data "my_profile" > profile.json
plprofiler import -d mydb --into-data "imported" < profile.json
```

### SQL Interface

```sql
-- Enable profiling for the current session
SELECT pl_profiler_set_enabled_local(true);

-- Execute functions to be profiled
SELECT my_function();

-- Collect profiling data into shared hash tables
SELECT pl_profiler_collect_data();

-- Disable profiling
SELECT pl_profiler_set_enabled_local(false);

-- Enable profiling globally (for all sessions)
SELECT pl_profiler_set_enabled_global(true);

-- Reset local/shared profiling data
SELECT pl_profiler_reset_local();
SELECT pl_profiler_reset_shared();
```

### Report Output

Generated HTML reports include:

- **Interactive flame graphs** showing wall-clock time spent in PL/pgSQL code
- **Per-function statistics** with self-time (total minus children)
- **Top functions** ranked by time consumption (default: top 10)
- Self-contained HTML requiring no external dependencies

### Profiling Methods

- **Direct profiling**: Run specific SQL while collecting data
- **Timed collection**: Interval-based statistics gathering
- **Per-user profiling**: Enable profiling for specific database users via `ALTER USER`
- **Production monitoring**: Low-overhead profiling on live systems
