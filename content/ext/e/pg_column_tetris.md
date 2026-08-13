---
title: "pg_column_tetris"
linkTitle: "pg_column_tetris"
description: "Enforce optimal column alignment to minimize row padding"
weight: 5280
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rogerwelin/pg_column_tetris">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rogerwelin/pg_column_tetris</div>
    <div class="ext-card__desc">https://github.com/rogerwelin/pg_column_tetris</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_column_tetris-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_column_tetris-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_column_tetris-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_column_tetris`**](/ext/e/pg_column_tetris) | `0.1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5280  | [**`pg_column_tetris`**](/ext/e/pg_column_tetris) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `column_tetris` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pg_repack`](/ext/e/pg_repack) [`pgstattuple`](/ext/e/pgstattuple) [`pg_squeeze`](/ext/e/pg_squeeze) [`pg_rewrite`](/ext/e/pg_rewrite) [`pg_dirtyread`](/ext/e/pg_dirtyread) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream has no release or tag; source archive is normalized from commit e70f9867c63e932cdaf87b2d34b6504adad9ce12.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_column_tetris` | `plpgsql` |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_column_tetris_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-column-tetris` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pg_column_tetris_18 pg_column_tetris_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_column_tetris_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_column_tetris_18 pg_column_tetris_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_column_tetris_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_column_tetris_18 pg_column_tetris_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_column_tetris_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_column_tetris_18 pg_column_tetris_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_column_tetris_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_column_tetris_18 pg_column_tetris_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_column_tetris_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_column_tetris_18 pg_column_tetris_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_column_tetris_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-column-tetris postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-18-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pg_column_tetris_17 pg_column_tetris_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_column_tetris_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_column_tetris_17 pg_column_tetris_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_column_tetris_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_column_tetris_17 pg_column_tetris_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_column_tetris_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_column_tetris_17 pg_column_tetris_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_column_tetris_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_column_tetris_17 pg_column_tetris_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_column_tetris_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_column_tetris_17 pg_column_tetris_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_column_tetris_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-column-tetris postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-17-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pg_column_tetris_16 pg_column_tetris_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_column_tetris_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_column_tetris_16 pg_column_tetris_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_column_tetris_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_column_tetris_16 pg_column_tetris_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_column_tetris_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_column_tetris_16 pg_column_tetris_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_column_tetris_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_column_tetris_16 pg_column_tetris_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_column_tetris_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_column_tetris_16 pg_column_tetris_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_column_tetris_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-column-tetris postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-16-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pg_column_tetris_15 pg_column_tetris_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_column_tetris_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_column_tetris_15 pg_column_tetris_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_column_tetris_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_column_tetris_15 pg_column_tetris_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_column_tetris_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_column_tetris_15 pg_column_tetris_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_column_tetris_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_column_tetris_15 pg_column_tetris_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_column_tetris_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_column_tetris_15 pg_column_tetris_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_column_tetris_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-column-tetris postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-15-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pg_column_tetris_14 pg_column_tetris_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_column_tetris_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_column_tetris_14 pg_column_tetris_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_column_tetris_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_column_tetris_14 pg_column_tetris_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_column_tetris_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_column_tetris_14 pg_column_tetris_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_column_tetris_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_column_tetris_14 pg_column_tetris_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_column_tetris_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_column_tetris_14 pg_column_tetris_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_column_tetris_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 9.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-column-tetris postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 9.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-column-tetris/postgresql-14-pg-column-tetris_0.1.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_column_tetris` using `pig build`:

```bash
pig build pkg pg_column_tetris         # build RPM / DEB packages
```


## Install

You can install `pg_column_tetris` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_column_tetris;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_column_tetris -v 18  # PG 18
pig ext install -y pg_column_tetris -v 17  # PG 17
pig ext install -y pg_column_tetris -v 16  # PG 16
pig ext install -y pg_column_tetris -v 15  # PG 15
pig ext install -y pg_column_tetris -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_column_tetris_18       # PG 18
dnf install -y pg_column_tetris_17       # PG 17
dnf install -y pg_column_tetris_16       # PG 16
dnf install -y pg_column_tetris_15       # PG 15
dnf install -y pg_column_tetris_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-column-tetris   # PG 18
apt install -y postgresql-17-pg-column-tetris   # PG 17
apt install -y postgresql-16-pg-column-tetris   # PG 16
apt install -y postgresql-15-pg-column-tetris   # PG 15
apt install -y postgresql-14-pg-column-tetris   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_column_tetris CASCADE;  -- requires: plpgsql
```

## Usage

Sources:

- [Project README](https://github.com/rogerwelin/pg_column_tetris/blob/e70f9867c63e932cdaf87b2d34b6504adad9ce12/README.md)
- [Extension control file](https://github.com/rogerwelin/pg_column_tetris/blob/e70f9867c63e932cdaf87b2d34b6504adad9ce12/pg_column_tetris.control)
- [Version 0.1.0 SQL implementation](https://github.com/rogerwelin/pg_column_tetris/blob/e70f9867c63e932cdaf87b2d34b6504adad9ce12/pg_column_tetris--0.1.0.sql)

`pg_column_tetris` 0.1.0 is a pure-SQL extension for PostgreSQL 14 through 18. An event trigger estimates alignment padding after `CREATE TABLE` and can warn about or reject inefficient column order. It also provides inspection and rewrite-suggestion functions.

### Inspect and choose enforcement

The default mode is `warn`; `strict` rejects a newly created table that the estimator considers suboptimal, and `off` disables the event-trigger check.

```sql
CREATE EXTENSION pg_column_tetris;

SELECT column_tetris.mode();
SELECT * FROM column_tetris.check('public.measurement'::regclass);
SELECT column_tetris.padding_wasted('public.measurement'::regclass);

SELECT column_tetris.set_mode('warn');
```

Use `column_tetris.exclude()` for tables that must not be checked. Temporary and system tables are skipped, and the event trigger checks table creation rather than every later alteration.

### Treat estimates and rewrites as advisory

The estimator models tuple headers and type alignment, but it cannot fully predict real storage for null bitmaps, variable-length or toasted values, compression, and workload-specific row populations. A reported byte saving is therefore a design signal, not measured disk reclamation.

`column_tetris.suggest_rewrite()` returns a migration script; it does not preserve every foreign key, index, trigger, or default. The generated sequence renames the original table, creates and copies a replacement, and drops the old table, which can require an exclusive lock and downtime. Never execute that output without reviewing dependent objects, privileges, identity and sequence behavior, replication, rollback, and a realistic staging rehearsal. Column order can also be part of application contracts such as positional inserts and row decoding.
