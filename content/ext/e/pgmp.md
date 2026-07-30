---
title: "pgmp"
linkTitle: "pgmp"
description: "Multiple Precision Arithmetic extension"
weight: 3700
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dvarrazzo/pgmp/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dvarrazzo/pgmp</div>
    <div class="ext-card__desc">https://github.com/dvarrazzo/pgmp/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmp-1.0.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmp-1.0.6.tar.gz</div>
    <div class="ext-card__desc">pgmp-1.0.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmp`**](/ext/e/pgmp) | `1.0.6` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license lgpl30" href="/ext/license#lgpl30">LGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3700  | [**`pgmp`**](/ext/e/pgmp) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`unit`](/ext/e/unit) [`numeral`](/ext/e/numeral) [`pg_rational`](/ext/e/pg_rational) [`uint`](/ext/e/uint) [`uint128`](/ext/e/uint128) [`seg`](/ext/e/seg) [`cube`](/ext/e/cube) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PIGSTY RPM and DEB packages are aligned at 1.0.6 for PostgreSQL 14 through 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.6` | {{< pgvers "18,17,16,15,14" >}} | `pgmp` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.6` | {{< pgvers "18,17,16,15,14" >}} | `pgmp_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmp` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 |
| el8.aarch64 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 |
| el9.x86_64 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 3 | AVAIL PIGSTY 1.0.6 2 |
| el9.aarch64 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 |
| el10.x86_64 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 |
| el10.aarch64 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 | AVAIL PIGSTY 1.0.6 4 |
| d12.x86_64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| d12.aarch64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| d13.x86_64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| d13.aarch64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| u22.x86_64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| u22.aarch64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| u24.x86_64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| u24.aarch64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| u26.x86_64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
| u26.aarch64 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 | AVAIL PGDG 1.0.6 4 |
@ el8.x86_64 18 pgmp_18 pgmp_18-1.0.6-1PIGSTY.el8.x86_64.rpm pigsty 1.0.6 48.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmp_18-1.0.6-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgmp_18 pgmp_18-1.0.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.6 42.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmp_18-1.0.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgmp_18 pgmp_18-1.0.5-4PGDG.rhel8.x86_64.rpm pgdg 1.0.5 41.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmp_18-1.0.5-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgmp_18 pgmp_18-1.0.6-1PIGSTY.el8.aarch64.rpm pigsty 1.0.6 45.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmp_18-1.0.6-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgmp_18 pgmp_18-1.0.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmp_18-1.0.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgmp_18 pgmp_18-1.0.5-4PGDG.rhel8.aarch64.rpm pgdg 1.0.5 39.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmp_18-1.0.5-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgmp_18 pgmp_18-1.0.6-1PIGSTY.el9.x86_64.rpm pigsty 1.0.6 45.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmp_18-1.0.6-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgmp_18 pgmp_18-1.0.5-6PGDG.rhel9.8.x86_64.rpm pgdg 1.0.5 42.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmp_18-1.0.5-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgmp_18 pgmp_18-1.0.5-4PGDG.rhel9.x86_64.rpm pgdg 1.0.5 42.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmp_18-1.0.5-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgmp_18 pgmp_18-1.0.6-1PIGSTY.el9.aarch64.rpm pigsty 1.0.6 43.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmp_18-1.0.6-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgmp_18 pgmp_18-1.0.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.6 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmp_18-1.0.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgmp_18 pgmp_18-1.0.5-6PGDG.rhel9.8.aarch64.rpm pgdg 1.0.5 41.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmp_18-1.0.5-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgmp_18 pgmp_18-1.0.5-4PGDG.rhel9.aarch64.rpm pgdg 1.0.5 41.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmp_18-1.0.5-4PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgmp_18 pgmp_18-1.0.6-1PIGSTY.el10.x86_64.rpm pigsty 1.0.6 46.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmp_18-1.0.6-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgmp_18 pgmp_18-1.0.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.6 44.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmp_18-1.0.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgmp_18 pgmp_18-1.0.5-6PGDG.rhel10.2.x86_64.rpm pgdg 1.0.5 43.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmp_18-1.0.5-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgmp_18 pgmp_18-1.0.5-4PGDG.rhel10.x86_64.rpm pgdg 1.0.5 44.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmp_18-1.0.5-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgmp_18 pgmp_18-1.0.6-1PIGSTY.el10.aarch64.rpm pigsty 1.0.6 44.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmp_18-1.0.6-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgmp_18 pgmp_18-1.0.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.6 42.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmp_18-1.0.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgmp_18 pgmp_18-1.0.5-6PGDG.rhel10.2.aarch64.rpm pgdg 1.0.5 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmp_18-1.0.5-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgmp_18 pgmp_18-1.0.5-4PGDG.rhel10.aarch64.rpm pgdg 1.0.5 42.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmp_18-1.0.5-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg12+1_amd64.deb pgdg 1.0.6 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb pigsty 1.0.6 83.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg12+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg12+1_amd64.deb pgdg 1.0.5 100.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg12+1_arm64.deb pgdg 1.0.6 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb pigsty 1.0.6 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg12+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg12+1_arm64.deb pgdg 1.0.5 99.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg13+1_amd64.deb pgdg 1.0.6 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb pigsty 1.0.6 83.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg13+1_amd64.deb pgdg 1.0.5 100.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg13+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg13+1_arm64.deb pgdg 1.0.6 100.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb pigsty 1.0.6 82.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg13+1_arm64.deb pgdg 1.0.5 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg13+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb pgdg 1.0.6 104.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb pigsty 1.0.6 93.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb pgdg 1.0.5 102.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb pgdg 1.0.5 102.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb pgdg 1.0.6 102.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb pigsty 1.0.6 91.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb pgdg 1.0.5 100.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb pgdg 1.0.5 100.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb pgdg 1.0.6 101.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~noble_amd64.deb pigsty 1.0.6 89.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb pgdg 1.0.6 100.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~noble_arm64.deb pigsty 1.0.6 88.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb pgdg 1.0.5 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb pgdg 1.0.5 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb pgdg 1.0.6 101.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb pigsty 1.0.6 90.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb pgdg 1.0.5 101.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb pgdg 1.0.5 101.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb pgdg 1.0.6 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb pigsty 1.0.6 88.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-18-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgmp postgresql-18-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-18-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgmp_17 pgmp_17-1.0.6-1PIGSTY.el8.x86_64.rpm pigsty 1.0.6 48.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmp_17-1.0.6-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgmp_17 pgmp_17-1.0.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.6 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmp_17-1.0.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgmp_17 pgmp_17-1.0.5-3PGDG.rhel8.x86_64.rpm pgdg 1.0.5 41.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmp_17-1.0.5-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgmp_17 pgmp_17-1.0.6-1PIGSTY.el8.aarch64.rpm pigsty 1.0.6 45.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmp_17-1.0.6-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgmp_17 pgmp_17-1.0.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmp_17-1.0.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgmp_17 pgmp_17-1.0.5-3PGDG.rhel8.aarch64.rpm pgdg 1.0.5 39.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmp_17-1.0.5-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgmp_17 pgmp_17-1.0.6-1PIGSTY.el9.x86_64.rpm pigsty 1.0.6 45.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmp_17-1.0.6-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgmp_17 pgmp_17-1.0.5-6PGDG.rhel9.8.x86_64.rpm pgdg 1.0.5 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmp_17-1.0.5-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgmp_17 pgmp_17-1.0.5-3PGDG.rhel9.x86_64.rpm pgdg 1.0.5 43.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmp_17-1.0.5-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgmp_17 pgmp_17-1.0.6-1PIGSTY.el9.aarch64.rpm pigsty 1.0.6 43.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmp_17-1.0.6-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgmp_17 pgmp_17-1.0.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.6 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmp_17-1.0.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgmp_17 pgmp_17-1.0.5-6PGDG.rhel9.8.aarch64.rpm pgdg 1.0.5 41.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmp_17-1.0.5-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgmp_17 pgmp_17-1.0.5-3PGDG.rhel9.aarch64.rpm pgdg 1.0.5 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmp_17-1.0.5-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgmp_17 pgmp_17-1.0.6-1PIGSTY.el10.x86_64.rpm pigsty 1.0.6 46.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmp_17-1.0.6-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgmp_17 pgmp_17-1.0.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.6 45.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmp_17-1.0.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgmp_17 pgmp_17-1.0.5-6PGDG.rhel10.2.x86_64.rpm pgdg 1.0.5 43.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmp_17-1.0.5-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgmp_17 pgmp_17-1.0.5-4PGDG.rhel10.x86_64.rpm pgdg 1.0.5 44.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmp_17-1.0.5-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgmp_17 pgmp_17-1.0.6-1PIGSTY.el10.aarch64.rpm pigsty 1.0.6 44.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmp_17-1.0.6-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgmp_17 pgmp_17-1.0.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.6 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmp_17-1.0.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgmp_17 pgmp_17-1.0.5-6PGDG.rhel10.2.aarch64.rpm pgdg 1.0.5 42.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmp_17-1.0.5-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgmp_17 pgmp_17-1.0.5-4PGDG.rhel10.aarch64.rpm pgdg 1.0.5 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmp_17-1.0.5-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg12+1_amd64.deb pgdg 1.0.6 101.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb pigsty 1.0.6 83.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg12+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg12+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg12+1_arm64.deb pgdg 1.0.6 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb pigsty 1.0.6 82.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg12+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg12+1_arm64.deb pgdg 1.0.5 99.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg13+1_amd64.deb pgdg 1.0.6 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb pigsty 1.0.6 83.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg13+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg13+1_amd64.deb pgdg 1.0.5 100.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg13+1_arm64.deb pgdg 1.0.6 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb pigsty 1.0.6 82.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg13+1_arm64.deb pgdg 1.0.5 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg13+1_arm64.deb pgdg 1.0.5 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb pgdg 1.0.6 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb pigsty 1.0.6 100.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb pgdg 1.0.5 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb pgdg 1.0.5 109.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb pgdg 1.0.6 109.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb pigsty 1.0.6 98.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb pgdg 1.0.6 101.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~noble_amd64.deb pigsty 1.0.6 89.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb pgdg 1.0.6 100.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~noble_arm64.deb pigsty 1.0.6 88.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb pgdg 1.0.5 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb pgdg 1.0.5 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb pgdg 1.0.6 101.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb pigsty 1.0.6 90.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb pgdg 1.0.5 101.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb pgdg 1.0.5 101.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb pgdg 1.0.6 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb pigsty 1.0.6 88.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-17-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgmp postgresql-17-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-17-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgmp_16 pgmp_16-1.0.6-1PIGSTY.el8.x86_64.rpm pigsty 1.0.6 48.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmp_16-1.0.6-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgmp_16 pgmp_16-1.0.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.6 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmp_16-1.0.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgmp_16 pgmp_16-1.0.5-1PGDG.rhel8.x86_64.rpm pgdg 1.0.5 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmp_16-1.0.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgmp_16 pgmp_16-1.0.6-1PIGSTY.el8.aarch64.rpm pigsty 1.0.6 45.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmp_16-1.0.6-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgmp_16 pgmp_16-1.0.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmp_16-1.0.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgmp_16 pgmp_16-1.0.5-1PGDG.rhel8.aarch64.rpm pgdg 1.0.5 39.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmp_16-1.0.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgmp_16 pgmp_16-1.0.6-1PIGSTY.el9.x86_64.rpm pigsty 1.0.6 45.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmp_16-1.0.6-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgmp_16 pgmp_16-1.0.5-6PGDG.rhel9.8.x86_64.rpm pgdg 1.0.5 43.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmp_16-1.0.5-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgmp_16 pgmp_16-1.0.5-1PGDG.rhel9.x86_64.rpm pgdg 1.0.5 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmp_16-1.0.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgmp_16 pgmp_16-1.0.6-1PIGSTY.el9.aarch64.rpm pigsty 1.0.6 43.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmp_16-1.0.6-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgmp_16 pgmp_16-1.0.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.6 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmp_16-1.0.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgmp_16 pgmp_16-1.0.5-6PGDG.rhel9.8.aarch64.rpm pgdg 1.0.5 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmp_16-1.0.5-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgmp_16 pgmp_16-1.0.5-1PGDG.rhel9.aarch64.rpm pgdg 1.0.5 41.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmp_16-1.0.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgmp_16 pgmp_16-1.0.6-1PIGSTY.el10.x86_64.rpm pigsty 1.0.6 46.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmp_16-1.0.6-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgmp_16 pgmp_16-1.0.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.6 44.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmp_16-1.0.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgmp_16 pgmp_16-1.0.5-6PGDG.rhel10.2.x86_64.rpm pgdg 1.0.5 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmp_16-1.0.5-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgmp_16 pgmp_16-1.0.5-4PGDG.rhel10.x86_64.rpm pgdg 1.0.5 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmp_16-1.0.5-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgmp_16 pgmp_16-1.0.6-1PIGSTY.el10.aarch64.rpm pigsty 1.0.6 44.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmp_16-1.0.6-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgmp_16 pgmp_16-1.0.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.6 42.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmp_16-1.0.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgmp_16 pgmp_16-1.0.5-6PGDG.rhel10.2.aarch64.rpm pgdg 1.0.5 42.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmp_16-1.0.5-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgmp_16 pgmp_16-1.0.5-4PGDG.rhel10.aarch64.rpm pgdg 1.0.5 42.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmp_16-1.0.5-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg12+1_amd64.deb pgdg 1.0.6 101.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb pigsty 1.0.6 83.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg12+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg12+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg12+1_arm64.deb pgdg 1.0.6 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb pigsty 1.0.6 82.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg12+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg12+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg13+1_amd64.deb pgdg 1.0.6 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb pigsty 1.0.6 83.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg13+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg13+1_amd64.deb pgdg 1.0.5 100.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg13+1_arm64.deb pgdg 1.0.6 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb pigsty 1.0.6 82.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg13+1_arm64.deb pgdg 1.0.5 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg13+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb pgdg 1.0.6 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb pigsty 1.0.6 100.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb pgdg 1.0.5 109.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb pgdg 1.0.5 109.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb pgdg 1.0.6 109.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb pigsty 1.0.6 98.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb pgdg 1.0.6 101.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~noble_amd64.deb pigsty 1.0.6 89.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb pgdg 1.0.6 100.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~noble_arm64.deb pigsty 1.0.6 88.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb pgdg 1.0.5 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb pgdg 1.0.5 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb pgdg 1.0.6 101.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb pigsty 1.0.6 90.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb pgdg 1.0.5 100.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb pgdg 1.0.5 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb pgdg 1.0.6 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb pigsty 1.0.6 88.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-16-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgmp postgresql-16-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-16-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgmp_15 pgmp_15-1.0.6-1PIGSTY.el8.x86_64.rpm pigsty 1.0.6 48.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmp_15-1.0.6-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgmp_15 pgmp_15-1.0.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.6 42.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmp_15-1.0.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgmp_15 pgmp_15-1.0.4-4.rhel8.x86_64.rpm pgdg 1.0.4 106.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmp_15-1.0.4-4.rhel8.x86_64.rpm
@ el8.aarch64 15 pgmp_15 pgmp_15-1.0.6-1PIGSTY.el8.aarch64.rpm pigsty 1.0.6 45.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmp_15-1.0.6-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgmp_15 pgmp_15-1.0.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.6 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmp_15-1.0.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgmp_15 pgmp_15-1.0.4-4.rhel8.aarch64.rpm pgdg 1.0.4 104.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmp_15-1.0.4-4.rhel8.aarch64.rpm
@ el9.x86_64 15 pgmp_15 pgmp_15-1.0.6-1PIGSTY.el9.x86_64.rpm pigsty 1.0.6 45.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmp_15-1.0.6-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgmp_15 pgmp_15-1.0.5-6PGDG.rhel9.8.x86_64.rpm pgdg 1.0.5 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmp_15-1.0.5-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgmp_15 pgmp_15-1.0.4-4.rhel9.x86_64.rpm pgdg 1.0.4 109.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmp_15-1.0.4-4.rhel9.x86_64.rpm
@ el9.aarch64 15 pgmp_15 pgmp_15-1.0.6-1PIGSTY.el9.aarch64.rpm pigsty 1.0.6 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmp_15-1.0.6-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgmp_15 pgmp_15-1.0.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.6 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmp_15-1.0.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgmp_15 pgmp_15-1.0.5-6PGDG.rhel9.8.aarch64.rpm pgdg 1.0.5 41.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmp_15-1.0.5-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgmp_15 pgmp_15-1.0.4-4.rhel9.aarch64.rpm pgdg 1.0.4 107.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmp_15-1.0.4-4.rhel9.aarch64.rpm
@ el10.x86_64 15 pgmp_15 pgmp_15-1.0.6-1PIGSTY.el10.x86_64.rpm pigsty 1.0.6 45.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmp_15-1.0.6-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgmp_15 pgmp_15-1.0.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.6 43.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmp_15-1.0.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgmp_15 pgmp_15-1.0.5-6PGDG.rhel10.2.x86_64.rpm pgdg 1.0.5 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmp_15-1.0.5-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgmp_15 pgmp_15-1.0.5-4PGDG.rhel10.x86_64.rpm pgdg 1.0.5 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmp_15-1.0.5-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgmp_15 pgmp_15-1.0.6-1PIGSTY.el10.aarch64.rpm pigsty 1.0.6 44.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmp_15-1.0.6-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgmp_15 pgmp_15-1.0.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.6 42.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmp_15-1.0.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgmp_15 pgmp_15-1.0.5-6PGDG.rhel10.2.aarch64.rpm pgdg 1.0.5 42.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmp_15-1.0.5-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgmp_15 pgmp_15-1.0.5-4PGDG.rhel10.aarch64.rpm pgdg 1.0.5 42.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmp_15-1.0.5-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg12+1_amd64.deb pgdg 1.0.6 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb pigsty 1.0.6 83.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg12+1_amd64.deb pgdg 1.0.5 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg12+1_amd64.deb pgdg 1.0.5 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg12+1_arm64.deb pgdg 1.0.6 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb pigsty 1.0.6 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg12+1_arm64.deb pgdg 1.0.5 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg12+1_arm64.deb pgdg 1.0.5 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg13+1_amd64.deb pgdg 1.0.6 101.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb pigsty 1.0.6 84.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg13+1_amd64.deb pgdg 1.0.5 100.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg13+1_amd64.deb pgdg 1.0.5 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg13+1_arm64.deb pgdg 1.0.6 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb pigsty 1.0.6 82.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg13+1_arm64.deb pgdg 1.0.5 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg13+1_arm64.deb pgdg 1.0.5 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb pgdg 1.0.6 111.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb pigsty 1.0.6 100.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb pgdg 1.0.5 108.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb pgdg 1.0.5 108.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb pgdg 1.0.6 109.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb pigsty 1.0.6 98.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb pgdg 1.0.6 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~noble_amd64.deb pigsty 1.0.6 88.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb pgdg 1.0.5 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb pgdg 1.0.6 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~noble_arm64.deb pigsty 1.0.6 88.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb pgdg 1.0.5 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb pgdg 1.0.5 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb pgdg 1.0.6 100.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb pigsty 1.0.6 88.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb pgdg 1.0.5 100.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb pgdg 1.0.5 100.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb pgdg 1.0.6 99.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb pigsty 1.0.6 88.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-15-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgmp postgresql-15-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-15-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgmp_14 pgmp_14-1.0.6-1PIGSTY.el8.x86_64.rpm pigsty 1.0.6 48.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmp_14-1.0.6-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgmp_14 pgmp_14-1.0.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.6 42.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmp_14-1.0.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgmp_14 pgmp_14-1.0.4-4.rhel8.x86_64.rpm pgdg 1.0.4 107.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmp_14-1.0.4-4.rhel8.x86_64.rpm
@ el8.aarch64 14 pgmp_14 pgmp_14-1.0.6-1PIGSTY.el8.aarch64.rpm pigsty 1.0.6 45.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmp_14-1.0.6-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgmp_14 pgmp_14-1.0.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.6 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmp_14-1.0.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgmp_14 pgmp_14-1.0.4-4.rhel8.aarch64.rpm pgdg 1.0.4 104.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmp_14-1.0.4-4.rhel8.aarch64.rpm
@ el9.x86_64 14 pgmp_14 pgmp_14-1.0.6-1PIGSTY.el9.x86_64.rpm pigsty 1.0.6 45.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmp_14-1.0.6-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgmp_14 pgmp_14-1.0.5-6PGDG.rhel9.8.x86_64.rpm pgdg 1.0.5 43.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmp_14-1.0.5-6PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 pgmp_14 pgmp_14-1.0.6-1PIGSTY.el9.aarch64.rpm pigsty 1.0.6 43.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmp_14-1.0.6-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgmp_14 pgmp_14-1.0.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.6 41.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmp_14-1.0.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgmp_14 pgmp_14-1.0.5-6PGDG.rhel9.8.aarch64.rpm pgdg 1.0.5 41.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmp_14-1.0.5-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgmp_14 pgmp_14-1.0.4-4.rhel9.aarch64.rpm pgdg 1.0.4 107.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmp_14-1.0.4-4.rhel9.aarch64.rpm
@ el10.x86_64 14 pgmp_14 pgmp_14-1.0.6-1PIGSTY.el10.x86_64.rpm pigsty 1.0.6 45.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmp_14-1.0.6-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgmp_14 pgmp_14-1.0.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.6 43.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmp_14-1.0.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgmp_14 pgmp_14-1.0.5-6PGDG.rhel10.2.x86_64.rpm pgdg 1.0.5 43.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmp_14-1.0.5-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgmp_14 pgmp_14-1.0.5-4PGDG.rhel10.x86_64.rpm pgdg 1.0.5 43.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmp_14-1.0.5-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgmp_14 pgmp_14-1.0.6-1PIGSTY.el10.aarch64.rpm pigsty 1.0.6 44.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmp_14-1.0.6-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgmp_14 pgmp_14-1.0.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.6 42.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmp_14-1.0.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgmp_14 pgmp_14-1.0.5-6PGDG.rhel10.2.aarch64.rpm pgdg 1.0.5 42.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmp_14-1.0.5-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgmp_14 pgmp_14-1.0.5-4PGDG.rhel10.aarch64.rpm pgdg 1.0.5 42.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmp_14-1.0.5-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg12+1_amd64.deb pgdg 1.0.6 101.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb pigsty 1.0.6 83.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg12+1_amd64.deb pgdg 1.0.5 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg12+1_amd64.deb pgdg 1.0.5 100.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg12+1_arm64.deb pgdg 1.0.6 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb pigsty 1.0.6 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg12+1_arm64.deb pgdg 1.0.5 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg12+1_arm64.deb pgdg 1.0.5 99.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg13+1_amd64.deb pgdg 1.0.6 101.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb pigsty 1.0.6 83.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg13+1_amd64.deb pgdg 1.0.5 100.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg13+1_amd64.deb pgdg 1.0.5 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg13+1_arm64.deb pgdg 1.0.6 100.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb pigsty 1.0.6 82.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg13+1_arm64.deb pgdg 1.0.5 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg13+1_arm64.deb pgdg 1.0.5 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb pgdg 1.0.6 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb pigsty 1.0.6 100.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb pgdg 1.0.5 108.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb pgdg 1.0.5 108.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb pgdg 1.0.6 109.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb pigsty 1.0.6 98.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb pgdg 1.0.5 107.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb pgdg 1.0.6 101.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~noble_amd64.deb pigsty 1.0.6 88.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb pgdg 1.0.5 101.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb pgdg 1.0.5 100.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb pgdg 1.0.6 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~noble_arm64.deb pigsty 1.0.6 88.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb pgdg 1.0.5 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb pgdg 1.0.5 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb pgdg 1.0.6 100.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb pigsty 1.0.6 88.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb pgdg 1.0.5 100.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb pgdg 1.0.5 100.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb pgdg 1.0.6 99.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb pigsty 1.0.6 87.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmp/postgresql-14-pgmp_1.0.6-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-5.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgmp postgresql-14-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb pgdg 1.0.5 99.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-pgmp/postgresql-14-pgmp_1.0.5-4.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmp` using `pig build`:

