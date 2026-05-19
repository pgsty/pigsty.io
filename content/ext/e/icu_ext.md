---
title: "icu_ext"
linkTitle: "icu_ext"
description: "Access ICU functions"
weight: 4240
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dverite/icu_ext">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dverite/icu_ext</div>
    <div class="ext-card__desc">https://github.com/dverite/icu_ext</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/icu_ext-1.10.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">icu_ext-1.10.0.tar.gz</div>
    <div class="ext-card__desc">icu_ext-1.10.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`icu_ext`**](/ext/e/icu_ext) | `1.10.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4240  | [**`icu_ext`**](/ext/e/icu_ext) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgpcre`](/ext/e/pgpcre) [`pg_xenophile`](/ext/e/pg_xenophile) [`unaccent`](/ext/e/unaccent) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.10.0` | {{< pgvers "18,17,16,15,14" >}} | `icu_ext` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.10.0` | {{< pgvers "18,17,16,15,14" >}} | `icu_ext_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.10.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-icu-ext` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 |
| el8.aarch64 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 |
| el9.x86_64 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 |
| el9.aarch64 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 |
| el10.x86_64 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 |
| el10.aarch64 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 | AVAIL PIGSTY 1.10.0 2 |
| d12.x86_64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| d12.aarch64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| d13.x86_64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| d13.aarch64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| u22.x86_64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| u22.aarch64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| u24.x86_64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| u24.aarch64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| u26.x86_64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
| u26.aarch64 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 | AVAIL PGDG 1.10.0 2 |
@ el8.x86_64 18 icu_ext_18 icu_ext_18-1.10.0-1PIGSTY.el8.x86_64.rpm pigsty 1.10.0 51.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/icu_ext_18-1.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 icu_ext_18 icu_ext_18-1.10.0-1PGDG.rhel8.x86_64.rpm pgdg 1.10.0 47.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/icu_ext_18-1.10.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 icu_ext_18 icu_ext_18-1.10.0-1PIGSTY.el8.aarch64.rpm pigsty 1.10.0 49.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/icu_ext_18-1.10.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 icu_ext_18 icu_ext_18-1.10.0-1PGDG.rhel8.aarch64.rpm pgdg 1.10.0 46.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/icu_ext_18-1.10.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 icu_ext_18 icu_ext_18-1.10.0-1PIGSTY.el9.x86_64.rpm pigsty 1.10.0 49.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/icu_ext_18-1.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 icu_ext_18 icu_ext_18-1.10.0-1PGDG.rhel9.x86_64.rpm pgdg 1.10.0 48.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/icu_ext_18-1.10.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 icu_ext_18 icu_ext_18-1.10.0-1PIGSTY.el9.aarch64.rpm pigsty 1.10.0 47.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/icu_ext_18-1.10.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 icu_ext_18 icu_ext_18-1.10.0-1PGDG.rhel9.aarch64.rpm pgdg 1.10.0 46.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/icu_ext_18-1.10.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 icu_ext_18 icu_ext_18-1.10.0-1PIGSTY.el10.x86_64.rpm pigsty 1.10.0 50.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/icu_ext_18-1.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 icu_ext_18 icu_ext_18-1.10.0-1PGDG.rhel10.x86_64.rpm pgdg 1.10.0 49.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/icu_ext_18-1.10.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 icu_ext_18 icu_ext_18-1.10.0-1PIGSTY.el10.aarch64.rpm pigsty 1.10.0 48.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/icu_ext_18-1.10.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 icu_ext_18 icu_ext_18-1.10.0-1PGDG.rhel10.aarch64.rpm pgdg 1.10.0 47.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/icu_ext_18-1.10.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg12+1_amd64.deb pgdg 1.10.0 94.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg12+1_amd64.deb pgdg 1.10.0 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg12+1_arm64.deb pgdg 1.10.0 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg12+1_arm64.deb pgdg 1.10.0 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg13+1_amd64.deb pgdg 1.10.0 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg13+1_amd64.deb pgdg 1.10.0 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg13+1_arm64.deb pgdg 1.10.0 92.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg13+1_arm64.deb pgdg 1.10.0 92.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb pgdg 1.10.0 95.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb pgdg 1.10.0 95.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb pgdg 1.10.0 92.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb pgdg 1.10.0 92.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb pgdg 1.10.0 93.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb pgdg 1.10.0 94.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-icu-ext postgresql-18-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-18-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 icu_ext_17 icu_ext_17-1.10.0-1PIGSTY.el8.x86_64.rpm pigsty 1.10.0 51.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/icu_ext_17-1.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 icu_ext_17 icu_ext_17-1.9.0-1PGDG.rhel8.x86_64.rpm pgdg 1.9.0 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/icu_ext_17-1.9.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 icu_ext_17 icu_ext_17-1.10.0-1PIGSTY.el8.aarch64.rpm pigsty 1.10.0 49.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/icu_ext_17-1.10.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 icu_ext_17 icu_ext_17-1.9.0-1PGDG.rhel8.aarch64.rpm pgdg 1.9.0 45.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/icu_ext_17-1.9.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 icu_ext_17 icu_ext_17-1.10.0-1PIGSTY.el9.x86_64.rpm pigsty 1.10.0 49.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/icu_ext_17-1.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 icu_ext_17 icu_ext_17-1.9.0-1PGDG.rhel9.x86_64.rpm pgdg 1.9.0 47.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/icu_ext_17-1.9.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 icu_ext_17 icu_ext_17-1.10.0-1PIGSTY.el9.aarch64.rpm pigsty 1.10.0 47.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/icu_ext_17-1.10.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 icu_ext_17 icu_ext_17-1.9.0-1PGDG.rhel9.aarch64.rpm pgdg 1.9.0 46.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/icu_ext_17-1.9.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 icu_ext_17 icu_ext_17-1.10.0-1PIGSTY.el10.x86_64.rpm pigsty 1.10.0 50.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/icu_ext_17-1.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 icu_ext_17 icu_ext_17-1.9.0-1PGDG.rhel10.x86_64.rpm pgdg 1.9.0 48.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/icu_ext_17-1.9.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 icu_ext_17 icu_ext_17-1.10.0-1PIGSTY.el10.aarch64.rpm pigsty 1.10.0 48.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/icu_ext_17-1.10.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 icu_ext_17 icu_ext_17-1.9.0-1PGDG.rhel10.aarch64.rpm pgdg 1.9.0 46.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/icu_ext_17-1.9.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg12+1_amd64.deb pgdg 1.10.0 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg12+1_amd64.deb pgdg 1.10.0 94.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg12+1_arm64.deb pgdg 1.10.0 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg12+1_arm64.deb pgdg 1.10.0 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg13+1_amd64.deb pgdg 1.10.0 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg13+1_amd64.deb pgdg 1.10.0 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg13+1_arm64.deb pgdg 1.10.0 92.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg13+1_arm64.deb pgdg 1.10.0 92.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb pgdg 1.10.0 106.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb pgdg 1.10.0 106.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb pgdg 1.10.0 103.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb pgdg 1.10.0 103.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb pgdg 1.10.0 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb pgdg 1.10.0 94.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-icu-ext postgresql-17-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-17-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 icu_ext_16 icu_ext_16-1.10.0-1PIGSTY.el8.x86_64.rpm pigsty 1.10.0 50.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/icu_ext_16-1.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 icu_ext_16 icu_ext_16-1.9.0-1PGDG.rhel8.x86_64.rpm pgdg 1.9.0 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/icu_ext_16-1.9.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 icu_ext_16 icu_ext_16-1.10.0-1PIGSTY.el8.aarch64.rpm pigsty 1.10.0 49.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/icu_ext_16-1.10.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 icu_ext_16 icu_ext_16-1.9.0-1PGDG.rhel8.aarch64.rpm pgdg 1.9.0 45.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/icu_ext_16-1.9.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 icu_ext_16 icu_ext_16-1.10.0-1PIGSTY.el9.x86_64.rpm pigsty 1.10.0 49.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/icu_ext_16-1.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 icu_ext_16 icu_ext_16-1.9.0-1PGDG.rhel9.x86_64.rpm pgdg 1.9.0 47.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/icu_ext_16-1.9.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 icu_ext_16 icu_ext_16-1.10.0-1PIGSTY.el9.aarch64.rpm pigsty 1.10.0 47.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/icu_ext_16-1.10.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 icu_ext_16 icu_ext_16-1.9.0-1PGDG.rhel9.aarch64.rpm pgdg 1.9.0 45.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/icu_ext_16-1.9.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 icu_ext_16 icu_ext_16-1.10.0-1PIGSTY.el10.x86_64.rpm pigsty 1.10.0 50.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/icu_ext_16-1.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 icu_ext_16 icu_ext_16-1.9.0-1PGDG.rhel10.x86_64.rpm pgdg 1.9.0 48.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/icu_ext_16-1.9.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 icu_ext_16 icu_ext_16-1.10.0-1PIGSTY.el10.aarch64.rpm pigsty 1.10.0 48.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/icu_ext_16-1.10.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 icu_ext_16 icu_ext_16-1.9.0-1PGDG.rhel10.aarch64.rpm pgdg 1.9.0 46.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/icu_ext_16-1.9.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg12+1_amd64.deb pgdg 1.10.0 94.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg12+1_amd64.deb pgdg 1.10.0 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg12+1_arm64.deb pgdg 1.10.0 92.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg12+1_arm64.deb pgdg 1.10.0 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg13+1_amd64.deb pgdg 1.10.0 94.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg13+1_amd64.deb pgdg 1.10.0 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg13+1_arm64.deb pgdg 1.10.0 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg13+1_arm64.deb pgdg 1.10.0 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb pgdg 1.10.0 106.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb pgdg 1.10.0 106.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb pgdg 1.10.0 103.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb pgdg 1.10.0 103.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb pgdg 1.10.0 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb pgdg 1.10.0 94.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-icu-ext postgresql-16-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-16-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 icu_ext_15 icu_ext_15-1.10.0-1PIGSTY.el8.x86_64.rpm pigsty 1.10.0 51.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/icu_ext_15-1.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 icu_ext_15 icu_ext_15-1.9.0-1PGDG.rhel8.x86_64.rpm pgdg 1.9.0 46.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/icu_ext_15-1.9.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 icu_ext_15 icu_ext_15-1.10.0-1PIGSTY.el8.aarch64.rpm pigsty 1.10.0 49.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/icu_ext_15-1.10.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 icu_ext_15 icu_ext_15-1.9.0-1PGDG.rhel8.aarch64.rpm pgdg 1.9.0 45.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/icu_ext_15-1.9.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 icu_ext_15 icu_ext_15-1.10.0-1PIGSTY.el9.x86_64.rpm pigsty 1.10.0 50.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/icu_ext_15-1.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 icu_ext_15 icu_ext_15-1.9.0-1PGDG.rhel9.x86_64.rpm pgdg 1.9.0 47.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/icu_ext_15-1.9.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 icu_ext_15 icu_ext_15-1.10.0-1PIGSTY.el9.aarch64.rpm pigsty 1.10.0 48.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/icu_ext_15-1.10.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 icu_ext_15 icu_ext_15-1.9.0-1PGDG.rhel9.aarch64.rpm pgdg 1.9.0 46.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/icu_ext_15-1.9.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 icu_ext_15 icu_ext_15-1.10.0-1PIGSTY.el10.x86_64.rpm pigsty 1.10.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/icu_ext_15-1.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 icu_ext_15 icu_ext_15-1.9.0-1PGDG.rhel10.x86_64.rpm pgdg 1.9.0 48.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/icu_ext_15-1.9.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 icu_ext_15 icu_ext_15-1.10.0-1PIGSTY.el10.aarch64.rpm pigsty 1.10.0 48.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/icu_ext_15-1.10.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 icu_ext_15 icu_ext_15-1.9.0-1PGDG.rhel10.aarch64.rpm pgdg 1.9.0 46.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/icu_ext_15-1.9.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg12+1_amd64.deb pgdg 1.10.0 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg12+1_amd64.deb pgdg 1.10.0 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg12+1_arm64.deb pgdg 1.10.0 92.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg12+1_arm64.deb pgdg 1.10.0 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg13+1_amd64.deb pgdg 1.10.0 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg13+1_amd64.deb pgdg 1.10.0 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg13+1_arm64.deb pgdg 1.10.0 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg13+1_arm64.deb pgdg 1.10.0 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb pgdg 1.10.0 106.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb pgdg 1.10.0 106.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb pgdg 1.10.0 103.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb pgdg 1.10.0 103.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb pgdg 1.10.0 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb pgdg 1.10.0 93.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb pgdg 1.10.0 94.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-icu-ext postgresql-15-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-15-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 icu_ext_14 icu_ext_14-1.10.0-1PIGSTY.el8.x86_64.rpm pigsty 1.10.0 51.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/icu_ext_14-1.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 icu_ext_14 icu_ext_14-1.9.0-1PGDG.rhel8.x86_64.rpm pgdg 1.9.0 46.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/icu_ext_14-1.9.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 icu_ext_14 icu_ext_14-1.10.0-1PIGSTY.el8.aarch64.rpm pigsty 1.10.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/icu_ext_14-1.10.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 icu_ext_14 icu_ext_14-1.9.0-1PGDG.rhel8.aarch64.rpm pgdg 1.9.0 45.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/icu_ext_14-1.9.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 icu_ext_14 icu_ext_14-1.10.0-1PIGSTY.el9.x86_64.rpm pigsty 1.10.0 50.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/icu_ext_14-1.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 icu_ext_14 icu_ext_14-1.9.0-1PGDG.rhel9.x86_64.rpm pgdg 1.9.0 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/icu_ext_14-1.9.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 icu_ext_14 icu_ext_14-1.10.0-1PIGSTY.el9.aarch64.rpm pigsty 1.10.0 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/icu_ext_14-1.10.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 icu_ext_14 icu_ext_14-1.9.0-1PGDG.rhel9.aarch64.rpm pgdg 1.9.0 46.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/icu_ext_14-1.9.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 icu_ext_14 icu_ext_14-1.10.0-1PIGSTY.el10.x86_64.rpm pigsty 1.10.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/icu_ext_14-1.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 icu_ext_14 icu_ext_14-1.9.0-1PGDG.rhel10.x86_64.rpm pgdg 1.9.0 48.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/icu_ext_14-1.9.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 icu_ext_14 icu_ext_14-1.10.0-1PIGSTY.el10.aarch64.rpm pigsty 1.10.0 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/icu_ext_14-1.10.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 icu_ext_14 icu_ext_14-1.9.0-1PGDG.rhel10.aarch64.rpm pgdg 1.9.0 46.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/icu_ext_14-1.9.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg12+1_amd64.deb pgdg 1.10.0 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg12+1_amd64.deb pgdg 1.10.0 94.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg12+1_arm64.deb pgdg 1.10.0 92.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg12+1_arm64.deb pgdg 1.10.0 92.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg13+1_amd64.deb pgdg 1.10.0 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg13+1_amd64.deb pgdg 1.10.0 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg13+1_arm64.deb pgdg 1.10.0 92.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg13+1_arm64.deb pgdg 1.10.0 92.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb pgdg 1.10.0 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb pgdg 1.10.0 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb pgdg 1.10.0 104.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb pgdg 1.10.0 104.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb pgdg 1.10.0 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb pgdg 1.10.0 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb pgdg 1.10.0 92.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb pgdg 1.10.0 94.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb pgdg 1.10.0 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb pgdg 1.10.0 91.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-4.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-icu-ext postgresql-14-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb pgdg 1.10.0 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/i/icu-ext/postgresql-14-icu-ext_1.10.0-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `icu_ext` using `pig build`:

