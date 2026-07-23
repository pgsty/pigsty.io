---
title: "pgfaceting"
linkTitle: "pgfaceting"
description: "fast faceting queries using an inverted index"
weight: 3640
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/pgfaceting">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/pgfaceting</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/pgfaceting</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgfaceting-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgfaceting-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pgfaceting-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgfaceting`**](/ext/e/pgfaceting) | `0.2.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3640  | [**`pgfaceting`**](/ext/e/pgfaceting) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `faceting` |
{.ext-table}

| **Related** | [`roaringbitmap`](/ext/e/roaringbitmap) [`pg_trgm`](/ext/e/pg_trgm) [`rum`](/ext/e/rum) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pgfaceting` | `roaringbitmap` |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pgfaceting_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgfaceting` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 | AVAIL PIGSTY 0.2.0 2 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 | AVAIL PIGSTY 0.2.0 3 |
| el10.x86_64 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 |
| el10.aarch64 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 | AVAIL PGDG 0.2.0 2 |
| d12.x86_64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| d12.aarch64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| d13.x86_64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| d13.aarch64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| u22.x86_64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| u22.aarch64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| u24.x86_64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| u24.aarch64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| u26.x86_64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
| u26.aarch64 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 | AVAIL PGDG 0.2.0 1 |
@ el8.x86_64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgfaceting_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgfaceting_18-0.2.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgfaceting_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgfaceting_18-0.2.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgfaceting_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgfaceting_18-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgfaceting_18-0.2.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgfaceting_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgfaceting_18-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgfaceting_18-0.2.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgfaceting_18-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgfaceting_18-0.2.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgfaceting_18-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgfaceting_18 pgfaceting_18-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgfaceting_18-0.2.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ u22.x86_64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u24.x86_64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-pgfaceting postgresql-18-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-18-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ el8.x86_64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgfaceting_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgfaceting_17-0.2.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgfaceting_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgfaceting_17-0.2.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgfaceting_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgfaceting_17-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgfaceting_17-0.2.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgfaceting_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgfaceting_17-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgfaceting_17-0.2.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgfaceting_17-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgfaceting_17-0.2.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgfaceting_17-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgfaceting_17 pgfaceting_17-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgfaceting_17-0.2.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d13.x86_64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ u22.x86_64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u24.x86_64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u26.x86_64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-pgfaceting postgresql-17-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-17-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ el8.x86_64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgfaceting_16-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgfaceting_16-0.2.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgfaceting_16-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgfaceting_16-0.2.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgfaceting_16-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgfaceting_16-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgfaceting_16-0.2.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgfaceting_16-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgfaceting_16-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgfaceting_16-0.2.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgfaceting_16-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgfaceting_16-0.2.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgfaceting_16-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgfaceting_16 pgfaceting_16-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgfaceting_16-0.2.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d13.x86_64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ u22.x86_64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u24.x86_64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u26.x86_64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-pgfaceting postgresql-16-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-16-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ el8.x86_64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgfaceting_15-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgfaceting_15-0.2.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgfaceting_15-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgfaceting_15-0.2.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgfaceting_15-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgfaceting_15-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgfaceting_15-0.2.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgfaceting_15-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgfaceting_15-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgfaceting_15-0.2.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgfaceting_15-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgfaceting_15-0.2.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgfaceting_15-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgfaceting_15 pgfaceting_15-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgfaceting_15-0.2.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d13.x86_64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ u22.x86_64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u22.aarch64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u24.x86_64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u26.x86_64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-pgfaceting postgresql-15-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-15-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ el8.x86_64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgfaceting_14-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgfaceting_14-0.2.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgfaceting_14-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel8.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgfaceting_14-0.2.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgfaceting_14-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgfaceting_14-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgfaceting_14-0.2.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgfaceting_14-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgfaceting_14-0.2.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel9.noarch.rpm pgdg 0.2.0 15.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgfaceting_14-0.2.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgfaceting_14-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgfaceting_14-0.2.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.2.0 15.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgfaceting_14-0.2.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgfaceting_14 pgfaceting_14-0.2.0-1PGDG.rhel10.noarch.rpm pgdg 0.2.0 15.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgfaceting_14-0.2.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg12+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg12+1_all.deb
@ d13.x86_64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg13+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg13+1_all.deb
@ u22.x86_64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u22.aarch64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg22.04+1_all.deb
@ u24.x86_64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg24.04+1_all.deb
@ u26.x86_64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-pgfaceting postgresql-14-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb pgdg 0.2.0 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgfaceting/postgresql-14-pgfaceting_0.2.0-5.pgdg26.04+1_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pgfaceting` using `pig build`:

```bash
pig build pkg pgfaceting         # build RPM packages
```


## Install

You can install `pgfaceting` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgfaceting;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgfaceting -v 18  # PG 18
pig ext install -y pgfaceting -v 17  # PG 17
pig ext install -y pgfaceting -v 16  # PG 16
pig ext install -y pgfaceting -v 15  # PG 15
pig ext install -y pgfaceting -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgfaceting_18       # PG 18
dnf install -y pgfaceting_17       # PG 17
dnf install -y pgfaceting_16       # PG 16
dnf install -y pgfaceting_15       # PG 15
dnf install -y pgfaceting_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgfaceting   # PG 18
apt install -y postgresql-17-pgfaceting   # PG 17
apt install -y postgresql-16-pgfaceting   # PG 16
apt install -y postgresql-15-pgfaceting   # PG 15
apt install -y postgresql-14-pgfaceting   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgfaceting CASCADE;  -- requires: roaringbitmap
```




## Usage

> [pgfaceting: fast faceted search using inverted indexes with roaring bitmaps](https://github.com/cybertec-postgresql/pgfaceting)

The `pgfaceting` extension enables rapid facet counting via inverted indexes built with roaring bitmaps. Requires the `pg_roaringbitmap` extension.

```sql
CREATE EXTENSION pgfaceting;
```

### Facet Types

- **`plain_facet(column)`**: Use column values directly as facets
- **`datetrunc_facet(column, precision)`**: Apply date truncation (e.g., monthly/yearly buckets)
- **`bucket_facet(column, buckets)`**: Assign continuous variables to predefined ranges

### Key Functions

```sql
-- Create facet infrastructure for a table
SELECT pgfaceting.add_faceting_to_table(
    'products',
    'id',
    ARRAY[
        plain_facet('color'),
        plain_facet('size'),
        bucket_facet('price', ARRAY[0, 10, 50, 100, 500])
    ]
);

-- Run maintenance to merge incremental changes
SELECT pgfaceting.run_maintenance();

-- Merge deltas for a specific table
SELECT pgfaceting.merge_deltas('products');

-- Get top N facet values
SELECT pgfaceting.top_values('products', 10);

-- Count results with facet filters
SELECT pgfaceting.count_results('products', filters);
```

### Architecture

The extension maintains two auxiliary tables per indexed table: a main facets table with roaring bitmaps mapping facet values to row IDs, and a delta table for incremental changes between maintenance runs.

Currently supports only 32-bit integer ID columns.
