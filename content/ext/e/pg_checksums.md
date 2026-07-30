---
title: "pg_checksums"
linkTitle: "pg_checksums"
description: "Activate/deactivate/verify checksums in offline Postgres clusters"
weight: 5110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/credativ/pg_checksums">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">credativ/pg_checksums</div>
    <div class="ext-card__desc">https://github.com/credativ/pg_checksums</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_checksums-1.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_checksums-1.3.tar.gz</div>
    <div class="ext-card__desc">pg_checksums-1.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_checksums`**](/ext/e/pg_checksums) | `1.3` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5110  | [**`pg_checksums`**](/ext/e/pg_checksums) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`amcheck`](/ext/e/amcheck) [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_orphaned`](/ext/e/pg_orphaned) [`pg_pathcheck`](/ext/e/pg_pathcheck) [`pg_isok`](/ext/e/pg_isok) [`pg_surgery`](/ext/e/pg_surgery) [`pageinspect`](/ext/e/pageinspect) [`pg_repack`](/ext/e/pg_repack) [`adminpack`](/ext/e/adminpack) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_checksums` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_checksums_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-checksums` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 3 |
| el8.aarch64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 3 |
| el9.x86_64 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 4 | AVAIL PGDG 1.3 4 |
| el9.aarch64 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 4 | AVAIL PGDG 1.3 4 |
| el10.x86_64 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 3 |
| el10.aarch64 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 2 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 3 | AVAIL PGDG 1.3 3 |
| d12.x86_64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| d12.aarch64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| d13.x86_64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| d13.aarch64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| u22.x86_64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| u22.aarch64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| u24.x86_64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| u24.aarch64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| u26.x86_64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
| u26.aarch64 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 | AVAIL PGDG 1.3 1 |
@ el8.x86_64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 47.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_checksums_18-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 46.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_checksums_18-1.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_checksums_18-1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_checksums_18-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.3 39.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_checksums_18-1.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 39.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_checksums_18-1.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.3 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_checksums_18-1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel10.x86_64.rpm pgdg 1.3 33.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_checksums_18-1.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.3 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_checksums_18-1.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_checksums_18 pg_checksums_18-1.3-1PGDG.rhel10.aarch64.rpm pgdg 1.3 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_checksums_18-1.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg12+1_amd64.deb pgdg 1.3 36.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg12+1_arm64.deb pgdg 1.3 35.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg13+1_amd64.deb pgdg 1.3 37.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg13+1_arm64.deb pgdg 1.3 35.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb pgdg 1.3 37.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb pgdg 1.3 36.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb pgdg 1.3 36.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb pgdg 1.3 35.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb pgdg 1.3 37.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-checksums postgresql-18-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb pgdg 1.3 36.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-18-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 47.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_checksums_17-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 47.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_checksums_17-1.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.3 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_checksums_17-1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_checksums_17-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.3 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_checksums_17-1.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_checksums_17-1.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.3 31.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_checksums_17-1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel10.x86_64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_checksums_17-1.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.3 40.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_checksums_17-1.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_checksums_17 pg_checksums_17-1.3-1PGDG.rhel10.aarch64.rpm pgdg 1.3 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_checksums_17-1.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg12+1_amd64.deb pgdg 1.3 36.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg12+1_arm64.deb pgdg 1.3 35.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg13+1_amd64.deb pgdg 1.3 36.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg13+1_arm64.deb pgdg 1.3 36.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb pgdg 1.3 37.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb pgdg 1.3 36.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb pgdg 1.3 36.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb pgdg 1.3 36.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb pgdg 1.3 37.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-checksums postgresql-17-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb pgdg 1.3 36.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-17-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 45.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_checksums_16-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_checksums_16 pg_checksums_16-1.1-3PGDG.rhel8.x86_64.rpm pgdg 1.1 45.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_checksums_16-1.1-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 44.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_checksums_16-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_checksums_16 pg_checksums_16-1.1-3PGDG.rhel8.aarch64.rpm pgdg 1.1 45.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_checksums_16-1.1-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.3 31.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_checksums_16-1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 31.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_checksums_16-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_checksums_16 pg_checksums_16-1.1-3PGDG.rhel9.x86_64.rpm pgdg 1.1 31.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_checksums_16-1.1-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.3 39.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_checksums_16-1.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 39.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_checksums_16-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_checksums_16 pg_checksums_16-1.1-3PGDG.rhel9.aarch64.rpm pgdg 1.1 39.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_checksums_16-1.1-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.3 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_checksums_16-1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel10.x86_64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_checksums_16-1.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_checksums_16 pg_checksums_16-1.2-1PGDG.rhel10.x86_64.rpm pgdg 1.2 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_checksums_16-1.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.3 39.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_checksums_16-1.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_checksums_16 pg_checksums_16-1.3-1PGDG.rhel10.aarch64.rpm pgdg 1.3 40.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_checksums_16-1.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_checksums_16 pg_checksums_16-1.2-1PGDG.rhel10.aarch64.rpm pgdg 1.2 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_checksums_16-1.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg12+1_amd64.deb pgdg 1.3 34.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg12+1_arm64.deb pgdg 1.3 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg13+1_amd64.deb pgdg 1.3 34.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg13+1_arm64.deb pgdg 1.3 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb pgdg 1.3 35.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb pgdg 1.3 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb pgdg 1.3 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb pgdg 1.3 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb pgdg 1.3 35.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-checksums postgresql-16-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb pgdg 1.3 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-16-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 44.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_checksums_15-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_checksums_15 pg_checksums_15-1.1-3PGDG.rhel8.x86_64.rpm pgdg 1.1 45.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_checksums_15-1.1-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_checksums_15 pg_checksums_15-1.1-1.rhel8.x86_64.rpm pgdg 1.1 45.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_checksums_15-1.1-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_checksums_15-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_checksums_15 pg_checksums_15-1.1-3PGDG.rhel8.aarch64.rpm pgdg 1.1 44.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_checksums_15-1.1-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_checksums_15 pg_checksums_15-1.1-1.rhel8.aarch64.rpm pgdg 1.1 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_checksums_15-1.1-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.3 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_checksums_15-1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_checksums_15-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_checksums_15 pg_checksums_15-1.1-3PGDG.rhel9.x86_64.rpm pgdg 1.1 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_checksums_15-1.1-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_checksums_15 pg_checksums_15-1.1-1.rhel9.x86_64.rpm pgdg 1.1 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_checksums_15-1.1-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.3 39.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_checksums_15-1.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 39.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_checksums_15-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_checksums_15 pg_checksums_15-1.1-3PGDG.rhel9.aarch64.rpm pgdg 1.1 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_checksums_15-1.1-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_checksums_15 pg_checksums_15-1.1-1.rhel9.aarch64.rpm pgdg 1.1 40.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_checksums_15-1.1-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_checksums_15-1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel10.x86_64.rpm pgdg 1.3 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_checksums_15-1.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_checksums_15 pg_checksums_15-1.2-1PGDG.rhel10.x86_64.rpm pgdg 1.2 31.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_checksums_15-1.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.3 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_checksums_15-1.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_checksums_15 pg_checksums_15-1.3-1PGDG.rhel10.aarch64.rpm pgdg 1.3 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_checksums_15-1.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_checksums_15 pg_checksums_15-1.2-1PGDG.rhel10.aarch64.rpm pgdg 1.2 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_checksums_15-1.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg12+1_amd64.deb pgdg 1.3 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg12+1_arm64.deb pgdg 1.3 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg13+1_amd64.deb pgdg 1.3 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg13+1_arm64.deb pgdg 1.3 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb pgdg 1.3 35.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb pgdg 1.3 34.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb pgdg 1.3 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb pgdg 1.3 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb pgdg 1.3 34.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-checksums postgresql-15-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb pgdg 1.3 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-15-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 43.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_checksums_14-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_checksums_14 pg_checksums_14-1.1-3PGDG.rhel8.x86_64.rpm pgdg 1.1 43.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_checksums_14-1.1-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_checksums_14 pg_checksums_14-1.1-1.rhel8.x86_64.rpm pgdg 1.1 43.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_checksums_14-1.1-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 43.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_checksums_14-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_checksums_14 pg_checksums_14-1.1-3PGDG.rhel8.aarch64.rpm pgdg 1.1 43.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_checksums_14-1.1-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_checksums_14 pg_checksums_14-1.1-1.rhel8.aarch64.rpm pgdg 1.1 43.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_checksums_14-1.1-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel9.8.x86_64.rpm pgdg 1.3 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_checksums_14-1.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 30.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_checksums_14-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_checksums_14 pg_checksums_14-1.1-3PGDG.rhel9.x86_64.rpm pgdg 1.1 31.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_checksums_14-1.1-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_checksums_14 pg_checksums_14-1.1-1.rhel9.x86_64.rpm pgdg 1.1 31.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_checksums_14-1.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel9.8.aarch64.rpm pgdg 1.3 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_checksums_14-1.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_checksums_14-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_checksums_14 pg_checksums_14-1.1-3PGDG.rhel9.aarch64.rpm pgdg 1.1 39.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_checksums_14-1.1-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_checksums_14 pg_checksums_14-1.1-1.rhel9.aarch64.rpm pgdg 1.1 40.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_checksums_14-1.1-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel10.2.x86_64.rpm pgdg 1.3 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_checksums_14-1.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel10.x86_64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_checksums_14-1.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_checksums_14 pg_checksums_14-1.2-1PGDG.rhel10.x86_64.rpm pgdg 1.2 31.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_checksums_14-1.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.3 40.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_checksums_14-1.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_checksums_14 pg_checksums_14-1.3-1PGDG.rhel10.aarch64.rpm pgdg 1.3 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_checksums_14-1.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_checksums_14 pg_checksums_14-1.2-1PGDG.rhel10.aarch64.rpm pgdg 1.2 40.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_checksums_14-1.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg12+1_amd64.deb pgdg 1.3 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg12+1_arm64.deb pgdg 1.3 33.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg13+1_amd64.deb pgdg 1.3 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg13+1_arm64.deb pgdg 1.3 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb pgdg 1.3 34.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb pgdg 1.3 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb pgdg 1.3 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb pgdg 1.3 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb pgdg 1.3 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-checksums postgresql-14-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb pgdg 1.3 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-checksums/postgresql-14-pg-checksums_1.3-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_checksums` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_checksums;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_checksums -v 18  # PG 18
pig ext install -y pg_checksums -v 17  # PG 17
pig ext install -y pg_checksums -v 16  # PG 16
pig ext install -y pg_checksums -v 15  # PG 15
pig ext install -y pg_checksums -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_checksums_18       # PG 18
dnf install -y pg_checksums_17       # PG 17
dnf install -y pg_checksums_16       # PG 16
dnf install -y pg_checksums_15       # PG 15
dnf install -y pg_checksums_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-checksums   # PG 18
apt install -y postgresql-17-pg-checksums   # PG 17
apt install -y postgresql-16-pg-checksums   # PG 16
apt install -y postgresql-15-pg-checksums   # PG 15
apt install -y postgresql-14-pg-checksums   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}

> This extension does not require `CREATE EXTENSION`




## Usage

> [pg_checksums: Activate/deactivate/verify checksums in offline Postgres clusters](https://github.com/credativ/pg_checksums)

`pg_checksums_ext` is a command-line tool (based on PostgreSQL's built-in `pg_checksums`) that can verify, activate, or deactivate page-level checksums for a PostgreSQL cluster. It extends the built-in tool with online verification, `SIGUSR1` progress toggling, fine-grained progress reporting, and I/O rate limiting.

### Verify Checksums (can be done online)

```bash
pg_checksums_ext -D /path/to/data --check
```

### Enable Checksums (requires clean shutdown)

```bash
pg_checksums_ext -D /path/to/data --enable
```

### Disable Checksums (requires clean shutdown)

```bash
pg_checksums_ext -D /path/to/data --disable
```

### Additional Options

- `-D, --pgdata` -- data directory path
- `--check` / `--enable` / `--disable` -- operation mode
- `--progress` -- show progress reporting
- `--filenode` -- check only a specific filenode
- `--no-sync` -- skip fsync
- `--verbose` -- verbose output
- `--debug` -- debug output
- Send `SIGUSR1` to toggle progress reporting during operation
