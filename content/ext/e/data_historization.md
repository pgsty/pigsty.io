---
title: "data_historization"
linkTitle: "data_historization"
description: "PLPGSQL Script to historize data in partitionned table"
weight: 4320
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rodo/postgresql-data-historization">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rodo/postgresql-data-historization</div>
    <div class="ext-card__desc">https://github.com/rodo/postgresql-data-historization</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresql-data-historization-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresql-data-historization-1.1.0.tar.gz</div>
    <div class="ext-card__desc">postgresql-data-historization-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`data_historization`**](/ext/e/data_historization) | `1.1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4320  | [**`data_historization`**](/ext/e/data_historization) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`table_log`](/ext/e/table_log) [`pgmemento`](/ext/e/pgmemento) [`table_version`](/ext/e/table_version) [`temporal_tables`](/ext/e/temporal_tables) [`periods`](/ext/e/periods) [`ddl_historization`](/ext/e/ddl_historization) [`emaj`](/ext/e/emaj) [`pgaudit`](/ext/e/pgaudit) [`pg_drop_events`](/ext/e/pg_drop_events) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `data_historization` | `plpgsql` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `data_historization_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-data-historization` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
@ el8.x86_64 18 data_historization_18 data_historization_18-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/data_historization_18-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 data_historization_18 data_historization_18-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/data_historization_18-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 data_historization_18 data_historization_18-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/data_historization_18-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 data_historization_18 data_historization_18-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/data_historization_18-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 data_historization_18 data_historization_18-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/data_historization_18-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 data_historization_18 data_historization_18-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/data_historization_18-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-data-historization postgresql-18-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-18-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 data_historization_17 data_historization_17-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/data_historization_17-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 data_historization_17 data_historization_17-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/data_historization_17-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 data_historization_17 data_historization_17-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/data_historization_17-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 data_historization_17 data_historization_17-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/data_historization_17-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 data_historization_17 data_historization_17-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/data_historization_17-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 data_historization_17 data_historization_17-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/data_historization_17-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-data-historization postgresql-17-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-17-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 data_historization_16 data_historization_16-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/data_historization_16-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 data_historization_16 data_historization_16-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/data_historization_16-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 data_historization_16 data_historization_16-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/data_historization_16-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 data_historization_16 data_historization_16-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/data_historization_16-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 data_historization_16 data_historization_16-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/data_historization_16-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 data_historization_16 data_historization_16-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/data_historization_16-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-data-historization postgresql-16-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-16-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 data_historization_15 data_historization_15-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/data_historization_15-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 data_historization_15 data_historization_15-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/data_historization_15-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 data_historization_15 data_historization_15-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/data_historization_15-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 data_historization_15 data_historization_15-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/data_historization_15-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 data_historization_15 data_historization_15-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/data_historization_15-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 data_historization_15 data_historization_15-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/data_historization_15-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-data-historization postgresql-15-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-15-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 data_historization_14 data_historization_14-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/data_historization_14-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 data_historization_14 data_historization_14-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/data_historization_14-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 data_historization_14 data_historization_14-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/data_historization_14-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 data_historization_14 data_historization_14-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/data_historization_14-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 data_historization_14 data_historization_14-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/data_historization_14-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 data_historization_14 data_historization_14-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/data_historization_14-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-data-historization postgresql-14-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 5.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/data-historization/postgresql-14-data-historization_1.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `data_historization` using `pig build`:

```bash
pig build pkg data_historization         # build RPM / DEB packages
```


## Install

You can install `data_historization` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install data_historization;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y data_historization -v 18  # PG 18
pig ext install -y data_historization -v 17  # PG 17
pig ext install -y data_historization -v 16  # PG 16
pig ext install -y data_historization -v 15  # PG 15
pig ext install -y data_historization -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y data_historization_18       # PG 18
dnf install -y data_historization_17       # PG 17
dnf install -y data_historization_16       # PG 16
dnf install -y data_historization_15       # PG 15
dnf install -y data_historization_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-data-historization   # PG 18
apt install -y postgresql-17-data-historization   # PG 17
apt install -y postgresql-16-data-historization   # PG 16
apt install -y postgresql-15-data-historization   # PG 15
apt install -y postgresql-14-data-historization   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION data_historization CASCADE;  -- requires: plpgsql
```




## Usage

> [data_historization: Track data changes in partitioned log tables](https://github.com/rodo/postgresql-data-historization)

PL/pgSQL scripts to historize data changes into partitioned tables.

### Initialize Historization

Set up the necessary objects for a table (no data collected yet):

```sql
SELECT historize_table_init('public', 'my_table');
```

### Start Historization

Install triggers to begin collecting changes into the `_log` table:

```sql
SELECT historize_table_start('public', 'my_table');
```

### Stop Historization

Remove triggers and stop collecting changes:

```sql
SELECT historize_table_stop('public', 'my_table');
```

### Reset Historization

Remove cron entries and columns created on the source table:

```sql
SELECT historize_table_reset('public', 'my_table');
```

### Clean Historization

Remove the log table entirely:

```sql
SELECT historize_table_clean('public', 'my_table');
```

### Partition Management

Create and drop partitions manually:

```sql
SELECT historize_create_partition('public', 'my_table_log', 0);
SELECT historize_drop_partition('public', 'my_table_log', 0);
```

Automate with `pg_cron`:

```sql
SELECT cron.schedule_in_database(
    'create-partitions', '00 08 * * *',
    $$SELECT historize_create_partition('my_table', generate_series(1, 4))$$,
    'my_database'
);
```