```bash
pig build pkg icu_ext         # build RPM packages
```


## Install

You can install `icu_ext` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install icu_ext;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y icu_ext -v 18  # PG 18
pig ext install -y icu_ext -v 17  # PG 17
pig ext install -y icu_ext -v 16  # PG 16
pig ext install -y icu_ext -v 15  # PG 15
pig ext install -y icu_ext -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y icu_ext_18       # PG 18
dnf install -y icu_ext_17       # PG 17
dnf install -y icu_ext_16       # PG 16
dnf install -y icu_ext_15       # PG 15
dnf install -y icu_ext_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-icu-ext   # PG 18
apt install -y postgresql-17-icu-ext   # PG 17
apt install -y postgresql-16-icu-ext   # PG 16
apt install -y postgresql-15-icu-ext   # PG 15
apt install -y postgresql-14-icu-ext   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION icu_ext;
```


## Usage

> Sources: [README](https://github.com/dverite/icu_ext/blob/master/README.md), [datetime docs](https://github.com/dverite/icu_ext/blob/master/README-datetime.md), [v1.10.0 release](https://github.com/dverite/icu_ext/releases/tag/v1.10.0)

`icu_ext` exposes [ICU](https://icu.unicode.org/) functionality to PostgreSQL. Upstream requires PostgreSQL 11+ configured with ICU (`--with-icu`); the pgext catalog tracks version `1.10.0` for PostgreSQL 14-18, with the v1.10.0 release noting PostgreSQL 18 compatibility.

### Enable the Extension

```sql
CREATE EXTENSION icu_ext;
```

### Version Info

```sql
SELECT icu_version();           -- ICU library version
SELECT icu_unicode_version();   -- Unicode standard version
```

### Locale Functions

```sql
SELECT * FROM icu_locales_list() WHERE name LIKE 'es%' LIMIT 5;
SELECT icu_default_locale();
SELECT icu_set_default_locale('en');
```

### Collation Attributes

```sql
SELECT * FROM icu_collation_attributes('fr-u-ks-level2-kn');
```

### String Comparison

```sql
-- Case-sensitive, accent-insensitive comparison:
SELECT icu_compare('abce', 'abce', 'en-u-ks-level1-kc-true');  -- 0
SELECT icu_compare('Abce', 'abce', 'en-u-ks-level1-kc-true');  -- 1
```

### Sort Keys and Linguistic Search

```sql
CREATE UNIQUE INDEX idx ON my_table((icu_sort_key(name, 'fr-u-ks-level1')));