```bash
pig build pkg pgmp         # build RPM / DEB packages
```


## Install

You can install `pgmp` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmp;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmp -v 18  # PG 18
pig ext install -y pgmp -v 17  # PG 17
pig ext install -y pgmp -v 16  # PG 16
pig ext install -y pgmp -v 15  # PG 15
pig ext install -y pgmp -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmp_18       # PG 18
dnf install -y pgmp_17       # PG 17
dnf install -y pgmp_16       # PG 16
dnf install -y pgmp_15       # PG 15
dnf install -y pgmp_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmp   # PG 18
apt install -y postgresql-17-pgmp   # PG 17
apt install -y postgresql-16-pgmp   # PG 16
apt install -y postgresql-15-pgmp   # PG 15
apt install -y postgresql-14-pgmp   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmp;
```

## Usage

Sources:

- [pgmp 1.0.6 README](https://github.com/dvarrazzo/pgmp/blob/rel-1.0.6/README.rst)
- [pgmp 1.0.6 release notes](https://github.com/dvarrazzo/pgmp/blob/rel-1.0.6/NEWS.rst)
- [pgmp 1.0.6 metadata](https://github.com/dvarrazzo/pgmp/blob/rel-1.0.6/META.json)
- [pgmp control file](https://github.com/dvarrazzo/pgmp/blob/rel-1.0.6/pgmp.control)
- [Official pgmp documentation](https://dvarrazzo.github.io/pgmp/)

`pgmp` exposes GNU MP arithmetic inside PostgreSQL. It adds arbitrary-size integer values through `mpz` and exact rational values through `mpq`, together with casts, arithmetic, comparison, aggregate, number-theory, bit, and random-number functions.

### Core Workflow

```sql
CREATE EXTENSION pgmp;

