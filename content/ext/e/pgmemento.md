---
title: "pgmemento"
linkTitle: "pgmemento"
description: "Transaction-based audit trail with schema versioning"
weight: 7190
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgMemento/pgMemento">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgMemento/pgMemento</div>
    <div class="ext-card__desc">https://github.com/pgMemento/pgMemento</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmemento-0.7.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmemento-0.7.4.tar.gz</div>
    <div class="ext-card__desc">pgmemento-0.7.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmemento`**](/ext/e/pgmemento) | `0.7.4` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license lgpl30" href="/ext/license#lgpl30">LGPL-3.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7190  | [**`pgmemento`**](/ext/e/pgmemento) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgmemento` |
{.ext-table}

| **Related** | [`table_log`](/ext/e/table_log) [`pgaudit`](/ext/e/pgaudit) [`table_version`](/ext/e/table_version) [`data_historization`](/ext/e/data_historization) [`ddl_historization`](/ext/e/ddl_historization) [`pg_drop_events`](/ext/e/pg_drop_events) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`pgelog`](/ext/e/pgelog) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Packages upgrade scripts from 0.7, 0.7.1, 0.7.2, and 0.7.3 to 0.7.4.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.7.4` | {{< pgvers "18,17,16,15,14" >}} | `pgmemento` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.7.4` | {{< pgvers "18,17,16,15,14" >}} | `pgmemento_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.7.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmemento` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| d12.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| d12.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| d13.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| d13.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| u22.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| u22.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| u24.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| u24.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| u26.x86_64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
| u26.aarch64 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 | AVAIL PIGSTY 0.7.4 1 |
@ el8.x86_64 18 pgmemento_18 pgmemento_18-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmemento_18-0.7.4-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pgmemento_18 pgmemento_18-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmemento_18-0.7.4-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pgmemento_18 pgmemento_18-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmemento_18-0.7.4-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pgmemento_18 pgmemento_18-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmemento_18-0.7.4-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pgmemento_18 pgmemento_18-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmemento_18-0.7.4-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pgmemento_18 pgmemento_18-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmemento_18-0.7.4-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pgmemento postgresql-18-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-18-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pgmemento_17 pgmemento_17-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmemento_17-0.7.4-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pgmemento_17 pgmemento_17-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmemento_17-0.7.4-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pgmemento_17 pgmemento_17-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmemento_17-0.7.4-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pgmemento_17 pgmemento_17-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmemento_17-0.7.4-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pgmemento_17 pgmemento_17-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmemento_17-0.7.4-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pgmemento_17 pgmemento_17-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmemento_17-0.7.4-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pgmemento postgresql-17-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-17-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pgmemento_16 pgmemento_16-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmemento_16-0.7.4-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pgmemento_16 pgmemento_16-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmemento_16-0.7.4-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pgmemento_16 pgmemento_16-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmemento_16-0.7.4-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pgmemento_16 pgmemento_16-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmemento_16-0.7.4-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pgmemento_16 pgmemento_16-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmemento_16-0.7.4-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pgmemento_16 pgmemento_16-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmemento_16-0.7.4-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pgmemento postgresql-16-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-16-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pgmemento_15 pgmemento_15-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmemento_15-0.7.4-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pgmemento_15 pgmemento_15-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmemento_15-0.7.4-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pgmemento_15 pgmemento_15-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmemento_15-0.7.4-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pgmemento_15 pgmemento_15-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmemento_15-0.7.4-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pgmemento_15 pgmemento_15-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmemento_15-0.7.4-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pgmemento_15 pgmemento_15-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmemento_15-0.7.4-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pgmemento postgresql-15-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-15-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pgmemento_14 pgmemento_14-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmemento_14-0.7.4-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 pgmemento_14 pgmemento_14-0.7.4-1PIGSTY.el8.noarch.rpm pigsty 0.7.4 46.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmemento_14-0.7.4-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 pgmemento_14 pgmemento_14-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmemento_14-0.7.4-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 pgmemento_14 pgmemento_14-0.7.4-1PIGSTY.el9.noarch.rpm pigsty 0.7.4 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmemento_14-0.7.4-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 pgmemento_14 pgmemento_14-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmemento_14-0.7.4-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 pgmemento_14 pgmemento_14-0.7.4-1PIGSTY.el10.noarch.rpm pigsty 0.7.4 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmemento_14-0.7.4-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~trixie_all.deb pigsty 0.7.4 34.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~jammy_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~noble_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pgmemento postgresql-14-pgmemento_0.7.4-1PIGSTY~resolute_all.deb pigsty 0.7.4 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmemento/postgresql-14-pgmemento_0.7.4-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmemento` using `pig build`:

```bash
pig build pkg pgmemento         # build RPM / DEB packages
```


## Install

You can install `pgmemento` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmemento;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmemento -v 18  # PG 18
pig ext install -y pgmemento -v 17  # PG 17
pig ext install -y pgmemento -v 16  # PG 16
pig ext install -y pgmemento -v 15  # PG 15
pig ext install -y pgmemento -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmemento_18       # PG 18
dnf install -y pgmemento_17       # PG 17
dnf install -y pgmemento_16       # PG 16
dnf install -y pgmemento_15       # PG 15
dnf install -y pgmemento_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmemento   # PG 18
apt install -y postgresql-17-pgmemento   # PG 17
apt install -y postgresql-16-pgmemento   # PG 16
apt install -y postgresql-15-pgmemento   # PG 15
apt install -y postgresql-14-pgmemento   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmemento;
```

