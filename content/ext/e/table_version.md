---
title: "table_version"
linkTitle: "table_version"
description: "PostgreSQL table versioning extension"
weight: 1060
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/linz/postgresql-tableversion">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">linz/postgresql-tableversion</div>
    <div class="ext-card__desc">https://github.com/linz/postgresql-tableversion</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresql-tableversion-1.11.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresql-tableversion-1.11.1.tar.gz</div>
    <div class="ext-card__desc">postgresql-tableversion-1.11.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`table_version`**](/ext/e/table_version) | `1.11.1` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1060  | [**`table_version`**](/ext/e/table_version) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `table_version` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`pg_cron`](/ext/e/pg_cron) [`timescaledb`](/ext/e/timescaledb) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`pg_task`](/ext/e/pg_task) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.11.1` | {{< pgvers "18,17,16,15,14" >}} | `table_version` | `plpgsql` |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.11.1` | {{< pgvers "18,17,16,15,14" >}} | `table_version_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.11.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-table-version` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 |
| el8.aarch64 | AVAIL PGDG 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 |
| el9.x86_64 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 4 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 |
| el9.aarch64 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 4 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 |
| el10.x86_64 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 |
| el10.aarch64 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 | AVAIL PGDG 1.11.1 3 |
| d12.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
@ el8.x86_64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/table_version_18-1.11.1-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 18 table_version_18 table_version_18-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_version_18-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/table_version_18-1.11.1-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 table_version_18 table_version_18-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_version_18-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/table_version_18-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/table_version_18-1.11.1-2PGDG.rhel9.noarch.rpm
@ el9.x86_64 18 table_version_18 table_version_18-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_version_18-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/table_version_18-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/table_version_18-1.11.1-2PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 table_version_18 table_version_18-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_version_18-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/table_version_18-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/table_version_18-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.x86_64 18 table_version_18 table_version_18-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 31.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_version_18-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/table_version_18-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 table_version_18 table_version_18-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/table_version_18-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 table_version_18 table_version_18-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_version_18-1.11.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-table-version postgresql-18-table-version_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-18-table-version_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 table_version_17 table_version_17-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_version_17-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 table_version_17 table_version_17-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/table_version_17-1.11.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 table_version_17 table_version_17-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_version_17-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 table_version_17 table_version_17-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/table_version_17-1.11.1-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 table_version_17 table_version_17-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/table_version_17-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 table_version_17 table_version_17-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_version_17-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 table_version_17 table_version_17-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/table_version_17-1.11.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 table_version_17 table_version_17-1.10.3-3PGDG.rhel9.noarch.rpm pgdg 1.10.3 29.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/table_version_17-1.10.3-3PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 table_version_17 table_version_17-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/table_version_17-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 table_version_17 table_version_17-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_version_17-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 table_version_17 table_version_17-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/table_version_17-1.11.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 table_version_17 table_version_17-1.10.3-3PGDG.rhel9.noarch.rpm pgdg 1.10.3 29.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/table_version_17-1.10.3-3PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 table_version_17 table_version_17-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/table_version_17-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 table_version_17 table_version_17-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/table_version_17-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 table_version_17 table_version_17-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 31.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_version_17-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 table_version_17 table_version_17-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/table_version_17-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 table_version_17 table_version_17-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/table_version_17-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 table_version_17 table_version_17-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_version_17-1.11.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 28.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 28.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-table-version postgresql-17-table-version_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-17-table-version_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 table_version_16 table_version_16-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_version_16-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 table_version_16 table_version_16-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/table_version_16-1.11.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 table_version_16 table_version_16-1.10.3-3PGDG.rhel8.x86_64.rpm pgdg 1.10.3 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/table_version_16-1.10.3-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 table_version_16 table_version_16-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_version_16-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 table_version_16 table_version_16-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/table_version_16-1.11.1-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 table_version_16 table_version_16-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/table_version_16-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 table_version_16 table_version_16-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_version_16-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 table_version_16 table_version_16-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/table_version_16-1.11.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 table_version_16 table_version_16-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/table_version_16-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 table_version_16 table_version_16-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_version_16-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 table_version_16 table_version_16-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/table_version_16-1.11.1-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 table_version_16 table_version_16-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/table_version_16-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 table_version_16 table_version_16-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/table_version_16-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 table_version_16 table_version_16-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 31.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_version_16-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 table_version_16 table_version_16-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/table_version_16-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 table_version_16 table_version_16-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/table_version_16-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 table_version_16 table_version_16-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_version_16-1.11.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-table-version postgresql-16-table-version_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-16-table-version_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 table_version_15 table_version_15-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_version_15-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 table_version_15 table_version_15-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/table_version_15-1.11.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 table_version_15 table_version_15-1.10.3-1.rhel8.x86_64.rpm pgdg 1.10.3 32.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/table_version_15-1.10.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 table_version_15 table_version_15-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_version_15-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 table_version_15 table_version_15-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/table_version_15-1.11.1-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 table_version_15 table_version_15-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/table_version_15-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 table_version_15 table_version_15-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_version_15-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 table_version_15 table_version_15-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/table_version_15-1.11.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 table_version_15 table_version_15-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/table_version_15-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 table_version_15 table_version_15-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_version_15-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 table_version_15 table_version_15-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/table_version_15-1.11.1-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 table_version_15 table_version_15-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/table_version_15-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 table_version_15 table_version_15-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/table_version_15-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 table_version_15 table_version_15-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 31.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_version_15-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 table_version_15 table_version_15-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/table_version_15-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 table_version_15 table_version_15-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/table_version_15-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 table_version_15 table_version_15-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_version_15-1.11.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-table-version postgresql-15-table-version_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-15-table-version_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 table_version_14 table_version_14-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_version_14-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 table_version_14 table_version_14-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/table_version_14-1.11.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 table_version_14 table_version_14-1.9.0-1.rhel8.x86_64.rpm pgdg 1.9.0 40.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/table_version_14-1.9.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 table_version_14 table_version_14-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_version_14-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 table_version_14 table_version_14-1.11.1-1PGDG.rhel8.noarch.rpm pgdg 1.11.1 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/table_version_14-1.11.1-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 table_version_14 table_version_14-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/table_version_14-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 table_version_14 table_version_14-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_version_14-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 table_version_14 table_version_14-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/table_version_14-1.11.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 table_version_14 table_version_14-1.11.1-2PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/table_version_14-1.11.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 table_version_14 table_version_14-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_version_14-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 table_version_14 table_version_14-1.11.1-1PGDG.rhel9.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/table_version_14-1.11.1-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 table_version_14 table_version_14-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/table_version_14-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 table_version_14 table_version_14-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/table_version_14-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 table_version_14 table_version_14-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 31.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_version_14-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 table_version_14 table_version_14-1.11.1-2PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 30.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/table_version_14-1.11.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 table_version_14 table_version_14-1.11.1-2PGDG.rhel10.noarch.rpm pgdg 1.11.1 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/table_version_14-1.11.1-2PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 table_version_14 table_version_14-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_version_14-1.11.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 28.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 28.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 18.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-table-version postgresql-14-table-version_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 18.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/table-version/postgresql-14-table-version_1.11.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `table_version` using `pig build`:

