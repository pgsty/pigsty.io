---
title: "age"
linkTitle: "age"
description: "AGE graph database extension"
weight: 2600
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/apache/age">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">apache/age</div>
    <div class="ext-card__desc">https://github.com/apache/age</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/age-PG18-v1.8.0-rc0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">age-PG18-v1.8.0-rc0.tar.gz</div>
    <div class="ext-card__desc">age-PG18-v1.8.0-rc0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`age`**](/ext/e/age) | `1.8.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2600  | [**`age`**](/ext/e/age) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `ag_catalog` |
{.ext-table}

| **Related** | [`pg_liquid`](/ext/e/pg_liquid) [`onesparse`](/ext/e/onesparse) [`graph`](/ext/e/graph) [`pgrdf`](/ext/e/pgrdf) [`ltree`](/ext/e/ltree) [`sparql`](/ext/e/sparql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PIGSTY RPM package 1.8.0 for PostgreSQL 18 is built from the upstream PG18 v1.8.0-rc0 source; SQL/control version is 1.8.0 and LOAD 'age' is required before use. PostgreSQL 17 remains on PIGSTY 1.7.0; PGDG DEB raw version 1.8.0~rc0 is available for PostgreSQL 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.8.0` | {{< pgvers "18,17" >}} | `age` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.8.0` | {{< pgvers "18,17" >}} | `age_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8.0` | {{< pgvers "18,17" >}} | `postgresql-$v-age` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.8.0 3 | AVAIL PIGSTY 1.7.0 3 | AVAIL PIGSTY 1.6.0 2 | AVAIL PIGSTY 1.6.0 2 | AVAIL PIGSTY 1.6.0 2 |
| el8.aarch64 | AVAIL PIGSTY 1.8.0 3 | AVAIL PIGSTY 1.7.0 3 | AVAIL PIGSTY 1.6.0 2 | AVAIL PIGSTY 1.6.0 2 | AVAIL PIGSTY 1.6.0 2 |
| el9.x86_64 | AVAIL PIGSTY 1.8.0 5 | AVAIL PIGSTY 1.7.0 6 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 |
| el9.aarch64 | AVAIL PIGSTY 1.8.0 5 | AVAIL PIGSTY 1.7.0 6 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 |
| el10.x86_64 | AVAIL PIGSTY 1.8.0 5 | AVAIL PIGSTY 1.7.0 6 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 |
| el10.aarch64 | AVAIL PIGSTY 1.8.0 5 | AVAIL PIGSTY 1.7.0 6 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 | AVAIL PIGSTY 1.6.0 3 |
| d12.x86_64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d12.aarch64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d13.x86_64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d13.aarch64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u22.x86_64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u22.aarch64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u24.x86_64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u24.aarch64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u26.x86_64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u26.aarch64 | AVAIL PGDG 1.8.0 3 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
@ el8.x86_64 18 age_18 age_18-1.8.0-1PIGSTY.el8.x86_64.rpm pigsty 1.8.0 300.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/age_18-1.8.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 age_18 age_18-1.7.0-2PIGSTY.el8.x86_64.rpm pigsty 1.7.0 247.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/age_18-1.7.0-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 227.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/age_18-1.7.0-rc0_1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 age_18 age_18-1.8.0-1PIGSTY.el8.aarch64.rpm pigsty 1.8.0 278.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/age_18-1.8.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 age_18 age_18-1.7.0-2PIGSTY.el8.aarch64.rpm pigsty 1.7.0 229.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/age_18-1.7.0-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 209.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/age_18-1.7.0-rc0_1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 age_18 age_18-1.8.0-1PIGSTY.el9.x86_64.rpm pigsty 1.8.0 280.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/age_18-1.8.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 age_18 age_18-1.7.0-2PIGSTY.el9.x86_64.rpm pigsty 1.7.0 229.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/age_18-1.7.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel9.8.x86_64.rpm pgdg 1.7.0 225.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/age_18-1.7.0-rc0_1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel9.7.x86_64.rpm pgdg 1.7.0 225.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/age_18-1.7.0-rc0_1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel9.6.x86_64.rpm pgdg 1.7.0 225.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/age_18-1.7.0-rc0_1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 age_18 age_18-1.8.0-1PIGSTY.el9.aarch64.rpm pigsty 1.8.0 271.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/age_18-1.8.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 age_18 age_18-1.7.0-2PIGSTY.el9.aarch64.rpm pigsty 1.7.0 221.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/age_18-1.7.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel9.8.aarch64.rpm pgdg 1.7.0 216.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/age_18-1.7.0-rc0_1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel9.7.aarch64.rpm pgdg 1.7.0 216.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/age_18-1.7.0-rc0_1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel9.6.aarch64.rpm pgdg 1.7.0 216.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/age_18-1.7.0-rc0_1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 age_18 age_18-1.8.0-1PIGSTY.el10.x86_64.rpm pigsty 1.8.0 280.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/age_18-1.8.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 age_18 age_18-1.7.0-2PIGSTY.el10.x86_64.rpm pigsty 1.7.0 231.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/age_18-1.7.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel10.2.x86_64.rpm pgdg 1.7.0 227.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/age_18-1.7.0-rc0_1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel10.1.x86_64.rpm pgdg 1.7.0 227.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/age_18-1.7.0-rc0_1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel10.0.x86_64.rpm pgdg 1.7.0 228.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/age_18-1.7.0-rc0_1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 age_18 age_18-1.8.0-1PIGSTY.el10.aarch64.rpm pigsty 1.8.0 270.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/age_18-1.8.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 age_18 age_18-1.7.0-2PIGSTY.el10.aarch64.rpm pigsty 1.7.0 221.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/age_18-1.7.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 218.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/age_18-1.7.0-rc0_1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel10.1.aarch64.rpm pgdg 1.7.0 218.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/age_18-1.7.0-rc0_1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 age_18 age_18-1.7.0-rc0_1PGDG.rhel10.0.aarch64.rpm pgdg 1.7.0 218.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/age_18-1.7.0-rc0_1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg12+1_amd64.deb pgdg 1.8.0 798.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~bookworm_amd64.deb pigsty 1.7.0 682.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.7.0 680.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg12+1_arm64.deb pgdg 1.8.0 773.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~bookworm_arm64.deb pigsty 1.7.0 661.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.7.0 661.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg13+1_amd64.deb pgdg 1.8.0 796.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~trixie_amd64.deb pigsty 1.7.0 683.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.7.0 682.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg13+1_arm64.deb pgdg 1.8.0 773.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~trixie_arm64.deb pigsty 1.7.0 664.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.7.0 662.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg22.04+1_amd64.deb pgdg 1.8.0 828.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~jammy_amd64.deb pigsty 1.7.0 764.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 702.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg22.04+1_arm64.deb pgdg 1.8.0 803.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~jammy_arm64.deb pigsty 1.7.0 753.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 682.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg24.04+1_amd64.deb pgdg 1.8.0 795.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~noble_amd64.deb pigsty 1.7.0 729.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 681.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg24.04+1_arm64.deb pgdg 1.8.0 772.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~noble_arm64.deb pigsty 1.7.0 717.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 660.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg26.04+1_amd64.deb pgdg 1.8.0 795.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~resolute_amd64.deb pigsty 1.7.0 722.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg26.04+1_amd64.deb pgdg 1.7.0 680.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-age postgresql-18-age_1.8.0~rc0-2.pgdg26.04+1_arm64.deb pgdg 1.8.0 771.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.8.0~rc0-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-2PIGSTY~resolute_arm64.deb pigsty 1.7.0 710.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/age/postgresql-18-age_1.7.0-2PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg26.04+1_arm64.deb pgdg 1.7.0 656.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 age_17 age_17-1.7.0-2PIGSTY.el8.x86_64.rpm pigsty 1.7.0 247.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/age_17-1.7.0-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 227.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/age_17-1.7.0-rc0_1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.0 224.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/age_17-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 age_17 age_17-1.7.0-2PIGSTY.el8.aarch64.rpm pigsty 1.7.0 229.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/age_17-1.7.0-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 209.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/age_17-1.7.0-rc0_1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.0 207.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/age_17-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 age_17 age_17-1.7.0-2PIGSTY.el9.x86_64.rpm pigsty 1.7.0 229.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/age_17-1.7.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel9.8.x86_64.rpm pgdg 1.7.0 225.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/age_17-1.7.0-rc0_1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel9.7.x86_64.rpm pgdg 1.7.0 225.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/age_17-1.7.0-rc0_1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel9.6.x86_64.rpm pgdg 1.7.0 225.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/age_17-1.7.0-rc0_1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm pgdg 1.6.0 221.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/age_17-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm pgdg 1.6.0 221.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/age_17-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 age_17 age_17-1.7.0-2PIGSTY.el9.aarch64.rpm pigsty 1.7.0 220.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/age_17-1.7.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel9.8.aarch64.rpm pgdg 1.7.0 216.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/age_17-1.7.0-rc0_1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel9.7.aarch64.rpm pgdg 1.7.0 216.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/age_17-1.7.0-rc0_1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel9.6.aarch64.rpm pgdg 1.7.0 216.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/age_17-1.7.0-rc0_1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm pgdg 1.6.0 212.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/age_17-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm pgdg 1.6.0 212.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/age_17-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 age_17 age_17-1.7.0-2PIGSTY.el10.x86_64.rpm pigsty 1.7.0 231.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/age_17-1.7.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel10.2.x86_64.rpm pgdg 1.7.0 227.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/age_17-1.7.0-rc0_1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel10.1.x86_64.rpm pgdg 1.7.0 227.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/age_17-1.7.0-rc0_1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel10.0.x86_64.rpm pgdg 1.7.0 228.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/age_17-1.7.0-rc0_1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm pgdg 1.6.0 224.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/age_17-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm pgdg 1.6.0 224.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/age_17-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 age_17 age_17-1.7.0-2PIGSTY.el10.aarch64.rpm pigsty 1.7.0 222.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/age_17-1.7.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 218.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/age_17-1.7.0-rc0_1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel10.1.aarch64.rpm pgdg 1.7.0 218.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/age_17-1.7.0-rc0_1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 age_17 age_17-1.7.0-rc0_1PGDG.rhel10.0.aarch64.rpm pgdg 1.7.0 218.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/age_17-1.7.0-rc0_1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm pgdg 1.6.0 214.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/age_17-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 age_17 age_17-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm pgdg 1.6.0 214.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/age_17-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~bookworm_amd64.deb pigsty 1.7.0 682.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.7.0 680.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~bookworm_arm64.deb pigsty 1.7.0 663.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.7.0 660.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~trixie_amd64.deb pigsty 1.7.0 684.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.7.0 681.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~trixie_arm64.deb pigsty 1.7.0 664.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.7.0 661.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~jammy_amd64.deb pigsty 1.7.0 862.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 800.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~jammy_arm64.deb pigsty 1.7.0 853.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 778.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~noble_amd64.deb pigsty 1.7.0 727.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 680.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~noble_arm64.deb pigsty 1.7.0 717.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 660.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~resolute_amd64.deb pigsty 1.7.0 722.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg26.04+1_amd64.deb pgdg 1.7.0 679.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-2PIGSTY~resolute_arm64.deb pigsty 1.7.0 710.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/age/postgresql-17-age_1.7.0-2PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg26.04+1_arm64.deb pgdg 1.7.0 655.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 age_16 age_16-1.6.0-2PIGSTY.el8.x86_64.rpm pigsty 1.6.0 246.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/age_16-1.6.0-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.0 225.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/age_16-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 age_16 age_16-1.6.0-2PIGSTY.el8.aarch64.rpm pigsty 1.6.0 229.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/age_16-1.6.0-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.0 208.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/age_16-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 age_16 age_16-1.6.0-2PIGSTY.el9.x86_64.rpm pigsty 1.6.0 227.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/age_16-1.6.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm pgdg 1.6.0 223.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/age_16-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm pgdg 1.6.0 223.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/age_16-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 age_16 age_16-1.6.0-2PIGSTY.el9.aarch64.rpm pigsty 1.6.0 219.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/age_16-1.6.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm pgdg 1.6.0 213.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/age_16-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm pgdg 1.6.0 213.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/age_16-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 age_16 age_16-1.6.0-2PIGSTY.el10.x86_64.rpm pigsty 1.6.0 230.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/age_16-1.6.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm pgdg 1.6.0 226.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/age_16-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm pgdg 1.6.0 226.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/age_16-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 age_16 age_16-1.6.0-2PIGSTY.el10.aarch64.rpm pigsty 1.6.0 219.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/age_16-1.6.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm pgdg 1.6.0 215.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/age_16-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 age_16 age_16-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm pgdg 1.6.0 215.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/age_16-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg12+1_amd64.deb pgdg 1.6.0 680.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg12+1_arm64.deb pgdg 1.6.0 657.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg13+1_amd64.deb pgdg 1.6.0 678.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg13+1_arm64.deb pgdg 1.6.0 658.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_amd64.deb pgdg 1.6.0 789.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_arm64.deb pgdg 1.6.0 769.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_amd64.deb pgdg 1.6.0 677.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_arm64.deb pgdg 1.6.0 656.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg26.04+1_amd64.deb pgdg 1.6.0 674.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg26.04+1_arm64.deb pgdg 1.6.0 654.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 age_15 age_15-1.6.0-2PIGSTY.el8.x86_64.rpm pigsty 1.6.0 251.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/age_15-1.6.0-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.0 229.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/age_15-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 age_15 age_15-1.6.0-2PIGSTY.el8.aarch64.rpm pigsty 1.6.0 233.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/age_15-1.6.0-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.0 211.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/age_15-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 age_15 age_15-1.6.0-2PIGSTY.el9.x86_64.rpm pigsty 1.6.0 233.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/age_15-1.6.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm pgdg 1.6.0 228.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/age_15-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm pgdg 1.6.0 228.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/age_15-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 age_15 age_15-1.6.0-2PIGSTY.el9.aarch64.rpm pigsty 1.6.0 224.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/age_15-1.6.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm pgdg 1.6.0 218.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/age_15-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm pgdg 1.6.0 218.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/age_15-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 age_15 age_15-1.6.0-2PIGSTY.el10.x86_64.rpm pigsty 1.6.0 236.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/age_15-1.6.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm pgdg 1.6.0 231.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/age_15-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm pgdg 1.6.0 231.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/age_15-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 age_15 age_15-1.6.0-2PIGSTY.el10.aarch64.rpm pigsty 1.6.0 227.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/age_15-1.6.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm pgdg 1.6.0 221.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/age_15-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 age_15 age_15-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm pgdg 1.6.0 221.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/age_15-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.6.0 680.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.6.0 660.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.6.0 681.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.6.0 663.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.6.0 792.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.6.0 771.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.6.0 679.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.6.0 661.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg26.04+1_amd64.deb pgdg 1.6.0 679.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg26.04+1_arm64.deb pgdg 1.6.0 658.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 age_14 age_14-1.6.0-2PIGSTY.el8.x86_64.rpm pigsty 1.6.0 250.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/age_14-1.6.0-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.0 228.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/age_14-1.6.0-rc0_1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 age_14 age_14-1.6.0-2PIGSTY.el8.aarch64.rpm pigsty 1.6.0 233.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/age_14-1.6.0-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.0 211.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/age_14-1.6.0-rc0_1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 age_14 age_14-1.6.0-2PIGSTY.el9.x86_64.rpm pigsty 1.6.0 233.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/age_14-1.6.0-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm pgdg 1.6.0 228.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/age_14-1.6.0-rc0_1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm pgdg 1.6.0 228.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/age_14-1.6.0-rc0_1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 age_14 age_14-1.6.0-2PIGSTY.el9.aarch64.rpm pigsty 1.6.0 223.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/age_14-1.6.0-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm pgdg 1.6.0 218.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/age_14-1.6.0-rc0_1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm pgdg 1.6.0 218.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/age_14-1.6.0-rc0_1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 age_14 age_14-1.6.0-2PIGSTY.el10.x86_64.rpm pigsty 1.6.0 235.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/age_14-1.6.0-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm pgdg 1.6.0 230.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/age_14-1.6.0-rc0_1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm pgdg 1.6.0 231.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/age_14-1.6.0-rc0_1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 age_14 age_14-1.6.0-2PIGSTY.el10.aarch64.rpm pigsty 1.6.0 227.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/age_14-1.6.0-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm pgdg 1.6.0 221.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/age_14-1.6.0-rc0_1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 age_14 age_14-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm pgdg 1.6.0 221.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/age_14-1.6.0-rc0_1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.6.0 680.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.6.0 660.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.6.0 681.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.6.0 661.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.6.0 793.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.6.0 771.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.6.0 679.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.6.0 660.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg26.04+1_amd64.deb pgdg 1.6.0 678.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg26.04+1_arm64.deb pgdg 1.6.0 657.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `age` using `pig build`:

```bash
pig build pkg age         # build RPM / DEB packages
```


## Install

You can install `age` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install age;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y age -v 18  # PG 18
pig ext install -y age -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y age_18       # PG 18
dnf install -y age_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-age   # PG 18
apt install -y postgresql-17-age   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'age';
```


