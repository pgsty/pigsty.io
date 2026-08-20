---
title: "powa"
linkTitle: "powa"
description: "PostgreSQL Workload Analyser-core"
weight: 6870
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/powa-team/powa">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">powa-team/powa</div>
    <div class="ext-card__desc">https://github.com/powa-team/powa</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`powa`**](/ext/e/powa) | `5.2.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang python" href="/ext/language#python">Python</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6870  | [**`powa`**](/ext/e/powa) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`btree_gist`](/ext/e/btree_gist) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_profile`](/ext/e/pg_profile) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_track_settings`](/ext/e/pg_track_settings) [`pg_track_optimizer`](/ext/e/pg_track_optimizer) [`auto_explain`](/ext/e/auto_explain) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_qualstats`](/ext/e/pg_qualstats) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Latest stable upstream/PGXN and PGDG DEB are 5.2.0; PGDG RPM remains at 5.1.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.2.0` | {{< pgvers "18,17,16,15,14" >}} | `powa` | `plpgsql`, `pg_stat_statements`, `btree_gist` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.1.0` | {{< pgvers "18,17,16,15,14" >}} | `powa_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-powa` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 5.1.0 2 | AVAIL PGDG 5.1.0 2 | AVAIL PGDG 5.1.0 5 | AVAIL PGDG 5.1.0 6 | AVAIL PGDG 5.1.0 8 |
