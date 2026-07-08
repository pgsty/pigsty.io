---
title: "pgpcre"
linkTitle: "pgpcre"
description: "Perl Compatible Regular Expression functions"
weight: 4230
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/petere/pgpcre">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">petere/pgpcre</div>
    <div class="ext-card__desc">https://github.com/petere/pgpcre</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgpcre-0.20190509.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgpcre-0.20190509.tar.gz</div>
    <div class="ext-card__desc">pgpcre-0.20190509.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgpcre`**](/ext/e/pgpcre) | `0.20190509` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4230  | [**`pgpcre`**](/ext/e/pgpcre) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`icu_ext`](/ext/e/icu_ext) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`pg_trgm`](/ext/e/pg_trgm) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.20190509` | {{< pgvers "18,17,16,15,14" >}} | `pgpcre` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.20190509` | {{< pgvers "18,17,16,15,14" >}} | `pgpcre_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.20190509` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgpcre` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 |
| el8.aarch64 | AVAIL PGDG 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 | AVAIL PIGSTY 0.20190509 2 |
| el9.x86_64 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 |
| el9.aarch64 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 3 |
| el10.x86_64 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 4 | AVAIL PGDG 0.20190509 4 | AVAIL PGDG 0.20190509 4 | AVAIL PGDG 0.20190509 4 |
| el10.aarch64 | AVAIL PGDG 0.20190509 3 | AVAIL PGDG 0.20190509 4 | AVAIL PGDG 0.20190509 4 | AVAIL PGDG 0.20190509 4 | AVAIL PGDG 0.20190509 3 |
| d12.x86_64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| d12.aarch64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| d13.x86_64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| d13.aarch64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| u22.x86_64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| u22.aarch64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| u24.x86_64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| u24.aarch64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| u26.x86_64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
| u26.aarch64 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 | AVAIL PGDG 0.20190509 1 |
@ el8.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-3PGDG.rhel8.x86_64.rpm pgdg 0.20190509 17.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgpcre_18-0.20190509-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-1PIGSTY.el8.x86_64.rpm pigsty 0.20190509 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgpcre_18-0.20190509-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-3PGDG.rhel8.aarch64.rpm pgdg 0.20190509 17.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgpcre_18-0.20190509-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-1PIGSTY.el8.aarch64.rpm pigsty 0.20190509 16.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgpcre_18-0.20190509-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-6PGDG.rhel9.8.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgpcre_18-0.20190509-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-3PGDG.rhel9.x86_64.rpm pgdg 0.20190509 17.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgpcre_18-0.20190509-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-1PIGSTY.el9.x86_64.rpm pigsty 0.20190509 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgpcre_18-0.20190509-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-6PGDG.rhel9.8.aarch64.rpm pgdg 0.20190509 17.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgpcre_18-0.20190509-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-3PGDG.rhel9.aarch64.rpm pgdg 0.20190509 17.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgpcre_18-0.20190509-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-1PIGSTY.el9.aarch64.rpm pigsty 0.20190509 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgpcre_18-0.20190509-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-6PGDG.rhel10.2.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgpcre_18-0.20190509-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-4PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgpcre_18-0.20190509-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pgpcre_18 pgpcre_18-0.20190509-3PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgpcre_18-0.20190509-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-6PGDG.rhel10.2.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgpcre_18-0.20190509-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-4PGDG.rhel10.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgpcre_18-0.20190509-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pgpcre_18 pgpcre_18-0.20190509-3PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgpcre_18-0.20190509-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg12+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg12+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg13+1_amd64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg13+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb pgdg 0.20190509 18.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb pgdg 0.20190509 18.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgpcre postgresql-18-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-18-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-1PIGSTY.el8.x86_64.rpm pigsty 0.20190509 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgpcre_17-0.20190509-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-1PGDG.rhel8.x86_64.rpm pgdg 0.20190509 17.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgpcre_17-0.20190509-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-1PIGSTY.el8.aarch64.rpm pigsty 0.20190509 16.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgpcre_17-0.20190509-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-1PGDG.rhel8.aarch64.rpm pgdg 0.20190509 17.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgpcre_17-0.20190509-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-6PGDG.rhel9.8.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgpcre_17-0.20190509-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-1PIGSTY.el9.x86_64.rpm pigsty 0.20190509 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgpcre_17-0.20190509-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-1PGDG.rhel9.x86_64.rpm pgdg 0.20190509 17.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgpcre_17-0.20190509-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-6PGDG.rhel9.8.aarch64.rpm pgdg 0.20190509 17.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgpcre_17-0.20190509-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-1PIGSTY.el9.aarch64.rpm pigsty 0.20190509 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgpcre_17-0.20190509-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-1PGDG.rhel9.aarch64.rpm pgdg 0.20190509 17.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgpcre_17-0.20190509-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-6PGDG.rhel10.2.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgpcre_17-0.20190509-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-4PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgpcre_17-0.20190509-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-3PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgpcre_17-0.20190509-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgpcre_17 pgpcre_17-0.20190509-2PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgpcre_17-0.20190509-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-6PGDG.rhel10.2.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgpcre_17-0.20190509-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-4PGDG.rhel10.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgpcre_17-0.20190509-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-3PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgpcre_17-0.20190509-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgpcre_17 pgpcre_17-0.20190509-2PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgpcre_17-0.20190509-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg12+1_amd64.deb pgdg 0.20190509 18.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg12+1_arm64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg13+1_amd64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg13+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb pgdg 0.20190509 18.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb pgdg 0.20190509 18.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgpcre postgresql-17-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-17-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-1PIGSTY.el8.x86_64.rpm pigsty 0.20190509 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgpcre_16-0.20190509-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-1PGDG.rhel8.x86_64.rpm pgdg 0.20190509 17.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgpcre_16-0.20190509-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-1PIGSTY.el8.aarch64.rpm pigsty 0.20190509 16.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgpcre_16-0.20190509-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-1PGDG.rhel8.aarch64.rpm pgdg 0.20190509 17.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgpcre_16-0.20190509-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-6PGDG.rhel9.8.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgpcre_16-0.20190509-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-1PIGSTY.el9.x86_64.rpm pigsty 0.20190509 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgpcre_16-0.20190509-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-1PGDG.rhel9.x86_64.rpm pgdg 0.20190509 17.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgpcre_16-0.20190509-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-6PGDG.rhel9.8.aarch64.rpm pgdg 0.20190509 17.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgpcre_16-0.20190509-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-1PIGSTY.el9.aarch64.rpm pigsty 0.20190509 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgpcre_16-0.20190509-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-1PGDG.rhel9.aarch64.rpm pgdg 0.20190509 17.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgpcre_16-0.20190509-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-6PGDG.rhel10.2.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgpcre_16-0.20190509-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-4PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgpcre_16-0.20190509-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-3PGDG.rhel10.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgpcre_16-0.20190509-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgpcre_16 pgpcre_16-0.20190509-2PGDG.rhel10.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgpcre_16-0.20190509-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-6PGDG.rhel10.2.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgpcre_16-0.20190509-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-4PGDG.rhel10.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgpcre_16-0.20190509-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-3PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgpcre_16-0.20190509-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgpcre_16 pgpcre_16-0.20190509-2PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgpcre_16-0.20190509-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg12+1_amd64.deb pgdg 0.20190509 18.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg12+1_arm64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg13+1_amd64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg13+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb pgdg 0.20190509 18.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb pgdg 0.20190509 18.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgpcre postgresql-16-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-16-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-1PIGSTY.el8.x86_64.rpm pigsty 0.20190509 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgpcre_15-0.20190509-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-1PGDG.rhel8.x86_64.rpm pgdg 0.20190509 17.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgpcre_15-0.20190509-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-1PIGSTY.el8.aarch64.rpm pigsty 0.20190509 16.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgpcre_15-0.20190509-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-1PGDG.rhel8.aarch64.rpm pgdg 0.20190509 17.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgpcre_15-0.20190509-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-6PGDG.rhel9.8.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgpcre_15-0.20190509-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-1PIGSTY.el9.x86_64.rpm pigsty 0.20190509 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgpcre_15-0.20190509-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-1PGDG.rhel9.x86_64.rpm pgdg 0.20190509 17.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgpcre_15-0.20190509-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-6PGDG.rhel9.8.aarch64.rpm pgdg 0.20190509 17.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgpcre_15-0.20190509-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-1PIGSTY.el9.aarch64.rpm pigsty 0.20190509 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgpcre_15-0.20190509-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-1PGDG.rhel9.aarch64.rpm pgdg 0.20190509 17.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgpcre_15-0.20190509-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-6PGDG.rhel10.2.x86_64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgpcre_15-0.20190509-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-4PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgpcre_15-0.20190509-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-3PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgpcre_15-0.20190509-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgpcre_15 pgpcre_15-0.20190509-2PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgpcre_15-0.20190509-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-6PGDG.rhel10.2.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgpcre_15-0.20190509-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-4PGDG.rhel10.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgpcre_15-0.20190509-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-3PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgpcre_15-0.20190509-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgpcre_15 pgpcre_15-0.20190509-2PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgpcre_15-0.20190509-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg12+1_amd64.deb pgdg 0.20190509 18.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg12+1_arm64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg13+1_amd64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg13+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb pgdg 0.20190509 18.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb pgdg 0.20190509 18.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgpcre postgresql-15-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-15-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-1PIGSTY.el8.x86_64.rpm pigsty 0.20190509 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgpcre_14-0.20190509-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-1PGDG.rhel8.x86_64.rpm pgdg 0.20190509 17.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgpcre_14-0.20190509-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-1PIGSTY.el8.aarch64.rpm pigsty 0.20190509 16.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgpcre_14-0.20190509-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-1PGDG.rhel8.aarch64.rpm pgdg 0.20190509 17.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgpcre_14-0.20190509-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-6PGDG.rhel9.8.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgpcre_14-0.20190509-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-1PIGSTY.el9.x86_64.rpm pigsty 0.20190509 16.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgpcre_14-0.20190509-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-1PGDG.rhel9.x86_64.rpm pgdg 0.20190509 17.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgpcre_14-0.20190509-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-6PGDG.rhel9.8.aarch64.rpm pgdg 0.20190509 17.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgpcre_14-0.20190509-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-1PIGSTY.el9.aarch64.rpm pigsty 0.20190509 16.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgpcre_14-0.20190509-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-1PGDG.rhel9.aarch64.rpm pgdg 0.20190509 17.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgpcre_14-0.20190509-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-6PGDG.rhel10.2.x86_64.rpm pgdg 0.20190509 18.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgpcre_14-0.20190509-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-4PGDG.rhel10.x86_64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgpcre_14-0.20190509-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-3PGDG.rhel10.x86_64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgpcre_14-0.20190509-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgpcre_14 pgpcre_14-0.20190509-2PGDG.rhel10.x86_64.rpm pgdg 0.20190509 17.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgpcre_14-0.20190509-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-4PGDG.rhel10.aarch64.rpm pgdg 0.20190509 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgpcre_14-0.20190509-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-3PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgpcre_14-0.20190509-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgpcre_14 pgpcre_14-0.20190509-2PGDG.rhel10.aarch64.rpm pgdg 0.20190509 17.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgpcre_14-0.20190509-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg12+1_amd64.deb pgdg 0.20190509 18.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg12+1_arm64.deb pgdg 0.20190509 18.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg13+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg13+1_arm64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb pgdg 0.20190509 18.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb pgdg 0.20190509 18.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb pgdg 0.20190509 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgpcre postgresql-14-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb pgdg 0.20190509 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgpcre/postgresql-14-pgpcre_0.20190509-9.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pgpcre` using `pig build`:

```bash
pig build pkg pgpcre         # build RPM packages
```


## Install

You can install `pgpcre` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgpcre;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgpcre -v 18  # PG 18
pig ext install -y pgpcre -v 17  # PG 17
pig ext install -y pgpcre -v 16  # PG 16
pig ext install -y pgpcre -v 15  # PG 15
pig ext install -y pgpcre -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgpcre_18       # PG 18
dnf install -y pgpcre_17       # PG 17
dnf install -y pgpcre_16       # PG 16
dnf install -y pgpcre_15       # PG 15
dnf install -y pgpcre_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgpcre   # PG 18
apt install -y postgresql-17-pgpcre   # PG 17
apt install -y postgresql-16-pgpcre   # PG 16
apt install -y postgresql-15-pgpcre   # PG 15
apt install -y postgresql-14-pgpcre   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgpcre;
```




