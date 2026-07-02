---
title: "temporal_tables"
linkTitle: "temporal_tables"
description: "temporal tables"
weight: 1040
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://pgxn.org/dist/temporal_tables/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://pgxn.org/dist/temporal_tables/</div>
    <div class="ext-card__desc">https://pgxn.org/dist/temporal_tables/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/temporal_tables-1.2.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">temporal_tables-1.2.2.tar.gz</div>
    <div class="ext-card__desc">temporal_tables-1.2.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`temporal_tables`**](/ext/e/temporal_tables) | `1.2.2` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license bsd 2clause" href="/ext/license#bsd2clause">BSD 2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1040  | [**`temporal_tables`**](/ext/e/temporal_tables) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timescaledb`](/ext/e/timescaledb) [`timeseries`](/ext/e/timeseries) [`periods`](/ext/e/periods) [`emaj`](/ext/e/emaj) [`table_version`](/ext/e/table_version) [`pg_cron`](/ext/e/pg_cron) [`pg_partman`](/ext/e/pg_partman) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> no pg17 on el8/9 pgdg repo


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "18,17,16,15,14" >}} | `temporal_tables` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "18,17,16,15,14" >}} | `temporal_tables_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-temporal-tables` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PGDG 1.2.2 2 | AVAIL PGDG 1.2.2 2 | AVAIL PGDG 1.2.2 2 |
| el8.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PGDG 1.2.2 2 | AVAIL PGDG 1.2.2 2 | AVAIL PGDG 1.2.2 2 |
| el9.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 |
| el9.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 |
| el10.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 |
| el10.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 | AVAIL PGDG 1.2.2 3 |
| d12.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
@ el8.x86_64 18 temporal_tables_18 temporal_tables_18-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/temporal_tables_18-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 temporal_tables_18 temporal_tables_18-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/temporal_tables_18-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 temporal_tables_18 temporal_tables_18-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 18.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/temporal_tables_18-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 temporal_tables_18 temporal_tables_18-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/temporal_tables_18-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 temporal_tables_18 temporal_tables_18-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/temporal_tables_18-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 temporal_tables_18 temporal_tables_18-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 18.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/temporal_tables_18-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 24.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 24.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 24.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 26.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 26.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-temporal-tables postgresql-18-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 25.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-18-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 temporal_tables_17 temporal_tables_17-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/temporal_tables_17-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 temporal_tables_17 temporal_tables_17-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 18.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/temporal_tables_17-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 temporal_tables_17 temporal_tables_17-1.2.2-7PGDG.rhel9.8.x86_64.rpm pgdg 1.2.2 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/temporal_tables_17-1.2.2-7PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 temporal_tables_17 temporal_tables_17-1.2.2-4PGDG.rhel9.x86_64.rpm pgdg 1.2.2 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/temporal_tables_17-1.2.2-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 temporal_tables_17 temporal_tables_17-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/temporal_tables_17-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 temporal_tables_17 temporal_tables_17-1.2.2-7PGDG.rhel9.8.aarch64.rpm pgdg 1.2.2 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/temporal_tables_17-1.2.2-7PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 temporal_tables_17 temporal_tables_17-1.2.2-4PGDG.rhel9.aarch64.rpm pgdg 1.2.2 23.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/temporal_tables_17-1.2.2-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 temporal_tables_17 temporal_tables_17-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/temporal_tables_17-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 temporal_tables_17 temporal_tables_17-1.2.2-7PGDG.rhel10.2.x86_64.rpm pgdg 1.2.2 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/temporal_tables_17-1.2.2-7PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 temporal_tables_17 temporal_tables_17-1.2.2-5PGDG.rhel10.x86_64.rpm pgdg 1.2.2 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/temporal_tables_17-1.2.2-5PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 temporal_tables_17 temporal_tables_17-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/temporal_tables_17-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 temporal_tables_17 temporal_tables_17-1.2.2-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2.2 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/temporal_tables_17-1.2.2-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 temporal_tables_17 temporal_tables_17-1.2.2-5PGDG.rhel10.aarch64.rpm pgdg 1.2.2 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/temporal_tables_17-1.2.2-5PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 temporal_tables_17 temporal_tables_17-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 18.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/temporal_tables_17-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 24.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 24.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 31.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 30.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 25.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-temporal-tables postgresql-17-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 25.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-17-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-2PGDG.rhel8.x86_64.rpm pgdg 1.2.2 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/temporal_tables_16-1.2.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/temporal_tables_16-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-2PGDG.rhel8.aarch64.rpm pgdg 1.2.2 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/temporal_tables_16-1.2.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 18.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/temporal_tables_16-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-7PGDG.rhel9.8.x86_64.rpm pgdg 1.2.2 24.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/temporal_tables_16-1.2.2-7PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/temporal_tables_16-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2.2 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/temporal_tables_16-1.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-7PGDG.rhel9.8.aarch64.rpm pgdg 1.2.2 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/temporal_tables_16-1.2.2-7PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/temporal_tables_16-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2.2 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/temporal_tables_16-1.2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-7PGDG.rhel10.2.x86_64.rpm pgdg 1.2.2 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/temporal_tables_16-1.2.2-7PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-5PGDG.rhel10.x86_64.rpm pgdg 1.2.2 24.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/temporal_tables_16-1.2.2-5PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/temporal_tables_16-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2.2 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/temporal_tables_16-1.2.2-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-5PGDG.rhel10.aarch64.rpm pgdg 1.2.2 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/temporal_tables_16-1.2.2-5PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 temporal_tables_16 temporal_tables_16-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 18.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/temporal_tables_16-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 24.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 24.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 31.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 30.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 25.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-temporal-tables postgresql-16-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 25.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-16-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-2PGDG.rhel8.x86_64.rpm pgdg 1.2.2 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/temporal_tables_15-1.2.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 18.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/temporal_tables_15-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-2PGDG.rhel8.aarch64.rpm pgdg 1.2.2 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/temporal_tables_15-1.2.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 18.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/temporal_tables_15-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-7PGDG.rhel9.8.x86_64.rpm pgdg 1.2.2 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/temporal_tables_15-1.2.2-7PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/temporal_tables_15-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2.2 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/temporal_tables_15-1.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-7PGDG.rhel9.8.aarch64.rpm pgdg 1.2.2 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/temporal_tables_15-1.2.2-7PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/temporal_tables_15-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2.2 22.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/temporal_tables_15-1.2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-7PGDG.rhel10.2.x86_64.rpm pgdg 1.2.2 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/temporal_tables_15-1.2.2-7PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-5PGDG.rhel10.x86_64.rpm pgdg 1.2.2 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/temporal_tables_15-1.2.2-5PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 18.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/temporal_tables_15-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2.2 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/temporal_tables_15-1.2.2-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-5PGDG.rhel10.aarch64.rpm pgdg 1.2.2 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/temporal_tables_15-1.2.2-5PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 temporal_tables_15 temporal_tables_15-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 18.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/temporal_tables_15-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 24.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 24.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 31.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 30.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 26.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-temporal-tables postgresql-15-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-15-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-2PGDG.rhel8.x86_64.rpm pgdg 1.2.2 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/temporal_tables_14-1.2.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 18.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/temporal_tables_14-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-2PGDG.rhel8.aarch64.rpm pgdg 1.2.2 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/temporal_tables_14-1.2.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 18.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/temporal_tables_14-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-7PGDG.rhel9.8.x86_64.rpm pgdg 1.2.2 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/temporal_tables_14-1.2.2-7PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/temporal_tables_14-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2.2 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/temporal_tables_14-1.2.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-7PGDG.rhel9.8.aarch64.rpm pgdg 1.2.2 23.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/temporal_tables_14-1.2.2-7PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/temporal_tables_14-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2.2 22.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/temporal_tables_14-1.2.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-7PGDG.rhel10.2.x86_64.rpm pgdg 1.2.2 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/temporal_tables_14-1.2.2-7PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-5PGDG.rhel10.x86_64.rpm pgdg 1.2.2 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/temporal_tables_14-1.2.2-5PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 18.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/temporal_tables_14-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-7PGDG.rhel10.2.aarch64.rpm pgdg 1.2.2 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/temporal_tables_14-1.2.2-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-5PGDG.rhel10.aarch64.rpm pgdg 1.2.2 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/temporal_tables_14-1.2.2-5PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 temporal_tables_14 temporal_tables_14-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 18.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/temporal_tables_14-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 24.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 24.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 24.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 24.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 29.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 28.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-temporal-tables postgresql-14-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 25.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/t/temporal-tables/postgresql-14-temporal-tables_1.2.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `temporal_tables` using `pig build`:

