---
title: "pg_show_plans"
linkTitle: "pg_show_plans"
description: "show query plans of all currently running SQL statements"
weight: 6210
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/pg_show_plans">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/pg_show_plans</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/pg_show_plans</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_show_plans-2.1.8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_show_plans-2.1.8.tar.gz</div>
    <div class="ext-card__desc">pg_show_plans-2.1.8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_show_plans`**](/ext/e/pg_show_plans) | `2.1.8` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6210  | [**`pg_show_plans`**](/ext/e/pg_show_plans) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_stat_plans`](/ext/e/pg_stat_plans) [`auto_explain`](/ext/e/auto_explain) [`explain_ui`](/ext/e/explain_ui) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_overexplain`](/ext/e/pg_overexplain) [`pg_qualstats`](/ext/e/pg_qualstats) [`online_advisor`](/ext/e/online_advisor) [`pgrowlocks`](/ext/e/pgrowlocks) [`pg_wait_sampling`](/ext/e/pg_wait_sampling) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_show_plans` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_show_plans_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.8` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-show-plans` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 4 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 5 |
| el8.aarch64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 4 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 5 |
| el9.x86_64 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 7 | AVAIL PGDG 2.1.8 8 | AVAIL PGDG 2.1.8 8 | AVAIL PGDG 2.1.8 8 |
| el9.aarch64 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 7 | AVAIL PGDG 2.1.8 8 | AVAIL PGDG 2.1.8 8 | AVAIL PGDG 2.1.8 8 |
| el10.x86_64 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 6 | AVAIL PGDG 2.1.8 6 | AVAIL PGDG 2.1.8 6 | AVAIL PGDG 2.1.8 6 |
| el10.aarch64 | AVAIL PGDG 2.1.8 5 | AVAIL PGDG 2.1.8 6 | AVAIL PGDG 2.1.8 6 | AVAIL PGDG 2.1.8 6 | AVAIL PGDG 2.1.8 6 |
| d12.x86_64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| d12.aarch64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| d13.x86_64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| d13.aarch64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| u22.x86_64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| u22.aarch64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| u24.x86_64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| u24.aarch64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| u26.x86_64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
| u26.aarch64 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 | AVAIL PGDG 2.1.8 2 |
@ el8.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.8 19.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_show_plans_18-2.1.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-1PGDG.rhel8.x86_64.rpm pgdg 2.1.6 19.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_show_plans_18-2.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.8 19.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_show_plans_18-2.1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-1PGDG.rhel8.aarch64.rpm pgdg 2.1.6 19.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_show_plans_18-2.1.6-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_show_plans_18-2.1.8-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_show_plans_18-2.1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_show_plans_18-2.1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-3PGDG.rhel9.8.x86_64.rpm pgdg 2.1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_show_plans_18-2.1.6-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-1PGDG.rhel9.x86_64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_show_plans_18-2.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.8 19.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_show_plans_18-2.1.8-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.8 19.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_show_plans_18-2.1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_show_plans_18-2.1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-3PGDG.rhel9.8.aarch64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_show_plans_18-2.1.6-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-1PGDG.rhel9.aarch64.rpm pgdg 2.1.6 19.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_show_plans_18-2.1.6-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_show_plans_18-2.1.8-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_show_plans_18-2.1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.8 20.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_show_plans_18-2.1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-3PGDG.rhel10.2.x86_64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_show_plans_18-2.1.6-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-1PGDG.rhel10.x86_64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_show_plans_18-2.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_show_plans_18-2.1.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_show_plans_18-2.1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_show_plans_18-2.1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_show_plans_18-2.1.6-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_show_plans_18 pg_show_plans_18-2.1.6-1PGDG.rhel10.aarch64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_show_plans_18-2.1.6-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg12+1_amd64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg12+1_amd64.deb pgdg 2.1.7 23.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg12+1_arm64.deb pgdg 2.1.8 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg12+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg13+1_amd64.deb pgdg 2.1.8 23.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg13+1_amd64.deb pgdg 2.1.7 23.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg13+1_arm64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg13+1_arm64.deb pgdg 2.1.7 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb pgdg 2.1.8 23.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb pgdg 2.1.7 23.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb pgdg 2.1.8 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb pgdg 2.1.8 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb pgdg 2.1.7 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb pgdg 2.1.8 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-show-plans postgresql-18-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb pgdg 2.1.7 22.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-18-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.8 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_show_plans_17-2.1.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-1PGDG.rhel8.x86_64.rpm pgdg 2.1.6 19.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_show_plans_17-2.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.3-1PGDG.rhel8.x86_64.rpm pgdg 2.1.3 19.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_show_plans_17-2.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.2-1PGDG.rhel8.x86_64.rpm pgdg 2.1.2 18.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_show_plans_17-2.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.8 19.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_show_plans_17-2.1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-1PGDG.rhel8.aarch64.rpm pgdg 2.1.6 19.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_show_plans_17-2.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.3-1PGDG.rhel8.aarch64.rpm pgdg 2.1.3 18.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_show_plans_17-2.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.2-1PGDG.rhel8.aarch64.rpm pgdg 2.1.2 18.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_show_plans_17-2.1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_show_plans_17-2.1.8-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_show_plans_17-2.1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_show_plans_17-2.1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-3PGDG.rhel9.8.x86_64.rpm pgdg 2.1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_show_plans_17-2.1.6-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-1PGDG.rhel9.x86_64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_show_plans_17-2.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.3-1PGDG.rhel9.x86_64.rpm pgdg 2.1.3 19.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_show_plans_17-2.1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.2-1PGDG.rhel9.x86_64.rpm pgdg 2.1.2 19.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_show_plans_17-2.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_show_plans_17-2.1.8-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_show_plans_17-2.1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_show_plans_17-2.1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-3PGDG.rhel9.8.aarch64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_show_plans_17-2.1.6-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-1PGDG.rhel9.aarch64.rpm pgdg 2.1.6 19.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_show_plans_17-2.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.3-1PGDG.rhel9.aarch64.rpm pgdg 2.1.3 19.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_show_plans_17-2.1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.2-1PGDG.rhel9.aarch64.rpm pgdg 2.1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_show_plans_17-2.1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_show_plans_17-2.1.8-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_show_plans_17-2.1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.8 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_show_plans_17-2.1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-3PGDG.rhel10.2.x86_64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_show_plans_17-2.1.6-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-1PGDG.rhel10.x86_64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_show_plans_17-2.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_show_plans_17 pg_show_plans_17-2.1.3-1PGDG.rhel10.x86_64.rpm pgdg 2.1.3 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_show_plans_17-2.1.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_show_plans_17-2.1.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_show_plans_17-2.1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_show_plans_17-2.1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_show_plans_17-2.1.6-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.6-1PGDG.rhel10.aarch64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_show_plans_17-2.1.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_show_plans_17 pg_show_plans_17-2.1.3-1PGDG.rhel10.aarch64.rpm pgdg 2.1.3 20.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_show_plans_17-2.1.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg12+1_amd64.deb pgdg 2.1.8 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg12+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg12+1_arm64.deb pgdg 2.1.8 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg12+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg13+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg13+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg13+1_arm64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg13+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb pgdg 2.1.8 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb pgdg 2.1.7 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb pgdg 2.1.8 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb pgdg 2.1.7 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb pgdg 2.1.7 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb pgdg 2.1.7 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb pgdg 2.1.8 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-show-plans postgresql-17-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb pgdg 2.1.7 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-17-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.8 19.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_show_plans_16-2.1.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-1PGDG.rhel8.x86_64.rpm pgdg 2.1.6 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_show_plans_16-2.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.3-1PGDG.rhel8.x86_64.rpm pgdg 2.1.3 19.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_show_plans_16-2.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.2-1PGDG.rhel8.x86_64.rpm pgdg 2.1.2 18.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_show_plans_16-2.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.0-1PGDG.rhel8.x86_64.rpm pgdg 2.1.0 18.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_show_plans_16-2.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.8 19.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_show_plans_16-2.1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-1PGDG.rhel8.aarch64.rpm pgdg 2.1.6 19.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_show_plans_16-2.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.3-1PGDG.rhel8.aarch64.rpm pgdg 2.1.3 18.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_show_plans_16-2.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.2-1PGDG.rhel8.aarch64.rpm pgdg 2.1.2 18.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_show_plans_16-2.1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.0-1PGDG.rhel8.aarch64.rpm pgdg 2.1.0 18.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_show_plans_16-2.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.8-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-3PGDG.rhel9.8.x86_64.rpm pgdg 2.1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.6-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-1PGDG.rhel9.x86_64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.3-1PGDG.rhel9.x86_64.rpm pgdg 2.1.3 19.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.2-1PGDG.rhel9.x86_64.rpm pgdg 2.1.2 19.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.0-1PGDG.rhel9.x86_64.rpm pgdg 2.1.0 19.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_show_plans_16-2.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.8-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-3PGDG.rhel9.8.aarch64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.6-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-1PGDG.rhel9.aarch64.rpm pgdg 2.1.6 19.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.3-1PGDG.rhel9.aarch64.rpm pgdg 2.1.3 19.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.2-1PGDG.rhel9.aarch64.rpm pgdg 2.1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.0-1PGDG.rhel9.aarch64.rpm pgdg 2.1.0 19.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_show_plans_16-2.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_show_plans_16-2.1.8-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_show_plans_16-2.1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.8 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_show_plans_16-2.1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-3PGDG.rhel10.2.x86_64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_show_plans_16-2.1.6-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-1PGDG.rhel10.x86_64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_show_plans_16-2.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_show_plans_16 pg_show_plans_16-2.1.3-1PGDG.rhel10.x86_64.rpm pgdg 2.1.3 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_show_plans_16-2.1.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_show_plans_16-2.1.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_show_plans_16-2.1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_show_plans_16-2.1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_show_plans_16-2.1.6-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.6-1PGDG.rhel10.aarch64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_show_plans_16-2.1.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_show_plans_16 pg_show_plans_16-2.1.3-1PGDG.rhel10.aarch64.rpm pgdg 2.1.3 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_show_plans_16-2.1.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg12+1_amd64.deb pgdg 2.1.8 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg12+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg12+1_arm64.deb pgdg 2.1.8 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg12+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg13+1_amd64.deb pgdg 2.1.8 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg13+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg13+1_arm64.deb pgdg 2.1.8 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg13+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb pgdg 2.1.8 27.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb pgdg 2.1.7 27.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb pgdg 2.1.8 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb pgdg 2.1.7 26.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb pgdg 2.1.7 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb pgdg 2.1.7 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb pgdg 2.1.8 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-show-plans postgresql-16-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb pgdg 2.1.7 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-16-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.8 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_show_plans_15-2.1.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-1PGDG.rhel8.x86_64.rpm pgdg 2.1.6 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_show_plans_15-2.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.3-1PGDG.rhel8.x86_64.rpm pgdg 2.1.3 19.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_show_plans_15-2.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.2-1PGDG.rhel8.x86_64.rpm pgdg 2.1.2 18.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_show_plans_15-2.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.0-1PGDG.rhel8.x86_64.rpm pgdg 2.1.0 18.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_show_plans_15-2.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.8 19.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_show_plans_15-2.1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-1PGDG.rhel8.aarch64.rpm pgdg 2.1.6 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_show_plans_15-2.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.3-1PGDG.rhel8.aarch64.rpm pgdg 2.1.3 18.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_show_plans_15-2.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.2-1PGDG.rhel8.aarch64.rpm pgdg 2.1.2 18.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_show_plans_15-2.1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.0-1PGDG.rhel8.aarch64.rpm pgdg 2.1.0 18.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_show_plans_15-2.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.8-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-3PGDG.rhel9.8.x86_64.rpm pgdg 2.1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.6-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-1PGDG.rhel9.x86_64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.3-1PGDG.rhel9.x86_64.rpm pgdg 2.1.3 19.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.2-1PGDG.rhel9.x86_64.rpm pgdg 2.1.2 19.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.0-1PGDG.rhel9.x86_64.rpm pgdg 2.1.0 19.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_show_plans_15-2.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.8-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-3PGDG.rhel9.8.aarch64.rpm pgdg 2.1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.6-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-1PGDG.rhel9.aarch64.rpm pgdg 2.1.6 19.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.3-1PGDG.rhel9.aarch64.rpm pgdg 2.1.3 19.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.2-1PGDG.rhel9.aarch64.rpm pgdg 2.1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.0-1PGDG.rhel9.aarch64.rpm pgdg 2.1.0 19.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_show_plans_15-2.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_show_plans_15-2.1.8-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_show_plans_15-2.1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.8 20.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_show_plans_15-2.1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-3PGDG.rhel10.2.x86_64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_show_plans_15-2.1.6-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-1PGDG.rhel10.x86_64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_show_plans_15-2.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_show_plans_15 pg_show_plans_15-2.1.3-1PGDG.rhel10.x86_64.rpm pgdg 2.1.3 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_show_plans_15-2.1.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_show_plans_15-2.1.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_show_plans_15-2.1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.8 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_show_plans_15-2.1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_show_plans_15-2.1.6-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.6-1PGDG.rhel10.aarch64.rpm pgdg 2.1.6 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_show_plans_15-2.1.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_show_plans_15 pg_show_plans_15-2.1.3-1PGDG.rhel10.aarch64.rpm pgdg 2.1.3 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_show_plans_15-2.1.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg12+1_amd64.deb pgdg 2.1.8 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg12+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg12+1_arm64.deb pgdg 2.1.8 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg12+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg13+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg13+1_amd64.deb pgdg 2.1.7 23.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg13+1_arm64.deb pgdg 2.1.8 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg13+1_arm64.deb pgdg 2.1.7 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb pgdg 2.1.8 27.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb pgdg 2.1.7 27.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb pgdg 2.1.8 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb pgdg 2.1.7 26.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb pgdg 2.1.8 23.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb pgdg 2.1.7 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb pgdg 2.1.7 23.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb pgdg 2.1.8 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb pgdg 2.1.7 23.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb pgdg 2.1.8 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-show-plans postgresql-15-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb pgdg 2.1.7 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-15-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.8 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_show_plans_14-2.1.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-1PGDG.rhel8.x86_64.rpm pgdg 2.1.6 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_show_plans_14-2.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.3-1PGDG.rhel8.x86_64.rpm pgdg 2.1.3 19.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_show_plans_14-2.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.2-1PGDG.rhel8.x86_64.rpm pgdg 2.1.2 18.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_show_plans_14-2.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.0-1PGDG.rhel8.x86_64.rpm pgdg 2.1.0 18.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_show_plans_14-2.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.8 19.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_show_plans_14-2.1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-1PGDG.rhel8.aarch64.rpm pgdg 2.1.6 19.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_show_plans_14-2.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.3-1PGDG.rhel8.aarch64.rpm pgdg 2.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_show_plans_14-2.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.2-1PGDG.rhel8.aarch64.rpm pgdg 2.1.2 18.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_show_plans_14-2.1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.0-1PGDG.rhel8.aarch64.rpm pgdg 2.1.0 18.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_show_plans_14-2.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.8-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.8-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-3PGDG.rhel9.8.x86_64.rpm pgdg 2.1.6 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.6-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-1PGDG.rhel9.x86_64.rpm pgdg 2.1.6 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.3-1PGDG.rhel9.x86_64.rpm pgdg 2.1.3 19.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.2-1PGDG.rhel9.x86_64.rpm pgdg 2.1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.0-1PGDG.rhel9.x86_64.rpm pgdg 2.1.0 19.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_show_plans_14-2.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.8 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.8-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.8 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.8 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.8-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-3PGDG.rhel9.8.aarch64.rpm pgdg 2.1.6 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.6-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-1PGDG.rhel9.aarch64.rpm pgdg 2.1.6 19.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.3-1PGDG.rhel9.aarch64.rpm pgdg 2.1.3 19.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.2-1PGDG.rhel9.aarch64.rpm pgdg 2.1.2 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.0-1PGDG.rhel9.aarch64.rpm pgdg 2.1.0 18.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_show_plans_14-2.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_show_plans_14-2.1.8-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.8 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_show_plans_14-2.1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.8 20.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_show_plans_14-2.1.8-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-3PGDG.rhel10.2.x86_64.rpm pgdg 2.1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_show_plans_14-2.1.6-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-1PGDG.rhel10.x86_64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_show_plans_14-2.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_show_plans_14 pg_show_plans_14-2.1.3-1PGDG.rhel10.x86_64.rpm pgdg 2.1.3 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_show_plans_14-2.1.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_show_plans_14-2.1.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_show_plans_14-2.1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.8-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.8 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_show_plans_14-2.1.8-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_show_plans_14-2.1.6-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.6-1PGDG.rhel10.aarch64.rpm pgdg 2.1.6 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_show_plans_14-2.1.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_show_plans_14 pg_show_plans_14-2.1.3-1PGDG.rhel10.aarch64.rpm pgdg 2.1.3 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_show_plans_14-2.1.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg12+1_amd64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg12+1_amd64.deb pgdg 2.1.7 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg12+1_arm64.deb pgdg 2.1.8 22.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg12+1_arm64.deb pgdg 2.1.7 22.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg13+1_amd64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg13+1_amd64.deb pgdg 2.1.7 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg13+1_arm64.deb pgdg 2.1.8 22.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg13+1_arm64.deb pgdg 2.1.7 22.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb pgdg 2.1.8 26.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb pgdg 2.1.7 26.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb pgdg 2.1.8 26.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb pgdg 2.1.7 26.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb pgdg 2.1.8 23.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb pgdg 2.1.7 23.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb pgdg 2.1.8 22.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb pgdg 2.1.7 22.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb pgdg 2.1.8 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb pgdg 2.1.7 23.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb pgdg 2.1.8 22.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.8-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-show-plans postgresql-14-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb pgdg 2.1.7 22.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-show-plans/postgresql-14-show-plans_2.1.7-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_show_plans` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_show_plans;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_show_plans -v 18  # PG 18
pig ext install -y pg_show_plans -v 17  # PG 17
pig ext install -y pg_show_plans -v 16  # PG 16
pig ext install -y pg_show_plans -v 15  # PG 15
pig ext install -y pg_show_plans -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_show_plans_18       # PG 18
dnf install -y pg_show_plans_17       # PG 17
dnf install -y pg_show_plans_16       # PG 16
dnf install -y pg_show_plans_15       # PG 15
dnf install -y pg_show_plans_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-show-plans   # PG 18
apt install -y postgresql-17-show-plans   # PG 17
apt install -y postgresql-16-show-plans   # PG 16
apt install -y postgresql-15-show-plans   # PG 15
apt install -y postgresql-14-show-plans   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_show_plans';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_show_plans;
```