```bash
pig build pkg table_version         # build DEB packages
```


## Install

You can install `table_version` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install table_version;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y table_version -v 18  # PG 18
pig ext install -y table_version -v 17  # PG 17
pig ext install -y table_version -v 16  # PG 16
pig ext install -y table_version -v 15  # PG 15
pig ext install -y table_version -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y table_version_18       # PG 18
dnf install -y table_version_17       # PG 17
dnf install -y table_version_16       # PG 16
dnf install -y table_version_15       # PG 15
dnf install -y table_version_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-table-version   # PG 18
apt install -y postgresql-17-table-version   # PG 17
apt install -y postgresql-16-table-version   # PG 16
apt install -y postgresql-15-table-version   # PG 15
apt install -y postgresql-14-table-version   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION table_version CASCADE;  -- requires: plpgsql
```



## Usage

> [table_version: PostgreSQL table versioning extension](https://github.com/linz/postgresql-tableversion)

PostgreSQL table versioning extension, recording row modifications and its history. The extension provides APIs for accessing snapshots of a table at certain revisions and the difference generated between any two given revisions. It uses a PL/PgSQL trigger based system to record and provide access to row revisions.

### Quick Start

```sql
CREATE EXTENSION table_version;

CREATE SCHEMA foo;
SET search_path TO foo, public;

