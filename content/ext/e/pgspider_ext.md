---
title: "pgspider_ext"
linkTitle: "pgspider_ext"
description: "foreign-data wrapper for remote PGSpider servers"
weight: 8540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgspider/pgspider_ext">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgspider/pgspider_ext</div>
    <div class="ext-card__desc">https://github.com/pgspider/pgspider_ext</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgspider_ext-1.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgspider_ext-1.3.0.tar.gz</div>
    <div class="ext-card__desc">pgspider_ext-1.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgspider_ext`**](/ext/e/pgspider_ext) | `1.3.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8540  | [**`pgspider_ext`**](/ext/e/pgspider_ext) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plproxy`](/ext/e/plproxy) [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`postgres_fdw`](/ext/e/postgres_fdw) [`citus`](/ext/e/citus) [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`mongo_fdw`](/ext/e/mongo_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.0` | {{< pgvers "17,16,15" >}} | `pgspider_ext` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.0` | {{< pgvers "17,16,15" >}} | `pgspider_ext_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "17,16,15" >}} | `postgresql-$v-pgspider-ext` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | AVAIL PGDG 1.3.0 1 | AVAIL PGDG 1.3.0 1 | AVAIL PGDG 1.3.0 1 | MISS PGDG - 0 |
| el8.aarch64 | MISS PGDG - 0 | AVAIL PGDG 1.3.0 1 | AVAIL PGDG 1.3.0 1 | AVAIL PGDG 1.3.0 1 | MISS PGDG - 0 |
| el9.x86_64 | MISS PGDG - 0 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | MISS PGDG - 0 |
| el9.aarch64 | MISS PGDG - 0 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | MISS PGDG - 0 |
| el10.x86_64 | MISS PGDG - 0 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | MISS PGDG - 0 |
| el10.aarch64 | MISS PGDG - 0 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | MISS PGDG - 0 |
| d12.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| d12.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| d13.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| u22.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| u24.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| u24.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| u26.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | MISS PIGSTY - 0 |
@ el8.x86_64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 28.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgspider_ext_17-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgspider_ext_17-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.3.0 29.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgspider_ext_17-1.3.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 29.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgspider_ext_17-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.3.0 28.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgspider_ext_17-1.3.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 28.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgspider_ext_17-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.3.0 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgspider_ext_17-1.3.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-1PGDG.rhel10.x86_64.rpm pgdg 1.3.0 30.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgspider_ext_17-1.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.3.0 29.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgspider_ext_17-1.3.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgspider_ext_17 pgspider_ext_17-1.3.0-1PGDG.rhel10.aarch64.rpm pgdg 1.3.0 29.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgspider_ext_17-1.3.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~bookworm_amd64.deb pigsty 1.3.0 48.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~bookworm_arm64.deb pigsty 1.3.0 47.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~trixie_amd64.deb pigsty 1.3.0 48.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~trixie_arm64.deb pigsty 1.3.0 47.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~jammy_amd64.deb pigsty 1.3.0 61.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~jammy_arm64.deb pigsty 1.3.0 60.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~noble_amd64.deb pigsty 1.3.0 50.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~noble_arm64.deb pigsty 1.3.0 49.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~resolute_amd64.deb pigsty 1.3.0 50.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgspider-ext postgresql-17-pgspider-ext_1.3.0-1PIGSTY~resolute_arm64.deb pigsty 1.3.0 49.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgspider-ext/postgresql-17-pgspider-ext_1.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 28.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgspider_ext_16-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgspider_ext_16-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.3.0 29.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgspider_ext_16-1.3.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 29.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgspider_ext_16-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.3.0 28.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgspider_ext_16-1.3.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 28.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgspider_ext_16-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.3.0 30.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgspider_ext_16-1.3.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-1PGDG.rhel10.x86_64.rpm pgdg 1.3.0 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgspider_ext_16-1.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.3.0 29.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgspider_ext_16-1.3.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgspider_ext_16 pgspider_ext_16-1.3.0-1PGDG.rhel10.aarch64.rpm pgdg 1.3.0 29.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgspider_ext_16-1.3.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~bookworm_amd64.deb pigsty 1.3.0 48.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~bookworm_arm64.deb pigsty 1.3.0 47.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~trixie_amd64.deb pigsty 1.3.0 48.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~trixie_arm64.deb pigsty 1.3.0 47.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~jammy_amd64.deb pigsty 1.3.0 61.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~jammy_arm64.deb pigsty 1.3.0 60.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~noble_amd64.deb pigsty 1.3.0 50.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~noble_arm64.deb pigsty 1.3.0 49.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~resolute_amd64.deb pigsty 1.3.0 50.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgspider-ext postgresql-16-pgspider-ext_1.3.0-1PIGSTY~resolute_arm64.deb pigsty 1.3.0 49.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgspider-ext/postgresql-16-pgspider-ext_1.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 29.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgspider_ext_15-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 28.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgspider_ext_15-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.3.0 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgspider_ext_15-1.3.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgspider_ext_15-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.3.0 29.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgspider_ext_15-1.3.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 28.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgspider_ext_15-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.3.0 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgspider_ext_15-1.3.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-1PGDG.rhel10.x86_64.rpm pgdg 1.3.0 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgspider_ext_15-1.3.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.3.0 29.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgspider_ext_15-1.3.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgspider_ext_15 pgspider_ext_15-1.3.0-1PGDG.rhel10.aarch64.rpm pgdg 1.3.0 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgspider_ext_15-1.3.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~bookworm_amd64.deb pigsty 1.3.0 48.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~bookworm_arm64.deb pigsty 1.3.0 47.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~trixie_amd64.deb pigsty 1.3.0 49.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~trixie_arm64.deb pigsty 1.3.0 47.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~jammy_amd64.deb pigsty 1.3.0 61.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~jammy_arm64.deb pigsty 1.3.0 60.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~noble_amd64.deb pigsty 1.3.0 51.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~noble_arm64.deb pigsty 1.3.0 49.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~resolute_amd64.deb pigsty 1.3.0 50.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgspider-ext postgresql-15-pgspider-ext_1.3.0-1PIGSTY~resolute_arm64.deb pigsty 1.3.0 49.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgspider-ext/postgresql-15-pgspider-ext_1.3.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pgspider_ext` using `pig build`:

```bash
pig build pkg pgspider_ext         # build DEB packages
```


## Install

You can install `pgspider_ext` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgspider_ext;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgspider_ext -v 17  # PG 17
pig ext install -y pgspider_ext -v 16  # PG 16
pig ext install -y pgspider_ext -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgspider_ext_17       # PG 17
dnf install -y pgspider_ext_16       # PG 16
dnf install -y pgspider_ext_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-17-pgspider-ext   # PG 17
apt install -y postgresql-16-pgspider-ext   # PG 16
apt install -y postgresql-15-pgspider-ext   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgspider_ext;
```




