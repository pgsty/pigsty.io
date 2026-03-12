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
  <a class="ext-card ext-card--source" href="pg_ddl_historization-0.0.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_ddl_historization-0.0.7.tar.gz</div>
    <div class="ext-card__desc">pg_ddl_historization-0.0.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ddl_historization`**](/ext/e/ddl_historization) | `0.0.7` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4310  | [**`ddl_historization`**](/ext/e/ddl_historization) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pg_readme`](/ext/e/pg_readme) [`data_historization`](/ext/e/data_historization) [`table_version`](/ext/e/table_version) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`schedoc`](/ext/e/schedoc) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.7` | {{< pgvers "18,17,16,15,14" >}} | `ddl_historization` | `plpgsql` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.7` | {{< pgvers "18,17,16,15,14" >}} | `ddl_historization_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ddl-historization` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 | AVAIL PIGSTY 0.0.7 1 |
@ el8.x86_64 18 ddl_historization_18 ddl_historization_18-0.0.7-1PIGSTY.el8.x86_64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_18-0.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 ddl_historization_18 ddl_historization_18-0.0.7-1PIGSTY.el8.aarch64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_18-0.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 ddl_historization_18 ddl_historization_18-0.0.7-1PIGSTY.el9.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_18-0.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 ddl_historization_18 ddl_historization_18-0.0.7-1PIGSTY.el9.aarch64.rpm pigsty 0.0.7 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_18-0.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 ddl_historization_18 ddl_historization_18-0.0.7-1PIGSTY.el10.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_18-0.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 ddl_historization_18 ddl_historization_18-0.0.7-1PIGSTY.el10.aarch64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_18-0.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-ddl-historization postgresql-18-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-18-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 ddl_historization_17 ddl_historization_17-0.0.7-1PIGSTY.el8.x86_64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_17-0.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 ddl_historization_17 ddl_historization_17-0.0.7-1PIGSTY.el8.aarch64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_17-0.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 ddl_historization_17 ddl_historization_17-0.0.7-1PIGSTY.el9.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_17-0.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 ddl_historization_17 ddl_historization_17-0.0.7-1PIGSTY.el9.aarch64.rpm pigsty 0.0.7 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_17-0.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 ddl_historization_17 ddl_historization_17-0.0.7-1PIGSTY.el10.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_17-0.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 ddl_historization_17 ddl_historization_17-0.0.7-1PIGSTY.el10.aarch64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_17-0.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-ddl-historization postgresql-17-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-17-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 ddl_historization_16 ddl_historization_16-0.0.7-1PIGSTY.el8.x86_64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_16-0.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 ddl_historization_16 ddl_historization_16-0.0.7-1PIGSTY.el8.aarch64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_16-0.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 ddl_historization_16 ddl_historization_16-0.0.7-1PIGSTY.el9.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_16-0.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 ddl_historization_16 ddl_historization_16-0.0.7-1PIGSTY.el9.aarch64.rpm pigsty 0.0.7 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_16-0.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 ddl_historization_16 ddl_historization_16-0.0.7-1PIGSTY.el10.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_16-0.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 ddl_historization_16 ddl_historization_16-0.0.7-1PIGSTY.el10.aarch64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_16-0.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-ddl-historization postgresql-16-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-16-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 ddl_historization_15 ddl_historization_15-0.0.7-1PIGSTY.el8.x86_64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_15-0.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 ddl_historization_15 ddl_historization_15-0.0.7-1PIGSTY.el8.aarch64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_15-0.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 ddl_historization_15 ddl_historization_15-0.0.7-1PIGSTY.el9.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_15-0.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 ddl_historization_15 ddl_historization_15-0.0.7-1PIGSTY.el9.aarch64.rpm pigsty 0.0.7 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_15-0.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 ddl_historization_15 ddl_historization_15-0.0.7-1PIGSTY.el10.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_15-0.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 ddl_historization_15 ddl_historization_15-0.0.7-1PIGSTY.el10.aarch64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_15-0.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-ddl-historization postgresql-15-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-15-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 ddl_historization_14 ddl_historization_14-0.0.7-1PIGSTY.el8.x86_64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddl_historization_14-0.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 ddl_historization_14 ddl_historization_14-0.0.7-1PIGSTY.el8.aarch64.rpm pigsty 0.0.7 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddl_historization_14-0.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 ddl_historization_14 ddl_historization_14-0.0.7-1PIGSTY.el9.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddl_historization_14-0.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 ddl_historization_14 ddl_historization_14-0.0.7-1PIGSTY.el9.aarch64.rpm pigsty 0.0.7 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddl_historization_14-0.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 ddl_historization_14 ddl_historization_14-0.0.7-1PIGSTY.el10.x86_64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddl_historization_14-0.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 ddl_historization_14 ddl_historization_14-0.0.7-1PIGSTY.el10.aarch64.rpm pigsty 0.0.7 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddl_historization_14-0.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb pigsty 0.0.7 3.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-ddl-historization postgresql-14-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb pigsty 0.0.7 2.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddl-historization/postgresql-14-ddl-historization_0.0.7-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install ddl_historization;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y ddl_historization -v 18  # PG 18
pig ext install -y ddl_historization -v 17  # PG 17
pig ext install -y ddl_historization -v 16  # PG 16
pig ext install -y ddl_historization -v 15  # PG 15
pig ext install -y ddl_historization -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y ddl_historization_18       # PG 18
dnf install -y ddl_historization_17       # PG 17
dnf install -y ddl_historization_16       # PG 16
dnf install -y ddl_historization_15       # PG 15
dnf install -y ddl_historization_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-ddl-historization   # PG 18
apt install -y postgresql-17-ddl-historization   # PG 17
apt install -y postgresql-16-ddl-historization   # PG 16
apt install -y postgresql-15-ddl-historization   # PG 15
apt install -y postgresql-14-ddl-historization   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION ddl_historization CASCADE;  -- requires: plpgsql
```




## Usage

> [ddl_historization: Track all DDL changes in a PostgreSQL database](https://github.com/rodo/pg_ddl_historization)

Records all DDL changes (CREATE, ALTER, DROP, etc.) made on a database into a historization table for auditing and tracking purposes.

### Setup

```sql
CREATE EXTENSION ddl_historization;
```

The extension installs event triggers that automatically capture DDL statements and store them in the historization table.

### Querying DDL History

After installation, all DDL changes are logged automatically. Query the history table to see what changes have been made:

```sql
SELECT * FROM ddl_history ORDER BY ddl_date DESC;
```

### Integration with pg_tle

For AWS RDS environments, the extension can be deployed via `pg_tle`:

```sql
-- Build the pg_tle deployment file
-- $ make pgtle
-- Then execute pgtle.ddl_historization-0.3.sql on your instance
```

### Notes

- DDL statements are captured via PostgreSQL event triggers
- Works with `CREATE`, `ALTER`, `DROP`, and other DDL commands
- Used as a dependency by the `schedoc` extension for schema documentation
