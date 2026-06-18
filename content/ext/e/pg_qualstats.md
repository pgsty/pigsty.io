---
title: "pg_qualstats"
linkTitle: "pg_qualstats"
description: "An extension collecting statistics about quals"
weight: 6240
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/powa-team/pg_qualstats">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">powa-team/pg_qualstats</div>
    <div class="ext-card__desc">https://github.com/powa-team/pg_qualstats</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_qualstats`**](/ext/e/pg_qualstats) | `2.1.3` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6240  | [**`pg_qualstats`**](/ext/e/pg_qualstats) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`hypopg`](/ext/e/hypopg) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`powa`](/ext/e/powa) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`index_advisor`](/ext/e/index_advisor) [`pre_prepare`](/ext/e/pre_prepare) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_qualstats` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_qualstats_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-qualstats` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.1 1 | AVAIL PGDG 2.1.1 3 | AVAIL PGDG 2.1.1 3 | AVAIL PGDG 2.1.1 4 |
| el8.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.1 1 | AVAIL PGDG 2.1.1 3 | AVAIL PGDG 2.1.1 3 | AVAIL PGDG 2.1.1 3 |
| el9.x86_64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| el9.aarch64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| el10.x86_64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| el10.aarch64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| d12.x86_64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| d12.aarch64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| d13.x86_64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| d13.aarch64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| u22.x86_64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| u22.aarch64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| u24.x86_64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| u24.aarch64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| u26.x86_64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
| u26.aarch64 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 | AVAIL PGDG 2.1.3 1 |
@ el8.x86_64 18 pg_qualstats_18 pg_qualstats_18-2.1.2-1PGDG.rhel8.x86_64.rpm pgdg 2.1.2 38.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_qualstats_18-2.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_qualstats_18 pg_qualstats_18-2.1.2-1PGDG.rhel8.aarch64.rpm pgdg 2.1.2 37.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_qualstats_18-2.1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_qualstats_18 pg_qualstats_18-2.1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_qualstats_18-2.1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 18 pg_qualstats_18 pg_qualstats_18-2.1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.3 36.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_qualstats_18-2.1.3-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 18 pg_qualstats_18 pg_qualstats_18-2.1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_qualstats_18-2.1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 pg_qualstats_18 pg_qualstats_18-2.1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.3 36.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_qualstats_18-2.1.3-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb pgdg 2.1.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb pgdg 2.1.3 55.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb pgdg 2.1.3 56.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb pgdg 2.1.3 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb pgdg 2.1.3 56.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb pgdg 2.1.3 54.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb pgdg 2.1.3 54.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb pgdg 2.1.3 53.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb pgdg 2.1.3 53.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-qualstats postgresql-18-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb pgdg 2.1.3 52.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-18-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_qualstats_17 pg_qualstats_17-2.1.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1.1 37.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_qualstats_17-2.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_qualstats_17 pg_qualstats_17-2.1.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1.1 36.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_qualstats_17-2.1.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_qualstats_17 pg_qualstats_17-2.1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_qualstats_17-2.1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 17 pg_qualstats_17 pg_qualstats_17-2.1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.3 36.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_qualstats_17-2.1.3-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 17 pg_qualstats_17 pg_qualstats_17-2.1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_qualstats_17-2.1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 17 pg_qualstats_17 pg_qualstats_17-2.1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.3 36.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_qualstats_17-2.1.3-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb pgdg 2.1.3 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb pgdg 2.1.3 55.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb pgdg 2.1.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb pgdg 2.1.3 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb pgdg 2.1.3 60.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb pgdg 2.1.3 58.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb pgdg 2.1.3 54.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb pgdg 2.1.3 53.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb pgdg 2.1.3 53.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-qualstats postgresql-17-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb pgdg 2.1.3 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-17-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_qualstats_16 pg_qualstats_16-2.1.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1.1 37.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_qualstats_16-2.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_qualstats_16 pg_qualstats_16-2.1.0-1PGDG.rhel8.x86_64.rpm pgdg 2.1.0 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_qualstats_16-2.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_qualstats_16 pg_qualstats_16-2.0.4-3PGDG.rhel8.x86_64.rpm pgdg 2.0.4 35.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_qualstats_16-2.0.4-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_qualstats_16 pg_qualstats_16-2.1.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1.1 36.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_qualstats_16-2.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_qualstats_16 pg_qualstats_16-2.1.0-1PGDG.rhel8.aarch64.rpm pgdg 2.1.0 36.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_qualstats_16-2.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_qualstats_16 pg_qualstats_16-2.0.4-3PGDG.rhel8.aarch64.rpm pgdg 2.0.4 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_qualstats_16-2.0.4-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_qualstats_16 pg_qualstats_16-2.1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.3 36.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_qualstats_16-2.1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 16 pg_qualstats_16 pg_qualstats_16-2.1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.3 36.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_qualstats_16-2.1.3-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 16 pg_qualstats_16 pg_qualstats_16-2.1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.3 37.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_qualstats_16-2.1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 16 pg_qualstats_16 pg_qualstats_16-2.1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.3 36.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_qualstats_16-2.1.3-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb pgdg 2.1.3 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb pgdg 2.1.3 55.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb pgdg 2.1.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb pgdg 2.1.3 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb pgdg 2.1.3 60.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb pgdg 2.1.3 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb pgdg 2.1.3 54.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb pgdg 2.1.3 53.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb pgdg 2.1.3 53.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-qualstats postgresql-16-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb pgdg 2.1.3 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-16-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_qualstats_15 pg_qualstats_15-2.1.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1.1 37.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_qualstats_15-2.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_qualstats_15 pg_qualstats_15-2.1.0-1PGDG.rhel8.x86_64.rpm pgdg 2.1.0 37.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_qualstats_15-2.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_qualstats_15 pg_qualstats_15-2.0.4-1.rhel8.x86_64.rpm pgdg 2.0.4 68.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_qualstats_15-2.0.4-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_qualstats_15 pg_qualstats_15-2.1.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1.1 36.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_qualstats_15-2.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_qualstats_15 pg_qualstats_15-2.1.0-1PGDG.rhel8.aarch64.rpm pgdg 2.1.0 36.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_qualstats_15-2.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_qualstats_15 pg_qualstats_15-2.0.4-1.rhel8.aarch64.rpm pgdg 2.0.4 66.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_qualstats_15-2.0.4-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_qualstats_15 pg_qualstats_15-2.1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_qualstats_15-2.1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 15 pg_qualstats_15 pg_qualstats_15-2.1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.3 36.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_qualstats_15-2.1.3-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 15 pg_qualstats_15 pg_qualstats_15-2.1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.3 37.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_qualstats_15-2.1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 15 pg_qualstats_15 pg_qualstats_15-2.1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.3 36.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_qualstats_15-2.1.3-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb pgdg 2.1.3 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb pgdg 2.1.3 55.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb pgdg 2.1.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb pgdg 2.1.3 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb pgdg 2.1.3 60.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb pgdg 2.1.3 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb pgdg 2.1.3 54.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb pgdg 2.1.3 53.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb pgdg 2.1.3 53.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-qualstats postgresql-15-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb pgdg 2.1.3 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-15-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_qualstats_14 pg_qualstats_14-2.1.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1.1 37.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_qualstats_14-2.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_qualstats_14 pg_qualstats_14-2.1.0-1PGDG.rhel8.x86_64.rpm pgdg 2.1.0 37.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_qualstats_14-2.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_qualstats_14 pg_qualstats_14-2.0.4-1.rhel8.x86_64.rpm pgdg 2.0.4 68.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_qualstats_14-2.0.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_qualstats_14 pg_qualstats_14-2.0.3-1.rhel8.x86_64.rpm pgdg 2.0.3 67.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_qualstats_14-2.0.3-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_qualstats_14 pg_qualstats_14-2.1.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1.1 36.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_qualstats_14-2.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_qualstats_14 pg_qualstats_14-2.1.0-1PGDG.rhel8.aarch64.rpm pgdg 2.1.0 36.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_qualstats_14-2.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_qualstats_14 pg_qualstats_14-2.0.4-1.rhel8.aarch64.rpm pgdg 2.0.4 67.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_qualstats_14-2.0.4-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_qualstats_14 pg_qualstats_14-2.1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.3 37.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_qualstats_14-2.1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 pg_qualstats_14 pg_qualstats_14-2.1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.3 36.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_qualstats_14-2.1.3-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 14 pg_qualstats_14 pg_qualstats_14-2.1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.3 37.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_qualstats_14-2.1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 14 pg_qualstats_14 pg_qualstats_14-2.1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.3 36.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_qualstats_14-2.1.3-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb pgdg 2.1.3 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb pgdg 2.1.3 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb pgdg 2.1.3 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb pgdg 2.1.3 56.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb pgdg 2.1.3 61.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb pgdg 2.1.3 59.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb pgdg 2.1.3 54.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb pgdg 2.1.3 53.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb pgdg 2.1.3 54.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-qualstats postgresql-14-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb pgdg 2.1.3 53.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-qualstats/postgresql-14-pg-qualstats_2.1.3-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_qualstats` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_qualstats;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_qualstats -v 18  # PG 18
pig ext install -y pg_qualstats -v 17  # PG 17
pig ext install -y pg_qualstats -v 16  # PG 16
pig ext install -y pg_qualstats -v 15  # PG 15
pig ext install -y pg_qualstats -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_qualstats_18       # PG 18
dnf install -y pg_qualstats_17       # PG 17
dnf install -y pg_qualstats_16       # PG 16
dnf install -y pg_qualstats_15       # PG 15
dnf install -y pg_qualstats_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-qualstats   # PG 18
apt install -y postgresql-17-pg-qualstats   # PG 17
apt install -y postgresql-16-pg-qualstats   # PG 16
apt install -y postgresql-15-pg-qualstats   # PG 15
apt install -y postgresql-14-pg-qualstats   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_qualstats';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_qualstats;
```