```bash
pig build pkg temporal_tables         # build RPM / DEB packages
```


## Install

You can install `temporal_tables` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install temporal_tables;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y temporal_tables -v 18  # PG 18
pig ext install -y temporal_tables -v 17  # PG 17
pig ext install -y temporal_tables -v 16  # PG 16
pig ext install -y temporal_tables -v 15  # PG 15
pig ext install -y temporal_tables -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y temporal_tables_18       # PG 18
dnf install -y temporal_tables_17       # PG 17
dnf install -y temporal_tables_16       # PG 16
dnf install -y temporal_tables_15       # PG 15
dnf install -y temporal_tables_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-temporal-tables   # PG 18
apt install -y postgresql-17-temporal-tables   # PG 17
apt install -y postgresql-16-temporal-tables   # PG 16
apt install -y postgresql-15-temporal-tables   # PG 15
apt install -y postgresql-14-temporal-tables   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION temporal_tables;
```




## Usage

> [temporal_tables: System-period temporal tables for PostgreSQL](https://github.com/arkhipov/temporal_tables)

A temporal table is a table that records the period of time when a row is valid. The system period is a column (or a pair of columns) with a system-maintained value that contains the period of time when a row is valid from a database perspective. When you insert a row into such table, the system automatically generates the values for the start and end of the period. When you update or delete a row from a system-period temporal table, the old row is archived into another table, which is called the history table.

There is [a fantastic tutorial](http://clarkdave.net/2015/02/historical-records-with-postgresql-and-temporal-tables-and-sql-2011/) on using and querying temporal tables in PostgreSQL with this extension.

### Creating a System-Period Temporal Table

The extension uses a general trigger function to maintain system-period temporal table behaviour:

```
versioning(<system_period_column_name>, <history_table_name>, <adjust>)
```

First, create a table and add a system period column:

```sql
CREATE TABLE employees (
  name text NOT NULL PRIMARY KEY,
  department text,
  salary numeric(20, 2)
);