**Create Extension**:

```sql
CREATE EXTENSION age;
```




## Usage

Sources: [Apache AGE repository](https://github.com/apache/age), [PG17 v1.7.0 branch](https://github.com/apache/age/tree/PG17/v1.7.0-rc0), [PG18 v1.7.0 branch](https://github.com/apache/age/tree/PG18/v1.7.0-rc0)

Apache AGE brings graph database capabilities to PostgreSQL using the openCypher query language. It enables hybrid querying that combines SQL and Cypher, property indexes on vertices and edges, and the ability to query multiple graphs.

Each session requires loading the extension:

```sql
CREATE EXTENSION age;
LOAD 'age';
SET search_path = ag_catalog, "$user", public;
```

### Graph Operations

Create a graph:

```sql
SELECT create_graph('my_graph');
```

Create vertices:

```sql
SELECT * FROM cypher('my_graph', $$
    CREATE (:Person {name: 'Alice', age: 30})
$$) AS (v agtype);

SELECT * FROM cypher('my_graph', $$
    CREATE (:Person {name: 'Bob', age: 25})
$$) AS (v agtype);
```

Create edges:

```sql
SELECT * FROM cypher('my_graph', $$
    MATCH (a:Person), (b:Person)
    WHERE a.name = 'Alice' AND b.name = 'Bob'
    CREATE (a)-[e:KNOWS {since: 2020}]->(b)
    RETURN e
$$) AS (e agtype);
```

Query the graph:

```sql
SELECT * FROM cypher('my_graph', $$
    MATCH (v)-[r]-(v2)
    RETURN v, r, v2
$$) AS (v agtype, r agtype, v2 agtype);
```

### Cypher Query Features

AGE supports standard Cypher clauses including `MATCH`, `CREATE`, `SET`, `DELETE`, `RETURN`, `WITH`, `WHERE`, `ORDER BY`, `SKIP`, and `LIMIT`. Data is stored using the `agtype` data type, which extends JSON with graph-specific types for vertices, edges, and paths.

Pattern matching with variable-length paths:

```sql
SELECT * FROM cypher('my_graph', $$
    MATCH (a:Person)-[:KNOWS*1..3]->(b:Person)
    RETURN a.name, b.name
$$) AS (source agtype, target agtype);
```

Hybrid SQL/Cypher queries allow joining graph results with relational tables:

```sql
SELECT t.*, c.* FROM my_table t
JOIN cypher('my_graph', $$
    MATCH (n:Person) RETURN n.name, id(n)
$$) AS c(name agtype, id agtype)
ON t.graph_id = c.id;
```

### Version Notes

Apache AGE 1.7.0 is published through PostgreSQL-major-specific branches for PostgreSQL 17 and 18. The README surface remains the same graph/Cypher workflow, with support focused on the newer PostgreSQL majors rather than PG14-16.