## Usage

> [pgpcre: Perl-compatible regular expressions (PCRE) for PostgreSQL](https://github.com/petere/pgpcre)

Provides a `pcre` data type and operators/functions for PCRE pattern matching.

### Basic Matching

```sql
SELECT 'foo' ~ pcre 'fo+';        -- true
SELECT 'bar' !~ pcre 'fo+';       -- true
SELECT 'foo' =~ pcre 'fo+';       -- true (Perl-style operator)
```

Reverse operand order:

```sql
SELECT pcre 'fo+' ~ 'foo';        -- true
SELECT pcre 'fo+' ~ ANY(ARRAY['foo', 'bar']);
```

### Case-Insensitive Matching

```sql
SELECT 'FOO' ~ pcre '(?i)fo+';    -- true
```

### Extract Matched String

```sql
SELECT pcre_match('fo+', 'foobar');    -- 'foo'
SELECT pcre_match('fo+', 'barbar');    -- NULL
```

### Extract Captured Substrings

```sql
SELECT pcre_captured_substrings('(fo+)(b..)', 'foobar');
-- ARRAY['foo','bar']

SELECT pcre_captured_substrings('(a|(z))(bc)', 'abc');
-- ARRAY['a',NULL,'bc']
```

### Storing Regular Expressions

The `pcre` type can be stored in table columns. The binary form contains the compiled regex, tied to the PCRE library version. After a PCRE library upgrade, recompile stored values:

```sql
UPDATE my_table SET pcre_col = pcre_col::text::pcre;
```