CREATE TABLE foo.bar (
    id INTEGER NOT NULL PRIMARY KEY,
    baz TEXT
);

-- Enable versioning
SELECT table_version.ver_enable_versioning('foo', 'bar');

-- Create a revision and insert data
SELECT table_version.ver_create_revision('Insert data');
INSERT INTO foo.bar (id, baz) VALUES
  (1, 'foo bar 1'),
  (2, 'foo bar 2'),
  (3, 'foo bar 3');
SELECT table_version.ver_complete_revision();

-- Show differences between revisions
SELECT * FROM table_version.ver_get_foo_bar_diff(1001, 1002);
```


## How It Works

When a table is versioned, the original table data is left untouched and a new revision table is created with all the same fields plus `_revision_created` and `_revision_expired` fields. A row-level trigger is set up on the original table to record every insert, update and delete in the revision data table. A statement-level trigger is set up to forbid TRUNCATE.

### Table Prerequisites

- The table must have a unique non-composite integer, bigint, text or varchar column
- The table must not be temporary


## Auto Revisions

If you don't want to call `ver_create_revision` and `ver_complete_revision` explicitly, auto-revision mode groups edits by transactions:

```sql
SELECT table_version.ver_enable_versioning('foo', 'bar');

BEGIN;
INSERT INTO foo.bar (id, baz) VALUES (1, 'foo bar 1');
INSERT INTO foo.bar (id, baz) VALUES (2, 'foo bar 2');
COMMIT;

BEGIN;
UPDATE foo.bar SET baz = 'foo bar 1 edit' WHERE id = 1;
COMMIT;

SELECT * FROM table_version.foo_bar_revision;
```

The revision message will be automatically created based on the transaction ID.


## Replicate Data Using Table Differences

To maintain a copy of table data on a remote system:

```sql
-- 1. Determine which tables are versioned
SELECT * FROM table_version.ver_get_versioned_tables();

-- 2. Get the base revision
SELECT table_version.ver_get_table_base_revision('foo', 'bar');

-- 3. Create a base snapshot
CREATE TABLE foo_bar_copy AS
SELECT * FROM table_version.ver_get_foo_bar_revision(
    table_version.ver_get_table_base_revision('foo', 'bar')
);

-- 4. Get differences to apply incremental updates
SELECT * FROM table_version.ver_get_foo_bar_diff(
    my_last_revision,
    table_version.ver_get_table_last_revision('foo', 'bar')
);
```


## Security Model

- Anyone can create revisions
- Revisions can only be completed by their creators
- Only those who have ownership privileges on a table can enable/disable versioning
- Only empty revisions can be deleted
- Only the creator of a revision can delete it

Note: Disabling versioning on a table results in all history for that table being deleted.


## Key Functions

| Function | Description |
|----------|-------------|
| `ver_enable_versioning(schema, table)` | Enable versioning on a table |
| `ver_disable_versioning(schema, table)` | Disable versioning and remove history |
| `ver_create_revision(comment)` | Create a new revision |
| `ver_complete_revision()` | Mark current revision as complete |
| `ver_get_<schema>_<table>_diff(rev1, rev2)` | Get differences between two revisions |
| `ver_get_<schema>_<table>_revision(rev)` | Get snapshot at a specific revision |
| `ver_get_versioned_tables()` | List all versioned tables |
| `ver_get_last_revision()` | Get the last revision number |
