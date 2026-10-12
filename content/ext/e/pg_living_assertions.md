---
title: "pg_living_assertions"
linkTitle: "pg_living_assertions"
description: "Executable SQL checks with verdict dates and assertion history"
weight: 5300
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Manuelreyesbravo/pg_living_assertions">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Manuelreyesbravo/pg_living_assertions</div>
    <div class="ext-card__desc">https://github.com/Manuelreyesbravo/pg_living_assertions</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_living_assertions-0.5.10.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_living_assertions-0.5.10.tar.gz</div>
    <div class="ext-card__desc">pg_living_assertions-0.5.10.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_living_assertions`**](/ext/e/pg_living_assertions) | `0.5.10` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5300  | [**`pg_living_assertions`**](/ext/e/pg_living_assertions) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `living_assertions` |
{.ext-table}

| **Related** |  |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_grammar_guard`](/ext/e/pg_grammar_guard) |
{.ext-table .ext-table--rel}


> On-demand SQL checks run in a read-only subtransaction that is always rolled back; not per-write SQL ASSERTION constraints.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.10` | {{< pgvers "18,17,16,15,14" >}} | `pg_living_assertions` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.10` | {{< pgvers "18,17,16,15,14" >}} | `pg_living_assertions_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.10` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-living-assertions` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
@ el8.x86_64 18 pg_living_assertions_18 pg_living_assertions_18-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_living_assertions_18-0.5.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_living_assertions_18 pg_living_assertions_18-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_living_assertions_18-0.5.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_living_assertions_18 pg_living_assertions_18-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_living_assertions_18-0.5.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_living_assertions_18 pg_living_assertions_18-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_living_assertions_18-0.5.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_living_assertions_18 pg_living_assertions_18-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_living_assertions_18-0.5.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_living_assertions_18 pg_living_assertions_18-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_living_assertions_18-0.5.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-living-assertions postgresql-18-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-18-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pg_living_assertions_17 pg_living_assertions_17-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_living_assertions_17-0.5.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_living_assertions_17 pg_living_assertions_17-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_living_assertions_17-0.5.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_living_assertions_17 pg_living_assertions_17-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_living_assertions_17-0.5.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_living_assertions_17 pg_living_assertions_17-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_living_assertions_17-0.5.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_living_assertions_17 pg_living_assertions_17-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_living_assertions_17-0.5.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_living_assertions_17 pg_living_assertions_17-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_living_assertions_17-0.5.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-living-assertions postgresql-17-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-17-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pg_living_assertions_16 pg_living_assertions_16-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_living_assertions_16-0.5.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_living_assertions_16 pg_living_assertions_16-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_living_assertions_16-0.5.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_living_assertions_16 pg_living_assertions_16-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_living_assertions_16-0.5.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_living_assertions_16 pg_living_assertions_16-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_living_assertions_16-0.5.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_living_assertions_16 pg_living_assertions_16-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_living_assertions_16-0.5.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_living_assertions_16 pg_living_assertions_16-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_living_assertions_16-0.5.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-living-assertions postgresql-16-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-16-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ el8.x86_64 15 pg_living_assertions_15 pg_living_assertions_15-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_living_assertions_15-0.5.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_living_assertions_15 pg_living_assertions_15-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_living_assertions_15-0.5.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_living_assertions_15 pg_living_assertions_15-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_living_assertions_15-0.5.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_living_assertions_15 pg_living_assertions_15-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_living_assertions_15-0.5.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_living_assertions_15 pg_living_assertions_15-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_living_assertions_15-0.5.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_living_assertions_15 pg_living_assertions_15-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_living_assertions_15-0.5.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-living-assertions postgresql-15-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-15-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ el8.x86_64 14 pg_living_assertions_14 pg_living_assertions_14-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_living_assertions_14-0.5.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_living_assertions_14 pg_living_assertions_14-0.5.1-1PGSTY.el8.noarch.rpm pigsty 0.5.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_living_assertions_14-0.5.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_living_assertions_14 pg_living_assertions_14-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_living_assertions_14-0.5.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_living_assertions_14 pg_living_assertions_14-0.5.1-1PGSTY.el9.noarch.rpm pigsty 0.5.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_living_assertions_14-0.5.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_living_assertions_14 pg_living_assertions_14-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_living_assertions_14-0.5.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_living_assertions_14 pg_living_assertions_14-0.5.1-1PGSTY.el10.noarch.rpm pigsty 0.5.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_living_assertions_14-0.5.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb pigsty 0.5.1 23.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb pigsty 0.5.1 24.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-living-assertions postgresql-14-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb pigsty 0.5.1 23.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-living-assertions/postgresql-14-pg-living-assertions_0.5.1-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_living_assertions` using `pig build`:

```bash
pig build pkg pg_living_assertions         # build RPM / DEB packages
```


## Install

You can install `pg_living_assertions` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_living_assertions;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_living_assertions -v 18  # PG 18
pig ext install -y pg_living_assertions -v 17  # PG 17
pig ext install -y pg_living_assertions -v 16  # PG 16
pig ext install -y pg_living_assertions -v 15  # PG 15
pig ext install -y pg_living_assertions -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_living_assertions_18       # PG 18
dnf install -y pg_living_assertions_17       # PG 17
dnf install -y pg_living_assertions_16       # PG 16
dnf install -y pg_living_assertions_15       # PG 15
dnf install -y pg_living_assertions_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-living-assertions   # PG 18
apt install -y postgresql-17-pg-living-assertions   # PG 17
apt install -y postgresql-16-pg-living-assertions   # PG 16
apt install -y postgresql-15-pg-living-assertions   # PG 15
apt install -y postgresql-14-pg-living-assertions   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_living_assertions;
```

## Usage

Sources:

- [README.md](https://api.pgxn.org/src/pg_living_assertions/pg_living_assertions-0.5.10/README.md)
- [pg_living_assertions.control](https://api.pgxn.org/src/pg_living_assertions/pg_living_assertions-0.5.10/pg_living_assertions.control)
- [CHANGELOG.md](https://api.pgxn.org/src/pg_living_assertions/pg_living_assertions-0.5.10/CHANGELOG.md)
- [pg_living_assertions--0.5.9--0.5.10.sql](https://api.pgxn.org/src/pg_living_assertions/pg_living_assertions-0.5.10/pg_living_assertions--0.5.9--0.5.10.sql)

`pg_living_assertions` 0.5.10 stores named SQL assertions, results and replacement history. Checks run on demand; they are not constraints evaluated on every write. This pure SQL extension needs no preload.

### Core Workflow

```sql
CREATE EXTENSION pg_living_assertions;
SELECT living_assertions.declare(
  'simple_check', 'one equals one',
  $$SELECT 1 = 1 AS holds, 'arithmetic check'::text AS detail$$);
SELECT living_assertions.run('simple_check');
SELECT name, state, age FROM living_assertions.status;
```

### Operational Boundaries

A check returns one boolean `holds` and optional text `detail`. `living_assertions.run_all()` evaluates the registry; `living_assertions.state()`, `living_assertions.status` and `living_assertions.stale()` distinguish failures, unknown/erroring results and stale or absent checks. `living_assertions.declare_unchanged()` fingerprints a canonicalized expression; a value disappearing to NULL is broken. Checks run as their recorded author in a read-only, rolled-back subtransaction with the author search path and temporary schemas last. The caller must be allowed to `SET ROLE` to that author. Session advisory locks acquired during evaluation are released, but external effects and temporary-sequence changes are not a sandboxed resource. Only trusted authors should register SQL. Registration and checks are server-dated, tables reject TRUNCATE, and retirement/replacement is restricted to the author or an authorized role. Upgrade through the complete matching SQL chain; old assertions retain their existing fingerprint algorithm. Current releases use Apache-2.0; releases through 0.5.3 retain their original PostgreSQL License.

### Role Isolation in 0.5.10

Version 0.5.10 evaluates a check in a temporary `SECURITY DEFINER` function owned by its recorded author when role isolation is needed. PostgreSQL then refuses attempts to reset the role or session authorization inside that frame; the frame is created and rolled back with the read-only check. The author needs `TEMP` on the database when a frame is required, and the caller still needs authority to act as that author. A `SECURITY DEFINER` caller can now run another author's checks under that authority. This closes the role-reset escape in 0.5.8/0.5.9; it does not make external effects safe.