## Usage

> [pg_show_plans: show query plans of running SQL statements](https://github.com/cybertec-postgresql/pg_show_plans)

pg_show_plans displays the execution plans of all currently running SQL statements in real time. Plans are stored in a shared memory hash table.

### Viewing Running Plans

```sql
-- Show plans of all currently running queries
SELECT * FROM pg_show_plans;

-- Show plans along with their query text
SELECT * FROM pg_show_plans_q;
```

The views return:

| Column | Type | Description |
|--------|------|-------------|
| `pid` | integer | Server process ID |
| `level` | integer | Query nest level (0 = top level) |
| `userid` | oid | User OID |
| `dbid` | oid | Database OID |
| `plan` | text | Query plan text |
| `query` | text | Query string (only in `pg_show_plans_q`) |

### Nested Queries

When a function invokes SQL statements, they appear at deeper nesting levels:

```sql
SELECT * FROM pg_show_plans;
  pid  | level | userid | dbid  |                       plan
-------+-------+--------+-------+-----------------------------------------------
 11504 |     0 |     10 | 16384 | Function Scan on print_item  (cost=...)
 11504 |     1 |     10 | 16384 | Result  (cost=0.00..0.01 rows=1 width=4)
```

### GUC Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_show_plans.plan_format` | `text` | Output format: `text`, `json`, `yaml`, `xml` |
| `pg_show_plans.max_plan_length` | 16384 | Max plan length in bytes (affects shared memory) |
| `pg_show_plans.is_enabled` | `true` | Enable or disable the extension at runtime |
