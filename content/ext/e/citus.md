---
title: "citus"
linkTitle: "citus"
description: "Distributed PostgreSQL as an extension"
weight: 2400
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/citusdata/citus">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">citusdata/citus</div>
    <div class="ext-card__desc">https://github.com/citusdata/citus</div>
  </a>
  <a class="ext-card ext-card--source" href="citus-14.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">citus-14.0.0.tar.gz</div>
    <div class="ext-card__desc">citus-14.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`citus`**](/ext/e/citus) | `14.0.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2400  | [**`citus`**](/ext/e/citus) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 2401  | [**`citus_columnar`**](/ext/e/citus_columnar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pg_partman`](/ext/e/pg_partman) [`plproxy`](/ext/e/plproxy) [`columnar`](/ext/e/columnar) [`pg_fkpart`](/ext/e/pg_fkpart) [`timescaledb`](/ext/e/timescaledb) [`pg_duckdb`](/ext/e/pg_duckdb) [`tablefunc`](/ext/e/tablefunc) [`hll`](/ext/e/hll) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb_distributed`](/ext/e/documentdb_distributed) |
{.ext-table .ext-table--rel}


> conflict with hydra


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.0.0` | {{< pgvers "18,17,16" >}} | `citus` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.0.0` | {{< pgvers "18,17,16" >}} | `citus_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.0.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-citus` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 8 | AVAIL PIGSTY 14.0.0 15 | AVAIL PIGSTY 13.2.0 22 | AVAIL PIGSTY 13.0.0 29 |
| el8.aarch64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 8 | AVAIL PIGSTY 14.0.0 15 | AVAIL PIGSTY 13.2.0 21 | AVAIL PIGSTY 13.0.0 16 |
| el9.x86_64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 8 | AVAIL PIGSTY 14.0.0 15 | AVAIL PIGSTY 13.2.0 22 | AVAIL PIGSTY 13.0.0 26 |
| el9.aarch64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 8 | AVAIL PIGSTY 14.0.0 15 | AVAIL PIGSTY 13.2.0 22 | AVAIL PIGSTY 13.0.0 16 |
| el10.x86_64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 6 | AVAIL PIGSTY 14.0.0 6 | AVAIL PIGSTY 13.2.0 5 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 6 | AVAIL PIGSTY 14.0.0 6 | AVAIL PIGSTY 13.2.0 5 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
@ el8.x86_64 18 citus_18 citus_18-14.0.0-4PIGSTY.el8.x86_64.rpm pigsty 14.0.0 969.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/citus_18-14.0.0-4PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 citus_18 citus_18-14.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 14.0.0 859.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/citus_18-14.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 citus_18 citus_18-14.0.0-4PIGSTY.el8.aarch64.rpm pigsty 14.0.0 930.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/citus_18-14.0.0-4PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 citus_18 citus_18-14.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 14.0.0 810.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/citus_18-14.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 citus_18 citus_18-14.0.0-4PIGSTY.el9.x86_64.rpm pigsty 14.0.0 850.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/citus_18-14.0.0-4PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 citus_18 citus_18-14.0.0-1PGDG.rhel9.7.x86_64.rpm pgdg 14.0.0 823.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/citus_18-14.0.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 18 citus_18 citus_18-14.0.0-4PIGSTY.el9.aarch64.rpm pigsty 14.0.0 823.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/citus_18-14.0.0-4PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 citus_18 citus_18-14.0.0-1PGDG.rhel9.7.aarch64.rpm pgdg 14.0.0 797.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/citus_18-14.0.0-1PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 18 citus_18 citus_18-14.0.0-4PIGSTY.el10.x86_64.rpm pigsty 14.0.0 861.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/citus_18-14.0.0-4PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 citus_18 citus_18-14.0.0-1PGDG.rhel10.1.x86_64.rpm pgdg 14.0.0 835.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/citus_18-14.0.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 18 citus_18 citus_18-14.0.0-4PIGSTY.el10.aarch64.rpm pigsty 14.0.0 831.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/citus_18-14.0.0-4PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 citus_18 citus_18-14.0.0-1PGDG.rhel10.1.aarch64.rpm pgdg 14.0.0 806.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/citus_18-14.0.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~bookworm_amd64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~bookworm_arm64.deb pigsty 14.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~trixie_amd64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~trixie_arm64.deb pigsty 14.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~jammy_amd64.deb pigsty 14.0.0 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~jammy_arm64.deb pigsty 14.0.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~noble_amd64.deb pigsty 14.0.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-citus postgresql-18-citus_14.0.0-4PIGSTY~noble_arm64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-18-citus_14.0.0-4PIGSTY~noble_arm64.deb
@ el8.x86_64 17 citus_17 citus_17-14.0.0-4PIGSTY.el8.x86_64.rpm pigsty 14.0.0 967.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/citus_17-14.0.0-4PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 citus_17 citus_17-14.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 14.0.0 857.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/citus_17-14.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 citus_17 citus_17-13.2.0-1PGDG.rhel8.x86_64.rpm pgdg 13.2.0 850.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/citus_17-13.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 citus_17 citus_17-13.1.0-1PGDG.rhel8.x86_64.rpm pgdg 13.1.0 827.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/citus_17-13.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 citus_17 citus_17-13.0.4-1PGDG.rhel8.x86_64.rpm pgdg 13.0.4 805.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/citus_17-13.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 citus_17 citus_17-13.0.3-1PGDG.rhel8.x86_64.rpm pgdg 13.0.3 805.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/citus_17-13.0.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 citus_17 citus_17-13.0.2-1PGDG.rhel8.x86_64.rpm pgdg 13.0.2 805.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/citus_17-13.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 citus_17 citus_17-13.0.0-1PGDG.rhel8.x86_64.rpm pgdg 13.0.0 803.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/citus_17-13.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 citus_17 citus_17-14.0.0-4PIGSTY.el8.aarch64.rpm pigsty 14.0.0 928.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/citus_17-14.0.0-4PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 citus_17 citus_17-14.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 14.0.0 808.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/citus_17-14.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 citus_17 citus_17-13.2.0-1PGDG.rhel8.aarch64.rpm pgdg 13.2.0 802.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/citus_17-13.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 citus_17 citus_17-13.1.0-1PGDG.rhel8.aarch64.rpm pgdg 13.1.0 781.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/citus_17-13.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 citus_17 citus_17-13.0.4-1PGDG.rhel8.aarch64.rpm pgdg 13.0.4 761.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/citus_17-13.0.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 citus_17 citus_17-13.0.3-1PGDG.rhel8.aarch64.rpm pgdg 13.0.3 761.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/citus_17-13.0.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 citus_17 citus_17-13.0.2-1PGDG.rhel8.aarch64.rpm pgdg 13.0.2 761.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/citus_17-13.0.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 citus_17 citus_17-13.0.0-1PGDG.rhel8.aarch64.rpm pgdg 13.0.0 758.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/citus_17-13.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 citus_17 citus_17-14.0.0-4PIGSTY.el9.x86_64.rpm pigsty 14.0.0 847.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/citus_17-14.0.0-4PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 citus_17 citus_17-14.0.0-1PGDG.rhel9.7.x86_64.rpm pgdg 14.0.0 821.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/citus_17-14.0.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 citus_17 citus_17-13.2.0-1PGDG.rhel9.x86_64.rpm pgdg 13.2.0 815.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/citus_17-13.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 citus_17 citus_17-13.1.0-1PGDG.rhel9.x86_64.rpm pgdg 13.1.0 793.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/citus_17-13.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 citus_17 citus_17-13.0.4-1PGDG.rhel9.x86_64.rpm pgdg 13.0.4 774.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/citus_17-13.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 citus_17 citus_17-13.0.3-1PGDG.rhel9.x86_64.rpm pgdg 13.0.3 774.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/citus_17-13.0.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 citus_17 citus_17-13.0.2-1PGDG.rhel9.x86_64.rpm pgdg 13.0.2 774.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/citus_17-13.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 citus_17 citus_17-13.0.0-1PGDG.rhel9.x86_64.rpm pgdg 13.0.0 772.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/citus_17-13.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 citus_17 citus_17-14.0.0-4PIGSTY.el9.aarch64.rpm pigsty 14.0.0 821.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/citus_17-14.0.0-4PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 citus_17 citus_17-14.0.0-1PGDG.rhel9.7.aarch64.rpm pgdg 14.0.0 795.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/citus_17-14.0.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 citus_17 citus_17-13.2.0-1PGDG.rhel9.aarch64.rpm pgdg 13.2.0 789.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/citus_17-13.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 citus_17 citus_17-13.1.0-1PGDG.rhel9.aarch64.rpm pgdg 13.1.0 768.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/citus_17-13.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 citus_17 citus_17-13.0.4-1PGDG.rhel9.aarch64.rpm pgdg 13.0.4 749.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/citus_17-13.0.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 citus_17 citus_17-13.0.3-1PGDG.rhel9.aarch64.rpm pgdg 13.0.3 750.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/citus_17-13.0.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 citus_17 citus_17-13.0.2-1PGDG.rhel9.aarch64.rpm pgdg 13.0.2 749.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/citus_17-13.0.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 citus_17 citus_17-13.0.0-1PGDG.rhel9.aarch64.rpm pgdg 13.0.0 746.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/citus_17-13.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 citus_17 citus_17-14.0.0-4PIGSTY.el10.x86_64.rpm pigsty 14.0.0 858.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/citus_17-14.0.0-4PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 citus_17 citus_17-14.0.0-1PGDG.rhel10.1.x86_64.rpm pgdg 14.0.0 832.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/citus_17-14.0.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 citus_17 citus_17-13.2.0-1PGDG.rhel10.x86_64.rpm pgdg 13.2.0 827.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/citus_17-13.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 citus_17 citus_17-13.1.0-1PGDG.rhel10.x86_64.rpm pgdg 13.1.0 804.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/citus_17-13.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 citus_17 citus_17-13.0.4-1PGDG.rhel10.x86_64.rpm pgdg 13.0.4 786.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/citus_17-13.0.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 citus_17 citus_17-13.0.3-1PGDG.rhel10.x86_64.rpm pgdg 13.0.3 786.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/citus_17-13.0.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 citus_17 citus_17-14.0.0-4PIGSTY.el10.aarch64.rpm pigsty 14.0.0 829.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/citus_17-14.0.0-4PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 citus_17 citus_17-14.0.0-1PGDG.rhel10.1.aarch64.rpm pgdg 14.0.0 803.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/citus_17-14.0.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 citus_17 citus_17-13.2.0-1PGDG.rhel10.aarch64.rpm pgdg 13.2.0 798.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/citus_17-13.2.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 citus_17 citus_17-13.1.0-1PGDG.rhel10.aarch64.rpm pgdg 13.1.0 776.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/citus_17-13.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 citus_17 citus_17-13.0.4-1PGDG.rhel10.aarch64.rpm pgdg 13.0.4 758.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/citus_17-13.0.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 citus_17 citus_17-13.0.3-1PGDG.rhel10.aarch64.rpm pgdg 13.0.3 759.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/citus_17-13.0.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~bookworm_amd64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~bookworm_arm64.deb pigsty 14.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~trixie_amd64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~trixie_arm64.deb pigsty 14.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~jammy_amd64.deb pigsty 14.0.0 3.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~jammy_arm64.deb pigsty 14.0.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~noble_amd64.deb pigsty 14.0.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-citus postgresql-17-citus_14.0.0-4PIGSTY~noble_arm64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-17-citus_14.0.0-4PIGSTY~noble_arm64.deb
@ el8.x86_64 16 citus_16 citus_16-14.0.0-4PIGSTY.el8.x86_64.rpm pigsty 14.0.0 959.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/citus_16-14.0.0-4PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-14.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 14.0.0 849.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-14.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-13.2.0-1PGDG.rhel8.x86_64.rpm pgdg 13.2.0 843.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-13.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-13.1.0-1PGDG.rhel8.x86_64.rpm pgdg 13.1.0 819.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-13.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-13.0.4-1PGDG.rhel8.x86_64.rpm pgdg 13.0.4 800.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-13.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-13.0.3-1PGDG.rhel8.x86_64.rpm pgdg 13.0.3 800.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-13.0.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-13.0.2-1PGDG.rhel8.x86_64.rpm pgdg 13.0.2 800.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-13.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-13.0.0-1PGDG.rhel8.x86_64.rpm pgdg 13.0.0 798.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-13.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-12.1.6-1PGDG.rhel8.x86_64.rpm pgdg 12.1.6 797.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-12.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-12.1.5-1PGDG.rhel8.x86_64.rpm pgdg 12.1.5 796.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-12.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-12.1.4-1PGDG.rhel8.x86_64.rpm pgdg 12.1.4 796.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-12.1.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-12.1.3-1PGDG.rhel8.x86_64.rpm pgdg 12.1.3 796.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-12.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-12.1.2-1PGDG.rhel8.x86_64.rpm pgdg 12.1.2 795.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-12.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-12.1.1-1PGDG.rhel8.x86_64.rpm pgdg 12.1.1 795.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-12.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 citus_16 citus_16-12.1.0-2PGDG.rhel8.x86_64.rpm pgdg 12.1.0 794.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/citus_16-12.1.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 citus_16 citus_16-14.0.0-4PIGSTY.el8.aarch64.rpm pigsty 14.0.0 921.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/citus_16-14.0.0-4PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-14.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 14.0.0 801.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-14.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-13.2.0-1PGDG.rhel8.aarch64.rpm pgdg 13.2.0 796.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-13.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-13.1.0-1PGDG.rhel8.aarch64.rpm pgdg 13.1.0 774.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-13.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-13.0.4-1PGDG.rhel8.aarch64.rpm pgdg 13.0.4 756.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-13.0.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-13.0.3-1PGDG.rhel8.aarch64.rpm pgdg 13.0.3 756.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-13.0.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-13.0.2-1PGDG.rhel8.aarch64.rpm pgdg 13.0.2 756.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-13.0.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-13.0.0-1PGDG.rhel8.aarch64.rpm pgdg 13.0.0 754.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-13.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-12.1.6-1PGDG.rhel8.aarch64.rpm pgdg 12.1.6 753.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-12.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-12.1.5-1PGDG.rhel8.aarch64.rpm pgdg 12.1.5 751.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-12.1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-12.1.4-1PGDG.rhel8.aarch64.rpm pgdg 12.1.4 751.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-12.1.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-12.1.3-1PGDG.rhel8.aarch64.rpm pgdg 12.1.3 751.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-12.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-12.1.2-1PGDG.rhel8.aarch64.rpm pgdg 12.1.2 750.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-12.1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-12.1.1-1PGDG.rhel8.aarch64.rpm pgdg 12.1.1 750.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-12.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 citus_16 citus_16-12.1.0-2PGDG.rhel8.aarch64.rpm pgdg 12.1.0 750.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/citus_16-12.1.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 citus_16 citus_16-14.0.0-4PIGSTY.el9.x86_64.rpm pigsty 14.0.0 841.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/citus_16-14.0.0-4PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-14.0.0-1PGDG.rhel9.7.x86_64.rpm pgdg 14.0.0 815.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-14.0.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-13.2.0-1PGDG.rhel9.x86_64.rpm pgdg 13.2.0 809.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-13.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-13.1.0-1PGDG.rhel9.x86_64.rpm pgdg 13.1.0 786.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-13.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-13.0.4-1PGDG.rhel9.x86_64.rpm pgdg 13.0.4 768.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-13.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-13.0.3-1PGDG.rhel9.x86_64.rpm pgdg 13.0.3 769.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-13.0.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-13.0.2-1PGDG.rhel9.x86_64.rpm pgdg 13.0.2 768.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-13.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-13.0.0-1PGDG.rhel9.x86_64.rpm pgdg 13.0.0 766.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-13.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-12.1.6-1PGDG.rhel9.x86_64.rpm pgdg 12.1.6 767.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-12.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-12.1.5-1PGDG.rhel9.x86_64.rpm pgdg 12.1.5 766.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-12.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-12.1.4-1PGDG.rhel9.x86_64.rpm pgdg 12.1.4 766.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-12.1.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-12.1.3-1PGDG.rhel9.x86_64.rpm pgdg 12.1.3 766.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-12.1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-12.1.2-1PGDG.rhel9.x86_64.rpm pgdg 12.1.2 765.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-12.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-12.1.1-1PGDG.rhel9.x86_64.rpm pgdg 12.1.1 765.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-12.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 citus_16 citus_16-12.1.0-2PGDG.rhel9.x86_64.rpm pgdg 12.1.0 765.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/citus_16-12.1.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 citus_16 citus_16-14.0.0-4PIGSTY.el9.aarch64.rpm pigsty 14.0.0 814.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/citus_16-14.0.0-4PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-14.0.0-1PGDG.rhel9.7.aarch64.rpm pgdg 14.0.0 788.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-14.0.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-13.2.0-1PGDG.rhel9.aarch64.rpm pgdg 13.2.0 782.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-13.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-13.1.0-1PGDG.rhel9.aarch64.rpm pgdg 13.1.0 761.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-13.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-13.0.4-1PGDG.rhel9.aarch64.rpm pgdg 13.0.4 744.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-13.0.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-13.0.3-1PGDG.rhel9.aarch64.rpm pgdg 13.0.3 744.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-13.0.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-13.0.2-1PGDG.rhel9.aarch64.rpm pgdg 13.0.2 743.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-13.0.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-13.0.0-1PGDG.rhel9.aarch64.rpm pgdg 13.0.0 741.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-13.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-12.1.6-1PGDG.rhel9.aarch64.rpm pgdg 12.1.6 742.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-12.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-12.1.5-1PGDG.rhel9.aarch64.rpm pgdg 12.1.5 741.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-12.1.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-12.1.4-1PGDG.rhel9.aarch64.rpm pgdg 12.1.4 741.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-12.1.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-12.1.3-1PGDG.rhel9.aarch64.rpm pgdg 12.1.3 740.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-12.1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-12.1.2-1PGDG.rhel9.aarch64.rpm pgdg 12.1.2 739.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-12.1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-12.1.1-1PGDG.rhel9.aarch64.rpm pgdg 12.1.1 738.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-12.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 citus_16 citus_16-12.1.0-2PGDG.rhel9.aarch64.rpm pgdg 12.1.0 738.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/citus_16-12.1.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 citus_16 citus_16-14.0.0-4PIGSTY.el10.x86_64.rpm pigsty 14.0.0 851.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/citus_16-14.0.0-4PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 citus_16 citus_16-14.0.0-1PGDG.rhel10.1.x86_64.rpm pgdg 14.0.0 826.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/citus_16-14.0.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 citus_16 citus_16-13.2.0-1PGDG.rhel10.x86_64.rpm pgdg 13.2.0 820.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/citus_16-13.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 citus_16 citus_16-13.1.0-1PGDG.rhel10.x86_64.rpm pgdg 13.1.0 797.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/citus_16-13.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 citus_16 citus_16-13.0.4-1PGDG.rhel10.x86_64.rpm pgdg 13.0.4 779.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/citus_16-13.0.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 citus_16 citus_16-13.0.3-1PGDG.rhel10.x86_64.rpm pgdg 13.0.3 779.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/citus_16-13.0.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 citus_16 citus_16-14.0.0-4PIGSTY.el10.aarch64.rpm pigsty 14.0.0 823.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/citus_16-14.0.0-4PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 citus_16 citus_16-14.0.0-1PGDG.rhel10.1.aarch64.rpm pgdg 14.0.0 797.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/citus_16-14.0.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 citus_16 citus_16-13.2.0-1PGDG.rhel10.aarch64.rpm pgdg 13.2.0 792.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/citus_16-13.2.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 citus_16 citus_16-13.1.0-1PGDG.rhel10.aarch64.rpm pgdg 13.1.0 770.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/citus_16-13.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 citus_16 citus_16-13.0.4-1PGDG.rhel10.aarch64.rpm pgdg 13.0.4 752.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/citus_16-13.0.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 citus_16 citus_16-13.0.3-1PGDG.rhel10.aarch64.rpm pgdg 13.0.3 752.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/citus_16-13.0.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~bookworm_amd64.deb pigsty 14.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~bookworm_arm64.deb pigsty 14.0.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~trixie_amd64.deb pigsty 14.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~trixie_arm64.deb pigsty 14.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~jammy_amd64.deb pigsty 14.0.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~jammy_arm64.deb pigsty 14.0.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~noble_amd64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-citus postgresql-16-citus_14.0.0-4PIGSTY~noble_arm64.deb pigsty 14.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-16-citus_14.0.0-4PIGSTY~noble_arm64.deb
@ el8.x86_64 15 citus_15 citus_15-13.2.0-8PIGSTY.el8.x86_64.rpm pigsty 13.2.0 999.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/citus_15-13.2.0-8PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-13.2.0-1PGDG.rhel8.x86_64.rpm pgdg 13.2.0 867.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-13.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-13.1.0-1PGDG.rhel8.x86_64.rpm pgdg 13.1.0 844.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-13.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-13.0.4-1PGDG.rhel8.x86_64.rpm pgdg 13.0.4 824.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-13.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-13.0.3-1PGDG.rhel8.x86_64.rpm pgdg 13.0.3 824.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-13.0.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-13.0.2-1PGDG.rhel8.x86_64.rpm pgdg 13.0.2 823.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-13.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-13.0.0-1PGDG.rhel8.x86_64.rpm pgdg 13.0.0 821.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-13.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.1.6-1PGDG.rhel8.x86_64.rpm pgdg 12.1.6 821.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.1.5-1PGDG.rhel8.x86_64.rpm pgdg 12.1.5 819.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.1.4-1PGDG.rhel8.x86_64.rpm pgdg 12.1.4 819.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.1.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.1.3-1PGDG.rhel8.x86_64.rpm pgdg 12.1.3 819.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.1.2-1PGDG.rhel8.x86_64.rpm pgdg 12.1.2 818.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.1.1-1PGDG.rhel8.x86_64.rpm pgdg 12.1.1 818.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.1.0-2PGDG.rhel8.x86_64.rpm pgdg 12.1.0 818.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.1.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-12.0.0-1PGDG.rhel8.x86_64.rpm pgdg 12.0.0 820.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-12.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-11.3.0-2.rhel8.x86_64.rpm pgdg 11.3.0 801.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-11.3.0-2.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-11.2.1-1.rhel8.x86_64.rpm pgdg 11.2.1 779.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-11.2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-11.2.0-1.rhel8.x86_64.rpm pgdg 11.2.0 778.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-11.2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-11.1.5-1.rhel8.x86_64.rpm pgdg 11.1.5 766.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-11.1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-11.1.4-1.rhel8.x86_64.rpm pgdg 11.1.4 766.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-11.1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-11.1.3-1.rhel8.x86_64.rpm pgdg 11.1.3 766.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-11.1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 15 citus_15 citus_15-11.1.2-1.rhel8.x86_64.rpm pgdg 11.1.2 765.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/citus_15-11.1.2-1.rhel8.x86_64.rpm
@ el8.aarch64 15 citus_15 citus_15-13.2.0-8PIGSTY.el8.aarch64.rpm pigsty 13.2.0 957.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/citus_15-13.2.0-8PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-13.2.0-1PGDG.rhel8.aarch64.rpm pgdg 13.2.0 815.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-13.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-13.1.0-1PGDG.rhel8.aarch64.rpm pgdg 13.1.0 793.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-13.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-13.0.4-1PGDG.rhel8.aarch64.rpm pgdg 13.0.4 774.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-13.0.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-13.0.3-1PGDG.rhel8.aarch64.rpm pgdg 13.0.3 774.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-13.0.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-13.0.2-1PGDG.rhel8.aarch64.rpm pgdg 13.0.2 774.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-13.0.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-13.0.0-1PGDG.rhel8.aarch64.rpm pgdg 13.0.0 772.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-13.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.1.6-1PGDG.rhel8.aarch64.rpm pgdg 12.1.6 771.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.1.5-1PGDG.rhel8.aarch64.rpm pgdg 12.1.5 770.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.1.4-1PGDG.rhel8.aarch64.rpm pgdg 12.1.4 769.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.1.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.1.3-1PGDG.rhel8.aarch64.rpm pgdg 12.1.3 769.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.1.2-1PGDG.rhel8.aarch64.rpm pgdg 12.1.2 768.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.1.1-1PGDG.rhel8.aarch64.rpm pgdg 12.1.1 768.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.1.0-2PGDG.rhel8.aarch64.rpm pgdg 12.1.0 768.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.1.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-12.0.0-1PGDG.rhel8.aarch64.rpm pgdg 12.0.0 770.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-12.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-11.3.0-2.rhel8.aarch64.rpm pgdg 11.3.0 752.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-11.3.0-2.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-11.2.1-1.rhel8.aarch64.rpm pgdg 11.2.1 732.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-11.2.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-11.2.0-1.rhel8.aarch64.rpm pgdg 11.2.0 730.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-11.2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-11.1.5-1.rhel8.aarch64.rpm pgdg 11.1.5 719.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-11.1.5-1.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-11.1.4-1.rhel8.aarch64.rpm pgdg 11.1.4 719.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-11.1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 15 citus_15 citus_15-11.1.3-1.rhel8.aarch64.rpm pgdg 11.1.3 718.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/citus_15-11.1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 citus_15 citus_15-13.2.0-8PIGSTY.el9.x86_64.rpm pigsty 13.2.0 893.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/citus_15-13.2.0-8PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-13.2.0-1PGDG.rhel9.x86_64.rpm pgdg 13.2.0 855.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-13.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-13.1.0-1PGDG.rhel9.x86_64.rpm pgdg 13.1.0 831.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-13.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-13.0.4-1PGDG.rhel9.x86_64.rpm pgdg 13.0.4 813.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-13.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-13.0.3-1PGDG.rhel9.x86_64.rpm pgdg 13.0.3 813.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-13.0.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-13.0.2-1PGDG.rhel9.x86_64.rpm pgdg 13.0.2 813.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-13.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-13.0.0-1PGDG.rhel9.x86_64.rpm pgdg 13.0.0 811.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-13.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.1.6-1PGDG.rhel9.x86_64.rpm pgdg 12.1.6 809.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.1.5-1PGDG.rhel9.x86_64.rpm pgdg 12.1.5 809.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.1.4-1PGDG.rhel9.x86_64.rpm pgdg 12.1.4 809.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.1.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.1.3-1PGDG.rhel9.x86_64.rpm pgdg 12.1.3 809.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.1.2-1PGDG.rhel9.x86_64.rpm pgdg 12.1.2 805.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.1.1-1PGDG.rhel9.x86_64.rpm pgdg 12.1.1 806.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.1.0-2PGDG.rhel9.x86_64.rpm pgdg 12.1.0 807.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.1.0-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-12.0.0-1PGDG.rhel9.x86_64.rpm pgdg 12.0.0 810.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-12.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-11.3.0-2.rhel9.x86_64.rpm pgdg 11.3.0 791.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-11.3.0-2.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-11.2.1-1.rhel9.x86_64.rpm pgdg 11.2.1 769.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-11.2.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-11.2.0-1.rhel9.x86_64.rpm pgdg 11.2.0 769.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-11.2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-11.1.5-1.rhel9.x86_64.rpm pgdg 11.1.5 755.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-11.1.5-1.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-11.1.4-1.rhel9.x86_64.rpm pgdg 11.1.4 757.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-11.1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-11.1.3-1.rhel9.x86_64.rpm pgdg 11.1.3 757.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-11.1.3-1.rhel9.x86_64.rpm
@ el9.x86_64 15 citus_15 citus_15-11.1.2-1.rhel9.x86_64.rpm pgdg 11.1.2 756.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/citus_15-11.1.2-1.rhel9.x86_64.rpm
@ el9.aarch64 15 citus_15 citus_15-13.2.0-8PIGSTY.el9.aarch64.rpm pigsty 13.2.0 856.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/citus_15-13.2.0-8PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-13.2.0-1PGDG.rhel9.aarch64.rpm pgdg 13.2.0 819.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-13.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-13.1.0-1PGDG.rhel9.aarch64.rpm pgdg 13.1.0 798.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-13.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-13.0.4-1PGDG.rhel9.aarch64.rpm pgdg 13.0.4 780.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-13.0.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-13.0.3-1PGDG.rhel9.aarch64.rpm pgdg 13.0.3 780.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-13.0.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-13.0.2-1PGDG.rhel9.aarch64.rpm pgdg 13.0.2 780.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-13.0.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-13.0.0-1PGDG.rhel9.aarch64.rpm pgdg 13.0.0 778.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-13.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.1.6-1PGDG.rhel9.aarch64.rpm pgdg 12.1.6 778.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.1.5-1PGDG.rhel9.aarch64.rpm pgdg 12.1.5 777.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.1.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.1.4-1PGDG.rhel9.aarch64.rpm pgdg 12.1.4 777.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.1.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.1.3-1PGDG.rhel9.aarch64.rpm pgdg 12.1.3 774.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.1.2-1PGDG.rhel9.aarch64.rpm pgdg 12.1.2 773.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.1.1-1PGDG.rhel9.aarch64.rpm pgdg 12.1.1 773.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.1.0-2PGDG.rhel9.aarch64.rpm pgdg 12.1.0 773.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.1.0-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-12.0.0-1PGDG.rhel9.aarch64.rpm pgdg 12.0.0 775.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-12.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-11.3.0-2.rhel9.aarch64.rpm pgdg 11.3.0 759.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-11.3.0-2.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-11.2.1-1.rhel9.aarch64.rpm pgdg 11.2.1 738.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-11.2.1-1.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-11.2.0-1.rhel9.aarch64.rpm pgdg 11.2.0 737.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-11.2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-11.1.5-1.rhel9.aarch64.rpm pgdg 11.1.5 726.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-11.1.5-1.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-11.1.4-1.rhel9.aarch64.rpm pgdg 11.1.4 724.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-11.1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-11.1.3-1.rhel9.aarch64.rpm pgdg 11.1.3 724.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-11.1.3-1.rhel9.aarch64.rpm
@ el9.aarch64 15 citus_15 citus_15-11.1.2-1.rhel9.aarch64.rpm pgdg 11.1.2 724.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/citus_15-11.1.2-1.rhel9.aarch64.rpm
@ el10.x86_64 15 citus_15 citus_15-13.2.0-8PIGSTY.el10.x86_64.rpm pigsty 13.2.0 895.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/citus_15-13.2.0-8PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 citus_15 citus_15-13.2.0-1PGDG.rhel10.x86_64.rpm pgdg 13.2.0 858.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/citus_15-13.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 citus_15 citus_15-13.1.0-1PGDG.rhel10.x86_64.rpm pgdg 13.1.0 837.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/citus_15-13.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 citus_15 citus_15-13.0.4-1PGDG.rhel10.x86_64.rpm pgdg 13.0.4 818.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/citus_15-13.0.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 citus_15 citus_15-13.0.3-1PGDG.rhel10.x86_64.rpm pgdg 13.0.3 818.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/citus_15-13.0.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 citus_15 citus_15-13.2.0-8PIGSTY.el10.aarch64.rpm pigsty 13.2.0 862.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/citus_15-13.2.0-8PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 citus_15 citus_15-13.2.0-1PGDG.rhel10.aarch64.rpm pgdg 13.2.0 826.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/citus_15-13.2.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 citus_15 citus_15-13.1.0-1PGDG.rhel10.aarch64.rpm pgdg 13.1.0 805.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/citus_15-13.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 citus_15 citus_15-13.0.4-1PGDG.rhel10.aarch64.rpm pgdg 13.0.4 787.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/citus_15-13.0.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 citus_15 citus_15-13.0.3-1PGDG.rhel10.aarch64.rpm pgdg 13.0.3 787.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/citus_15-13.0.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~bookworm_amd64.deb pigsty 13.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~bookworm_arm64.deb pigsty 13.2.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~trixie_amd64.deb pigsty 13.2.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~trixie_arm64.deb pigsty 13.2.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~jammy_amd64.deb pigsty 13.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~jammy_arm64.deb pigsty 13.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~noble_amd64.deb pigsty 13.2.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-citus postgresql-15-citus_13.2.0-8PIGSTY~noble_arm64.deb pigsty 13.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-15-citus_13.2.0-8PIGSTY~noble_arm64.deb
@ el8.x86_64 14 citus_14 citus_14-13.0.0-1PIGSTY.el8.x86_64.rpm pigsty 13.0.0 807.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/citus_14-13.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-13.0.0-1PGDG.rhel8.x86_64.rpm pgdg 13.0.0 814.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-13.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.1.6-1PGDG.rhel8.x86_64.rpm pgdg 12.1.6 813.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.1.5-1PGDG.rhel8.x86_64.rpm pgdg 12.1.5 812.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.1.4-1PGDG.rhel8.x86_64.rpm pgdg 12.1.4 812.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.1.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.1.3-1PGDG.rhel8.x86_64.rpm pgdg 12.1.3 812.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.1.2-1PGDG.rhel8.x86_64.rpm pgdg 12.1.2 811.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.1.1-1PGDG.rhel8.x86_64.rpm pgdg 12.1.1 811.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.1.0-2PGDG.rhel8.x86_64.rpm pgdg 12.1.0 810.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.1.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-12.0.0-1PGDG.rhel8.x86_64.rpm pgdg 12.0.0 813.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-12.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.3.0-2.rhel8.x86_64.rpm pgdg 11.3.0 796.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.3.0-2.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.2.1-1.rhel8.x86_64.rpm pgdg 11.2.1 776.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.2.0-1.rhel8.x86_64.rpm pgdg 11.2.0 776.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.1.5-1.rhel8.x86_64.rpm pgdg 11.1.5 765.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.1.4-1.rhel8.x86_64.rpm pgdg 11.1.4 765.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.1.3-1.rhel8.x86_64.rpm pgdg 11.1.3 765.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.1.2-1.rhel8.x86_64.rpm pgdg 11.1.2 764.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.1.1-1.rhel8.x86_64.rpm pgdg 11.1.1 762.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.1.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.0.6-1.rhel8.x86_64.rpm pgdg 11.0.6 701.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.0.6-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.0.5-1.rhel8.x86_64.rpm pgdg 11.0.5 700.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.0.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.0.4-1.rhel8.x86_64.rpm pgdg 11.0.4 699.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.0.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.0.3-1.rhel8.x86_64.rpm pgdg 11.0.3 699.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.0.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-11.0.2-1.rhel8.x86_64.rpm pgdg 11.0.2 698.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-11.0.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-10.2.5-1.rhel8.x86_64.rpm pgdg 10.2.5 618.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-10.2.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-10.2.4-1.rhel8.x86_64.rpm pgdg 10.2.4 618.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-10.2.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-10.2.3-1.rhel8.x86_64.rpm pgdg 10.2.3 618.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-10.2.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-10.2.2-1.rhel8.x86_64.rpm pgdg 10.2.2 615.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-10.2.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-10.2.1-1.rhel8.x86_64.rpm pgdg 10.2.1 614.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-10.2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 citus_14 citus_14-10.2.0-1.rhel8.x86_64.rpm pgdg 10.2.0 614.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/citus_14-10.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 citus_14 citus_14-13.0.0-1PIGSTY.el8.aarch64.rpm pigsty 13.0.0 758.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/citus_14-13.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-13.0.0-1PGDG.rhel8.aarch64.rpm pgdg 13.0.0 765.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-13.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.1.6-1PGDG.rhel8.aarch64.rpm pgdg 12.1.6 764.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.1.5-1PGDG.rhel8.aarch64.rpm pgdg 12.1.5 763.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.1.4-1PGDG.rhel8.aarch64.rpm pgdg 12.1.4 763.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.1.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.1.3-1PGDG.rhel8.aarch64.rpm pgdg 12.1.3 763.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.1.2-1PGDG.rhel8.aarch64.rpm pgdg 12.1.2 762.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.1.1-1PGDG.rhel8.aarch64.rpm pgdg 12.1.1 762.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.1.0-2PGDG.rhel8.aarch64.rpm pgdg 12.1.0 761.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.1.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-12.0.0-1PGDG.rhel8.aarch64.rpm pgdg 12.0.0 763.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-12.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-11.3.0-2.rhel8.aarch64.rpm pgdg 11.3.0 748.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-11.3.0-2.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-11.2.1-1.rhel8.aarch64.rpm pgdg 11.2.1 729.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-11.2.1-1.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-11.2.0-1.rhel8.aarch64.rpm pgdg 11.2.0 729.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-11.2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-11.1.5-1.rhel8.aarch64.rpm pgdg 11.1.5 718.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-11.1.5-1.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-11.1.4-1.rhel8.aarch64.rpm pgdg 11.1.4 717.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-11.1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 citus_14 citus_14-11.1.3-1.rhel8.aarch64.rpm pgdg 11.1.3 717.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/citus_14-11.1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 citus_14 citus_14-13.0.0-1PIGSTY.el9.x86_64.rpm pigsty 13.0.0 801.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/citus_14-13.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-13.0.0-1PGDG.rhel9.x86_64.rpm pgdg 13.0.0 803.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-13.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.1.6-1PGDG.rhel9.x86_64.rpm pgdg 12.1.6 802.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.1.5-1PGDG.rhel9.x86_64.rpm pgdg 12.1.5 800.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.1.4-1PGDG.rhel9.x86_64.rpm pgdg 12.1.4 800.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.1.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.1.3-1PGDG.rhel9.x86_64.rpm pgdg 12.1.3 800.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.1.2-1PGDG.rhel9.x86_64.rpm pgdg 12.1.2 798.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.1.1-1PGDG.rhel9.x86_64.rpm pgdg 12.1.1 798.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.1.0-2PGDG.rhel9.x86_64.rpm pgdg 12.1.0 798.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.1.0-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-12.0.0-1PGDG.rhel9.x86_64.rpm pgdg 12.0.0 802.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-12.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.3.0-2.rhel9.x86_64.rpm pgdg 11.3.0 787.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.3.0-2.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.2.1-1.rhel9.x86_64.rpm pgdg 11.2.1 767.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.2.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.2.0-1.rhel9.x86_64.rpm pgdg 11.2.0 766.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.1.5-1.rhel9.x86_64.rpm pgdg 11.1.5 756.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.1.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.1.4-1.rhel9.x86_64.rpm pgdg 11.1.4 755.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.1.3-1.rhel9.x86_64.rpm pgdg 11.1.3 755.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.1.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.1.2-1.rhel9.x86_64.rpm pgdg 11.1.2 755.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.1.1-1.rhel9.x86_64.rpm pgdg 11.1.1 754.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.1.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.0.6-1.rhel9.x86_64.rpm pgdg 11.0.6 691.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.0.6-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.0.5-1.rhel9.x86_64.rpm pgdg 11.0.5 690.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.0.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.0.4-1.rhel9.x86_64.rpm pgdg 11.0.4 690.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.0.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.0.3-1.rhel9.x86_64.rpm pgdg 11.0.3 689.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.0.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-11.0.2-1.rhel9.x86_64.rpm pgdg 11.0.2 689.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-11.0.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-10.2.5-1.rhel9.x86_64.rpm pgdg 10.2.5 612.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-10.2.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-10.2.4-1.rhel9.x86_64.rpm pgdg 10.2.4 613.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-10.2.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 citus_14 citus_14-10.2.3-1.rhel9.x86_64.rpm pgdg 10.2.3 613.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/citus_14-10.2.3-1.rhel9.x86_64.rpm
@ el9.aarch64 14 citus_14 citus_14-13.0.0-1PIGSTY.el9.aarch64.rpm pigsty 13.0.0 769.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/citus_14-13.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-13.0.0-1PGDG.rhel9.aarch64.rpm pgdg 13.0.0 771.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-13.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.1.6-1PGDG.rhel9.aarch64.rpm pgdg 12.1.6 770.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.1.5-1PGDG.rhel9.aarch64.rpm pgdg 12.1.5 770.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.1.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.1.4-1PGDG.rhel9.aarch64.rpm pgdg 12.1.4 770.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.1.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.1.3-1PGDG.rhel9.aarch64.rpm pgdg 12.1.3 768.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.1.2-1PGDG.rhel9.aarch64.rpm pgdg 12.1.2 766.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.1.1-1PGDG.rhel9.aarch64.rpm pgdg 12.1.1 766.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.1.0-2PGDG.rhel9.aarch64.rpm pgdg 12.1.0 766.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.1.0-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-12.0.0-1PGDG.rhel9.aarch64.rpm pgdg 12.0.0 769.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-12.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-11.3.0-2.rhel9.aarch64.rpm pgdg 11.3.0 754.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-11.3.0-2.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-11.2.1-1.rhel9.aarch64.rpm pgdg 11.2.1 736.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-11.2.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-11.2.0-1.rhel9.aarch64.rpm pgdg 11.2.0 735.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-11.2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-11.1.5-1.rhel9.aarch64.rpm pgdg 11.1.5 724.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-11.1.5-1.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-11.1.4-1.rhel9.aarch64.rpm pgdg 11.1.4 723.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-11.1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 citus_14 citus_14-11.1.3-1.rhel9.aarch64.rpm pgdg 11.1.3 723.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/citus_14-11.1.3-1.rhel9.aarch64.rpm
@ d12.x86_64 14 postgresql-14-citus postgresql-14-citus_13.0.0-1PIGSTY~bookworm_amd64.deb pigsty 13.0.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-14-citus_13.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-citus postgresql-14-citus_13.0.0-1PIGSTY~bookworm_arm64.deb pigsty 13.0.0 2.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/citus/postgresql-14-citus_13.0.0-1PIGSTY~bookworm_arm64.deb
@ u22.x86_64 14 postgresql-14-citus postgresql-14-citus_13.0.0-1PIGSTY~jammy_amd64.deb pigsty 13.0.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-14-citus_13.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-citus postgresql-14-citus_13.0.0-1PIGSTY~jammy_arm64.deb pigsty 13.0.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/citus/postgresql-14-citus_13.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-citus postgresql-14-citus_13.0.0-1PIGSTY~noble_amd64.deb pigsty 13.0.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-14-citus_13.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-citus postgresql-14-citus_13.0.0-1PIGSTY~noble_arm64.deb pigsty 13.0.0 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/citus/postgresql-14-citus_13.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `citus` using `pig build`:

```bash
pig build pkg citus         # build RPM / DEB packages
```


## Install

You can install `citus` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install citus;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y citus -v 18  # PG 18
pig ext install -y citus -v 17  # PG 17
pig ext install -y citus -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y citus_18       # PG 18
dnf install -y citus_17       # PG 17
dnf install -y citus_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-citus   # PG 18
apt install -y postgresql-17-citus   # PG 17
apt install -y postgresql-16-citus   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'citus';
```