SELECT icu_strpos('Jean-Rene Dupont', 'jeanrene', 'fr-u-ks-level1-ka-shifted');
SELECT icu_replace('Jean-Rene Dupont', 'jeanrene', '{firstname}', 'fr-u-ks-level1-ka-shifted');
```

### Text Boundary Analysis

```sql
SELECT * FROM icu_character_boundaries('Hello', 'en');
SELECT * FROM icu_word_boundaries('I like books', 'en');
SELECT * FROM icu_sentence_boundaries('Mr. Smith went home. He was tired.', 'en');
SELECT * FROM icu_line_boundaries('Long text here', 'en');
```

### Unicode Normalization and Transformation

```sql
SELECT icu_normalize('text', 'NFC');
SELECT icu_is_normalized('text', 'NFC');
SELECT icu_transform('Hello', 'Latin-Cyrillic');
SELECT * FROM icu_transforms_list();
```

### Date and Time Localization

```sql
SET icu_ext.locale TO '@calendar=buddhist';

SELECT icu_format_date('2020-12-31'::date, '{medium}', 'en@calendar=ethiopic');
SELECT icu_parse_date('25/09/2566', 'dd/MM/yyyy');
SELECT icu_format_datetime(now(), 'GGGG dd/MMMM/yyyy HH:mm:ss.SSS z', 'fr@calendar=buddhist');
```

The datetime docs also define `icu_date`, `icu_timestamptz`, and `icu_interval`, plus the `icu_ext.locale`, `icu_ext.date_format`, and `icu_ext.timestamptz_format` settings used for localized input/output and calendar-aware arithmetic.

### Number Spellout

```sql
SELECT icu_number_spellout(42, 'en');   -- 'forty-two'
SELECT icu_number_spellout(42, 'fr');   -- 'quarante-deux'
```

### Spoof and Confusable Detection

```sql
SELECT icu_spoof_check('paypal');
SELECT icu_confusable_strings_check('google', 'gооgle');
SELECT icu_confusable_string_skeleton('phi1');
```

### Character Info

```sql
SELECT icu_char_name('A');
SELECT icu_char_type('A');
SELECT icu_char_ublock_id('A');
SELECT * FROM icu_unicode_blocks() WHERE block_name = 'Basic_Latin';
```

### Caveats

- Functions that depend on ICU collation or Unicode data can change behavior when the linked ICU library changes.
- `icu_sort_key()` is index-friendly, but indexes built on sort keys should be reviewed after ICU upgrades.