## Usage

> [pgspider_ext: Foreign data wrapper for remote PGSpider servers](https://github.com/pgspider/pgspider_ext)

PGSpider Extension turns PostgreSQL into a distributed query engine by creating virtual partitioned tables that transparently query data across multiple remote nodes in parallel.

### Setup Child Servers

First, create servers for each data source using their respective FDWs:

```sql
CREATE EXTENSION pgspider_ext;
CREATE EXTENSION postgres_fdw;

CREATE SERVER pgsrv1 FOREIGN DATA WRAPPER postgres_fdw
  OPTIONS (host '127.0.0.1', port '5433', dbname 'postgres');
CREATE SERVER pgsrv2 FOREIGN DATA WRAPPER postgres_fdw
  OPTIONS (host '127.0.0.1', port '5434', dbname 'postgres');

CREATE USER MAPPING FOR CURRENT_USER SERVER pgsrv1
  OPTIONS (user 'user', password 'pass');
CREATE USER MAPPING FOR CURRENT_USER SERVER pgsrv2
  OPTIONS (user 'user', password 'pass');
```

### Create Child Foreign Tables

```sql
CREATE FOREIGN TABLE t1_pg1_child (i int, t text)
  SERVER pgsrv1 OPTIONS (table_name 't1');
CREATE FOREIGN TABLE t1_pg2_child (i int, t text)
  SERVER pgsrv2 OPTIONS (table_name 't1');
```

### Create PGSpider Partitioned Table

Create a PGSpider server and a partitioned parent table with an extra partition key column:

```sql
CREATE SERVER spdsrv FOREIGN DATA WRAPPER pgspider_ext;
CREATE USER MAPPING FOR CURRENT_USER SERVER spdsrv;

CREATE TABLE t1 (i int, t text, node text)
  PARTITION BY LIST (node);

CREATE FOREIGN TABLE t1_pg1 PARTITION OF t1
  FOR VALUES IN ('node1') SERVER spdsrv;
CREATE FOREIGN TABLE t1_pg2 PARTITION OF t1
  FOR VALUES IN ('node2') SERVER spdsrv
  OPTIONS (child_name 't1_pg2_child');
```

By default, PGSpider finds child tables using the pattern `[parent_table_name]_child`. Use `child_name` to specify a different name.

### Query Across All Nodes

```sql
SELECT * FROM t1;
 i  | t | node
----+---+-------
 10 | a | node1
 11 | b | node1
 20 | c | node2
 21 | d | node2
```

Queries automatically fan out to all child nodes in parallel. WHERE clauses and aggregate functions are pushed down to child nodes:

```sql
SET enable_partitionwise_aggregate TO on;
SELECT count(*), node FROM t1 GROUP BY node;
```

**Note:** Only SELECT operations are supported; INSERT, UPDATE, and DELETE are not supported.
