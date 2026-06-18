---
title: "hypopg"
linkTitle: "hypopg"
description: "Hypothetical indexes for PostgreSQL"
weight: 2790
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HypoPG/hypopg">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HypoPG/hypopg</div>
    <div class="ext-card__desc">https://github.com/HypoPG/hypopg</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/hypopg-1.4.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">hypopg-1.4.2.tar.gz</div>
    <div class="ext-card__desc">hypopg-1.4.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hypopg`**](/ext/e/hypopg) | `1.4.2` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2790  | [**`hypopg`**](/ext/e/hypopg) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`index_advisor`](/ext/e/index_advisor) [`pg_qualstats`](/ext/e/pg_qualstats) [`powa`](/ext/e/powa) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`auto_explain`](/ext/e/auto_explain) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`btree_gin`](/ext/e/btree_gin) [`pg_show_plans`](/ext/e/pg_show_plans) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `hypopg` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `hypopg_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-hypopg` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| el8.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| el9.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| el9.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| el10.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| el10.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| d12.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| d12.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| d13.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| d13.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| u22.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| u22.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| u24.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| u24.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| u26.x86_64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
| u26.aarch64 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 | AVAIL PGDG 1.4.2 1 |
@ el8.x86_64 18 hypopg_18 hypopg_18-1.4.2-1PGDG.rhel8.x86_64.rpm pgdg 1.4.2 31.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/hypopg_18-1.4.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 hypopg_18 hypopg_18-1.4.2-1PGDG.rhel8.aarch64.rpm pgdg 1.4.2 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/hypopg_18-1.4.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 hypopg_18 hypopg_18-1.4.2-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 29.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hypopg_18-1.4.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 18 hypopg_18 hypopg_18-1.4.2-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 31.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hypopg_18-1.4.2-3PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 18 hypopg_18 hypopg_18-1.4.2-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 30.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hypopg_18-1.4.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 hypopg_18 hypopg_18-1.4.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hypopg_18-1.4.2-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg12+1_amd64.deb pgdg 1.4.2 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg12+1_arm64.deb pgdg 1.4.2 57.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg13+1_amd64.deb pgdg 1.4.2 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg13+1_arm64.deb pgdg 1.4.2 58.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb pgdg 1.4.2 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb pgdg 1.4.2 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb pgdg 1.4.2 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb pgdg 1.4.2 57.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb pgdg 1.4.2 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-hypopg postgresql-18-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb pgdg 1.4.2 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-18-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 hypopg_17 hypopg_17-1.4.1-2PGDG.rhel8.x86_64.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/hypopg_17-1.4.1-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 hypopg_17 hypopg_17-1.4.1-2PGDG.rhel8.aarch64.rpm pgdg 1.4.1 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/hypopg_17-1.4.1-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 hypopg_17 hypopg_17-1.4.2-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 29.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hypopg_17-1.4.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 17 hypopg_17 hypopg_17-1.4.2-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 31.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hypopg_17-1.4.2-3PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 17 hypopg_17 hypopg_17-1.4.2-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 30.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hypopg_17-1.4.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 17 hypopg_17 hypopg_17-1.4.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hypopg_17-1.4.2-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg12+1_amd64.deb pgdg 1.4.2 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg12+1_arm64.deb pgdg 1.4.2 57.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg13+1_amd64.deb pgdg 1.4.2 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg13+1_arm64.deb pgdg 1.4.2 58.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb pgdg 1.4.2 72.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb pgdg 1.4.2 72.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb pgdg 1.4.2 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb pgdg 1.4.2 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb pgdg 1.4.2 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-hypopg postgresql-17-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb pgdg 1.4.2 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-17-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 hypopg_16 hypopg_16-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 30.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/hypopg_16-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 hypopg_16 hypopg_16-1.4.0-2PGDG.rhel8.x86_64.rpm pgdg 1.4.0 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/hypopg_16-1.4.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 hypopg_16 hypopg_16-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/hypopg_16-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 hypopg_16 hypopg_16-1.4.0-2PGDG.rhel8.aarch64.rpm pgdg 1.4.0 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/hypopg_16-1.4.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 hypopg_16 hypopg_16-1.4.2-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 29.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hypopg_16-1.4.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 16 hypopg_16 hypopg_16-1.4.2-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hypopg_16-1.4.2-3PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 16 hypopg_16 hypopg_16-1.4.2-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hypopg_16-1.4.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 16 hypopg_16 hypopg_16-1.4.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 31.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hypopg_16-1.4.2-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg12+1_amd64.deb pgdg 1.4.2 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg12+1_arm64.deb pgdg 1.4.2 58.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg13+1_amd64.deb pgdg 1.4.2 57.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg13+1_arm64.deb pgdg 1.4.2 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb pgdg 1.4.2 72.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb pgdg 1.4.2 72.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb pgdg 1.4.2 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb pgdg 1.4.2 57.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb pgdg 1.4.2 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-hypopg postgresql-16-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb pgdg 1.4.2 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-16-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 hypopg_15 hypopg_15-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hypopg_15-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 hypopg_15 hypopg_15-1.4.0-1.rhel8.x86_64.rpm pgdg 1.4.0 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hypopg_15-1.4.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 hypopg_15 hypopg_15-1.3.1-1.rhel8.x86_64.rpm pgdg 1.3.1 74.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hypopg_15-1.3.1-1.rhel8.x86_64.rpm
@ el8.aarch64 15 hypopg_15 hypopg_15-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hypopg_15-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 hypopg_15 hypopg_15-1.4.0-1.rhel8.aarch64.rpm pgdg 1.4.0 30.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hypopg_15-1.4.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 hypopg_15 hypopg_15-1.3.1-1.rhel8.aarch64.rpm pgdg 1.3.1 74.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hypopg_15-1.3.1-1.rhel8.aarch64.rpm
@ el9.x86_64 15 hypopg_15 hypopg_15-1.4.2-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 30.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hypopg_15-1.4.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 15 hypopg_15 hypopg_15-1.4.2-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 32.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hypopg_15-1.4.2-3PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 15 hypopg_15 hypopg_15-1.4.2-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hypopg_15-1.4.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 15 hypopg_15 hypopg_15-1.4.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hypopg_15-1.4.2-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg12+1_amd64.deb pgdg 1.4.2 57.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg12+1_arm64.deb pgdg 1.4.2 58.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg13+1_amd64.deb pgdg 1.4.2 58.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg13+1_arm64.deb pgdg 1.4.2 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb pgdg 1.4.2 72.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb pgdg 1.4.2 72.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb pgdg 1.4.2 57.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb pgdg 1.4.2 58.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb pgdg 1.4.2 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-hypopg postgresql-15-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb pgdg 1.4.2 57.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-15-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 hypopg_14 hypopg_14-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hypopg_14-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 hypopg_14 hypopg_14-1.4.0-1.rhel8.x86_64.rpm pgdg 1.4.0 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hypopg_14-1.4.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 hypopg_14 hypopg_14-1.3.1-1.rhel8.x86_64.rpm pgdg 1.3.1 74.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hypopg_14-1.3.1-1.rhel8.x86_64.rpm
@ el8.aarch64 14 hypopg_14 hypopg_14-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 31.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hypopg_14-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 hypopg_14 hypopg_14-1.4.0-1.rhel8.aarch64.rpm pgdg 1.4.0 30.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hypopg_14-1.4.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 hypopg_14 hypopg_14-1.3.1-1.rhel8.aarch64.rpm pgdg 1.3.1 73.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hypopg_14-1.3.1-1.rhel8.aarch64.rpm
@ el9.x86_64 14 hypopg_14 hypopg_14-1.4.2-3PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hypopg_14-1.4.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 hypopg_14 hypopg_14-1.4.2-3PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 32.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hypopg_14-1.4.2-3PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 14 hypopg_14 hypopg_14-1.4.2-3PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 31.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hypopg_14-1.4.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 14 hypopg_14 hypopg_14-1.4.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hypopg_14-1.4.2-3PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg12+1_amd64.deb pgdg 1.4.2 57.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg12+1_arm64.deb pgdg 1.4.2 58.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg13+1_amd64.deb pgdg 1.4.2 58.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg13+1_arm64.deb pgdg 1.4.2 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb pgdg 1.4.2 71.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb pgdg 1.4.2 71.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb pgdg 1.4.2 57.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb pgdg 1.4.2 58.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb pgdg 1.4.2 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-hypopg postgresql-14-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb pgdg 1.4.2 57.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/h/hypopg/postgresql-14-hypopg_1.4.2-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `hypopg` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install hypopg;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y hypopg -v 18  # PG 18
pig ext install -y hypopg -v 17  # PG 17
pig ext install -y hypopg -v 16  # PG 16
pig ext install -y hypopg -v 15  # PG 15
pig ext install -y hypopg -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y hypopg_18       # PG 18
dnf install -y hypopg_17       # PG 17
dnf install -y hypopg_16       # PG 16
dnf install -y hypopg_15       # PG 15
dnf install -y hypopg_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-hypopg   # PG 18
apt install -y postgresql-17-hypopg   # PG 17
apt install -y postgresql-16-hypopg   # PG 16
apt install -y postgresql-15-hypopg   # PG 15
apt install -y postgresql-14-hypopg   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION hypopg;
```




