---
title: "emaj"
linkTitle: "emaj"
description: "Enables fine-grained write logging and time travel on subsets of the database."
weight: 1050
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dalibo/emaj">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dalibo/emaj</div>
    <div class="ext-card__desc">https://github.com/dalibo/emaj</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/emaj-4.7.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">emaj-4.7.1.tar.gz</div>
    <div class="ext-card__desc">emaj-4.7.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`emaj`**](/ext/e/emaj) | `4.7.1` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1050  | [**`emaj`**](/ext/e/emaj) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `emaj` |
{.ext-table}

| **Related** | [`dblink`](/ext/e/dblink) [`btree_gist`](/ext/e/btree_gist) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timescaledb`](/ext/e/timescaledb) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`table_version`](/ext/e/table_version) [`pg_cron`](/ext/e/pg_cron) [`pg_partman`](/ext/e/pg_partman) [`timeseries`](/ext/e/timeseries) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> max_prepared_transactions


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `4.7.1` | {{< pgvers "18,17,16,15,14" >}} | `emaj` | `dblink`, `btree_gist` |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.7.1` | {{< pgvers "18,17,16,15,14" >}} | `e-maj_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.7.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-emaj` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.7.1 1 | AVAIL PGDG 4.7.1 4 | AVAIL PGDG 4.7.1 9 | AVAIL PGDG 4.7.1 10 | AVAIL PGDG 4.7.1 10 |
| el8.aarch64 | AVAIL PGDG 4.7.1 1 | AVAIL PGDG 4.7.1 4 | AVAIL PGDG 4.7.1 9 | AVAIL PGDG 4.7.1 10 | AVAIL PGDG 4.7.1 10 |
| el9.x86_64 | AVAIL PGDG 4.7.1 1 | AVAIL PGDG 4.7.1 4 | AVAIL PGDG 4.7.1 9 | AVAIL PGDG 4.7.1 10 | AVAIL PGDG 4.7.1 10 |
| el9.aarch64 | AVAIL PGDG 4.7.1 1 | AVAIL PGDG 4.7.1 4 | AVAIL PGDG 4.7.1 9 | AVAIL PGDG 4.7.1 10 | AVAIL PGDG 4.7.1 10 |
| el10.x86_64 | AVAIL PGDG 4.7.1 1 | AVAIL PGDG 4.7.1 3 | AVAIL PGDG 4.7.1 3 | AVAIL PGDG 4.7.1 3 | AVAIL PGDG 4.7.1 3 |
| el10.aarch64 | AVAIL PGDG 4.7.1 1 | AVAIL PGDG 4.7.1 3 | AVAIL PGDG 4.7.1 3 | AVAIL PGDG 4.7.1 3 | AVAIL PGDG 4.7.1 3 |
| d12.x86_64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
| d12.aarch64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
| d13.x86_64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
| d13.aarch64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
| u22.x86_64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
| u22.aarch64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
| u24.x86_64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
| u24.aarch64 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 | AVAIL PIGSTY 4.7.1 1 |
@ el8.x86_64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~trixie_amd64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~trixie_arm64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~jammy_amd64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~jammy_arm64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~noble_amd64.deb pigsty 4.7.1 193.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-emaj postgresql-18-emaj_4.7.1-1PIGSTY~noble_arm64.deb pigsty 4.7.1 193.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-18-emaj_4.7.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~trixie_amd64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~trixie_arm64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~jammy_amd64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~jammy_arm64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~noble_amd64.deb pigsty 4.7.1 193.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-emaj postgresql-17-emaj_4.7.1-1PIGSTY~noble_arm64.deb pigsty 4.7.1 193.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-17-emaj_4.7.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.x86_64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.2.0-1.rhel8.x86_64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.aarch64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.2.0-1.rhel8.aarch64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.x86_64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.2.0-1.rhel9.x86_64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.aarch64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.2.0-1.rhel9.aarch64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~trixie_amd64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~trixie_arm64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~jammy_amd64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~jammy_arm64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~noble_amd64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-emaj postgresql-16-emaj_4.7.1-1PIGSTY~noble_arm64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-16-emaj_4.7.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel8.x86_64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.2.0-1.rhel8.x86_64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-4.1.0-1.rhel8.x86_64.rpm pgdg 4.1.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-4.1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel8.aarch64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.2.0-1.rhel8.aarch64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-4.1.0-1.rhel8.aarch64.rpm pgdg 4.1.0 4.6MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-4.1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel9.x86_64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.2.0-1.rhel9.x86_64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.1.0-1.rhel9.x86_64.rpm pgdg 4.1.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.1.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.3.0-1PGDG.rhel9.aarch64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.2.0-1.rhel9.aarch64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.1.0-1.rhel9.aarch64.rpm pgdg 4.1.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~trixie_amd64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~trixie_arm64.deb pigsty 4.7.1 213.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~jammy_amd64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~jammy_arm64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~noble_amd64.deb pigsty 4.7.1 194.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-emaj postgresql-15-emaj_4.7.1-1PIGSTY~noble_arm64.deb pigsty 4.7.1 194.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-15-emaj_4.7.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel8.x86_64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.2.0-1.rhel8.x86_64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-4.1.0-1.rhel8.x86_64.rpm pgdg 4.1.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-4.1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel8.aarch64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.2.0-1.rhel8.aarch64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-4.1.0-1.rhel8.aarch64.rpm pgdg 4.1.0 4.6MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-4.1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel9.x86_64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.2.0-1.rhel9.x86_64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.1.0-1.rhel9.x86_64.rpm pgdg 4.1.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.1.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.3.0-1PGDG.rhel9.aarch64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.2.0-1.rhel9.aarch64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.1.0-1.rhel9.aarch64.rpm pgdg 4.1.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~trixie_amd64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~trixie_arm64.deb pigsty 4.7.1 214.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~jammy_amd64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~jammy_arm64.deb pigsty 4.7.1 193.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~noble_amd64.deb pigsty 4.7.1 193.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-emaj postgresql-14-emaj_4.7.1-1PIGSTY~noble_arm64.deb pigsty 4.7.1 193.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-14-emaj_4.7.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `emaj` using `pig build`:

