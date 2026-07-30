---
title: "pgaudit"
linkTitle: "pgaudit"
description: "provides auditing functionality"
weight: 7100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgaudit/pgaudit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgaudit/pgaudit</div>
    <div class="ext-card__desc">https://github.com/pgaudit/pgaudit</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgaudit`**](/ext/e/pgaudit) | `18.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7100  | [**`pgaudit`**](/ext/e/pgaudit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`pg_auditor`](/ext/e/pg_auditor) [`pg_roast`](/ext/e/pg_roast) [`pgmemento`](/ext/e/pgmemento) [`table_log`](/ext/e/table_log) [`pg_drop_events`](/ext/e/pg_drop_events) [`pgelog`](/ext/e/pgelog) [`logerrors`](/ext/e/logerrors) [`pg_stat_log`](/ext/e/pg_stat_log) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`data_historization`](/ext/e/data_historization) [`table_version`](/ext/e/table_version) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg15=pgaudit17, pg14=pgaudit16


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `18.0` | {{< pgvers "18,17,16,15,14" >}} | `pgaudit` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `18.0` | {{< pgvers "18,17,16,15,14" >}} | `pgaudit_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `18.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgaudit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 18.0 1 | AVAIL PGDG 17.1 2 | AVAIL PGDG 16.1 2 | AVAIL PGDG 1.7.1 3 | AVAIL PGDG 1.6.3 4 |
| el8.aarch64 | AVAIL PGDG 18.0 1 | AVAIL PGDG 17.1 2 | AVAIL PGDG 16.1 2 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.3 2 |
| el9.x86_64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 3 | AVAIL PGDG 16.1 3 | AVAIL PGDG 1.7.1 4 | AVAIL PGDG 1.6.3 3 |
| el9.aarch64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 3 | AVAIL PGDG 16.1 3 | AVAIL PGDG 1.7.1 3 | AVAIL PGDG 1.6.3 3 |
| el10.x86_64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 2 | AVAIL PGDG 16.1 2 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.3 2 |
| el10.aarch64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 2 | AVAIL PGDG 16.1 2 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.3 2 |
| d12.x86_64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| d12.aarch64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| d13.x86_64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| d13.aarch64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| u22.x86_64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| u22.aarch64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| u24.x86_64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| u24.aarch64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| u26.x86_64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
| u26.aarch64 | AVAIL PGDG 18.0 2 | AVAIL PGDG 17.1 1 | AVAIL PGDG 16.1 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.3 1 |
@ el8.x86_64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel8.x86_64.rpm pgdg 18.0 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgaudit_18-18.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel8.aarch64.rpm pgdg 18.0 27.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgaudit_18-18.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgaudit_18 pgaudit_18-18.0-4PGDG.rhel9.8.x86_64.rpm pgdg 18.0 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgaudit_18-18.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel9.x86_64.rpm pgdg 18.0 27.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgaudit_18-18.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgaudit_18 pgaudit_18-18.0-4PGDG.rhel9.8.aarch64.rpm pgdg 18.0 27.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgaudit_18-18.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel9.aarch64.rpm pgdg 18.0 27.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgaudit_18-18.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgaudit_18 pgaudit_18-18.0-4PGDG.rhel10.2.x86_64.rpm pgdg 18.0 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgaudit_18-18.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel10.x86_64.rpm pgdg 18.0 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgaudit_18-18.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.0-4PGDG.rhel10.2.aarch64.rpm pgdg 18.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel10.aarch64.rpm pgdg 18.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg12+1_amd64.deb pgdg 18.0 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg12+1_amd64.deb pgdg 18.0 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg12+1_arm64.deb pgdg 18.0 46.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg12+1_arm64.deb pgdg 18.0 46.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg13+1_amd64.deb pgdg 18.0 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg13+1_amd64.deb pgdg 18.0 47.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg13+1_arm64.deb pgdg 18.0 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg13+1_arm64.deb pgdg 18.0 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg22.04+1_amd64.deb pgdg 18.0 48.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg22.04+1_amd64.deb pgdg 18.0 48.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg22.04+1_arm64.deb pgdg 18.0 48.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg22.04+1_arm64.deb pgdg 18.0 47.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg24.04+1_amd64.deb pgdg 18.0 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg24.04+1_amd64.deb pgdg 18.0 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg24.04+1_arm64.deb pgdg 18.0 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg24.04+1_arm64.deb pgdg 18.0 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg26.04+1_amd64.deb pgdg 18.0 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg26.04+1_amd64.deb pgdg 18.0 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg26.04+1_arm64.deb pgdg 18.0 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-2.pgdg26.04+1_arm64.deb pgdg 18.0 46.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel8.x86_64.rpm pgdg 17.1 28.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgaudit_17-17.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgaudit_17 pgaudit_17-17.0-1PGDG.rhel8.x86_64.rpm pgdg 17.0 27.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgaudit_17-17.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel8.aarch64.rpm pgdg 17.1 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgaudit_17-17.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgaudit_17 pgaudit_17-17.0-1PGDG.rhel8.aarch64.rpm pgdg 17.0 27.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgaudit_17-17.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgaudit_17 pgaudit_17-17.1-4PGDG.rhel9.8.x86_64.rpm pgdg 17.1 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgaudit_17-17.1-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel9.x86_64.rpm pgdg 17.1 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgaudit_17-17.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgaudit_17 pgaudit_17-17.0-1PGDG.rhel9.x86_64.rpm pgdg 17.0 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgaudit_17-17.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgaudit_17 pgaudit_17-17.1-4PGDG.rhel9.8.aarch64.rpm pgdg 17.1 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgaudit_17-17.1-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel9.aarch64.rpm pgdg 17.1 28.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgaudit_17-17.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgaudit_17 pgaudit_17-17.0-1PGDG.rhel9.aarch64.rpm pgdg 17.0 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgaudit_17-17.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgaudit_17 pgaudit_17-17.1-4PGDG.rhel10.2.x86_64.rpm pgdg 17.1 28.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgaudit_17-17.1-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel10.x86_64.rpm pgdg 17.1 28.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgaudit_17-17.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.1-4PGDG.rhel10.2.aarch64.rpm pgdg 17.1 28.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.1-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel10.aarch64.rpm pgdg 17.1 28.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg12+1_amd64.deb pgdg 17.1 46.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg12+1_arm64.deb pgdg 17.1 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg13+1_amd64.deb pgdg 17.1 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg13+1_arm64.deb pgdg 17.1 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg22.04+1_amd64.deb pgdg 17.1 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg22.04+1_arm64.deb pgdg 17.1 52.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg24.04+1_amd64.deb pgdg 17.1 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg24.04+1_arm64.deb pgdg 17.1 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg26.04+1_amd64.deb pgdg 17.1 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg26.04+1_arm64.deb pgdg 17.1 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel8.x86_64.rpm pgdg 16.1 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgaudit_16-16.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgaudit_16 pgaudit_16-16.0-1PGDG.rhel8.x86_64.rpm pgdg 16.0 26.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgaudit_16-16.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel8.aarch64.rpm pgdg 16.1 27.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgaudit_16-16.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgaudit_16 pgaudit_16-16.0-1PGDG.rhel8.aarch64.rpm pgdg 16.0 26.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgaudit_16-16.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgaudit_16 pgaudit_16-16.1-4PGDG.rhel9.8.x86_64.rpm pgdg 16.1 28.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgaudit_16-16.1-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel9.x86_64.rpm pgdg 16.1 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgaudit_16-16.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgaudit_16 pgaudit_16-16.0-1PGDG.rhel9.x86_64.rpm pgdg 16.0 27.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgaudit_16-16.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgaudit_16 pgaudit_16-16.1-4PGDG.rhel9.8.aarch64.rpm pgdg 16.1 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgaudit_16-16.1-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel9.aarch64.rpm pgdg 16.1 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgaudit_16-16.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgaudit_16 pgaudit_16-16.0-1PGDG.rhel9.aarch64.rpm pgdg 16.0 26.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgaudit_16-16.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgaudit_16 pgaudit_16-16.1-4PGDG.rhel10.2.x86_64.rpm pgdg 16.1 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgaudit_16-16.1-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel10.x86_64.rpm pgdg 16.1 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgaudit_16-16.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.1-4PGDG.rhel10.2.aarch64.rpm pgdg 16.1 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.1-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel10.aarch64.rpm pgdg 16.1 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg12+1_amd64.deb pgdg 16.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg12+1_arm64.deb pgdg 16.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg13+1_amd64.deb pgdg 16.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg13+1_arm64.deb pgdg 16.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg22.04+1_amd64.deb pgdg 16.1 51.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg22.04+1_arm64.deb pgdg 16.1 50.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg24.04+1_amd64.deb pgdg 16.1 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg24.04+1_arm64.deb pgdg 16.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg26.04+1_amd64.deb pgdg 16.1 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg26.04+1_arm64.deb pgdg 16.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgaudit17_15 pgaudit17_15-1.7.1-1PGDG.rhel8.x86_64.rpm pgdg 1.7.1 27.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgaudit17_15-1.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgaudit17_15 pgaudit17_15-1.7.0-1.rhel8.x86_64.rpm pgdg 1.7.0 55.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgaudit17_15-1.7.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgaudit17_15 pgaudit17_15-1.7-beta1_1.rhel8.x86_64.rpm pgdg 1.7 55.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgaudit17_15-1.7-beta1_1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgaudit17_15 pgaudit17_15-1.7.1-1PGDG.rhel8.aarch64.rpm pgdg 1.7.1 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgaudit17_15-1.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgaudit17_15 pgaudit17_15-1.7.0-1.rhel8.aarch64.rpm pgdg 1.7.0 55.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgaudit17_15-1.7.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pgaudit17_15 pgaudit17_15-1.7.1-5PGDG.rhel9.8.x86_64.rpm pgdg 1.7.1 28.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgaudit17_15-1.7.1-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgaudit17_15 pgaudit17_15-1.7.1-1PGDG.rhel9.x86_64.rpm pgdg 1.7.1 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgaudit17_15-1.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgaudit17_15 pgaudit17_15-1.7.0-1.rhel9.x86_64.rpm pgdg 1.7.0 57.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgaudit17_15-1.7.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgaudit17_15 pgaudit17_15-1.7-beta1_1.rhel9.x86_64.rpm pgdg 1.7 56.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgaudit17_15-1.7-beta1_1.rhel9.x86_64.rpm
@ el9.aarch64 15 pgaudit17_15 pgaudit17_15-1.7.1-5PGDG.rhel9.8.aarch64.rpm pgdg 1.7.1 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgaudit17_15-1.7.1-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgaudit17_15 pgaudit17_15-1.7.1-1PGDG.rhel9.aarch64.rpm pgdg 1.7.1 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgaudit17_15-1.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgaudit17_15 pgaudit17_15-1.7.0-1.rhel9.aarch64.rpm pgdg 1.7.0 56.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgaudit17_15-1.7.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pgaudit17_15 pgaudit17_15-1.7.1-5PGDG.rhel10.2.x86_64.rpm pgdg 1.7.1 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgaudit17_15-1.7.1-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgaudit17_15 pgaudit17_15-1.7.1-1PGDG.rhel10.x86_64.rpm pgdg 1.7.1 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgaudit17_15-1.7.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgaudit17_15 pgaudit17_15-1.7.1-5PGDG.rhel10.2.aarch64.rpm pgdg 1.7.1 28.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgaudit17_15-1.7.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgaudit17_15 pgaudit17_15-1.7.1-1PGDG.rhel10.aarch64.rpm pgdg 1.7.1 28.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgaudit17_15-1.7.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg12+1_amd64.deb pgdg 1.7.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg12+1_arm64.deb pgdg 1.7.1 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg13+1_amd64.deb pgdg 1.7.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg13+1_arm64.deb pgdg 1.7.1 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_amd64.deb pgdg 1.7.1 50.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_arm64.deb pgdg 1.7.1 49.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_amd64.deb pgdg 1.7.1 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_arm64.deb pgdg 1.7.1 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_amd64.deb pgdg 1.7.1 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_arm64.deb pgdg 1.7.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 27.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgaudit16_14-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.2-1.rhel8.x86_64.rpm pgdg 1.6.2 56.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgaudit16_14-1.6.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.0-1.rhel8.x86_64.rpm pgdg 1.6.0 55.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgaudit16_14-1.6.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgaudit16_14 pgaudit16_14-1.6-beta2_1.rhel8.x86_64.rpm pgdg 1.6 55.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgaudit16_14-1.6-beta2_1.rhel8.x86_64.rpm
@ el8.aarch64 14 pgaudit16_14 pgaudit16_14-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 27.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgaudit16_14-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgaudit16_14 pgaudit16_14-1.6.2-1.rhel8.aarch64.rpm pgdg 1.6.2 54.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgaudit16_14-1.6.2-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.3-5PGDG.rhel9.8.x86_64.rpm pgdg 1.6.3 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgaudit16_14-1.6.3-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 28.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgaudit16_14-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.2-1.rhel9.x86_64.rpm pgdg 1.6.2 56.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgaudit16_14-1.6.2-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgaudit16_14 pgaudit16_14-1.6.3-5PGDG.rhel9.8.aarch64.rpm pgdg 1.6.3 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgaudit16_14-1.6.3-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgaudit16_14 pgaudit16_14-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 27.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgaudit16_14-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgaudit16_14 pgaudit16_14-1.6.2-1.rhel9.aarch64.rpm pgdg 1.6.2 55.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgaudit16_14-1.6.2-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.3-5PGDG.rhel10.2.x86_64.rpm pgdg 1.6.3 28.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgaudit16_14-1.6.3-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgaudit16_14 pgaudit16_14-1.6.3-1PGDG.rhel10.x86_64.rpm pgdg 1.6.3 28.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgaudit16_14-1.6.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgaudit16_14 pgaudit16_14-1.6.3-5PGDG.rhel10.2.aarch64.rpm pgdg 1.6.3 28.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgaudit16_14-1.6.3-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgaudit16_14 pgaudit16_14-1.6.3-1PGDG.rhel10.aarch64.rpm pgdg 1.6.3 28.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgaudit16_14-1.6.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg12+1_amd64.deb pgdg 1.6.3 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg12+1_arm64.deb pgdg 1.6.3 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg13+1_amd64.deb pgdg 1.6.3 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg13+1_arm64.deb pgdg 1.6.3 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg22.04+1_amd64.deb pgdg 1.6.3 49.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg22.04+1_arm64.deb pgdg 1.6.3 48.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg24.04+1_amd64.deb pgdg 1.6.3 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg24.04+1_arm64.deb pgdg 1.6.3 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg26.04+1_amd64.deb pgdg 1.6.3 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgaudit postgresql-14-pgaudit_1.6.3-2.pgdg26.04+1_arm64.deb pgdg 1.6.3 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.6/postgresql-14-pgaudit_1.6.3-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pgaudit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgaudit;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgaudit -v 18  # PG 18
pig ext install -y pgaudit -v 17  # PG 17
pig ext install -y pgaudit -v 16  # PG 16
pig ext install -y pgaudit -v 15  # PG 15
pig ext install -y pgaudit -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgaudit_18       # PG 18
dnf install -y pgaudit_17       # PG 17
dnf install -y pgaudit_16       # PG 16
dnf install -y pgaudit_15       # PG 15
dnf install -y pgaudit_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgaudit   # PG 18
apt install -y postgresql-17-pgaudit   # PG 17
apt install -y postgresql-16-pgaudit   # PG 16
apt install -y postgresql-15-pgaudit   # PG 15
apt install -y postgresql-14-pgaudit   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgaudit';
```


**Create Extension**:

```sql
CREATE EXTENSION pgaudit;
```




## Usage

> [pgaudit: Open Source PostgreSQL Audit Logging](https://github.com/pgaudit/pgaudit)

pgAudit provides detailed session and/or object audit logging via the standard PostgreSQL logging facility, producing audit trails required for government, financial, or ISO certifications.

```sql
CREATE EXTENSION pgaudit;
```

### Configuration Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pgaudit.log` | `none` | Statement classes to log: `READ`, `WRITE`, `FUNCTION`, `ROLE`, `DDL`, `MISC`, `MISC_SET`, `ALL` |
| `pgaudit.log_catalog` | `on` | Log statements when all relations are in pg_catalog |
| `pgaudit.log_client` | `off` | Show audit log messages to client |
| `pgaudit.log_level` | `log` | Log level for audit entries |
| `pgaudit.log_parameter` | `off` | Include statement parameters in log |
| `pgaudit.log_parameter_max_size` | `0` | Max parameter size in bytes (0=unlimited) |
| `pgaudit.log_relation` | `off` | Separate log entry per relation in SELECT/DML |
| `pgaudit.log_rows` | `off` | Include row count in log |
| `pgaudit.log_statement` | `on` | Include statement text in log |
| `pgaudit.log_statement_once` | `off` | Log statement text only with first entry |
| `pgaudit.role` | (none) | Master role for object audit logging |

### Session Audit Logging

Log all DML and DDL with per-relation detail:

```sql
SET pgaudit.log = 'write, ddl';
SET pgaudit.log_relation = on;
```

Log everything except miscellaneous commands:

```sql
SET pgaudit.log = 'all, -misc';
```

Example output:
```
AUDIT: SESSION,1,1,DDL,CREATE TABLE,TABLE,public.account,create table account(...)
AUDIT: SESSION,2,1,READ,SELECT,,,select * from account
```

### Object Audit Logging

Grant permissions to an audit role to control which relations are logged:

```sql
SET pgaudit.role = 'auditor';

GRANT SELECT, DELETE
   ON public.account
   TO auditor;
```

Now any `SELECT` or `DELETE` on the `account` table will be audit logged.

### Log Format

Entries are CSV with fields: `AUDIT_TYPE`, `STATEMENT_ID`, `SUBSTATEMENT_ID`, `CLASS`, `COMMAND`, `OBJECT_TYPE`, `OBJECT_NAME`, `STATEMENT`, `PARAMETER`.