## Usage

> [hypopg: Hypothetical indexes for PostgreSQL](https://github.com/HypoPG/hypopg)

HypoPG lets you create hypothetical (virtual) indexes that exist only in the current session and are considered by `EXPLAIN` (without `ANALYZE`) for query planning. This enables testing the impact of indexes without the cost of actually creating them.

### Functions

| Function | Description |
|----------|-------------|
| `hypopg_create_index(query text)` | Create a hypothetical index using CREATE INDEX syntax |
| `hypopg_list_indexes()` | List all hypothetical indexes in the session |
| `hypopg_drop_index(oid)` | Drop a specific hypothetical index by OID |
| `hypopg_reset()` | Drop all hypothetical indexes |
| `hypopg()` | Return hypothetical indexes in pg_index-like format |

### Workflow

Create a test table and check the baseline plan:

```sql
CREATE TABLE hypo AS SELECT id, 'line ' || id AS val FROM generate_series(1, 10000) id;
ANALYZE hypo;
EXPLAIN SELECT * FROM hypo WHERE id = 1;
-- Seq Scan on hypo (cost=0.00..170.00 rows=1 width=15)
```

Create a hypothetical index:

```sql
SELECT * FROM hypopg_create_index('CREATE INDEX ON hypo (id)');
--  indexrelid |      indexname
-- ------------+----------------------
--       13543 | <13543>btree_hypo_id
```

Check the plan with the hypothetical index:

```sql
EXPLAIN SELECT * FROM hypo WHERE id = 1;
-- Index Scan using <13543>btree_hypo_id on hypo (cost=0.04..8.06 rows=1 width=15)
```

List and manage hypothetical indexes:

```sql
SELECT * FROM hypopg_list_indexes();
SELECT * FROM hypopg_drop_index(13543);
SELECT * FROM hypopg_reset();
```

### Limitations

- Only `EXPLAIN` without `ANALYZE` will consider hypothetical indexes
- Hypothetical indexes exist only in the current backend session
- Other concurrent connections are not affected
- Index names and some CREATE INDEX options are ignored