## Usage

Sources:

- [pgMemento v0.7.4 README](https://github.com/pgMemento/pgMemento/blob/v0.7.4/README.md)
- [pgMemento v0.7.4 control file](https://github.com/pgMemento/pgMemento/blob/v0.7.4/extension/pgmemento.control)
- [pgMemento wiki](https://github.com/pgMemento/pgMemento/wiki)
- [Changes from v0.7.3 to v0.7.4](https://github.com/pgMemento/pgMemento/compare/v0.7.3...v0.7.4)

pgmemento is a trigger-based audit trail for PostgreSQL. It records DML changes as JSONB deltas, groups them by transaction and table event, tracks audited schema changes, and provides restore and revert helpers. Use it when row history and transaction context must be queried inside PostgreSQL.

### Create and Initialize

    CREATE EXTENSION pgmemento;
    SELECT pgmemento.init('public');

init instruments eligible tables in the selected schema and adds the pgmemento_audit_id identity column used to track row history. Run it first on a staging copy: auditing changes table definitions and installs event and row triggers.

Use start and stop to control auditing for a schema, and use the documented drop function when intentionally removing pgMemento's instrumentation. Do not manually delete extension triggers or audit identifiers.

### Inspect the Audit Trail

The central data model includes:

- transaction_log: transaction metadata and optional application context.
- table_event_log: table-level events within a transaction.
- row_log: JSONB row deltas linked to a table event.
- audited_schema and audited_table metadata: tracked schemas, tables, columns, and versions.

A typical investigation joins a transaction to its table events and row deltas:

    SELECT t.id,
           t.txid_time,
           e.table_operation,
           r.audit_id,
           r.old_data,
           r.new_data
    FROM pgmemento.transaction_log AS t
    JOIN pgmemento.table_event_log AS e
      ON e.transaction_id = t.id
    JOIN pgmemento.row_log AS r
      ON r.event_key = e.event_key
    WHERE t.id = 12345;

Inspect the installed views and column names before embedding this query because audit schema details can differ across pgmemento versions.

### Restore and Revert

pgmemento provides restore functions that reconstruct table state from the audit trail and revert_transaction or related helpers that apply compensating changes. Treat these as recovery operations:

1. take and verify a backup;
2. identify the exact transaction and dependent changes;
3. preview reconstructed data where possible;
4. run the operation in a controlled transaction;
5. validate constraints, sequences, and application invariants.

### Version 0.7.4

Version 0.7.4 changes row serialization to avoid PostgreSQL's jsonb_build_object argument limit for very wide payloads and adds PostgreSQL 15 support. Upgrade using ALTER EXTENSION pgmemento UPDATE only after testing the version-specific upgrade script.

### Operational Boundaries

- Audit triggers add latency and write volume to every tracked change. Monitor row_log growth and index maintenance.
- The audit trail resides in the same database and is not a substitute for backups, WAL archives, or tamper-resistant external audit storage.
- Schema initialization and DDL tracking alter application tables. Coordinate migrations with pgmemento rather than bypassing its event triggers.
- Limit direct writes to the pgmemento schema and protect any transaction metadata that can contain user or application information.
