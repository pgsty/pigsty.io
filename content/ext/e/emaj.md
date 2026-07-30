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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/emaj-5.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">emaj-5.0.0.tar.gz</div>
    <div class="ext-card__desc">emaj-5.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`emaj`**](/ext/e/emaj) | `5.0.0` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1050  | [**`emaj`**](/ext/e/emaj) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `emaj` |
{.ext-table}

| **Related** | [`btree_gist`](/ext/e/btree_gist) [`dblink`](/ext/e/dblink) [`table_version`](/ext/e/table_version) [`pgmemento`](/ext/e/pgmemento) [`data_historization`](/ext/e/data_historization) [`table_log`](/ext/e/table_log) [`ddl_historization`](/ext/e/ddl_historization) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires max_prepared_transactions


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.0` | {{< pgvers "18,17,16,15,14" >}} | `emaj` | `btree_gist`, `dblink` |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.0` | {{< pgvers "18,17,16,15,14" >}} | `e-maj_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-emaj` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 5.0.0 3 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 11 | AVAIL PIGSTY 5.0.0 12 | AVAIL PIGSTY 5.0.0 12 |
| el8.aarch64 | AVAIL PIGSTY 5.0.0 3 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 11 | AVAIL PIGSTY 5.0.0 12 | AVAIL PIGSTY 5.0.0 12 |
| el9.x86_64 | AVAIL PIGSTY 5.0.0 3 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 11 | AVAIL PIGSTY 5.0.0 12 | AVAIL PIGSTY 5.0.0 12 |
| el9.aarch64 | AVAIL PIGSTY 5.0.0 4 | AVAIL PIGSTY 5.0.0 7 | AVAIL PIGSTY 5.0.0 12 | AVAIL PIGSTY 5.0.0 13 | AVAIL PIGSTY 5.0.0 13 |
| el10.x86_64 | AVAIL PIGSTY 5.0.0 4 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 6 |
| el10.aarch64 | AVAIL PIGSTY 5.0.0 4 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 6 | AVAIL PIGSTY 5.0.0 6 |
| d12.x86_64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 | AVAIL PIGSTY 5.0.0 1 |
@ el8.x86_64 18 e-maj_18 e-maj_18-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/e-maj_18-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.x86_64 18 e-maj_18 e-maj_18-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/e-maj_18-5.0.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 e-maj_18 e-maj_18-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/e-maj_18-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 e-maj_18 e-maj_18-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/e-maj_18-5.0.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/e-maj_18-4.7.1-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 e-maj_18 e-maj_18-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/e-maj_18-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.x86_64 18 e-maj_18 e-maj_18-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/e-maj_18-4.7.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 e-maj_18 e-maj_18-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/e-maj_18-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 e-maj_18 e-maj_18-5.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/e-maj_18-5.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 e-maj_18 e-maj_18-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/e-maj_18-4.7.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/e-maj_18-4.7.1-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 e-maj_18 e-maj_18-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/e-maj_18-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.x86_64 18 e-maj_18 e-maj_18-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/e-maj_18-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 e-maj_18 e-maj_18-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/e-maj_18-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 e-maj_18 e-maj_18-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/e-maj_18-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 e-maj_18 e-maj_18-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/e-maj_18-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 e-maj_18 e-maj_18-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/e-maj_18-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 e-maj_18 e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/e-maj_18-4.7.1-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 209.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 209.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-emaj postgresql-18-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-18-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 e-maj_17 e-maj_17-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/e-maj_17-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-5.0.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/e-maj_17-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-5.0.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/e-maj_17-4.5.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/e-maj_17-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.7.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/e-maj_17-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-5.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-5.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.7.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 e-maj_17 e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/e-maj_17-4.5.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/e-maj_17-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/e-maj_17-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 e-maj_17 e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/e-maj_17-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 209.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 209.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-emaj postgresql-17-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-17-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 e-maj_16 e-maj_16-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/e-maj_16-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-5.0.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.x86_64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 e-maj_16 e-maj_16-4.2.0-1.rhel8.x86_64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/e-maj_16-4.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/e-maj_16-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-5.0.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm pgdg 4.7.1 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.7.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm pgdg 4.7.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm pgdg 4.6.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.6.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm pgdg 4.5.0 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.5.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm pgdg 4.4.0 5.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.4.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm pgdg 4.3.1 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.3.1-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.3.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel8.aarch64.rpm pgdg 4.3.0 4.6MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 e-maj_16 e-maj_16-4.2.0-1.rhel8.aarch64.rpm pgdg 4.2.0 4.5MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/e-maj_16-4.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/e-maj_16-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.7.1-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.x86_64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 e-maj_16 e-maj_16-4.2.0-1.rhel9.x86_64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/e-maj_16-4.2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/e-maj_16-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-5.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-5.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.7.1-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.7.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.6.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm pgdg 4.5.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.5.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm pgdg 4.4.0 4.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.4.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm pgdg 4.3.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.3.1-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.3.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.3.0-1PGDG.rhel9.aarch64.rpm pgdg 4.3.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 e-maj_16 e-maj_16-4.2.0-1.rhel9.aarch64.rpm pgdg 4.2.0 4.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/e-maj_16-4.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/e-maj_16-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/e-maj_16-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 e-maj_16 e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/e-maj_16-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-emaj postgresql-16-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-16-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 e-maj_15 e-maj_15-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/e-maj_15-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.x86_64 15 e-maj_15 e-maj_15-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/e-maj_15-5.0.0-1PGDG.rhel8.10.noarch.rpm
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
@ el8.aarch64 15 e-maj_15 e-maj_15-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/e-maj_15-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 e-maj_15 e-maj_15-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/e-maj_15-5.0.0-1PGDG.rhel8.10.noarch.rpm
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
@ el9.x86_64 15 e-maj_15 e-maj_15-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/e-maj_15-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.x86_64 15 e-maj_15 e-maj_15-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/e-maj_15-4.7.1-2PGDG.rhel9.8.noarch.rpm
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
@ el9.aarch64 15 e-maj_15 e-maj_15-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/e-maj_15-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-5.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-5.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 e-maj_15 e-maj_15-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/e-maj_15-4.7.1-2PGDG.rhel9.8.noarch.rpm
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
@ el10.x86_64 15 e-maj_15 e-maj_15-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/e-maj_15-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/e-maj_15-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 e-maj_15 e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/e-maj_15-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-emaj postgresql-15-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-15-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 e-maj_14 e-maj_14-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/e-maj_14-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.x86_64 14 e-maj_14 e-maj_14-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/e-maj_14-5.0.0-1PGDG.rhel8.10.noarch.rpm
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
@ el8.aarch64 14 e-maj_14 e-maj_14-5.0.0-2PIGSTY.el8.noarch.rpm pigsty 5.0.0 314.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/e-maj_14-5.0.0-2PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 e-maj_14 e-maj_14-5.0.0-1PGDG.rhel8.10.noarch.rpm pgdg 5.0.0 5.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/e-maj_14-5.0.0-1PGDG.rhel8.10.noarch.rpm
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
@ el9.x86_64 14 e-maj_14 e-maj_14-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/e-maj_14-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.x86_64 14 e-maj_14 e-maj_14-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/e-maj_14-4.7.1-2PGDG.rhel9.8.noarch.rpm
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
@ el9.aarch64 14 e-maj_14 e-maj_14-5.0.0-2PIGSTY.el9.noarch.rpm pigsty 5.0.0 219.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/e-maj_14-5.0.0-2PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-5.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-5.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 e-maj_14 e-maj_14-4.7.1-2PGDG.rhel9.8.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/e-maj_14-4.7.1-2PGDG.rhel9.8.noarch.rpm
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
@ el10.x86_64 14 e-maj_14 e-maj_14-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/e-maj_14-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-5.0.0-2PIGSTY.el10.noarch.rpm pigsty 5.0.0 219.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/e-maj_14-5.0.0-2PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-5.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 5.0.0 5.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-5.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-4.7.1-2PGDG.rhel10.2.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-4.7.1-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm pgdg 4.7.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-4.7.1-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm pgdg 4.7.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-4.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 e-maj_14 e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm pgdg 4.6.0 4.4MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/e-maj_14-4.6.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~bookworm_all.deb pigsty 5.0.0 232.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~trixie_all.deb pigsty 5.0.0 232.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~jammy_all.deb pigsty 5.0.0 210.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 209.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~noble_all.deb pigsty 5.0.0 209.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-emaj postgresql-14-emaj_5.0.0-1PIGSTY~resolute_all.deb pigsty 5.0.0 209.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/emaj/postgresql-14-emaj_5.0.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `emaj` using `pig build`:

```bash
pig build pkg emaj         # build RPM / DEB packages
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
CREATE EXTENSION emaj CASCADE;  -- requires: btree_gist, dblink
```

## Usage

Sources:

- [E-Maj 5.0.0 README](https://github.com/dalibo/emaj/blob/v5.0.0/README.md)
- [E-Maj 5.0.0 changelog](https://github.com/dalibo/emaj/blob/v5.0.0/CHANGES.md)
- [E-Maj quick start](https://github.com/dalibo/emaj/blob/v5.0.0/docs/en/quickStart.rst)
- [E-Maj upgrade guide](https://github.com/dalibo/emaj/blob/v5.0.0/docs/en/upgrade.rst)
- [E-Maj setup guide](https://github.com/dalibo/emaj/blob/v5.0.0/docs/en/setup.rst)

The canonical extension name is `emaj`; E-Maj records table and sequence changes for a coordinated table group and can roll that group back to a named mark. It is useful for repeatable test runs, batch savepoints, change inspection, and targeted recovery, but an E-Maj rollback is not a replacement for PostgreSQL transaction rollback or backup.

### Core Workflow

```sql
CREATE EXTENSION emaj CASCADE;
GRANT emaj_adm TO app_admin;

SELECT emaj.emaj_create_group('my_group', true);
SELECT emaj.emaj_assign_table('app', 'orders', 'my_group');
SELECT emaj.emaj_assign_sequences('app', '.*', '', 'my_group');

SELECT emaj.emaj_start_group('my_group', 'mark_1');
-- Run application changes.
SELECT emaj.emaj_set_mark_group('my_group', 'mark_2');
-- Run more application changes.

SELECT emaj.emaj_rollback_group('my_group', 'mark_1');
SELECT emaj.emaj_stop_group('my_group');
SELECT emaj.emaj_drop_group('my_group');
```

A rollbackable table group can contain tables and sequences from several schemas, but each table must have a primary key. Audit-only groups can record changes for objects that are not rollbackable. Starting and stopping a group takes locks on its application tables, so plan these operations around concurrent traffic.

### Important Objects

- `emaj_create_group` and assignment functions define table groups.
- `emaj_start_group`, `emaj_set_mark_group`, and `emaj_stop_group` manage logging sessions and marks.
- `emaj_rollback_group` performs an unlogged rollback; `emaj_logged_rollback_group` records the compensating changes.
- Multi-group variants operate on arrays of group names at one common point in time.
- Statistics and change-dump functions inspect changes between marks or generate SQL for replay.
- `emaj_set_param` changes or resets an E-Maj parameter without direct writes to the internal parameter table.
- `emaj_drop_extension()` is the supported full-removal helper.

### Version 5.0 Upgrade

For an E-Maj extension installed at version 2.3.1 or later, install the new package files and run:

```sql
ALTER EXTENSION emaj UPDATE;
```

The documented extension upgrade preserves logs and can run while groups remain in the LOGGING state. Review these 5.0 compatibility changes before cutover:

- PostgreSQL 14 through 19 are supported; PostgreSQL 12 and 13 are no longer supported.
- Direct `INSERT`, `UPDATE`, or `DELETE` against `emaj_param` must be replaced by `emaj_set_param`.
- Idempotent start and stop calls have new allow-already-active or allow-already-idle parameters; named-argument callers must review renamed parameters.
- The PHP command-line clients and `emaj_uninstall.sql` were removed.

Installations made with the standalone SQL script do not have the same in-place extension upgrade path; follow the official delete-and-reinstall procedure.

### Requirements and Caveats

The standard `CREATE EXTENSION` path requires superuser privileges and installs `dblink` plus `btree_gist` through `CASCADE`. E-Maj also supports a limited non-superuser script installation, with capability restrictions tied to the installer role.

`max_prepared_transactions` is required only for the parallel rollback client and must be at least the intended session count; changing it requires a restart. Large groups can also require a higher `max_locks_per_transaction`. Treat E-Maj log tables as operational data: size retention deliberately, monitor their growth, and keep ordinary backups for disaster recovery.