| el8.aarch64 | AVAIL PGDG 5.1.0 2 | AVAIL PGDG 5.1.0 2 | AVAIL PGDG 5.1.0 5 | AVAIL PGDG 5.1.0 6 | AVAIL PGDG 5.1.0 6 |
| el9.x86_64 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 7 | AVAIL PGDG 5.1.0 8 | AVAIL PGDG 5.1.0 9 |
| el9.aarch64 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 7 | AVAIL PGDG 5.1.0 8 | AVAIL PGDG 5.1.0 8 |
| el10.x86_64 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 3 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 4 |
| el10.aarch64 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 3 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 4 | AVAIL PGDG 5.1.0 4 |
| d12.x86_64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| d12.aarch64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| d13.x86_64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| d13.aarch64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| u22.x86_64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| u22.aarch64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| u24.x86_64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| u24.aarch64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| u26.x86_64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
| u26.aarch64 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 | AVAIL PGDG 5.2.0 3 |
@ el8.x86_64 18 powa_18 powa_18-5.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/powa_18-5.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 powa_18 powa_18-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/powa_18-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 powa_18 powa_18-5.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/powa_18-5.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 powa_18 powa_18-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/powa_18-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 powa_18 powa_18-5.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/powa_18-5.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 powa_18 powa_18-5.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/powa_18-5.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 powa_18 powa_18-5.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/powa_18-5.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 powa_18 powa_18-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/powa_18-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 powa_18 powa_18-5.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/powa_18-5.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 powa_18 powa_18-5.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/powa_18-5.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 powa_18 powa_18-5.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/powa_18-5.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 powa_18 powa_18-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/powa_18-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 powa_18 powa_18-5.1.0-1PGDGrhel10.1.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/powa_18-5.1.0-1PGDGrhel10.1.x86_64.rpm
@ el10.x86_64 18 powa_18 powa_18-5.1.0-1PGDGrhel10.0.x86_64.rpm pgdg 5.1.0 7.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/powa_18-5.1.0-1PGDGrhel10.0.x86_64.rpm
@ el10.x86_64 18 powa_18 powa_18-5.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/powa_18-5.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 powa_18 powa_18-5.0.1-1PGDG.rhel10.x86_64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/powa_18-5.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 powa_18 powa_18-5.1.0-1PGDGrhel10.1.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/powa_18-5.1.0-1PGDGrhel10.1.aarch64.rpm
@ el10.aarch64 18 powa_18 powa_18-5.1.0-1PGDGrhel10.0.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/powa_18-5.1.0-1PGDGrhel10.0.aarch64.rpm
@ el10.aarch64 18 powa_18 powa_18-5.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/powa_18-5.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 powa_18 powa_18-5.0.1-1PGDG.rhel10.aarch64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/powa_18-5.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg12+1_amd64.deb pgdg 5.2.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg12+1_amd64.deb pgdg 5.1.2 65.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg12+1_amd64.deb pgdg 5.1.1 63.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg12+1_arm64.deb pgdg 5.2.0 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg12+1_arm64.deb pgdg 5.1.2 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg12+1_arm64.deb pgdg 5.1.1 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg13+1_amd64.deb pgdg 5.2.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg13+1_amd64.deb pgdg 5.1.2 65.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg13+1_amd64.deb pgdg 5.1.1 63.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg13+1_arm64.deb pgdg 5.2.0 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg13+1_arm64.deb pgdg 5.1.2 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg13+1_arm64.deb pgdg 5.1.1 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg22.04+1_amd64.deb pgdg 5.2.0 62.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg22.04+1_amd64.deb pgdg 5.1.2 60.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg22.04+1_amd64.deb pgdg 5.1.1 59.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg22.04+1_arm64.deb pgdg 5.2.0 62.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg22.04+1_arm64.deb pgdg 5.1.2 60.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg22.04+1_arm64.deb pgdg 5.1.1 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg24.04+1_amd64.deb pgdg 5.2.0 62.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg24.04+1_amd64.deb pgdg 5.1.2 60.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg24.04+1_amd64.deb pgdg 5.1.1 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg24.04+1_arm64.deb pgdg 5.2.0 61.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg24.04+1_arm64.deb pgdg 5.1.2 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg24.04+1_arm64.deb pgdg 5.1.1 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg26.04+1_amd64.deb pgdg 5.2.0 61.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg26.04+1_amd64.deb pgdg 5.1.2 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg26.04+1_amd64.deb pgdg 5.1.1 58.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-powa postgresql-18-powa_5.2.0-1.pgdg26.04+1_arm64.deb pgdg 5.2.0 61.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.2.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.2-1.pgdg26.04+1_arm64.deb pgdg 5.1.2 59.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-powa postgresql-18-powa_5.1.1-1.pgdg26.04+1_arm64.deb pgdg 5.1.1 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-18-powa_5.1.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 powa_17 powa_17-5.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/powa_17-5.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 powa_17 powa_17-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/powa_17-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 powa_17 powa_17-5.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/powa_17-5.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 powa_17 powa_17-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/powa_17-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 powa_17 powa_17-5.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/powa_17-5.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 powa_17 powa_17-5.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/powa_17-5.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 powa_17 powa_17-5.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/powa_17-5.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 powa_17 powa_17-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/powa_17-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 powa_17 powa_17-5.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/powa_17-5.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 powa_17 powa_17-5.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/powa_17-5.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 powa_17 powa_17-5.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/powa_17-5.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 powa_17 powa_17-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/powa_17-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 powa_17 powa_17-5.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/powa_17-5.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 powa_17 powa_17-5.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/powa_17-5.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 powa_17 powa_17-5.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 5.1.0 7.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/powa_17-5.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 powa_17 powa_17-5.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/powa_17-5.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 powa_17 powa_17-5.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/powa_17-5.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 powa_17 powa_17-5.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/powa_17-5.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg12+1_amd64.deb pgdg 5.2.0 66.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg12+1_amd64.deb pgdg 5.1.2 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg12+1_amd64.deb pgdg 5.1.1 63.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg12+1_arm64.deb pgdg 5.2.0 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg12+1_arm64.deb pgdg 5.1.2 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg12+1_arm64.deb pgdg 5.1.1 63.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg13+1_amd64.deb pgdg 5.2.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg13+1_amd64.deb pgdg 5.1.2 65.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg13+1_amd64.deb pgdg 5.1.1 63.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg13+1_arm64.deb pgdg 5.2.0 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg13+1_arm64.deb pgdg 5.1.2 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg13+1_arm64.deb pgdg 5.1.1 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg22.04+1_amd64.deb pgdg 5.2.0 66.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg22.04+1_amd64.deb pgdg 5.1.2 64.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg22.04+1_amd64.deb pgdg 5.1.1 63.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg22.04+1_arm64.deb pgdg 5.2.0 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg22.04+1_arm64.deb pgdg 5.1.2 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg22.04+1_arm64.deb pgdg 5.1.1 63.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg24.04+1_amd64.deb pgdg 5.2.0 62.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg24.04+1_amd64.deb pgdg 5.1.2 60.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg24.04+1_amd64.deb pgdg 5.1.1 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg24.04+1_arm64.deb pgdg 5.2.0 61.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg24.04+1_arm64.deb pgdg 5.1.2 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg24.04+1_arm64.deb pgdg 5.1.1 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg26.04+1_amd64.deb pgdg 5.2.0 61.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg26.04+1_amd64.deb pgdg 5.1.2 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg26.04+1_amd64.deb pgdg 5.1.1 59.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-powa postgresql-17-powa_5.2.0-1.pgdg26.04+1_arm64.deb pgdg 5.2.0 61.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.2.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.2-1.pgdg26.04+1_arm64.deb pgdg 5.1.2 59.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-powa postgresql-17-powa_5.1.1-1.pgdg26.04+1_arm64.deb pgdg 5.1.1 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-17-powa_5.1.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 powa_16 powa_16-5.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/powa_16-5.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 powa_16 powa_16-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/powa_16-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 powa_16 powa_16-4.2.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2.2 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/powa_16-4.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 powa_16 powa_16-4.2.1-1PGDG.rhel8.x86_64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/powa_16-4.2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 powa_16 powa_16-4.2.0-1PGDG.rhel8.x86_64.rpm pgdg 4.2.0 6.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/powa_16-4.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 powa_16 powa_16-5.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/powa_16-5.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 powa_16 powa_16-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/powa_16-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 powa_16 powa_16-4.2.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2.2 6.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/powa_16-4.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 powa_16 powa_16-4.2.1-1PGDG.rhel8.aarch64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/powa_16-4.2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 powa_16 powa_16-4.2.0-1PGDG.rhel8.aarch64.rpm pgdg 4.2.0 6.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/powa_16-4.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 powa_16 powa_16-5.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/powa_16-5.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 powa_16 powa_16-5.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/powa_16-5.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 powa_16 powa_16-5.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/powa_16-5.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 powa_16 powa_16-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/powa_16-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 powa_16 powa_16-4.2.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2.2 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/powa_16-4.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 powa_16 powa_16-4.2.1-1PGDG.rhel9.x86_64.rpm pgdg 4.2.1 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/powa_16-4.2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 powa_16 powa_16-4.2.0-1PGDG.rhel9.x86_64.rpm pgdg 4.2.0 6.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/powa_16-4.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 powa_16 powa_16-5.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/powa_16-5.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 powa_16 powa_16-5.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/powa_16-5.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 powa_16 powa_16-5.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/powa_16-5.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 powa_16 powa_16-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/powa_16-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 powa_16 powa_16-4.2.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2.2 6.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/powa_16-4.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 powa_16 powa_16-4.2.1-1PGDG.rhel9.aarch64.rpm pgdg 4.2.1 6.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/powa_16-4.2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 powa_16 powa_16-4.2.0-1PGDG.rhel9.aarch64.rpm pgdg 4.2.0 6.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/powa_16-4.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 powa_16 powa_16-5.1.0-1PGDGrhel10.1.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/powa_16-5.1.0-1PGDGrhel10.1.x86_64.rpm
@ el10.x86_64 16 powa_16 powa_16-5.1.0-1PGDGrhel10.0.x86_64.rpm pgdg 5.1.0 7.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/powa_16-5.1.0-1PGDGrhel10.0.x86_64.rpm
@ el10.x86_64 16 powa_16 powa_16-5.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/powa_16-5.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 powa_16 powa_16-5.0.1-1PGDG.rhel10.x86_64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/powa_16-5.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 powa_16 powa_16-5.1.0-1PGDGrhel10.1.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/powa_16-5.1.0-1PGDGrhel10.1.aarch64.rpm
@ el10.aarch64 16 powa_16 powa_16-5.1.0-1PGDGrhel10.0.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/powa_16-5.1.0-1PGDGrhel10.0.aarch64.rpm
@ el10.aarch64 16 powa_16 powa_16-5.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/powa_16-5.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 powa_16 powa_16-5.0.1-1PGDG.rhel10.aarch64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/powa_16-5.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg12+1_amd64.deb pgdg 5.2.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg12+1_amd64.deb pgdg 5.1.2 65.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg12+1_amd64.deb pgdg 5.1.1 63.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg12+1_arm64.deb pgdg 5.2.0 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg12+1_arm64.deb pgdg 5.1.2 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg12+1_arm64.deb pgdg 5.1.1 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg13+1_amd64.deb pgdg 5.2.0 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg13+1_amd64.deb pgdg 5.1.2 65.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg13+1_amd64.deb pgdg 5.1.1 63.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg13+1_arm64.deb pgdg 5.2.0 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg13+1_arm64.deb pgdg 5.1.2 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg13+1_arm64.deb pgdg 5.1.1 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg22.04+1_amd64.deb pgdg 5.2.0 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg22.04+1_amd64.deb pgdg 5.1.2 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg22.04+1_amd64.deb pgdg 5.1.1 63.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg22.04+1_arm64.deb pgdg 5.2.0 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg22.04+1_arm64.deb pgdg 5.1.2 64.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg22.04+1_arm64.deb pgdg 5.1.1 63.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg24.04+1_amd64.deb pgdg 5.2.0 62.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg24.04+1_amd64.deb pgdg 5.1.2 60.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg24.04+1_amd64.deb pgdg 5.1.1 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg24.04+1_arm64.deb pgdg 5.2.0 61.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg24.04+1_arm64.deb pgdg 5.1.2 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg24.04+1_arm64.deb pgdg 5.1.1 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg26.04+1_amd64.deb pgdg 5.2.0 61.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg26.04+1_amd64.deb pgdg 5.1.2 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg26.04+1_amd64.deb pgdg 5.1.1 59.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-powa postgresql-16-powa_5.2.0-1.pgdg26.04+1_arm64.deb pgdg 5.2.0 61.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.2.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.2-1.pgdg26.04+1_arm64.deb pgdg 5.1.2 59.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-powa postgresql-16-powa_5.1.1-1.pgdg26.04+1_arm64.deb pgdg 5.1.1 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-16-powa_5.1.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 powa_15 powa_15-5.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/powa_15-5.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 powa_15 powa_15-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/powa_15-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 powa_15 powa_15-4.2.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2.2 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/powa_15-4.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 powa_15 powa_15-4.2.1-1PGDG.rhel8.x86_64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/powa_15-4.2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 powa_15 powa_15-4.2.0-1PGDG.rhel8.x86_64.rpm pgdg 4.2.0 6.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/powa_15-4.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 powa_15 powa_15-4.1.4-1.rhel8.x86_64.rpm pgdg 4.1.4 66.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/powa_15-4.1.4-1.rhel8.x86_64.rpm
@ el8.aarch64 15 powa_15 powa_15-5.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/powa_15-5.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 powa_15 powa_15-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/powa_15-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 powa_15 powa_15-4.2.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2.2 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/powa_15-4.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 powa_15 powa_15-4.2.1-1PGDG.rhel8.aarch64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/powa_15-4.2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 powa_15 powa_15-4.2.0-1PGDG.rhel8.aarch64.rpm pgdg 4.2.0 6.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/powa_15-4.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 powa_15 powa_15-4.1.4-1.rhel8.aarch64.rpm pgdg 4.1.4 66.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/powa_15-4.1.4-1.rhel8.aarch64.rpm
@ el9.x86_64 15 powa_15 powa_15-5.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-5.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 powa_15 powa_15-5.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-5.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 powa_15 powa_15-5.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-5.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 powa_15 powa_15-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 powa_15 powa_15-4.2.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2.2 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-4.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 powa_15 powa_15-4.2.1-1PGDG.rhel9.x86_64.rpm pgdg 4.2.1 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-4.2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 powa_15 powa_15-4.2.0-1PGDG.rhel9.x86_64.rpm pgdg 4.2.0 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-4.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 powa_15 powa_15-4.1.4-1.rhel9.x86_64.rpm pgdg 4.1.4 61.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/powa_15-4.1.4-1.rhel9.x86_64.rpm
@ el9.aarch64 15 powa_15 powa_15-5.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-5.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 powa_15 powa_15-5.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-5.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 powa_15 powa_15-5.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-5.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 powa_15 powa_15-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 powa_15 powa_15-4.2.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2.2 6.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-4.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 powa_15 powa_15-4.2.1-1PGDG.rhel9.aarch64.rpm pgdg 4.2.1 6.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-4.2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 powa_15 powa_15-4.2.0-1PGDG.rhel9.aarch64.rpm pgdg 4.2.0 6.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-4.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 powa_15 powa_15-4.1.4-1.rhel9.aarch64.rpm pgdg 4.1.4 61.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/powa_15-4.1.4-1.rhel9.aarch64.rpm
@ el10.x86_64 15 powa_15 powa_15-5.1.0-1PGDGrhel10.1.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/powa_15-5.1.0-1PGDGrhel10.1.x86_64.rpm
@ el10.x86_64 15 powa_15 powa_15-5.1.0-1PGDGrhel10.0.x86_64.rpm pgdg 5.1.0 7.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/powa_15-5.1.0-1PGDGrhel10.0.x86_64.rpm
@ el10.x86_64 15 powa_15 powa_15-5.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/powa_15-5.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 powa_15 powa_15-5.0.1-1PGDG.rhel10.x86_64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/powa_15-5.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 powa_15 powa_15-5.1.0-1PGDGrhel10.1.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/powa_15-5.1.0-1PGDGrhel10.1.aarch64.rpm
@ el10.aarch64 15 powa_15 powa_15-5.1.0-1PGDGrhel10.0.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/powa_15-5.1.0-1PGDGrhel10.0.aarch64.rpm
@ el10.aarch64 15 powa_15 powa_15-5.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/powa_15-5.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 powa_15 powa_15-5.0.1-1PGDG.rhel10.aarch64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/powa_15-5.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg12+1_amd64.deb pgdg 5.2.0 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg12+1_amd64.deb pgdg 5.1.2 65.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg12+1_amd64.deb pgdg 5.1.1 64.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg12+1_arm64.deb pgdg 5.2.0 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg12+1_arm64.deb pgdg 5.1.2 65.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg12+1_arm64.deb pgdg 5.1.1 64.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg13+1_amd64.deb pgdg 5.2.0 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg13+1_amd64.deb pgdg 5.1.2 65.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg13+1_amd64.deb pgdg 5.1.1 64.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg13+1_arm64.deb pgdg 5.2.0 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg13+1_arm64.deb pgdg 5.1.2 65.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg13+1_arm64.deb pgdg 5.1.1 64.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg22.04+1_amd64.deb pgdg 5.2.0 66.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg22.04+1_amd64.deb pgdg 5.1.2 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg22.04+1_amd64.deb pgdg 5.1.1 63.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg22.04+1_arm64.deb pgdg 5.2.0 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg22.04+1_arm64.deb pgdg 5.1.2 64.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg22.04+1_arm64.deb pgdg 5.1.1 63.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg24.04+1_amd64.deb pgdg 5.2.0 62.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg24.04+1_amd64.deb pgdg 5.1.2 60.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg24.04+1_amd64.deb pgdg 5.1.1 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg24.04+1_arm64.deb pgdg 5.2.0 62.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg24.04+1_arm64.deb pgdg 5.1.2 60.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg24.04+1_arm64.deb pgdg 5.1.1 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg26.04+1_amd64.deb pgdg 5.2.0 62.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg26.04+1_amd64.deb pgdg 5.1.2 60.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg26.04+1_amd64.deb pgdg 5.1.1 59.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-powa postgresql-15-powa_5.2.0-1.pgdg26.04+1_arm64.deb pgdg 5.2.0 61.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.2.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.2-1.pgdg26.04+1_arm64.deb pgdg 5.1.2 60.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-powa postgresql-15-powa_5.1.1-1.pgdg26.04+1_arm64.deb pgdg 5.1.1 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-15-powa_5.1.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 powa_14 powa_14-5.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-5.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 powa_14 powa_14-5.0.1-1PGDG.rhel8.x86_64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-5.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 powa_14 powa_14-4.2.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2.2 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-4.2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 powa_14 powa_14-4.2.1-1PGDG.rhel8.x86_64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-4.2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 powa_14 powa_14-4.2.0-1PGDG.rhel8.x86_64.rpm pgdg 4.2.0 6.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-4.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 powa_14 powa_14-4.1.4-1.rhel8.x86_64.rpm pgdg 4.1.4 68.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-4.1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 powa_14 powa_14-4.1.3-1.rhel8.x86_64.rpm pgdg 4.1.3 68.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-4.1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 powa_14 powa_14-4.1.2-4.rhel8.x86_64.rpm pgdg 4.1.2 66.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/powa_14-4.1.2-4.rhel8.x86_64.rpm
@ el8.aarch64 14 powa_14 powa_14-5.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/powa_14-5.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 powa_14 powa_14-5.0.1-1PGDG.rhel8.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/powa_14-5.0.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 powa_14 powa_14-4.2.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2.2 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/powa_14-4.2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 powa_14 powa_14-4.2.1-1PGDG.rhel8.aarch64.rpm pgdg 4.2.1 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/powa_14-4.2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 powa_14 powa_14-4.2.0-1PGDG.rhel8.aarch64.rpm pgdg 4.2.0 6.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/powa_14-4.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 powa_14 powa_14-4.1.4-1.rhel8.aarch64.rpm pgdg 4.1.4 67.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/powa_14-4.1.4-1.rhel8.aarch64.rpm
@ el9.x86_64 14 powa_14 powa_14-5.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-5.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-5.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-5.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-5.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-5.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-5.0.1-1PGDG.rhel9.x86_64.rpm pgdg 5.0.1 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-5.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-4.2.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2.2 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-4.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-4.2.1-1PGDG.rhel9.x86_64.rpm pgdg 4.2.1 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-4.2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-4.2.0-1PGDG.rhel9.x86_64.rpm pgdg 4.2.0 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-4.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-4.1.4-1.rhel9.x86_64.rpm pgdg 4.1.4 62.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-4.1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 powa_14 powa_14-4.1.3-1.rhel9.x86_64.rpm pgdg 4.1.3 62.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/powa_14-4.1.3-1.rhel9.x86_64.rpm
@ el9.aarch64 14 powa_14 powa_14-5.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-5.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 powa_14 powa_14-5.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-5.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 powa_14 powa_14-5.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 5.1.0 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-5.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 powa_14 powa_14-5.0.1-1PGDG.rhel9.aarch64.rpm pgdg 5.0.1 6.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-5.0.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 powa_14 powa_14-4.2.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2.2 6.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-4.2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 powa_14 powa_14-4.2.1-1PGDG.rhel9.aarch64.rpm pgdg 4.2.1 6.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-4.2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 powa_14 powa_14-4.2.0-1PGDG.rhel9.aarch64.rpm pgdg 4.2.0 6.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-4.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 powa_14 powa_14-4.1.4-1.rhel9.aarch64.rpm pgdg 4.1.4 62.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/powa_14-4.1.4-1.rhel9.aarch64.rpm
@ el10.x86_64 14 powa_14 powa_14-5.1.0-1PGDGrhel10.1.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/powa_14-5.1.0-1PGDGrhel10.1.x86_64.rpm
@ el10.x86_64 14 powa_14 powa_14-5.1.0-1PGDGrhel10.0.x86_64.rpm pgdg 5.1.0 7.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/powa_14-5.1.0-1PGDGrhel10.0.x86_64.rpm
@ el10.x86_64 14 powa_14 powa_14-5.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/powa_14-5.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 powa_14 powa_14-5.0.1-1PGDG.rhel10.x86_64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/powa_14-5.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 powa_14 powa_14-5.1.0-1PGDGrhel10.1.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/powa_14-5.1.0-1PGDGrhel10.1.aarch64.rpm
@ el10.aarch64 14 powa_14 powa_14-5.1.0-1PGDGrhel10.0.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/powa_14-5.1.0-1PGDGrhel10.0.aarch64.rpm
@ el10.aarch64 14 powa_14 powa_14-5.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 5.1.0 6.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/powa_14-5.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 powa_14 powa_14-5.0.1-1PGDG.rhel10.aarch64.rpm pgdg 5.0.1 7.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/powa_14-5.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg12+1_amd64.deb pgdg 5.2.0 68.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg12+1_amd64.deb pgdg 5.1.2 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg12+1_amd64.deb pgdg 5.1.1 65.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg12+1_arm64.deb pgdg 5.2.0 68.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg12+1_arm64.deb pgdg 5.1.2 67.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg12+1_arm64.deb pgdg 5.1.1 65.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg13+1_amd64.deb pgdg 5.2.0 69.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg13+1_amd64.deb pgdg 5.1.2 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg13+1_amd64.deb pgdg 5.1.1 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg13+1_arm64.deb pgdg 5.2.0 69.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg13+1_arm64.deb pgdg 5.1.2 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg13+1_arm64.deb pgdg 5.1.1 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg22.04+1_amd64.deb pgdg 5.2.0 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg22.04+1_amd64.deb pgdg 5.1.2 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg22.04+1_amd64.deb pgdg 5.1.1 64.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg22.04+1_arm64.deb pgdg 5.2.0 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg22.04+1_arm64.deb pgdg 5.1.2 65.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg22.04+1_arm64.deb pgdg 5.1.1 64.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg24.04+1_amd64.deb pgdg 5.2.0 64.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg24.04+1_amd64.deb pgdg 5.1.2 62.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg24.04+1_amd64.deb pgdg 5.1.1 61.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg24.04+1_arm64.deb pgdg 5.2.0 64.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg24.04+1_arm64.deb pgdg 5.1.2 62.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg24.04+1_arm64.deb pgdg 5.1.1 61.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg26.04+1_amd64.deb pgdg 5.2.0 63.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg26.04+1_amd64.deb pgdg 5.1.2 62.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg26.04+1_amd64.deb pgdg 5.1.1 61.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-powa postgresql-14-powa_5.2.0-1.pgdg26.04+1_arm64.deb pgdg 5.2.0 63.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.2.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.2-1.pgdg26.04+1_arm64.deb pgdg 5.1.2 61.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-powa postgresql-14-powa_5.1.1-1.pgdg26.04+1_arm64.deb pgdg 5.1.1 60.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/powa-archivist/postgresql-14-powa_5.1.1-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `powa` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install powa;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y powa -v 18  # PG 18
pig ext install -y powa -v 17  # PG 17
pig ext install -y powa -v 16  # PG 16
pig ext install -y powa -v 15  # PG 15
pig ext install -y powa -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y powa_18       # PG 18
dnf install -y powa_17       # PG 17
dnf install -y powa_16       # PG 16
dnf install -y powa_15       # PG 15
dnf install -y powa_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-powa   # PG 18
apt install -y postgresql-17-powa   # PG 17
apt install -y postgresql-16-powa   # PG 16
apt install -y postgresql-15-powa   # PG 15
apt install -y postgresql-14-powa   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION powa CASCADE;  -- requires: plpgsql, pg_stat_statements, btree_gist
```

## Usage

Sources:

- [PoWA Archivist 5.2.0 README](https://github.com/powa-team/powa-archivist/blob/REL_5_2_0/README.md)
- [PoWA Archivist 5.2.0 control file](https://github.com/powa-team/powa-archivist/blob/REL_5_2_0/powa.control)
- [PoWA Archivist 5.2.0 release](https://github.com/powa-team/powa-archivist/releases/tag/REL_5_2_0)
- [PoWA documentation](https://powa.readthedocs.io/en/latest/components/powa-archivist/index.html)

PoWA is a workload analysis framework that collects performance statistics and provides real-time charts through a web UI. The core extension (`powa-archivist`) snapshots statistics from multiple stat extensions.

### Architecture

PoWA consists of several components:

- **powa-archivist**: The PostgreSQL extension that collects and stores statistics
- **powa-web**: A web UI for visualizing performance data
- **pg_stat_statements**: Required for query statistics
- **pg_qualstats**: Optional, provides predicate statistics and index suggestions
- **pg_stat_kcache**: Optional, provides OS-level metrics (CPU, I/O)
- **pg_wait_sampling**: Optional, provides wait event sampling

Enable the extension in the repository database. Its control file requires PL/pgSQL, `pg_stat_statements`, and `btree_gist`:

```sql
CREATE EXTENSION pg_stat_statements;
CREATE EXTENSION btree_gist;
CREATE EXTENSION powa CASCADE;
```

`pg_stat_statements` itself must be configured in `shared_preload_libraries` before PostgreSQL starts.

### Taking Snapshots

PoWA periodically snapshots statistics from all registered extensions:

```sql
-- Manual snapshot
SELECT powa_take_snapshot();