```bash
pig build pkg emaj         # build DEB packages
```


## Install

You can install `emaj` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install emaj;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y emaj -v 18  # PG 18
pig ext install -y emaj -v 17  # PG 17
pig ext install -y emaj -v 16  # PG 16
pig ext install -y emaj -v 15  # PG 15
pig ext install -y emaj -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y e-maj_18       # PG 18
dnf install -y e-maj_17       # PG 17
dnf install -y e-maj_16       # PG 16
dnf install -y e-maj_15       # PG 15
dnf install -y e-maj_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-emaj   # PG 18
apt install -y postgresql-17-emaj   # PG 17
apt install -y postgresql-16-emaj   # PG 16
apt install -y postgresql-15-emaj   # PG 15
apt install -y postgresql-14-emaj   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION emaj CASCADE;  -- requires: dblink, btree_gist
```



## Usage

> [E-Maj: logs and rollbacks table content changes](https://github.com/dalibo/emaj)
>
> [**Documentation**](https://emaj.readthedocs.io/en/latest/) | [Emaj_web GUI](https://github.com/dalibo/emaj_web)

E-Maj logs table changes (Inserts, Updates, Deletes, Truncates) performed on one or several sets of tables, and can efficiently cancel these changes if needed, resetting a tables set to a predefined stable state.

In **development environments**, it helps testing applications by providing an easy way to rollback all updates generated by program execution, and replay processing as many times as needed.

In **production environments**, it provides:

- History of changes performed on tables for examination
- Inter-batch savepoints on groups of tables
- Easy "restore" of table groups to a stable state without stopping the cluster
- Multiple savepoints during batch windows, each usable as a restore point


## Concepts

### Tables Group

A tables group is a set of application tables that live at the same rhythm — their content can be restored as a whole if needed. A group can include tables and sequences across different schemas. Each group operates in one of two states: **LOGGING** or **IDLE**, and can be designated as:

- **ROLLBACKABLE** (standard) — supports both logging and rollback
- **AUDIT_ONLY** — allows change recording without rollback capability, even for tables without primary keys or UNLOGGED tables

### Mark

A mark represents a snapshot moment in a tables group's lifecycle, capturing a stable state across all group members. Marks have unique names within a group.

### Rollback

Rollback operations restore tables and sequences to their state when a specific mark was established:

- **Unlogged rollback** — cancelled updates leave no trace
- **Logged rollback** — cancellations are recorded, allowing subsequent reversal

Note: E-Maj rollback differs fundamentally from PostgreSQL's native transaction rollback.


## Main Functions

### Start a Tables Group

```sql
SELECT emaj.emaj_start_group('my_group', 'mark_1');
```

Activates update recording. The group must be in IDLE state. Automatically creates an initial mark.

### Set an Intermediate Mark

```sql
SELECT emaj.emaj_set_mark_group('my_group', 'mark_2');
```

Records a point-in-time snapshot of the application state. The group must be in LOGGING state.

### Rollback a Tables Group

Unlogged rollback (restores tables, no trace of cancellation):

```sql
SELECT * FROM emaj.emaj_rollback_group('my_group', 'mark_1');
```

Logged rollback (permits reverting the rollback itself):

```sql
SELECT * FROM emaj.emaj_logged_rollback_group('my_group', 'mark_1');
```

Both support the `'_EMAJ_LAST_MARK_'` keyword for targeting the most recent mark.

### Stop a Tables Group

```sql
SELECT emaj.emaj_stop_group('my_group');
```

Deactivates logging, changing the group state from LOGGING to IDLE.


## Multi-Group Operations

Functions support batch operations on multiple groups simultaneously:

```sql
SELECT emaj.emaj_start_groups('{"group1","group2"}', 'multi_mark');
SELECT emaj.emaj_set_mark_groups('{"group1","group2"}', 'common_mark');
SELECT * FROM emaj.emaj_rollback_groups('{"group1","group2"}', 'common_mark');
SELECT emaj.emaj_stop_groups('{"group1","group2"}');
```


## Examining Changes

E-Maj provides functions to count and examine data content changes between marks, and to generate SQL scripts that replay logged changes. This is useful for auditing and debugging.


## Emaj_web

**Emaj_web** is a PHP-based web GUI tool for user-friendly E-Maj administration. It is available on [GitHub](https://github.com/dalibo/emaj_web) and described in the [documentation](https://emaj.readthedocs.io/en/latest/webOverview.html).