**Create Extension**:

```sql
CREATE EXTENSION citus;
```



## Usage

> [citus: Distributed PostgreSQL for multi-tenant and real-time analytics](https://github.com/citusdata/citus)

Citus transforms PostgreSQL into a distributed database, enabling horizontal scaling by sharding tables across multiple nodes. It supports multi-tenant SaaS workloads, real-time analytics, and high-throughput transactional use cases while preserving the full PostgreSQL feature set.

**Key Documentation:**

- [What is Citus?](https://docs.citusdata.com/en/stable/get_started/what_is_citus.html)
- [Distributed Tables](https://docs.citusdata.com/en/stable/develop/api_udf.html#create-distributed-table)
- [Reference Tables](https://docs.citusdata.com/en/stable/develop/api_udf.html#create-reference-table)
- [Sharding Models](https://docs.citusdata.com/en/stable/sharding/data_modeling.html)
- [Colocation](https://docs.citusdata.com/en/stable/sharding/data_modeling.html#colocation)
- [Distributed Queries](https://docs.citusdata.com/en/stable/develop/reference_sql.html)
- [Cluster Management](https://docs.citusdata.com/en/stable/admin_guide/cluster_management.html)
- [Configuration Reference](https://docs.citusdata.com/en/stable/develop/api_guc.html)
- [Columnar Storage](https://docs.citusdata.com/en/stable/admin_guide/table_management.html#columnar-storage)

### Getting Started

Enable the extension and add worker nodes:

```sql
CREATE EXTENSION citus;

-- Add worker nodes to the cluster
SELECT citus_set_coordinator_host('coord-host', 5432);
SELECT * FROM citus_add_node('worker-1', 5432);
SELECT * FROM citus_add_node('worker-2', 5432);

-- Verify the cluster
SELECT * FROM citus_get_active_worker_nodes();
```

### Creating Distributed Tables

Distribute a table by a chosen distribution column (shard key). Rows with the same key value are colocated on the same shard.

```sql
CREATE TABLE events (
    tenant_id   INT,
    event_id    BIGSERIAL,
    event_time  TIMESTAMPTZ DEFAULT now(),
    event_type  TEXT,
    payload     JSONB,
    PRIMARY KEY (tenant_id, event_id)
);

-- Hash-distribute by tenant_id (default: 32 shards)
SELECT create_distributed_table('events', 'tenant_id');
```

You can control the shard count:

```sql
SELECT create_distributed_table('events', 'tenant_id', shard_count := 64);
```

### Reference Tables

Small lookup tables that need to be joined with distributed tables should be created as reference tables. They are replicated in full to every node.

```sql
CREATE TABLE countries (
    code CHAR(2) PRIMARY KEY,
    name TEXT NOT NULL
);

SELECT create_reference_table('countries');
```

Reference tables can be joined with any distributed table without restrictions.

### Colocation

Tables distributed on the same column type and shard count are automatically colocated, meaning rows with matching distribution keys are stored on the same node. This enables efficient local joins.

```sql
CREATE TABLE tenants (
    id   INT PRIMARY KEY,
    name TEXT
);
SELECT create_distributed_table('tenants', 'id');

CREATE TABLE orders (
    tenant_id  INT REFERENCES tenants(id),
    order_id   BIGSERIAL,
    amount     NUMERIC,
    PRIMARY KEY (tenant_id, order_id)
);
SELECT create_distributed_table('orders', 'tenant_id');

-- This join is pushed down to each node (no cross-shard traffic)
SELECT t.name, sum(o.amount)
FROM tenants t JOIN orders o ON t.id = o.tenant_id
GROUP BY t.name;
```

You can also explicitly specify colocation groups:

```sql
SELECT create_distributed_table('orders', 'tenant_id',
    colocate_with := 'tenants');
```

### Distributed Queries

Citus pushes queries down to individual shards when possible. Queries that filter on the distribution column are routed to a single shard:

```sql
-- Single-shard query (fast, touches one node)
SELECT * FROM events WHERE tenant_id = 42;
```

Cross-shard queries are parallelized across all workers:

```sql
-- Parallel aggregation across all shards
SELECT event_type, count(*), avg(payload->>'duration')::numeric
FROM events
WHERE event_time > now() - INTERVAL '1 hour'
GROUP BY event_type
ORDER BY count DESC
LIMIT 10;
```

### Distributed Joins

Joins between colocated tables on the distribution column are executed locally on each shard:

```sql
-- Colocated join: efficient, no data movement
SELECT e.*, o.amount
FROM events e JOIN orders o
    ON e.tenant_id = o.tenant_id
WHERE e.tenant_id = 42;
```

Joins with reference tables work from any distributed table:

```sql
SELECT e.*, c.name AS country_name
FROM events e JOIN countries c ON e.payload->>'country' = c.code;
```

### Node Management

```sql
-- Add a new node
SELECT * FROM citus_add_node('worker-3', 5432);

-- Remove a node (moves shards to other nodes first)
SELECT * FROM citus_drain_node('worker-1', 5432);
SELECT * FROM citus_remove_node('worker-1', 5432);

-- Disable a node temporarily
SELECT * FROM citus_disable_node('worker-2', 5432);
SELECT * FROM citus_activate_node('worker-2', 5432);

-- View current cluster state
SELECT * FROM citus_get_active_worker_nodes();
```

### Shard Rebalancing

After adding or removing nodes, rebalance shards to distribute data evenly:

```sql
-- Rebalance all distributed tables
SELECT citus_rebalance_start();

-- Monitor rebalance progress
SELECT * FROM citus_rebalance_status();

-- Rebalance a specific table
SELECT rebalance_table_shards('events');
```

### Shard Management

```sql
-- View shard placements
SELECT * FROM citus_shards;

-- View shard sizes
SELECT table_name, shard_count, citus_total_relation_size(table_name::text)
FROM citus_tables;

-- Move a specific shard to another node
SELECT citus_move_shard_placement(shard_id, 'source-host', 5432, 'dest-host', 5432);
```

### Configuration Parameters

Key GUC parameters for tuning Citus:

```sql
-- Number of parallel connections per node for multi-shard queries
SET citus.max_adaptive_executor_pool_size = 4;

-- Shard replication factor (default 1; set to 2 for HA without streaming replication)
SET citus.shard_replication_factor = 1;

-- Control executor behavior
SET citus.multi_shard_modify_mode = 'parallel';   -- or 'sequential'
SET citus.enable_repartition_joins = on;           -- enable repartitioned joins

-- Task assignment policy
SET citus.task_assignment_policy = 'round-robin';  -- or 'greedy', 'first-replica'

-- Log distributed queries
SET citus.log_multi_join_order = on;
SET citus.explain_all_tasks = on;
```

### Example: Multi-Tenant SaaS Schema

A typical multi-tenant schema distributes all tenant-scoped tables by `tenant_id`:

```sql
CREATE TABLE tenants (
    tenant_id   INT PRIMARY KEY,
    name        TEXT,
    plan        TEXT DEFAULT 'free',
    created_at  TIMESTAMPTZ DEFAULT now()
);
SELECT create_distributed_table('tenants', 'tenant_id');

CREATE TABLE users (
    tenant_id   INT,
    user_id     BIGSERIAL,
    email       TEXT,
    PRIMARY KEY (tenant_id, user_id)
);
SELECT create_distributed_table('users', 'tenant_id');

CREATE TABLE projects (
    tenant_id   INT,
    project_id  BIGSERIAL,
    name        TEXT,
    owner_id    BIGINT,
    PRIMARY KEY (tenant_id, project_id)
);
SELECT create_distributed_table('projects', 'tenant_id');

-- Shared lookup: replicated to every node
CREATE TABLE plans (
    name TEXT PRIMARY KEY,
    max_users INT,
    max_projects INT
);
SELECT create_reference_table('plans');

-- All joins scoped to a tenant are colocated and fast
SELECT u.email, p.name AS project
FROM users u
JOIN projects p ON u.tenant_id = p.tenant_id AND u.user_id = p.owner_id
WHERE u.tenant_id = 7;
```

### Example: Real-Time Analytics

Distributed aggregation for dashboards and analytics:

```sql
CREATE TABLE page_views (
    site_id      INT,
    url          TEXT,
    view_time    TIMESTAMPTZ DEFAULT now(),
    user_agent   TEXT,
    country      CHAR(2)
);
SELECT create_distributed_table('page_views', 'site_id');

-- Real-time rollup: parallelized across shards
SELECT
    date_trunc('minute', view_time) AS minute,
    count(*)                        AS views,
    count(DISTINCT country)         AS countries
FROM page_views
WHERE site_id = 1
  AND view_time > now() - INTERVAL '1 hour'
GROUP BY minute
ORDER BY minute DESC;

-- Top pages across all sites (cross-shard parallel query)
SELECT url, count(*) AS views
FROM page_views
WHERE view_time > now() - INTERVAL '24 hours'
GROUP BY url
ORDER BY views DESC
LIMIT 20;
```
