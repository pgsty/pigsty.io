---
title: "pg_stat_plans"
linkTitle: "pg_stat_plans"
description: "Track per-plan call counts, execution times, and example EXPLAIN texts."
weight: 6050
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pganalyze/pg_stat_plans">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pganalyze/pg_stat_plans</div>
    <div class="ext-card__desc">https://github.com/pganalyze/pg_stat_plans</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stat_plans`**](/ext/e/pg_stat_plans) | `2.1.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6050  | [**`pg_stat_plans`**](/ext/e/pg_stat_plans) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.0` | {{< pgvers "18,17,16" >}} | `pg_stat_plans` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.0` | {{< pgvers "18,17,16" >}} | `pg_stat_plans_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-stat-plans` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| el8.aarch64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.aarch64 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.aarch64 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.x86_64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| u26.x86_64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
| u26.aarch64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 44.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_stat_plans_18-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 42.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_stat_plans_18-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 42.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_plans_18-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 42.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_plans_18-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 42.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_plans_18-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 41.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_plans_18-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 41.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_plans_18-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_plans_18-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 42.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_plans_18-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 42.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_plans_18-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 43.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_plans_18-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.0 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_plans_18-2.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_plans_18-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_stat_plans_18 pg_stat_plans_18-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_plans_18-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 85.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg12+1_amd64.deb pgdg 2.0.0 81.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 83.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg12+1_arm64.deb pgdg 2.0.0 79.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 85.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg13+1_amd64.deb pgdg 2.0.0 81.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 83.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg13+1_arm64.deb pgdg 2.0.0 79.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 89.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg22.04+1_amd64.deb pgdg 2.0.0 84.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 86.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg22.04+1_arm64.deb pgdg 2.0.0 82.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 83.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg24.04+1_amd64.deb pgdg 2.0.0 80.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 81.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg24.04+1_arm64.deb pgdg 2.0.0 78.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 82.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg26.04+1_amd64.deb pgdg 2.0.0 80.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 80.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.1.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-stat-plans postgresql-18-pg-stat-plans_2.0.0-1.pgdg26.04+1_arm64.deb pgdg 2.0.0 77.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-18-pg-stat-plans_2.0.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 47.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_stat_plans_17-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 45.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_stat_plans_17-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 45.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_stat_plans_17-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 45.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_stat_plans_17-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 45.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_stat_plans_17-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 43.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_stat_plans_17-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 43.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_stat_plans_17-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 43.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_stat_plans_17-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 45.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_stat_plans_17-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 45.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_stat_plans_17-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_stat_plans_17-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.0 44.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_stat_plans_17-2.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 44.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_stat_plans_17-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_stat_plans_17 pg_stat_plans_17-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 44.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_stat_plans_17-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 97.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 101.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 98.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 109.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 106.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 98.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 95.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 98.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-stat-plans postgresql-17-pg-stat-plans_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 95.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-17-pg-stat-plans_2.1.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 46.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_stat_plans_16-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 44.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_stat_plans_16-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 44.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_stat_plans_16-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 44.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_stat_plans_16-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 44.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_stat_plans_16-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 43.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_stat_plans_16-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 43.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_stat_plans_16-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 43.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_stat_plans_16-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 45.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_stat_plans_16-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 45.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_stat_plans_16-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 45.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_stat_plans_16-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.0 43.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_stat_plans_16-2.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 43.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_stat_plans_16-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_stat_plans_16 pg_stat_plans_16-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 43.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_stat_plans_16-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 100.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 97.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 100.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 97.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 107.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 104.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 98.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 97.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-stat-plans postgresql-16-pg-stat-plans_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 94.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-plans/postgresql-16-pg-stat-plans_2.1.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_stat_plans` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_stat_plans;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_stat_plans -v 18  # PG 18
pig ext install -y pg_stat_plans -v 17  # PG 17
pig ext install -y pg_stat_plans -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_stat_plans_18       # PG 18
dnf install -y pg_stat_plans_17       # PG 17
dnf install -y pg_stat_plans_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-stat-plans   # PG 18
apt install -y postgresql-17-pg-stat-plans   # PG 17
apt install -y postgresql-16-pg-stat-plans   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = '$libdir/pg_stat_plans';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_stat_plans;
```