## Usage

> [pg_qualstats: predicate statistics collector for PostgreSQL](https://github.com/powa-team/pg_qualstats)

pg_qualstats keeps statistics on predicates found in `WHERE` clauses and `JOIN` conditions. It tracks which columns are most frequently queried and which are queried together, enabling index recommendations.

### Viewing Predicate Statistics

```sql
-- Raw predicate statistics for current database
SELECT * FROM pg_qualstats;

-- Human-readable aggregated form
SELECT * FROM pg_qualstats_pretty;

-- Aggregated per-attribute statistics
SELECT * FROM pg_qualstats_all;

-- Predicates aggregated by query
SELECT * FROM pg_qualstats_by_query;
```

### Index Advisor

Generate index suggestions based on collected predicate statistics:

```sql
-- Suggest indexes (filtering predicates with >1000 rows and >30% selectivity)
SELECT v FROM json_array_elements(
    pg_qualstats_index_advisor(min_filter => 50)->'indexes') v;

-- Show predicates that couldn't be optimized
SELECT v FROM json_array_elements(
    pg_qualstats_index_advisor(min_filter => 50)->'unoptimised') v;
```

### Utility Functions

```sql
-- Get stored query text for a queryid
SELECT pg_qualstats_example_query(queryid);

-- Get all stored query texts
SELECT * FROM pg_qualstats_example_queries();

-- Reset all statistics
SELECT pg_qualstats_reset();
```

### Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_qualstats.enabled` | `true` | Enable/disable collection |
| `pg_qualstats.track_constants` | `true` | Track individual constant values |
| `pg_qualstats.max` | 1000 | Maximum tracked predicates and query texts |
| `pg_qualstats.resolve_oids` | `false` | Resolve OIDs at query time (uses more space) |
| `pg_qualstats.track_pg_catalog` | `false` | Track predicates on pg_catalog objects |
| `pg_qualstats.sample_rate` | -1 | Fraction of queries to sample (-1 = auto: 1/max_connections) |
