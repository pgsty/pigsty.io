---
title: "ddl_historization"
linkTitle: "ddl_historization"
description: "Historize the ddl changes inside PostgreSQL database"
weight: 4310
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rodo/pg_ddl_historization">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rodo/pg_ddl_historization</div>
    <div class="ext-card__desc">https://github.com/rodo/pg_ddl_historization</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_ddl_historization-0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_ddl_historization-0.2.tar.gz</div>
    <div class="ext-card__desc">pg_ddl_historization-0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ddl_historization`**](/ext/e/ddl_historization) | `0.2` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4310  | [**`ddl_historization`**](/ext/e/ddl_historization) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pgmemento`](/ext/e/pgmemento) [`table_log`](/ext/e/table_log) [`data_historization`](/ext/e/data_historization) [`table_version`](/ext/e/table_version) [`pgaudit`](/ext/e/pgaudit) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`provsql`](/ext/e/provsql) [`pgmnemo`](/ext/e/pgmnemo) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`schedoc`](/ext/e/schedoc) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18,17,16,15,14" >}} | `ddl_historization` | `plpgsql` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18,17,16,15,14" >}} | `ddl_historization_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ddl-historization` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
@ el8.x86_64 18 ddl_historization_18 ddl_historization_18-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_18-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 ddl_historization_18 ddl_historization_18-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_18-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 ddl_historization_18 ddl_historization_18-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_18-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 ddl_historization_18 ddl_historization_18-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_18-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 ddl_historization_18 ddl_historization_18-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_18-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 ddl_historization_18 ddl_historization_18-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_18-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 ddl_historization_17 ddl_historization_17-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_17-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 ddl_historization_17 ddl_historization_17-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_17-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 ddl_historization_17 ddl_historization_17-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_17-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 ddl_historization_17 ddl_historization_17-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_17-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 ddl_historization_17 ddl_historization_17-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_17-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 ddl_historization_17 ddl_historization_17-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_17-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 ddl_historization_16 ddl_historization_16-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_16-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 ddl_historization_16 ddl_historization_16-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_16-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 ddl_historization_16 ddl_historization_16-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_16-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 ddl_historization_16 ddl_historization_16-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_16-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 ddl_historization_16 ddl_historization_16-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_16-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 ddl_historization_16 ddl_historization_16-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_16-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 ddl_historization_15 ddl_historization_15-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_15-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 ddl_historization_15 ddl_historization_15-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_15-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 ddl_historization_15 ddl_historization_15-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_15-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 ddl_historization_15 ddl_historization_15-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_15-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 ddl_historization_15 ddl_historization_15-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_15-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 ddl_historization_15 ddl_historization_15-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_15-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 ddl_historization_14 ddl_historization_14-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_14-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 ddl_historization_14 ddl_historization_14-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_14-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 ddl_historization_14 ddl_historization_14-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_14-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 ddl_historization_14 ddl_historization_14-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 15.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_14-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 ddl_historization_14 ddl_historization_14-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_14-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 ddl_historization_14 ddl_historization_14-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 15.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_14-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 2.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb pigsty 0.2 2.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `ddl_historization` using `pig build`:

```bash
pig build pkg ddl_historization         # build RPM / DEB packages
```


## Install

You can install `ddl_historization` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install ddl_historization;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y ddl_historization -v 18  # PG 18
pig ext install -y ddl_historization -v 17  # PG 17
pig ext install -y ddl_historization -v 16  # PG 16
pig ext install -y ddl_historization -v 15  # PG 15
pig ext install -y ddl_historization -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y ddl_historization_18       # PG 18
dnf install -y ddl_historization_17       # PG 17
dnf install -y ddl_historization_16       # PG 16
dnf install -y ddl_historization_15       # PG 15
dnf install -y ddl_historization_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-ddl-historization   # PG 18
apt install -y postgresql-17-ddl-historization   # PG 17
apt install -y postgresql-16-ddl-historization   # PG 16
apt install -y postgresql-15-ddl-historization   # PG 15
apt install -y postgresql-14-ddl-historization   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION ddl_historization CASCADE;  -- requires: plpgsql
```




## Usage

Sources: [README](https://github.com/rodo/pg_ddl_historization/blob/master/README.md), [releases](https://github.com/rodo/pg_ddl_historization/releases)

`ddl_historization` is a PostgreSQL extension that records database DDL changes in a historization table. The upstream README documents installation via `make install`, `pgxn install ddl_historization`, and an AWS RDS path via `pg_tle`.

### Enable logging

```sql
CREATE EXTENSION ddl_historization;
```

The README describes the extension as using PostgreSQL event triggers to historize DDL changes made in the database.

### What upstream currently documents

- Cluster-local install: `make install`
- PGXN install: `pgxn install ddl_historization`
- AWS RDS / `pg_tle`: build `pgtle.ddl_historization-0.3.sql` with `make pgtle`
- Test suite: `make test` with pgTAP

### Release notes worth knowing

- Release `0.2` is the version requested by this refresh task.
- Release `0.0.4` says it added functions to start and stop logging.
- Release `0.0.6` says it added a `ddl_history_column` table.
- Release `0.0.7` says it fixed a foreign-key related logging bug.

### Caveat

The current upstream README is minimal and does not document the exact SQL signatures for the start/stop logging functions or the schema of the historization tables added in later releases. Keep this stub conservative unless the upstream README or release notes become more explicit.