ALTER TABLE employees ADD COLUMN sys_period tstzrange NOT NULL;
```

Then create a history table:

```sql
CREATE TABLE employees_history (LIKE employees);
```

A history table must contain a system period column with the same name and data type as in the original one. If both tables contain a column, the data type must be the same.

Finally, create a trigger to link it with the history table:

```sql
CREATE TRIGGER versioning_trigger
BEFORE INSERT OR UPDATE OR DELETE ON employees
FOR EACH ROW EXECUTE PROCEDURE versioning('sys_period',
                                          'employees_history',
                                          true);
```


## Inserting Data

Inserting data into a system-period temporal table is similar to inserting data into a regular table:

```sql
INSERT INTO employees (name, department, salary)
VALUES ('Bernard Marx', 'Hatchery and Conditioning Centre', 10000);

INSERT INTO employees (name, department, salary)
VALUES ('Lenina Crowne', 'Hatchery and Conditioning Centre', 7000);
```

The start of `sys_period` column represents the time when the row became current, generated by `CURRENT_TIMESTAMP`.


## Updating Data

When a user updates rows, the trigger inserts a copy of the old row into the history table. If a single transaction makes multiple updates to the same row, only one history row is generated:

```sql
UPDATE employees SET salary = 11200 WHERE name = 'Bernard Marx';
```

The history table now contains the previous version:

| name         | department                       | salary | sys_period              |
|--------------|----------------------------------|--------|-------------------------|
| Bernard Marx | Hatchery and Conditioning Centre | 10000  | [2006-08-08, 2007-02-27)|

### Update Conflicts and Time Adjustment

Update conflicts can occur when multiple transactions update the same row. When the `adjust` parameter is set to `true`, the start of `sys_period` is adjusted by adding a small delta (typically 1 microsecond) to avoid failures with SQLSTATE 22000.


## Deleting Data

When a user deletes data, the trigger adds rows to the history table:

```sql
DELETE FROM employees WHERE name = 'Helmholtz Watson';
```


## Advanced Usage

You can set a custom system time for versioning triggers, useful for creating a data warehouse from a system that recorded timestamps:

```sql
SELECT set_system_time('1985-08-08 06:42:00+08');
```

To revert to the default behaviour:

```sql
SELECT set_system_time(NULL);
```

If issued within a transaction that is later aborted, all changes are undone. If committed, changes persist until the end of the session.


## Examples and Hints

### Using Inheritance for History Tables

```sql
CREATE TABLE employees_history (
  name text NOT NULL,
  department text,
  salary numeric(20, 2),
  sys_period tstzrange NOT NULL
);

CREATE TABLE employees (PRIMARY KEY(name)) INHERITS (employees_history);
```

### Pruning History Tables

History tables are always growing. Several pruning strategies:

  1. Periodically delete old data from a history table.
  2. Use partitioning and detach old partitions from a history table.
  3. Retain only the latest N versions of a row.
  4. Prune rows when a corresponding row is deleted from the temporal table.
  5. Prune rows that satisfy specified business rules.

You can also set another tablespace for a history table to move it on cheaper storage.

### Data Audit

You can add triggers to save the user that modified or deleted the current row:

```sql
CREATE FUNCTION employees_modify()
RETURNS TRIGGER AS $$
BEGIN
  NEW.user_modified = SESSION_USER;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employees_modify
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW EXECUTE PROCEDURE employees_modify();

CREATE FUNCTION employees_delete()
RETURNS TRIGGER AS $$
BEGIN
  NEW.user_deleted = SESSION_USER;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employees_delete
BEFORE INSERT ON employees_history
FOR EACH ROW EXECUTE PROCEDURE employees_delete();
```
