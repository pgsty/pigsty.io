---
title: "multicorn"
linkTitle: "multicorn"
description: "Fetch foreign data in Python in your PostgreSQL server."
weight: 8510
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgsql-io/multicorn2">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgsql-io/multicorn2</div>
    <div class="ext-card__desc">https://github.com/pgsql-io/multicorn2</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/multicorn2-3.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">multicorn2-3.2.tar.gz</div>
    <div class="ext-card__desc">multicorn2-3.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`multicorn`**](/ext/e/multicorn) | `3.2` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8510  | [**`multicorn`**](/ext/e/multicorn) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`wrappers`](/ext/e/wrappers) [`odbc_fdw`](/ext/e/odbc_fdw) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`pgspider_ext`](/ext/e/pgspider_ext) [`mysql_fdw`](/ext/e/mysql_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`mongo_fdw`](/ext/e/mongo_fdw) [`redis_fdw`](/ext/e/redis_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.2` | {{< pgvers "18,17,16,15,14" >}} | `multicorn` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.2` | {{< pgvers "18,17,16,15,14" >}} | `multicorn2_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-multicorn` | `python3-multicorn` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 3.2 2 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 5 | AVAIL PGDG 3.2 6 |
| el8.aarch64 | AVAIL PGDG 3.2 2 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 5 | AVAIL PGDG 3.2 6 |
| el9.x86_64 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 6 | AVAIL PGDG 3.2 7 |
| el9.aarch64 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 6 | AVAIL PGDG 3.2 7 |
| el10.x86_64 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 |
| el10.aarch64 | AVAIL PGDG 3.2 3 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 | AVAIL PGDG 3.2 4 |
| d12.x86_64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| d12.aarch64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| d13.x86_64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| d13.aarch64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| u22.x86_64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| u22.aarch64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| u24.x86_64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| u24.aarch64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| u26.x86_64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
| u26.aarch64 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 | AVAIL PIGSTY 3.2 1 |
@ el8.x86_64 18 multicorn2_18 multicorn2_18-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 138.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/multicorn2_18-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 multicorn2_18 multicorn2_18-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 135.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/multicorn2_18-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 multicorn2_18 multicorn2_18-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 136.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/multicorn2_18-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 multicorn2_18 multicorn2_18-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 133.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/multicorn2_18-3.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 multicorn2_18 multicorn2_18-3.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.2 134.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/multicorn2_18-3.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 multicorn2_18 multicorn2_18-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 134.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/multicorn2_18-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 multicorn2_18 multicorn2_18-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 111.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/multicorn2_18-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 multicorn2_18 multicorn2_18-3.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.2 133.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/multicorn2_18-3.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 multicorn2_18 multicorn2_18-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 133.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/multicorn2_18-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 multicorn2_18 multicorn2_18-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 110.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/multicorn2_18-3.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 multicorn2_18 multicorn2_18-3.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.2 135.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/multicorn2_18-3.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 multicorn2_18 multicorn2_18-3.2-1PGDG.rhel10.x86_64.rpm pgdg 3.2 135.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/multicorn2_18-3.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 multicorn2_18 multicorn2_18-3.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1 133.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/multicorn2_18-3.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 multicorn2_18 multicorn2_18-3.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.2 134.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/multicorn2_18-3.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 multicorn2_18 multicorn2_18-3.2-1PGDG.rhel10.aarch64.rpm pgdg 3.2 134.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/multicorn2_18-3.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 multicorn2_18 multicorn2_18-3.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1 131.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/multicorn2_18-3.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~bookworm_amd64.deb pigsty 3.2 81.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~bookworm_arm64.deb pigsty 3.2 79.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~trixie_amd64.deb pigsty 3.2 82.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~trixie_arm64.deb pigsty 3.2 80.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~jammy_amd64.deb pigsty 3.2 87.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~jammy_arm64.deb pigsty 3.2 86.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~noble_amd64.deb pigsty 3.2 85.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~noble_arm64.deb pigsty 3.2 84.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~resolute_amd64.deb pigsty 3.2 84.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-multicorn postgresql-18-multicorn_3.2-1PIGSTY~resolute_arm64.deb pigsty 3.2 83.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-18-multicorn_3.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 multicorn2_17 multicorn2_17-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 138.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/multicorn2_17-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 multicorn2_17 multicorn2_17-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 135.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/multicorn2_17-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 multicorn2_17 multicorn2_17-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 114.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/multicorn2_17-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 multicorn2_17 multicorn2_17-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 136.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/multicorn2_17-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 multicorn2_17 multicorn2_17-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 133.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/multicorn2_17-3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 multicorn2_17 multicorn2_17-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 113.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/multicorn2_17-3.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 multicorn2_17 multicorn2_17-3.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.2 134.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/multicorn2_17-3.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 multicorn2_17 multicorn2_17-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 134.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/multicorn2_17-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 multicorn2_17 multicorn2_17-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 111.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/multicorn2_17-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 multicorn2_17 multicorn2_17-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 110.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/multicorn2_17-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 multicorn2_17 multicorn2_17-3.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.2 133.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/multicorn2_17-3.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 multicorn2_17 multicorn2_17-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 133.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/multicorn2_17-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 multicorn2_17 multicorn2_17-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 109.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/multicorn2_17-3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 multicorn2_17 multicorn2_17-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 109.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/multicorn2_17-3.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 multicorn2_17 multicorn2_17-3.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.2 135.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/multicorn2_17-3.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 multicorn2_17 multicorn2_17-3.2-1PGDG.rhel10.x86_64.rpm pgdg 3.2 135.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/multicorn2_17-3.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 multicorn2_17 multicorn2_17-3.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1 132.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/multicorn2_17-3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 multicorn2_17 multicorn2_17-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 132.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/multicorn2_17-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 multicorn2_17 multicorn2_17-3.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.2 134.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/multicorn2_17-3.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 multicorn2_17 multicorn2_17-3.2-1PGDG.rhel10.aarch64.rpm pgdg 3.2 134.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/multicorn2_17-3.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 multicorn2_17 multicorn2_17-3.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1 132.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/multicorn2_17-3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 multicorn2_17 multicorn2_17-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 131.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/multicorn2_17-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~bookworm_amd64.deb pigsty 3.2 81.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~bookworm_arm64.deb pigsty 3.2 79.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~trixie_amd64.deb pigsty 3.2 82.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~trixie_arm64.deb pigsty 3.2 80.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~jammy_amd64.deb pigsty 3.2 106.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~jammy_arm64.deb pigsty 3.2 105.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~noble_amd64.deb pigsty 3.2 85.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~noble_arm64.deb pigsty 3.2 83.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~resolute_amd64.deb pigsty 3.2 84.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-multicorn postgresql-17-multicorn_3.2-1PIGSTY~resolute_arm64.deb pigsty 3.2 83.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-17-multicorn_3.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 multicorn2_16 multicorn2_16-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 138.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/multicorn2_16-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 multicorn2_16 multicorn2_16-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 135.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/multicorn2_16-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 multicorn2_16 multicorn2_16-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 114.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/multicorn2_16-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 multicorn2_16 multicorn2_16-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 136.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/multicorn2_16-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 multicorn2_16 multicorn2_16-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 134.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/multicorn2_16-3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 multicorn2_16 multicorn2_16-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 113.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/multicorn2_16-3.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 multicorn2_16 multicorn2_16-3.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.2 134.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/multicorn2_16-3.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 multicorn2_16 multicorn2_16-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 134.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/multicorn2_16-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 multicorn2_16 multicorn2_16-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 111.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/multicorn2_16-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 multicorn2_16 multicorn2_16-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 110.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/multicorn2_16-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 multicorn2_16 multicorn2_16-3.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.2 133.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/multicorn2_16-3.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 multicorn2_16 multicorn2_16-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 133.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/multicorn2_16-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 multicorn2_16 multicorn2_16-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 110.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/multicorn2_16-3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 multicorn2_16 multicorn2_16-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 109.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/multicorn2_16-3.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 multicorn2_16 multicorn2_16-3.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.2 135.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/multicorn2_16-3.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 multicorn2_16 multicorn2_16-3.2-1PGDG.rhel10.x86_64.rpm pgdg 3.2 135.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/multicorn2_16-3.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 multicorn2_16 multicorn2_16-3.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1 133.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/multicorn2_16-3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 multicorn2_16 multicorn2_16-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 132.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/multicorn2_16-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 multicorn2_16 multicorn2_16-3.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.2 134.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/multicorn2_16-3.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 multicorn2_16 multicorn2_16-3.2-1PGDG.rhel10.aarch64.rpm pgdg 3.2 134.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/multicorn2_16-3.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 multicorn2_16 multicorn2_16-3.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1 132.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/multicorn2_16-3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 multicorn2_16 multicorn2_16-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 131.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/multicorn2_16-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~bookworm_amd64.deb pigsty 3.2 81.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~bookworm_arm64.deb pigsty 3.2 79.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~trixie_amd64.deb pigsty 3.2 82.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~trixie_arm64.deb pigsty 3.2 80.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~jammy_amd64.deb pigsty 3.2 106.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~jammy_arm64.deb pigsty 3.2 105.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~noble_amd64.deb pigsty 3.2 85.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~noble_arm64.deb pigsty 3.2 84.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~resolute_amd64.deb pigsty 3.2 84.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-multicorn postgresql-16-multicorn_3.2-1PIGSTY~resolute_arm64.deb pigsty 3.2 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-16-multicorn_3.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 multicorn2_15 multicorn2_15-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 139.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/multicorn2_15-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 multicorn2_15 multicorn2_15-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 136.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/multicorn2_15-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 multicorn2_15 multicorn2_15-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 115.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/multicorn2_15-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 multicorn2_15 multicorn2_15-2.4-2.rhel8.x86_64.rpm pgdg 2.4 111.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/multicorn2_15-2.4-2.rhel8.x86_64.rpm
@ el8.x86_64 15 multicorn2_15 multicorn2_15-2.4-1.rhel8.x86_64.rpm pgdg 2.4 36.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/multicorn2_15-2.4-1.rhel8.x86_64.rpm
@ el8.aarch64 15 multicorn2_15 multicorn2_15-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 137.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/multicorn2_15-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 multicorn2_15 multicorn2_15-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 135.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/multicorn2_15-3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 multicorn2_15 multicorn2_15-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 114.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/multicorn2_15-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 multicorn2_15 multicorn2_15-2.4-2.rhel8.aarch64.rpm pgdg 2.4 110.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/multicorn2_15-2.4-2.rhel8.aarch64.rpm
@ el8.aarch64 15 multicorn2_15 multicorn2_15-2.4-1.rhel8.aarch64.rpm pgdg 2.4 35.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/multicorn2_15-2.4-1.rhel8.aarch64.rpm
@ el9.x86_64 15 multicorn2_15 multicorn2_15-3.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.2 138.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/multicorn2_15-3.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 multicorn2_15 multicorn2_15-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 138.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/multicorn2_15-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 multicorn2_15 multicorn2_15-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 114.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/multicorn2_15-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 multicorn2_15 multicorn2_15-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 114.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/multicorn2_15-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 multicorn2_15 multicorn2_15-2.4-2.rhel9.x86_64.rpm pgdg 2.4 109.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/multicorn2_15-2.4-2.rhel9.x86_64.rpm
@ el9.x86_64 15 multicorn2_15 multicorn2_15-2.4-1.rhel9.x86_64.rpm pgdg 2.4 37.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/multicorn2_15-2.4-1.rhel9.x86_64.rpm
@ el9.aarch64 15 multicorn2_15 multicorn2_15-3.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.2 136.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/multicorn2_15-3.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 multicorn2_15 multicorn2_15-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 136.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/multicorn2_15-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 multicorn2_15 multicorn2_15-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 113.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/multicorn2_15-3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 multicorn2_15 multicorn2_15-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 112.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/multicorn2_15-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 multicorn2_15 multicorn2_15-2.4-2.rhel9.aarch64.rpm pgdg 2.4 108.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/multicorn2_15-2.4-2.rhel9.aarch64.rpm
@ el9.aarch64 15 multicorn2_15 multicorn2_15-2.4-1.rhel9.aarch64.rpm pgdg 2.4 35.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/multicorn2_15-2.4-1.rhel9.aarch64.rpm
@ el10.x86_64 15 multicorn2_15 multicorn2_15-3.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.2 139.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/multicorn2_15-3.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 multicorn2_15 multicorn2_15-3.2-1PGDG.rhel10.x86_64.rpm pgdg 3.2 139.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/multicorn2_15-3.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 multicorn2_15 multicorn2_15-3.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1 136.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/multicorn2_15-3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 multicorn2_15 multicorn2_15-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 135.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/multicorn2_15-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 multicorn2_15 multicorn2_15-3.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.2 137.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/multicorn2_15-3.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 multicorn2_15 multicorn2_15-3.2-1PGDG.rhel10.aarch64.rpm pgdg 3.2 137.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/multicorn2_15-3.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 multicorn2_15 multicorn2_15-3.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1 135.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/multicorn2_15-3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 multicorn2_15 multicorn2_15-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 134.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/multicorn2_15-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~bookworm_amd64.deb pigsty 3.2 82.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~bookworm_arm64.deb pigsty 3.2 80.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~trixie_amd64.deb pigsty 3.2 83.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~trixie_arm64.deb pigsty 3.2 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~jammy_amd64.deb pigsty 3.2 108.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~jammy_arm64.deb pigsty 3.2 106.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~noble_amd64.deb pigsty 3.2 87.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~noble_arm64.deb pigsty 3.2 86.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~resolute_amd64.deb pigsty 3.2 86.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-multicorn postgresql-15-multicorn_3.2-1PIGSTY~resolute_arm64.deb pigsty 3.2 85.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-15-multicorn_3.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 multicorn2_14 multicorn2_14-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 139.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/multicorn2_14-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 multicorn2_14 multicorn2_14-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 136.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/multicorn2_14-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 multicorn2_14 multicorn2_14-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 115.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/multicorn2_14-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 multicorn2_14 multicorn2_14-2.4-2.rhel8.x86_64.rpm pgdg 2.4 111.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/multicorn2_14-2.4-2.rhel8.x86_64.rpm
@ el8.x86_64 14 multicorn2_14 multicorn2_14-2.4-1.rhel8.x86_64.rpm pgdg 2.4 36.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/multicorn2_14-2.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 multicorn2_14 multicorn2_14-2.3-1.rhel8.x86_64.rpm pgdg 2.3 115.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/multicorn2_14-2.3-1.rhel8.x86_64.rpm
@ el8.aarch64 14 multicorn2_14 multicorn2_14-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 137.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/multicorn2_14-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 multicorn2_14 multicorn2_14-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 135.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/multicorn2_14-3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 multicorn2_14 multicorn2_14-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 114.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/multicorn2_14-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 multicorn2_14 multicorn2_14-2.4-2.rhel8.aarch64.rpm pgdg 2.4 110.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/multicorn2_14-2.4-2.rhel8.aarch64.rpm
@ el8.aarch64 14 multicorn2_14 multicorn2_14-2.4-1.rhel8.aarch64.rpm pgdg 2.4 35.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/multicorn2_14-2.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 multicorn2_14 multicorn2_14-2.3-1.rhel8.aarch64.rpm pgdg 2.3 113.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/multicorn2_14-2.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 multicorn2_14 multicorn2_14-3.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.2 138.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/multicorn2_14-3.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 multicorn2_14 multicorn2_14-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 138.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/multicorn2_14-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 multicorn2_14 multicorn2_14-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 114.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/multicorn2_14-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 multicorn2_14 multicorn2_14-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 114.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/multicorn2_14-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 multicorn2_14 multicorn2_14-2.4-2.rhel9.x86_64.rpm pgdg 2.4 109.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/multicorn2_14-2.4-2.rhel9.x86_64.rpm
@ el9.x86_64 14 multicorn2_14 multicorn2_14-2.4-1.rhel9.x86_64.rpm pgdg 2.4 37.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/multicorn2_14-2.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 multicorn2_14 multicorn2_14-2.3-1.rhel9.x86_64.rpm pgdg 2.3 114.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/multicorn2_14-2.3-1.rhel9.x86_64.rpm
@ el9.aarch64 14 multicorn2_14 multicorn2_14-3.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.2 136.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/multicorn2_14-3.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 multicorn2_14 multicorn2_14-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 136.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/multicorn2_14-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 multicorn2_14 multicorn2_14-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 113.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/multicorn2_14-3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 multicorn2_14 multicorn2_14-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 112.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/multicorn2_14-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 multicorn2_14 multicorn2_14-2.4-2.rhel9.aarch64.rpm pgdg 2.4 108.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/multicorn2_14-2.4-2.rhel9.aarch64.rpm
@ el9.aarch64 14 multicorn2_14 multicorn2_14-2.4-1.rhel9.aarch64.rpm pgdg 2.4 35.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/multicorn2_14-2.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 multicorn2_14 multicorn2_14-2.3-1.rhel9.aarch64.rpm pgdg 2.3 113.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/multicorn2_14-2.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 multicorn2_14 multicorn2_14-3.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.2 139.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/multicorn2_14-3.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 multicorn2_14 multicorn2_14-3.2-1PGDG.rhel10.x86_64.rpm pgdg 3.2 139.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/multicorn2_14-3.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 multicorn2_14 multicorn2_14-3.1-1PGDG.rhel10.x86_64.rpm pgdg 3.1 136.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/multicorn2_14-3.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 multicorn2_14 multicorn2_14-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 136.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/multicorn2_14-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 multicorn2_14 multicorn2_14-3.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.2 137.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/multicorn2_14-3.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 multicorn2_14 multicorn2_14-3.2-1PGDG.rhel10.aarch64.rpm pgdg 3.2 137.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/multicorn2_14-3.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 multicorn2_14 multicorn2_14-3.1-1PGDG.rhel10.aarch64.rpm pgdg 3.1 135.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/multicorn2_14-3.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 multicorn2_14 multicorn2_14-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 134.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/multicorn2_14-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~bookworm_amd64.deb pigsty 3.2 82.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~bookworm_arm64.deb pigsty 3.2 80.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~trixie_amd64.deb pigsty 3.2 83.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~trixie_arm64.deb pigsty 3.2 81.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~jammy_amd64.deb pigsty 3.2 108.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~jammy_arm64.deb pigsty 3.2 107.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~noble_amd64.deb pigsty 3.2 87.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~noble_arm64.deb pigsty 3.2 86.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~resolute_amd64.deb pigsty 3.2 86.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-multicorn postgresql-14-multicorn_3.2-1PIGSTY~resolute_arm64.deb pigsty 3.2 85.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/multicorn/postgresql-14-multicorn_3.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `multicorn` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install multicorn;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y multicorn -v 18  # PG 18
pig ext install -y multicorn -v 17  # PG 17
pig ext install -y multicorn -v 16  # PG 16
pig ext install -y multicorn -v 15  # PG 15
pig ext install -y multicorn -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y multicorn2_18       # PG 18
dnf install -y multicorn2_17       # PG 17
dnf install -y multicorn2_16       # PG 16
dnf install -y multicorn2_15       # PG 15
dnf install -y multicorn2_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-multicorn   # PG 18
apt install -y postgresql-17-multicorn   # PG 17
apt install -y postgresql-16-multicorn   # PG 16
apt install -y postgresql-15-multicorn   # PG 15
apt install -y postgresql-14-multicorn   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION multicorn;
```




## Usage

Sources: [README](https://github.com/pgsql-io/multicorn2/blob/v3.2/README.md), [CHANGELOG](https://github.com/pgsql-io/multicorn2/blob/v3.2/CHANGELOG)

Multicorn2 allows you to write Foreign Data Wrappers in Python. You implement a Python class that inherits from `multicorn.ForeignDataWrapper`, and Multicorn handles bridging it to PostgreSQL's FDW interface. Version 3.2 is tested with PostgreSQL 14-18 and Python 3.9-3.13, though upstream recommends Python 3.10-3.12 for near-term distro compatibility.

### Define a Python FDW Class

Create a Python module (e.g., `myfdw.py`) accessible to the PostgreSQL process:

```python
from multicorn import ForeignDataWrapper

class MyFDW(ForeignDataWrapper):
    def __init__(self, options, columns):
        super().__init__(options, columns)
        self.options = options
        self.columns = columns

    def execute(self, quals, columns):
        """Yield rows as dictionaries. quals contains WHERE pushdown info."""
        yield {"id": 1, "name": "example"}

    def insert(self, new_values):
        """Handle INSERT operations."""
        pass

    def update(self, old_values, new_values):
        """Handle UPDATE operations."""
        pass

    def delete(self, old_values):
        """Handle DELETE operations."""
        pass
```

### Create Server and Foreign Table

```sql
CREATE EXTENSION multicorn;

CREATE SERVER multicorn_srv FOREIGN DATA WRAPPER multicorn
  OPTIONS (wrapper 'myfdw.MyFDW');

CREATE FOREIGN TABLE my_table (
  id integer,
  name text
)
SERVER multicorn_srv
OPTIONS (
  option1 'value1'
);

SELECT * FROM my_table;
```

The `wrapper` option specifies the fully qualified Python class name. Any additional options are passed to the class constructor's `options` parameter.

### Built-in FDW Examples

Multicorn ships with several example FDW implementations that can be used directly or as reference:

- **CsvFdw** -- read CSV files
- **ProcessFdw** -- execute system commands and parse output
- **GCalFdw** -- access Google Calendar
- **ImapFdw** -- query IMAP mailboxes
- **RssFdw** -- read RSS/Atom feeds

```sql
CREATE SERVER csv_srv FOREIGN DATA WRAPPER multicorn
  OPTIONS (wrapper 'multicorn.csvfdw.CsvFdw');

CREATE FOREIGN TABLE csvtest (
  col1 text,
  col2 text
)
SERVER csv_srv
OPTIONS (
  filename '/tmp/data.csv',
  skip_header '1',
  delimiter ','
);
```

### Version Notes

Multicorn 3.2 adds basic OFFSET/LIMIT pushdown and LDAP paging support, and fixes LDAP right-parenthesis escaping. Upstream 3.1 added PostgreSQL 18 and Python 3.13 support while dropping PostgreSQL versions before 14.

### Caveats

Multicorn2 and PL/Python are incompatible in the same PostgreSQL database on Python 3.12 due to CPython limitations. They can be installed on the same system, but avoid enabling both in one database.
