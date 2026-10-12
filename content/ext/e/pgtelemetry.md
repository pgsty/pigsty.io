---
title: "pgtelemetry"
linkTitle: "pgtelemetry"
description: "SQL monitoring views for database activity, WAL, replication, and storage"
weight: 6080
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/adjust/pg-telemetry">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">adjust/pg-telemetry</div>
    <div class="ext-card__desc">https://github.com/adjust/pg-telemetry</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgtelemetry-1.7-cac3d192a119.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgtelemetry-1.7-cac3d192a119.tar.gz</div>
    <div class="ext-card__desc">pgtelemetry-1.7-cac3d192a119.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgtelemetry`**](/ext/e/pgtelemetry) | `1.7` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6080  | [**`pgtelemetry`**](/ext/e/pgtelemetry) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgtelemetry` |
{.ext-table}

| **Related** | [`pg_stat_statements`](/ext/e/pg_stat_statements) [`plpgsql`](/ext/e/plpgsql) [`pgmonitor`](/ext/e/pgmonitor) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_profile`](/ext/e/pg_profile) [`powa`](/ext/e/powa) [`pgexporter_ext`](/ext/e/pgexporter_ext) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Pure SQL in the fixed pgtelemetry schema; requires pg_stat_statements and plpgsql. Preload pg_stat_statements, not pgtelemetry. Control/SQL are 1.7 while META.json still says 1.6.0; upstream CI stops at PG17, and PG14-18 are verified in PGSTY builds.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `pgtelemetry` | `pg_stat_statements`, `plpgsql` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `pgtelemetry_$v` | `postgresql$v-contrib` |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgtelemetry` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| el8.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| el9.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| el9.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| el10.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| el10.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| d12.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| d12.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| d13.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| d13.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u22.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u22.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u24.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u24.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u26.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u26.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
@ el8.x86_64 18 pgtelemetry_18 pgtelemetry_18-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgtelemetry_18-1.7-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pgtelemetry_18 pgtelemetry_18-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgtelemetry_18-1.7-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 pgtelemetry_18 pgtelemetry_18-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgtelemetry_18-1.7-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pgtelemetry_18 pgtelemetry_18-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgtelemetry_18-1.7-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pgtelemetry_18 pgtelemetry_18-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgtelemetry_18-1.7-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pgtelemetry_18 pgtelemetry_18-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgtelemetry_18-1.7-1PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pgtelemetry postgresql-18-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-18-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pgtelemetry_17 pgtelemetry_17-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgtelemetry_17-1.7-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pgtelemetry_17 pgtelemetry_17-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgtelemetry_17-1.7-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 pgtelemetry_17 pgtelemetry_17-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgtelemetry_17-1.7-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pgtelemetry_17 pgtelemetry_17-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgtelemetry_17-1.7-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pgtelemetry_17 pgtelemetry_17-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgtelemetry_17-1.7-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pgtelemetry_17 pgtelemetry_17-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgtelemetry_17-1.7-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pgtelemetry postgresql-17-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-17-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pgtelemetry_16 pgtelemetry_16-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgtelemetry_16-1.7-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pgtelemetry_16 pgtelemetry_16-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgtelemetry_16-1.7-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 pgtelemetry_16 pgtelemetry_16-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgtelemetry_16-1.7-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pgtelemetry_16 pgtelemetry_16-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgtelemetry_16-1.7-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pgtelemetry_16 pgtelemetry_16-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgtelemetry_16-1.7-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pgtelemetry_16 pgtelemetry_16-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgtelemetry_16-1.7-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pgtelemetry postgresql-16-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-16-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ el8.x86_64 15 pgtelemetry_15 pgtelemetry_15-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgtelemetry_15-1.7-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pgtelemetry_15 pgtelemetry_15-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgtelemetry_15-1.7-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 pgtelemetry_15 pgtelemetry_15-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgtelemetry_15-1.7-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pgtelemetry_15 pgtelemetry_15-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgtelemetry_15-1.7-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 pgtelemetry_15 pgtelemetry_15-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgtelemetry_15-1.7-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pgtelemetry_15 pgtelemetry_15-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgtelemetry_15-1.7-1PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 9.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pgtelemetry postgresql-15-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 9.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-15-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ el8.x86_64 14 pgtelemetry_14 pgtelemetry_14-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgtelemetry_14-1.7-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 pgtelemetry_14 pgtelemetry_14-1.7-1PGSTY.el8.noarch.rpm pigsty 1.7 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgtelemetry_14-1.7-1PGSTY.el8.noarch.rpm
@ el9.x86_64 14 pgtelemetry_14 pgtelemetry_14-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgtelemetry_14-1.7-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 pgtelemetry_14 pgtelemetry_14-1.7-1PGSTY.el9.noarch.rpm pigsty 1.7 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgtelemetry_14-1.7-1PGSTY.el9.noarch.rpm
@ el10.x86_64 14 pgtelemetry_14 pgtelemetry_14-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgtelemetry_14-1.7-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 pgtelemetry_14 pgtelemetry_14-1.7-1PGSTY.el10.noarch.rpm pigsty 1.7 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgtelemetry_14-1.7-1PGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 11.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~bookworm_all.deb pigsty 1.7 11.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 11.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~trixie_all.deb pigsty 1.7 11.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~jammy_all.deb pigsty 1.7 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 10.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~noble_all.deb pigsty 1.7 10.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 10.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pgtelemetry postgresql-14-pgtelemetry_1.7-1PGSTY~resolute_all.deb pigsty 1.7 10.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtelemetry/postgresql-14-pgtelemetry_1.7-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgtelemetry` using `pig build`:

```bash
pig build pkg pgtelemetry         # build RPM / DEB packages
```


## Install

You can install `pgtelemetry` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgtelemetry;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgtelemetry -v 18  # PG 18
pig ext install -y pgtelemetry -v 17  # PG 17
pig ext install -y pgtelemetry -v 16  # PG 16
pig ext install -y pgtelemetry -v 15  # PG 15
pig ext install -y pgtelemetry -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgtelemetry_18       # PG 18
dnf install -y pgtelemetry_17       # PG 17
dnf install -y pgtelemetry_16       # PG 16
dnf install -y pgtelemetry_15       # PG 15
dnf install -y pgtelemetry_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgtelemetry   # PG 18
apt install -y postgresql-17-pgtelemetry   # PG 17
apt install -y postgresql-16-pgtelemetry   # PG 16
apt install -y postgresql-15-pgtelemetry   # PG 15
apt install -y postgresql-14-pgtelemetry   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgtelemetry CASCADE;  -- requires: pg_stat_statements, plpgsql
```

