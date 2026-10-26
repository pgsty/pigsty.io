---
title: "pg_relusage"
linkTitle: "pg_relusage"
description: "Log all the queries that reference a particular column"
weight: 6850
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/adept/pg_relusage">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">adept/pg_relusage</div>
    <div class="ext-card__desc">https://github.com/adept/pg_relusage</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_relusage-1.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_relusage-1.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_relusage-1.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_relusage`**](/ext/e/pg_relusage) | `1.0.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6850  | [**`pg_relusage`**](/ext/e/pg_relusage) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_qualstats`](/ext/e/pg_qualstats) [`online_advisor`](/ext/e/online_advisor) [`hypopg`](/ext/e/hypopg) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`index_advisor`](/ext/e/index_advisor) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_upless`](/ext/e/pg_upless) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_track_optimizer`](/ext/e/pg_track_optimizer) [`plan_filter`](/ext/e/plan_filter) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> LOAD/preload enables logging; CREATE EXTENSION only records installation.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_relusage` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_relusage_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-relusage` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
@ el8.x86_64 18 pg_relusage_18 pg_relusage_18-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 39.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_18-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_relusage_18 pg_relusage_18-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 39.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_18-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_relusage_18 pg_relusage_18-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 39.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_18-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_relusage_18 pg_relusage_18-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 39.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_18-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_relusage_18 pg_relusage_18-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 40.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_18-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_relusage_18 pg_relusage_18-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 39.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_18-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 30.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 30.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 32.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 32.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 31.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 30.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 31.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 31.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-18-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_relusage_17 pg_relusage_17-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 39.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_17-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_relusage_17 pg_relusage_17-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 39.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_17-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_relusage_17 pg_relusage_17-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 39.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_17-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_relusage_17 pg_relusage_17-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 39.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_17-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_relusage_17 pg_relusage_17-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 40.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_17-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_relusage_17 pg_relusage_17-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 39.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_17-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 30.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 30.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 36.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 36.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 31.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 31.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 31.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-17-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_relusage_16 pg_relusage_16-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 39.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_16-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_relusage_16 pg_relusage_16-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 39.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_16-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_relusage_16 pg_relusage_16-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 39.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_16-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_relusage_16 pg_relusage_16-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 39.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_16-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_relusage_16 pg_relusage_16-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 40.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_16-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_relusage_16 pg_relusage_16-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 39.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_16-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 30.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 30.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 35.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 35.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 31.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 31.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 31.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-16-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_relusage_15 pg_relusage_15-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 39.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_15-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_relusage_15 pg_relusage_15-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 39.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_15-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_relusage_15 pg_relusage_15-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 39.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_15-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_relusage_15 pg_relusage_15-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 39.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_15-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_relusage_15 pg_relusage_15-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 39.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_15-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_relusage_15 pg_relusage_15-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 39.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_15-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 30.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 34.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 30.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 35.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 35.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 31.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 31.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 31.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-15-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_relusage_14 pg_relusage_14-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 39.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_14-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_relusage_14 pg_relusage_14-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 39.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_14-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_relusage_14 pg_relusage_14-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 39.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_14-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_relusage_14 pg_relusage_14-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 39.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_14-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_relusage_14 pg_relusage_14-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 39.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_14-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_relusage_14 pg_relusage_14-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 39.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_14-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 30.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 29.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 30.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 35.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 35.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 31.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 30.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 31.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-14-pg-relusage_1.0.2-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_relusage` using `pig build`:

```bash
pig build pkg pg_relusage         # build RPM / DEB packages
```


## Install

You can install `pg_relusage` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_relusage;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_relusage -v 18  # PG 18
pig ext install -y pg_relusage -v 17  # PG 17
pig ext install -y pg_relusage -v 16  # PG 16
pig ext install -y pg_relusage -v 15  # PG 15
pig ext install -y pg_relusage -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_relusage_18       # PG 18
dnf install -y pg_relusage_17       # PG 17
dnf install -y pg_relusage_16       # PG 16
dnf install -y pg_relusage_15       # PG 15
dnf install -y pg_relusage_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-relusage   # PG 18
apt install -y postgresql-17-pg-relusage   # PG 17
apt install -y postgresql-16-pg-relusage   # PG 16
apt install -y postgresql-15-pg-relusage   # PG 15
apt install -y postgresql-14-pg-relusage   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_relusage';
```


## Usage

Sources:

- [README.md](https://github.com/adept/pg_relusage/blob/017ca90bc08aa131d074017511ea9ed6ab89d6d3/README.md)
- [Control file](https://github.com/adept/pg_relusage/blob/017ca90bc08aa131d074017511ea9ed6ab89d6d3/pg_relusage.control)
- [Implementation](https://github.com/adept/pg_relusage/blob/017ca90bc08aa131d074017511ea9ed6ab89d6d3/pg_relusage.c)

`pg_relusage` 1.0.2 logs relations used by statements after plan simplification. It supports PostgreSQL 10–18 and defines no SQL objects. Loading the library enables it; optional CREATE EXTENSION only records installation.

### Core Workflow

```sql
LOAD 'pg_relusage';
SET pg_relusage.nested_statements = 'fold';
SET pg_relusage.log_level = 'notice';
CREATE TABLE relusage_demo (id integer);
SELECT * FROM relusage_demo;
```

### Operational Boundaries

All settings require superuser: `pg_relusage.enabled` defaults on, `pg_relusage.log_level` defaults log and `pg_relusage.rel_kinds` defaults riSvmfp. `pg_relusage.nested_statements` accepts `all` (default: each statement), `top` (ignore nested statements) or `fold` (merge nested relations into the outer log). Version 1.0.1 fixes fold handling after a failed subtransaction.

Use `session_preload_libraries` for new sessions without a restart, or `shared_preload_libraries` for all sessions with a restart; preserve existing preload entries. LOAD normally requires superuser. Log messages omit SQL text, so configure `log_line_prefix` to identify the client.

System catalogs are excluded. Relations eliminated by planning or startup pruning are excluded, but partitions skipped later during execution can still appear. INSERT into a partitioned table reports only its parent. Deferred triggers at COMMIT, COPY FROM triggers and planner-invoked functions are treated as top-level statements. DDL and maintenance commands are excluded. A quiet log alone does not prove an object can be dropped.

### 1.0.2 and Partitioned Tables

Version 1.0.2 reduces relation-membership and partition-matching overhead for statements involving many partitions. Log format and settings are unchanged. Replace the library and restart if using shared preload, or reconnect when using session preload or LOAD. If installation was recorded with CREATE EXTENSION, also run `ALTER EXTENSION pg_relusage UPDATE`.
