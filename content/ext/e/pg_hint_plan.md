---
title: "pg_hint_plan"
linkTitle: "pg_hint_plan"
description: "Give PostgreSQL ability to manually force some decisions in execution plans."
weight: 2780
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ossc-db/pg_hint_plan">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ossc-db/pg_hint_plan</div>
    <div class="ext-card__desc">https://github.com/ossc-db/pg_hint_plan</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_hint_plan-REL18_1_8_0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_hint_plan-REL18_1_8_0.tar.gz</div>
    <div class="ext-card__desc">pg_hint_plan-REL18_1_8_0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_hint_plan`**](/ext/e/pg_hint_plan) | `1.8.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2780  | [**`pg_hint_plan`**](/ext/e/pg_hint_plan) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `hint_plan` |
{.ext-table}

| **Related** | [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`hypopg`](/ext/e/hypopg) [`pg_qualstats`](/ext/e/pg_qualstats) [`auto_explain`](/ext/e/auto_explain) [`index_advisor`](/ext/e/index_advisor) [`pg_profile`](/ext/e/pg_profile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_hint_plan` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_hint_plan_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-hint-plan` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.2 3 | AVAIL PGDG 1.5.3 3 | AVAIL PGDG 1.4.4 3 |
| el8.aarch64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.2 3 | AVAIL PGDG 1.5.3 3 | AVAIL PGDG 1.4.4 3 |
| el9.x86_64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.2 3 | AVAIL PGDG 1.5.3 3 | AVAIL PGDG 1.4.4 3 |
| el9.aarch64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.2 3 | AVAIL PGDG 1.5.3 3 | AVAIL PGDG 1.4.4 3 |
| el10.x86_64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.2 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.4.4 2 |
| el10.aarch64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 2 | AVAIL PGDG 1.6.2 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.4.4 2 |
| d12.x86_64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
| d12.aarch64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
| d13.x86_64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
| d13.aarch64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
| u22.x86_64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
| u22.aarch64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
| u24.x86_64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
| u24.aarch64 | AVAIL PGDG 1.8.0 1 | AVAIL PGDG 1.7.1 1 | AVAIL PGDG 1.6.2 1 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.4.4 1 |
@ el8.x86_64 18 pg_hint_plan_18 pg_hint_plan_18-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 55.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_hint_plan_18-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_hint_plan_18 pg_hint_plan_18-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 51.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_hint_plan_18-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_hint_plan_18 pg_hint_plan_18-1.8.0-1PGDG.rhel9.x86_64.rpm pgdg 1.8.0 54.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_hint_plan_18-1.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_hint_plan_18 pg_hint_plan_18-1.8.0-1PGDG.rhel9.aarch64.rpm pgdg 1.8.0 52.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_hint_plan_18-1.8.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_hint_plan_18 pg_hint_plan_18-1.8.0-1PGDG.rhel10.x86_64.rpm pgdg 1.8.0 55.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_hint_plan_18-1.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_hint_plan_18 pg_hint_plan_18-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 53.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_hint_plan_18-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg12+1_amd64.deb pgdg 1.8.0 132.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg12+1_arm64.deb pgdg 1.8.0 128.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg13+1_amd64.deb pgdg 1.8.0 133.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg13+1_arm64.deb pgdg 1.8.0 128.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg22.04+1_amd64.deb pgdg 1.8.0 133.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg22.04+1_arm64.deb pgdg 1.8.0 129.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg24.04+1_amd64.deb pgdg 1.8.0 131.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-hint-plan postgresql-18-pg-hint-plan_1.8.0-3.pgdg24.04+1_arm64.deb pgdg 1.8.0 128.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-18/postgresql-18-pg-hint-plan_1.8.0-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.1-1PGDG.rhel8.x86_64.rpm pgdg 1.7.1 53.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_hint_plan_17-1.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 51.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_hint_plan_17-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.1-1PGDG.rhel8.aarch64.rpm pgdg 1.7.1 50.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_hint_plan_17-1.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 48.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_hint_plan_17-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.1-1PGDG.rhel9.x86_64.rpm pgdg 1.7.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_hint_plan_17-1.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 50.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_hint_plan_17-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.1-1PGDG.rhel9.aarch64.rpm pgdg 1.7.1 50.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_hint_plan_17-1.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 49.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_hint_plan_17-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.1-1PGDG.rhel10.x86_64.rpm pgdg 1.7.1 53.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_hint_plan_17-1.7.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.0-3PGDG.rhel10.x86_64.rpm pgdg 1.7.0 52.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_hint_plan_17-1.7.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.1-1PGDG.rhel10.aarch64.rpm pgdg 1.7.1 52.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_hint_plan_17-1.7.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_hint_plan_17 pg_hint_plan_17-1.7.0-3PGDG.rhel10.aarch64.rpm pgdg 1.7.0 50.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_hint_plan_17-1.7.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg12+1_amd64.deb pgdg 1.7.1 128.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg12+1_arm64.deb pgdg 1.7.1 123.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg13+1_amd64.deb pgdg 1.7.1 128.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg13+1_arm64.deb pgdg 1.7.1 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg22.04+1_amd64.deb pgdg 1.7.1 140.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg22.04+1_arm64.deb pgdg 1.7.1 137.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg24.04+1_amd64.deb pgdg 1.7.1 126.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-hint-plan postgresql-17-pg-hint-plan_1.7.1-1.pgdg24.04+1_arm64.deb pgdg 1.7.1 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-17/postgresql-17-pg-hint-plan_1.7.1-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 45.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_hint_plan_16-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 44.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_hint_plan_16-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_hint_plan_16-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 43.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_hint_plan_16-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_hint_plan_16-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 40.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_hint_plan_16-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 46.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_hint_plan_16-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.1-1PGDG.rhel9.x86_64.rpm pgdg 1.6.1 44.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_hint_plan_16-1.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_hint_plan_16-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 45.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_hint_plan_16-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.1-1PGDG.rhel9.aarch64.rpm pgdg 1.6.1 43.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_hint_plan_16-1.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_hint_plan_16-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.2-1PGDG.rhel10.x86_64.rpm pgdg 1.6.2 47.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_hint_plan_16-1.6.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.1-3PGDG.rhel10.x86_64.rpm pgdg 1.6.1 46.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_hint_plan_16-1.6.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.2-1PGDG.rhel10.aarch64.rpm pgdg 1.6.2 46.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_hint_plan_16-1.6.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_hint_plan_16 pg_hint_plan_16-1.6.1-3PGDG.rhel10.aarch64.rpm pgdg 1.6.1 44.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_hint_plan_16-1.6.1-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg12+1_amd64.deb pgdg 1.6.2 104.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg12+1_arm64.deb pgdg 1.6.2 101.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg13+1_amd64.deb pgdg 1.6.2 104.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg13+1_arm64.deb pgdg 1.6.2 101.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg22.04+1_amd64.deb pgdg 1.6.2 117.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg22.04+1_arm64.deb pgdg 1.6.2 114.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg24.04+1_amd64.deb pgdg 1.6.2 104.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-hint-plan postgresql-16-pg-hint-plan_1.6.2-1.pgdg24.04+1_arm64.deb pgdg 1.6.2 101.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-16/postgresql-16-pg-hint-plan_1.6.2-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.3-1PGDG.rhel8.x86_64.rpm pgdg 1.5.3 45.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_hint_plan_15-1.5.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.2-1PGDG.rhel8.x86_64.rpm pgdg 1.5.2 43.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_hint_plan_15-1.5.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.1-1PGDG.rhel8.x86_64.rpm pgdg 1.5.1 48.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_hint_plan_15-1.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.3-1PGDG.rhel8.aarch64.rpm pgdg 1.5.3 43.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_hint_plan_15-1.5.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.2-1PGDG.rhel8.aarch64.rpm pgdg 1.5.2 41.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_hint_plan_15-1.5.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.1-1PGDG.rhel8.aarch64.rpm pgdg 1.5.1 46.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_hint_plan_15-1.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.3-1PGDG.rhel9.x86_64.rpm pgdg 1.5.3 46.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_hint_plan_15-1.5.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.2-1PGDG.rhel9.x86_64.rpm pgdg 1.5.2 44.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_hint_plan_15-1.5.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.1-1PGDG.rhel9.x86_64.rpm pgdg 1.5.1 49.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_hint_plan_15-1.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.3-1PGDG.rhel9.aarch64.rpm pgdg 1.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_hint_plan_15-1.5.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.2-1PGDG.rhel9.aarch64.rpm pgdg 1.5.2 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_hint_plan_15-1.5.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.1-1PGDG.rhel9.aarch64.rpm pgdg 1.5.1 47.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_hint_plan_15-1.5.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.3-1PGDG.rhel10.x86_64.rpm pgdg 1.5.3 47.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_hint_plan_15-1.5.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.2-3PGDG.rhel10.x86_64.rpm pgdg 1.5.2 46.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_hint_plan_15-1.5.2-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.3-1PGDG.rhel10.aarch64.rpm pgdg 1.5.3 45.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_hint_plan_15-1.5.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_hint_plan_15 pg_hint_plan_15-1.5.2-3PGDG.rhel10.aarch64.rpm pgdg 1.5.2 44.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_hint_plan_15-1.5.2-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg12+1_amd64.deb pgdg 1.5.3 104.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg12+1_arm64.deb pgdg 1.5.3 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg13+1_amd64.deb pgdg 1.5.3 104.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg13+1_arm64.deb pgdg 1.5.3 101.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg22.04+1_amd64.deb pgdg 1.5.3 117.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg22.04+1_arm64.deb pgdg 1.5.3 114.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg24.04+1_amd64.deb pgdg 1.5.3 104.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-hint-plan postgresql-15-pg-hint-plan_1.5.3-1.pgdg24.04+1_arm64.deb pgdg 1.5.3 101.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-15/postgresql-15-pg-hint-plan_1.5.3-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.4-1PGDG.rhel8.x86_64.rpm pgdg 1.4.4 44.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_hint_plan_14-1.4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.3-1PGDG.rhel8.x86_64.rpm pgdg 1.4.3 43.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_hint_plan_14-1.4.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.2-1PGDG.rhel8.x86_64.rpm pgdg 1.4.2 42.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_hint_plan_14-1.4.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.4-1PGDG.rhel8.aarch64.rpm pgdg 1.4.4 42.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_hint_plan_14-1.4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.3-1PGDG.rhel8.aarch64.rpm pgdg 1.4.3 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_hint_plan_14-1.4.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.2-1PGDG.rhel8.aarch64.rpm pgdg 1.4.2 39.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_hint_plan_14-1.4.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.4-1PGDG.rhel9.x86_64.rpm pgdg 1.4.4 45.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_hint_plan_14-1.4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.3-1PGDG.rhel9.x86_64.rpm pgdg 1.4.3 44.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_hint_plan_14-1.4.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.2-1PGDG.rhel9.x86_64.rpm pgdg 1.4.2 42.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_hint_plan_14-1.4.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.4-1PGDG.rhel9.aarch64.rpm pgdg 1.4.4 43.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_hint_plan_14-1.4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.3-1PGDG.rhel9.aarch64.rpm pgdg 1.4.3 42.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_hint_plan_14-1.4.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.2-1PGDG.rhel9.aarch64.rpm pgdg 1.4.2 41.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_hint_plan_14-1.4.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.4-1PGDG.rhel10.x86_64.rpm pgdg 1.4.4 46.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_hint_plan_14-1.4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.3-3PGDG.rhel10.x86_64.rpm pgdg 1.4.3 45.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_hint_plan_14-1.4.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.4-1PGDG.rhel10.aarch64.rpm pgdg 1.4.4 44.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_hint_plan_14-1.4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_hint_plan_14 pg_hint_plan_14-1.4.3-3PGDG.rhel10.aarch64.rpm pgdg 1.4.3 43.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_hint_plan_14-1.4.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg12+1_amd64.deb pgdg 1.4.4 104.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg12+1_arm64.deb pgdg 1.4.4 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg13+1_amd64.deb pgdg 1.4.4 104.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg13+1_arm64.deb pgdg 1.4.4 101.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg22.04+1_amd64.deb pgdg 1.4.4 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg22.04+1_arm64.deb pgdg 1.4.4 113.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg24.04+1_amd64.deb pgdg 1.4.4 104.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-hint-plan postgresql-14-pg-hint-plan_1.4.4-1.pgdg24.04+1_arm64.deb pgdg 1.4.4 101.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-hint-plan-14/postgresql-14-pg-hint-plan_1.4.4-1.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_hint_plan` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_hint_plan;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_hint_plan -v 18  # PG 18
pig ext install -y pg_hint_plan -v 17  # PG 17
pig ext install -y pg_hint_plan -v 16  # PG 16
pig ext install -y pg_hint_plan -v 15  # PG 15
pig ext install -y pg_hint_plan -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_hint_plan_18       # PG 18
dnf install -y pg_hint_plan_17       # PG 17
dnf install -y pg_hint_plan_16       # PG 16
dnf install -y pg_hint_plan_15       # PG 15
dnf install -y pg_hint_plan_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-hint-plan   # PG 18
apt install -y postgresql-17-pg-hint-plan   # PG 17
apt install -y postgresql-16-pg-hint-plan   # PG 16
apt install -y postgresql-15-pg-hint-plan   # PG 15
apt install -y postgresql-14-pg-hint-plan   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_hint_plan';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_hint_plan;
```




## Usage

> [pg_hint_plan: Give PostgreSQL ability to manually force some decisions in execution plans](https://github.com/ossc-db/pg_hint_plan)

`pg_hint_plan` overrides the PostgreSQL query planner's decisions using SQL comment hints, allowing you to force specific scan methods, join strategies, and join orders.

### Hint Syntax

Hints are embedded in SQL comments prefixed with `/*+` and closed with `*/`:

```sql
/*+
  HashJoin(a b)
  SeqScan(a)
*/
SELECT *
FROM pgbench_branches b
JOIN pgbench_accounts a ON b.bid = a.bid
ORDER BY a.aid;
```

### Scan Method Hints

| Hint | Description |
|------|-------------|
| `SeqScan(table)` | Force sequential scan |
| `IndexScan(table [index...])` | Force index scan (optionally restrict to specific indexes) |
| `IndexOnlyScan(table [index...])` | Force index-only scan |
| `BitmapScan(table [index...])` | Force bitmap scan |
| `TidScan(table)` | Force TID scan |
| `NoSeqScan(table)` | Prevent sequential scan |
| `NoIndexScan(table)` | Prevent index scan and index-only scan |
| `NoIndexOnlyScan(table)` | Prevent index-only scan |
| `NoBitmapScan(table)` | Prevent bitmap scan |
| `NoTidScan(table)` | Prevent TID scan |
| `IndexScanRegexp(table [regexp...])` | Force index scan with regex-matched index names |
| `DisableIndex(table index...)` | Disable specific indexes during planning |

### Join Method Hints

| Hint | Description |
|------|-------------|
| `NestLoop(t1 t2 [t3...])` | Force nested loop join |
| `HashJoin(t1 t2 [t3...])` | Force hash join |
| `MergeJoin(t1 t2 [t3...])` | Force merge join |
| `NoNestLoop(t1 t2 [t3...])` | Prevent nested loop join |
| `NoHashJoin(t1 t2 [t3...])` | Prevent hash join |
| `NoMergeJoin(t1 t2 [t3...])` | Prevent merge join |
| `Memoize(t1 t2 [t3...])` | Allow memoization of inner result |
| `NoMemoize(t1 t2 [t3...])` | Prevent memoization |

### Join Order Hints

```sql
-- Simple left-deep join order
/*+ Leading(a b c) */

-- Explicit join tree with nesting
/*+ Leading((a (b c))) */
```

### Row Number Correction

```sql
/*+ Rows(a b #100) */    -- Set to absolute number
/*+ Rows(a b +100) */    -- Add to estimate
/*+ Rows(a b -100) */    -- Subtract from estimate
/*+ Rows(a b *2.0) */    -- Multiply estimate
```

### Parallel Query Control

```sql
/*+ Parallel(table 4 hard) */   -- Force 4 parallel workers
/*+ Parallel(table 0 hard) */   -- Disable parallelism
```

### GUC Parameter Override

```sql
/*+ Set(random_page_cost 1.0) Set(seq_page_cost 1.0) */
SELECT * FROM my_table WHERE id = 42;
```

### GUC Configuration

| Parameter | Description | Default |
|-----------|-------------|---------|
| `pg_hint_plan.enable_hint` | Enable or disable hints globally | on |
| `pg_hint_plan.enable_hint_table` | Enable hint table for query-based hints | off |
| `pg_hint_plan.debug_print` | Print debug info for applied hints | off |
| `pg_hint_plan.parse_messages` | Log level for hint parsing messages | INFO |
| `pg_hint_plan.message_level` | Log level for debug messages | LOG |