## Usage

Sources:

- [Upstream README](https://github.com/adjust/pg-telemetry/blob/cac3d192a119f25dc1964b13624e49b5a5a6a27c/README.md)
- [Extension control file](https://github.com/adjust/pg-telemetry/blob/cac3d192a119f25dc1964b13624e49b5a5a6a27c/pgtelemetry.control)
- [Version 1.7 SQL](https://github.com/adjust/pg-telemetry/blob/cac3d192a119f25dc1964b13624e49b5a5a6a27c/extension/pgtelemetry--1.7.sql)
- [Generated object documentation](https://github.com/adjust/pg-telemetry/blob/cac3d192a119f25dc1964b13624e49b5a5a6a27c/doc/pgtelemetry.html)

`pgtelemetry` version `1.7` is a pure-SQL monitoring bundle. Views and functions summarize relation/database/tablespace size, connections and waits, locks, table access and autovacuum, `pg_stat_statements` timing and buffers, WAL rate, replication slots, and standby lag.

### Example

Preload and install `pg_stat_statements` first, then install this extension in its fixed `pgtelemetry` schema:

```sql
CREATE EXTENSION pg_stat_statements;
CREATE EXTENSION pgtelemetry;
SELECT * FROM pgtelemetry.database_size;
SELECT * FROM pgtelemetry.connections_by_state;
SELECT * FROM pgtelemetry.longest_running_active_queries LIMIT 10;
```

Installation is superuser-only. Several objects expose cluster-wide query text, client addresses, sizes, locks, replication state, and other operational metadata; `wal_telemetry()` also maintains a history table. Grant only the specific views/functions a monitoring role needs, protect exported metrics, set retention for WAL samples, and account for polling cost and PostgreSQL-version changes in statistics catalogs.
