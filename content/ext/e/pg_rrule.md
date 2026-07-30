---
title: "pg_rrule"
linkTitle: "pg_rrule"
description: "RRULE field type for PostgreSQL"
weight: 3880
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/petropavel13/pg_rrule">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">petropavel13/pg_rrule</div>
    <div class="ext-card__desc">https://github.com/petropavel13/pg_rrule</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_rrule-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_rrule-0.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_rrule-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_rrule`**](/ext/e/pg_rrule) | `0.3.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3880  | [**`pg_rrule`**](/ext/e/pg_rrule) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgcalendar`](/ext/e/pgcalendar) [`pg_when`](/ext/e/pg_when) [`cron_utils`](/ext/e/cron_utils) [`pg_cron`](/ext/e/pg_cron) [`pg_duration`](/ext/e/pg_duration) [`pg_bikram_sambat`](/ext/e/pg_bikram_sambat) [`timestamp9`](/ext/e/timestamp9) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require libical


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_rrule` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_rrule_$v` | `libical` |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-rrule` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| d12.aarch64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| d13.x86_64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| d13.aarch64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| u22.x86_64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| u22.aarch64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| u24.x86_64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| u24.aarch64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| u26.x86_64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
| u26.aarch64 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 | AVAIL PGDG 0.3.0 1 |
@ el8.x86_64 18 pg_rrule_18 pg_rrule_18-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrule_18-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_rrule_18 pg_rrule_18-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrule_18-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_rrule_18 pg_rrule_18-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrule_18-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_rrule_18 pg_rrule_18-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrule_18-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_rrule_18 pg_rrule_18-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 18.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrule_18-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_rrule_18 pg_rrule_18-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrule_18-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb pgdg 0.3.0 23.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb pgdg 0.3.0 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb pgdg 0.3.0 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-rrule postgresql-18-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb pgdg 0.3.0 24.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-18-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_rrule_17 pg_rrule_17-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrule_17-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_rrule_17 pg_rrule_17-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrule_17-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_rrule_17 pg_rrule_17-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrule_17-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_rrule_17 pg_rrule_17-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrule_17-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_rrule_17 pg_rrule_17-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 18.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrule_17-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_rrule_17 pg_rrule_17-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrule_17-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb pgdg 0.3.0 24.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb pgdg 0.3.0 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb pgdg 0.3.0 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb pgdg 0.3.0 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-rrule postgresql-17-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb pgdg 0.3.0 24.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-17-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_rrule_16 pg_rrule_16-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrule_16-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_rrule_16 pg_rrule_16-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrule_16-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_rrule_16 pg_rrule_16-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrule_16-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_rrule_16 pg_rrule_16-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrule_16-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_rrule_16 pg_rrule_16-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 18.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrule_16-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_rrule_16 pg_rrule_16-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrule_16-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb pgdg 0.3.0 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb pgdg 0.3.0 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb pgdg 0.3.0 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-rrule postgresql-16-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb pgdg 0.3.0 24.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-16-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_rrule_15 pg_rrule_15-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 19.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrule_15-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_rrule_15 pg_rrule_15-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrule_15-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_rrule_15 pg_rrule_15-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrule_15-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_rrule_15 pg_rrule_15-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 18.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrule_15-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_rrule_15 pg_rrule_15-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrule_15-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_rrule_15 pg_rrule_15-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrule_15-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb pgdg 0.3.0 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb pgdg 0.3.0 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb pgdg 0.3.0 24.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb pgdg 0.3.0 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-rrule postgresql-15-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb pgdg 0.3.0 24.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-15-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_rrule_14 pg_rrule_14-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 19.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrule_14-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_rrule_14 pg_rrule_14-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrule_14-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_rrule_14 pg_rrule_14-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrule_14-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_rrule_14 pg_rrule_14-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 18.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrule_14-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_rrule_14 pg_rrule_14-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrule_14-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_rrule_14 pg_rrule_14-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrule_14-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb pgdg 0.3.0 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb pgdg 0.3.0 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb pgdg 0.3.0 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb pgdg 0.3.0 24.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb pgdg 0.3.0 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb pgdg 0.3.0 24.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-rrule postgresql-14-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb pgdg 0.3.0 24.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rrule/postgresql-14-pg-rrule_0.3.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_rrule` using `pig build`:

```bash
pig build pkg pg_rrule         # build RPM packages
```


## Install

You can install `pg_rrule` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_rrule;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_rrule -v 18  # PG 18
pig ext install -y pg_rrule -v 17  # PG 17
pig ext install -y pg_rrule -v 16  # PG 16
pig ext install -y pg_rrule -v 15  # PG 15
pig ext install -y pg_rrule -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_rrule_18       # PG 18
dnf install -y pg_rrule_17       # PG 17
dnf install -y pg_rrule_16       # PG 16
dnf install -y pg_rrule_15       # PG 15
dnf install -y pg_rrule_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-rrule   # PG 18
apt install -y postgresql-17-pg-rrule   # PG 17
apt install -y postgresql-16-pg-rrule   # PG 16
apt install -y postgresql-15-pg-rrule   # PG 15
apt install -y postgresql-14-pg-rrule   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_rrule;
```




## Usage

> [pg_rrule: iCalendar RRULE recurrence rule type for PostgreSQL](https://github.com/petropavel13/pg_rrule)

The `pg_rrule` extension provides an RRULE data type for parsing and expanding iCalendar recurrence rules (RFC 5545).

```sql
CREATE EXTENSION pg_rrule;
```

### Parameter Extraction

```sql
-- Get frequency
SELECT get_freq('FREQ=WEEKLY;INTERVAL=1;WKST=MO;UNTIL=20200101T045102Z'::rrule);
-- WEEKLY

-- Get days of week (numeric array)
SELECT get_byday('FREQ=WEEKLY;BYDAY=MO,TH,SU'::rrule);
-- {2,5,1}
```

### Occurrence Generation

```sql
-- Generate occurrences from an RRULE
SELECT unnest(get_occurrences(
    'FREQ=DAILY;INTERVAL=1;UNTIL=20200105T000000Z'::rrule,
    '2020-01-01 00:00:00'::timestamp
));
```

The `get_occurrences()` function expands RRULE definitions into concrete timestamp sequences, supporting both timezone-aware and naive timestamp parameters.

### Dependencies

Requires `libical` for iCalendar standard compliance.
