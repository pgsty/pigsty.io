---
title: "pg_projection"
linkTitle: "pg_projection"
description: "MongoDB-like read projections for JSONB in PostgreSQL"
weight: 9090
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/suissa/pg_projection">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">suissa/pg_projection</div>
    <div class="ext-card__desc">https://github.com/suissa/pg_projection</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_projection-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_projection-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_projection-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_projection`**](/ext/e/pg_projection) | `1.0.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9090  | [**`pg_projection`**](/ext/e/pg_projection) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pgjq`](/ext/e/pgjq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> SQL-only extension.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_projection` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_projection_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-projection` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pg_projection_18 pg_projection_18-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_projection_18-1.0.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_projection_18 pg_projection_18-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_projection_18-1.0.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_projection_18 pg_projection_18-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_projection_18-1.0.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_projection_18 pg_projection_18-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_projection_18-1.0.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_projection_18 pg_projection_18-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_projection_18-1.0.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_projection_18 pg_projection_18-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_projection_18-1.0.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-projection postgresql-18-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-18-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pg_projection_17 pg_projection_17-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_projection_17-1.0.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_projection_17 pg_projection_17-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_projection_17-1.0.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_projection_17 pg_projection_17-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_projection_17-1.0.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_projection_17 pg_projection_17-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_projection_17-1.0.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_projection_17 pg_projection_17-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_projection_17-1.0.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_projection_17 pg_projection_17-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_projection_17-1.0.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-projection postgresql-17-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-17-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pg_projection_16 pg_projection_16-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_projection_16-1.0.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_projection_16 pg_projection_16-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_projection_16-1.0.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_projection_16 pg_projection_16-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_projection_16-1.0.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_projection_16 pg_projection_16-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_projection_16-1.0.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_projection_16 pg_projection_16-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_projection_16-1.0.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_projection_16 pg_projection_16-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_projection_16-1.0.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-projection postgresql-16-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-16-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pg_projection_15 pg_projection_15-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_projection_15-1.0.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_projection_15 pg_projection_15-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_projection_15-1.0.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_projection_15 pg_projection_15-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_projection_15-1.0.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_projection_15 pg_projection_15-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_projection_15-1.0.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_projection_15 pg_projection_15-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_projection_15-1.0.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_projection_15 pg_projection_15-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_projection_15-1.0.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-projection postgresql-15-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-15-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pg_projection_14 pg_projection_14-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_projection_14-1.0.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_projection_14 pg_projection_14-1.0.0-1PIGSTY.el8.noarch.rpm pigsty 1.0.0 9.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_projection_14-1.0.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_projection_14 pg_projection_14-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_projection_14-1.0.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_projection_14 pg_projection_14-1.0.0-1PIGSTY.el9.noarch.rpm pigsty 1.0.0 9.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_projection_14-1.0.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_projection_14 pg_projection_14-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_projection_14-1.0.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_projection_14 pg_projection_14-1.0.0-1PIGSTY.el10.noarch.rpm pigsty 1.0.0 10.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_projection_14-1.0.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~trixie_all.deb pigsty 1.0.0 3.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~jammy_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~noble_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-projection postgresql-14-pg-projection_1.0.0-1PIGSTY~resolute_all.deb pigsty 1.0.0 3.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-projection/postgresql-14-pg-projection_1.0.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_projection` using `pig build`:

```bash
pig build pkg pg_projection         # build RPM / DEB packages
```


## Install

You can install `pg_projection` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_projection;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_projection -v 18  # PG 18
pig ext install -y pg_projection -v 17  # PG 17
pig ext install -y pg_projection -v 16  # PG 16
pig ext install -y pg_projection -v 15  # PG 15
pig ext install -y pg_projection -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_projection_18       # PG 18
dnf install -y pg_projection_17       # PG 17
dnf install -y pg_projection_16       # PG 16
dnf install -y pg_projection_15       # PG 15
dnf install -y pg_projection_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-projection   # PG 18
apt install -y postgresql-17-pg-projection   # PG 17
apt install -y postgresql-16-pg-projection   # PG 16
apt install -y postgresql-15-pg-projection   # PG 15
apt install -y postgresql-14-pg-projection   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_projection;
```




## Usage

Sources: [pg_projection README](https://github.com/suissa/pg_projection), [SQL definitions](https://github.com/suissa/pg_projection/blob/main/pg_projection--1.0.sql), [control file](https://github.com/suissa/pg_projection/blob/main/pg_projection.control).

`pg_projection` provides MongoDB-style read projections for PostgreSQL `jsonb`. The 1.0 SQL file defines two functions: `pg_project(jsonb, jsonb)` for one JSON document and `pg_project_set(text, jsonb)` for a query result converted to a JSON array.

### Project One JSONB Value

Projection values are numeric flags: `1` includes a field and `0` excludes a field.

```sql
CREATE EXTENSION pg_projection;

SELECT pg_project(
  '{"_id": 7, "name": "Ada", "email": "ada@example.test", "secret": "x"}'::jsonb,
  '{"name": 1, "email": 1}'::jsonb
);
-- {"_id": 7, "name": "Ada", "email": "ada@example.test"}
```

In inclusion mode, `_id` is included by default when present. Exclude it explicitly when the caller wants only the selected fields:

```sql
SELECT pg_project(
  '{"_id": 7, "name": "Ada", "email": "ada@example.test"}'::jsonb,
  '{"_id": 0, "name": 1}'::jsonb
);
-- {"name": "Ada"}
```

### Exclude Fields

When the projection uses `0`, the function starts from the original document and removes matching top-level keys:

```sql
SELECT pg_project(
  '{"name": "Ada", "internal_id": "a-1", "secret_key": "k"}'::jsonb,
  '{"internal_id": 0, "secret_key": 0}'::jsonb
);
-- {"name": "Ada"}
```

### Project A Query Result

`pg_project_set(query_text, projection_json)` executes the supplied SQL text, converts each row with `to_jsonb(t)`, applies `pg_project`, and returns a JSON array:

```sql
SELECT pg_project_set(
  'SELECT id, username, password_hash FROM users WHERE active',
  '{"password_hash": 0}'::jsonb
);
```

Because `query_text` is dynamic SQL, pass only trusted query strings assembled by application or migration code you control. Do not concatenate untrusted user input into this argument.

### Caveats

- The SQL implementation projects top-level keys; it does not implement nested MongoDB path projection.
- Projection values are cast to integers internally, so use numeric `0` and `1` flags.
- `pg_project(jsonb, jsonb)` is declared `IMMUTABLE STRICT`; `pg_project_set(text, jsonb)` is declared `STABLE`.
