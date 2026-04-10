---
title: "pgcalendar"
linkTitle: "pgcalendar"
description: "Recurring calendar, schedule, and exception management for PostgreSQL"
weight: 3890
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/h4kbas/pgcalendar">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">h4kbas/pgcalendar</div>
    <div class="ext-card__desc">https://github.com/h4kbas/pgcalendar</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgcalendar-1.1.0.zip">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgcalendar-1.1.0.zip</div>
    <div class="ext-card__desc">pgcalendar-1.1.0.zip</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgcalendar`**](/ext/e/pgcalendar) | `1.1.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3890  | [**`pgcalendar`**](/ext/e/pgcalendar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgcalendar` |
{.ext-table}

| **Related** | [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`timeseries`](/ext/e/timeseries) [`pg_cron`](/ext/e/pg_cron) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Deb/RPM recipes patch the stale upstream 1.1.0 control metadata (default_version/module_pathname).


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgcalendar` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgcalendar_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgcalendar` | - |
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
@ el8.x86_64 18 pgcalendar_18 pgcalendar_18-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcalendar_18-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pgcalendar_18 pgcalendar_18-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcalendar_18-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pgcalendar_18 pgcalendar_18-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcalendar_18-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pgcalendar_18 pgcalendar_18-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcalendar_18-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pgcalendar_18 pgcalendar_18-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcalendar_18-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pgcalendar_18 pgcalendar_18-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcalendar_18-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgcalendar postgresql-18-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-18-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgcalendar_17 pgcalendar_17-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcalendar_17-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pgcalendar_17 pgcalendar_17-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcalendar_17-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pgcalendar_17 pgcalendar_17-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcalendar_17-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pgcalendar_17 pgcalendar_17-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcalendar_17-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pgcalendar_17 pgcalendar_17-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcalendar_17-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pgcalendar_17 pgcalendar_17-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcalendar_17-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgcalendar postgresql-17-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-17-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgcalendar_16 pgcalendar_16-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcalendar_16-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pgcalendar_16 pgcalendar_16-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcalendar_16-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pgcalendar_16 pgcalendar_16-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcalendar_16-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pgcalendar_16 pgcalendar_16-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcalendar_16-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pgcalendar_16 pgcalendar_16-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcalendar_16-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pgcalendar_16 pgcalendar_16-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcalendar_16-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgcalendar postgresql-16-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-16-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgcalendar_15 pgcalendar_15-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcalendar_15-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pgcalendar_15 pgcalendar_15-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcalendar_15-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pgcalendar_15 pgcalendar_15-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcalendar_15-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pgcalendar_15 pgcalendar_15-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcalendar_15-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pgcalendar_15 pgcalendar_15-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcalendar_15-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pgcalendar_15 pgcalendar_15-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcalendar_15-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgcalendar postgresql-15-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-15-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgcalendar_14 pgcalendar_14-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcalendar_14-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 pgcalendar_14 pgcalendar_14-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcalendar_14-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 pgcalendar_14 pgcalendar_14-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcalendar_14-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 pgcalendar_14 pgcalendar_14-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcalendar_14-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 pgcalendar_14 pgcalendar_14-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcalendar_14-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 pgcalendar_14 pgcalendar_14-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcalendar_14-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 7.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgcalendar postgresql-14-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcalendar/postgresql-14-pgcalendar_1.1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgcalendar` using `pig build`:

```bash
pig build pkg pgcalendar         # build RPM / DEB packages
```


## Install

You can install `pgcalendar` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgcalendar;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgcalendar -v 18  # PG 18
pig ext install -y pgcalendar -v 17  # PG 17
pig ext install -y pgcalendar -v 16  # PG 16
pig ext install -y pgcalendar -v 15  # PG 15
pig ext install -y pgcalendar -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgcalendar_18       # PG 18
dnf install -y pgcalendar_17       # PG 17
dnf install -y pgcalendar_16       # PG 16
dnf install -y pgcalendar_15       # PG 15
dnf install -y pgcalendar_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgcalendar   # PG 18
apt install -y postgresql-17-pgcalendar   # PG 17
apt install -y postgresql-16-pgcalendar   # PG 16
apt install -y postgresql-15-pgcalendar   # PG 15
apt install -y postgresql-14-pgcalendar   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgcalendar;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION pgcalendar;
> INSERT INTO pgcalendar.events (name, description, category)
> VALUES ('Daily Standup', 'Team daily standup meeting', 'meeting');
> SELECT * FROM pgcalendar.get_event_projections(1, '2024-01-01'::date, '2024-01-07'::date);
> ```
>
> Source: [README](https://github.com/h4kbas/pgcalendar)

`pgcalendar` is a recurring calendar extension for PostgreSQL. It models events, schedules, exceptions, and projections, and generates calendar occurrences across arbitrary date ranges.

## Data Model

The README describes four main concepts:

- `events` as logical objects such as meetings or tasks
- `schedules` as non-overlapping recurrence definitions
- `exceptions` as per-occurrence cancellations or modifications
- `projections` as the actual generated calendar occurrences

## Quick Start

Create an event:

```sql
INSERT INTO pgcalendar.events (name, description, category)
VALUES ('Daily Standup', 'Team daily standup meeting', 'meeting');
```

Create a schedule:

```sql
INSERT INTO pgcalendar.schedules (
    event_id, start_date, end_date, recurrence_type, recurrence_interval
) VALUES (
    1, '2024-01-01 09:00:00', '2024-01-07 23:59:59', 'daily', 1
);
```

Get projections:

```sql
SELECT * FROM pgcalendar.get_event_projections(
    1, '2024-01-01'::date, '2024-01-07'::date
);
```

## Recurrence Types

The README shows schedule examples for:

- daily recurrence
- weekly recurrence with `recurrence_day_of_week`
- monthly recurrence with `recurrence_day_of_month`
- yearly recurrence with `recurrence_month` and `recurrence_day_of_month`

## Exceptions

Exceptions can cancel or modify a single occurrence:

```sql
INSERT INTO pgcalendar.exceptions (
    schedule_id, exception_date, exception_type, notes
) VALUES (
    1, '2024-01-15', 'cancelled', 'Holiday - meeting cancelled'
);
```

Modified occurrences can also change date and time.

## Functions and Views

The README documents:

- `get_event_projections(event_id, start_date, end_date)`
- `get_events_detailed(start_date, end_date)`
- `transition_event_schedule(...)`
- `check_schedule_overlap(event_id, start_date, end_date)`
- `pgcalendar.event_calendar`

`transition_event_schedule(...)` safely switches an event to a new schedule definition, while `check_schedule_overlap(...)` validates that new schedules do not overlap existing ones.
