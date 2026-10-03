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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_living_assertions-0.5.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_living_assertions-0.5.1.tar.gz</div>
    <div class="ext-card__desc">pg_living_assertions-0.5.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_living_assertions`**](/ext/e/pg_living_assertions) | `0.5.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
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
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_living_assertions` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_living_assertions_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-living-assertions` | - |
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

- [README.md](https://github.com/Manuelreyesbravo/pg_living_assertions/blob/7bf075c6de879b05ec0ed8d135304ece83519317/README.md)
- [pg_living_assertions.control](https://github.com/Manuelreyesbravo/pg_living_assertions/blob/7bf075c6de879b05ec0ed8d135304ece83519317/pg_living_assertions.control)
- [pg_living_assertions--0.4.1--0.5.0.sql](https://github.com/Manuelreyesbravo/pg_living_assertions/blob/7bf075c6de879b05ec0ed8d135304ece83519317/pg_living_assertions--0.4.1--0.5.0.sql)
- [pg_living_assertions--0.5.0--0.5.1.sql](https://github.com/Manuelreyesbravo/pg_living_assertions/blob/7bf075c6de879b05ec0ed8d135304ece83519317/pg_living_assertions--0.5.0--0.5.1.sql)
- [test/sql/read_only.sql](https://github.com/Manuelreyesbravo/pg_living_assertions/blob/7bf075c6de879b05ec0ed8d135304ece83519317/test/sql/read_only.sql)

`pg_living_assertions` 0.5.1 stores SQL checks, verdicts, verification times and replacement history. These are checks run on demand, not SQL ASSERTION constraints evaluated on every write. It is a pure SQL extension with no preload requirement.

### Register and Verify

```sql
CREATE EXTENSION pg_living_assertions;
SELECT living_assertions.declare(
  'simple_check', 'one equals one',
  $$SELECT 1 = 1 AS holds, 'arithmetic check'::text AS detail$$);
SELECT living_assertions.run('simple_check');
SELECT name, state, age FROM living_assertions.status;
```

### Results and History

A check must return exactly one row with boolean `holds` and optional text `detail`. `living_assertions.run_all()` evaluates registered checks. `living_assertions.state()` distinguishes holds, broken, unknown, erroring, unchecked, retired and unregistered; `living_assertions.stale()` separates never-checked assertions from old results. `living_assertions.declare_unchanged()` records an expression for later text comparison, so the author must canonicalize its output. Definitions are superseded with a reason; results and registry data are included in database dumps.

### Execution and Privileges

Since 0.5.0 the evaluator runs read-only inside a subtransaction that is always rolled back, preserving its verdict. This repairs the older STABLE-only evaluator, which did not stop side effects through volatile functions. It is not a sandbox for untrusted SQL: temporary-sequence changes, session advisory locks and external effects can survive. Only trusted administrators should register checks; they execute with the privileges of the later caller. Registry tables belong to the extension owner and write functions are revoked from `PUBLIC` by default.

### Upgrade

After installing the matching files, use `ALTER EXTENSION pg_living_assertions UPDATE TO '0.5.1'`. The 0.4.1→0.5.0→0.5.1 chain replaces evaluator functions without changing registry tables. The final patch qualifies row types in `run()` so type-cache invalidation does not resolve them under an assertion's unrelated search path.

Fresh installation also uses an earlier base SQL script followed by the packaged upgrade chain; keep the complete set of matching scripts installed.
