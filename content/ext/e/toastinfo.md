---
title: "toastinfo"
linkTitle: "toastinfo"
description: "show details on toasted datums"
weight: 6530
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/credativ/toastinfo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">credativ/toastinfo</div>
    <div class="ext-card__desc">https://github.com/credativ/toastinfo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/toastinfo-1.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">toastinfo-1.5.tar.gz</div>
    <div class="ext-card__desc">toastinfo-1.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`toastinfo`**](/ext/e/toastinfo) | `1.5` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6530  | [**`toastinfo`**](/ext/e/toastinfo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pageinspect`](/ext/e/pageinspect) [`pg_visibility`](/ext/e/pg_visibility) [`pgstattuple`](/ext/e/pgstattuple) [`amcheck`](/ext/e/amcheck) [`pg_relusage`](/ext/e/pg_relusage) [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_freespacemap`](/ext/e/pg_freespacemap) [`pg_repack`](/ext/e/pg_repack) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `toastinfo` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `toastinfo_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-toastinfo` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| el8.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| el9.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| el9.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| el10.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| el10.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| d12.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| d12.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| d13.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| d13.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| u22.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| u22.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| u24.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| u24.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| u26.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| u26.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
@ el8.x86_64 18 toastinfo_18 toastinfo_18-1.5-1PIGSTY.el8.x86_64.rpm pigsty 1.5 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_18-1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 toastinfo_18 toastinfo_18-1.5-1PIGSTY.el8.aarch64.rpm pigsty 1.5 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_18-1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 toastinfo_18 toastinfo_18-1.5-1PIGSTY.el9.x86_64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_18-1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 toastinfo_18 toastinfo_18-1.5-1PIGSTY.el9.aarch64.rpm pigsty 1.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_18-1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 toastinfo_18 toastinfo_18-1.5-1PIGSTY.el10.x86_64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_18-1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 toastinfo_18 toastinfo_18-1.5-1PIGSTY.el10.aarch64.rpm pigsty 1.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_18-1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 toastinfo_17 toastinfo_17-1.5-1PIGSTY.el8.x86_64.rpm pigsty 1.5 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_17-1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 toastinfo_17 toastinfo_17-1.5-1PIGSTY.el8.aarch64.rpm pigsty 1.5 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_17-1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 toastinfo_17 toastinfo_17-1.5-1PIGSTY.el9.x86_64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_17-1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 toastinfo_17 toastinfo_17-1.5-1PIGSTY.el9.aarch64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_17-1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 toastinfo_17 toastinfo_17-1.5-1PIGSTY.el10.x86_64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_17-1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 toastinfo_17 toastinfo_17-1.5-1PIGSTY.el10.aarch64.rpm pigsty 1.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_17-1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 toastinfo_16 toastinfo_16-1.5-1PIGSTY.el8.x86_64.rpm pigsty 1.5 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_16-1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 toastinfo_16 toastinfo_16-1.5-1PIGSTY.el8.aarch64.rpm pigsty 1.5 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_16-1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 toastinfo_16 toastinfo_16-1.5-1PIGSTY.el9.x86_64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_16-1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 toastinfo_16 toastinfo_16-1.5-1PIGSTY.el9.aarch64.rpm pigsty 1.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_16-1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 toastinfo_16 toastinfo_16-1.5-1PIGSTY.el10.x86_64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_16-1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 toastinfo_16 toastinfo_16-1.5-1PIGSTY.el10.aarch64.rpm pigsty 1.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_16-1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 toastinfo_15 toastinfo_15-1.5-1PIGSTY.el8.x86_64.rpm pigsty 1.5 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_15-1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 toastinfo_15 toastinfo_15-1.5-1PIGSTY.el8.aarch64.rpm pigsty 1.5 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_15-1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 toastinfo_15 toastinfo_15-1.5-1PIGSTY.el9.x86_64.rpm pigsty 1.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_15-1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 toastinfo_15 toastinfo_15-1.5-1PIGSTY.el9.aarch64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_15-1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 toastinfo_15 toastinfo_15-1.5-1PIGSTY.el10.x86_64.rpm pigsty 1.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_15-1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 toastinfo_15 toastinfo_15-1.5-1PIGSTY.el10.aarch64.rpm pigsty 1.5 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_15-1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 toastinfo_14 toastinfo_14-1.5-1PIGSTY.el8.x86_64.rpm pigsty 1.5 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_14-1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 toastinfo_14 toastinfo_14-1.5-1PIGSTY.el8.aarch64.rpm pigsty 1.5 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_14-1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 toastinfo_14 toastinfo_14-1.5-1PIGSTY.el9.x86_64.rpm pigsty 1.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_14-1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 toastinfo_14 toastinfo_14-1.5-1PIGSTY.el9.aarch64.rpm pigsty 1.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_14-1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 toastinfo_14 toastinfo_14-1.5-1PIGSTY.el10.x86_64.rpm pigsty 1.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_14-1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 toastinfo_14 toastinfo_14-1.5-1PIGSTY.el10.aarch64.rpm pigsty 1.5 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_14-1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `toastinfo` using `pig build`:

```bash
pig build pkg toastinfo         # build RPM packages
```


## Install

You can install `toastinfo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install toastinfo;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y toastinfo -v 18  # PG 18
pig ext install -y toastinfo -v 17  # PG 17
pig ext install -y toastinfo -v 16  # PG 16
pig ext install -y toastinfo -v 15  # PG 15
pig ext install -y toastinfo -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y toastinfo_18       # PG 18
dnf install -y toastinfo_17       # PG 17
dnf install -y toastinfo_16       # PG 16
dnf install -y toastinfo_15       # PG 15
dnf install -y toastinfo_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-toastinfo   # PG 18
apt install -y postgresql-17-toastinfo   # PG 17
apt install -y postgresql-16-toastinfo   # PG 16
apt install -y postgresql-15-toastinfo   # PG 15
apt install -y postgresql-14-toastinfo   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION toastinfo;
```



## Usage

> [toastinfo: inspect TOAST storage details of varlena columns](https://github.com/credativ/toastinfo)

toastinfo exposes the internal storage form of variable-length (varlena) data types, showing how PostgreSQL stores each datum.

### Functions

**`pg_toastinfo(anyelement)`** -- describes the storage form of a datum:

```sql
SELECT a, length(b), pg_column_size(b), pg_toastinfo(b), pg_toastpointer(b)
FROM t;

        a         | length  | pg_column_size |              pg_toastinfo              | pg_toastpointer
------------------+---------+----------------+----------------------------------------+-----------------
 null             |       * |              * | null                                   |               *
 default          |       7 |              8 | short inline varlena                   |               *
 external-200     |     200 |            204 | long inline varlena, uncompressed      |               *
 external-10000   |   10000 |          10000 | toasted varlena, uncompressed          |           16427
 extended-10000   |   10000 |            125 | long inline varlena, compressed (pglz) |               *
 extended-1000000 | 1000000 |          11452 | toasted varlena, compressed (pglz)     |           16429
 extended-1000000 | 1000000 |           3936 | toasted varlena, compressed (lz4)      |           16430
```

Possible storage forms:
- `null` -- NULL values
- `ordinary` -- non-varlena datatypes
- `short inline varlena` -- up to 126 bytes (1-byte header)
- `long inline varlena, (un)compressed` -- up to 1GiB (4-byte header)
- `toasted varlena, (un)compressed` -- up to 1GiB stored in TOAST table
- Compressed varlenas show method (`pglz`, `lz4`) on PG14+

**`pg_toastpointer(anyelement)`** -- returns the `chunk_id` OID in the TOAST table, or NULL for non-toasted data:

```sql
SELECT pg_toastpointer(large_column) FROM my_table;
```