-- Check snapshot status
SELECT * FROM powa_snapshot_metas;
```

### Configuration

```sql
-- Register stat extensions (done automatically on CREATE EXTENSION)
SELECT powa_register_server(hostname => 'localhost', port => 5432);

-- Configure snapshot interval and retention
ALTER EXTENSION powa UPDATE;
```

### Key Tables and Views

```sql
-- View collected query statistics
SELECT * FROM powa_statements;

-- View snapshot history
SELECT * FROM powa_snapshot_metas;
```

### Web UI

The PoWA web interface (installed separately) provides:

- Real-time query performance dashboards
- Per-query drill-down with plan details
- Index suggestions based on `pg_qualstats`
- Wait event analysis
- System resource usage graphs

Documentation: [powa.readthedocs.io](https://powa.readthedocs.io/)

### Version and Deployment Notes

- PoWA Archivist 5.2.0 adds PostgreSQL 19 support, including collectors for the new `pg_stat_recovery` and `pg_stat_lock` statistics views. The core snapshot workflow remains compatible with the 5.1 series.
- `powa` is the database extension; `powa-web` is a separate visualization service, and `powa-collector` is used for remote collection architectures. Installing the extension alone does not deploy the UI.
- Retention and snapshot frequency directly affect repository growth. Monitor the PoWA repository database and size retention for the number of databases, queries, and enabled optional modules.