SELECT '123456789012345678901234567890'::mpz * 2;
SELECT mpq(1::mpz, 3::mpz) + mpq(1::mpz, 6::mpz);
SELECT gcd(48::mpz, 18::mpz);
SELECT nextprime(100000000000000000000::mpz);
```

`mpz` is an arbitrary-size integer type, subject to PostgreSQL's value-size limits. `mpq` stores a canonical numerator and denominator so fractional arithmetic remains exact until explicitly converted to an approximate type.

### Important Objects

- `mpz(text)` and casts construct integers in decimal or supported base-prefixed forms.
- `mpq(text)` and `mpq(mpz, mpz)` construct rational values.
- Both types support ordinary comparisons and btree or hash indexes.
- Integer helpers include division with explicit rounding modes, powers, roots, primality tests, `gcd`, `lcm`, factorials, Fibonacci and Lucas numbers, bit operations, and random-state functions.
- Rational helpers include numerator and denominator access, inversion, denominator limiting, arithmetic, comparison, and aggregates.
- `gmp_version()` and `gmp_max_bitcnt()` expose library information.

Do not use floating-point input when exact decimal or rational meaning matters; construct values from text, integers, or explicit numerator and denominator values.

### Version 1.0.6 Notes

The 1.0.6 distribution adds PostgreSQL 19 build compatibility, sets PostgreSQL 14 as the supported runtime floor in its metadata, and adds missing unsigned-long range checks for the power, Fibonacci, and Lucas-number paths.

The upstream distribution version is 1.0.6, while its tagged `pgmp.control` currently declares SQL extension version `1.1`. Create the extension without forcing a version and inspect the database-reported value before designing an upgrade:

```sql
SELECT extversion
FROM pg_extension
WHERE extname = 'pgmp';
```

pgmp requires the GMP shared library. GMP 4.1 lacks a few functions documented by upstream, including some root, bit, and random-state helpers; use a current GMP release when those objects are required. Large operands can consume substantial backend memory and CPU, so apply statement timeouts and input limits to untrusted arithmetic workloads.
