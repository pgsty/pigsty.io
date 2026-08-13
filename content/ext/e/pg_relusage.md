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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_relusage-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_relusage-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_relusage-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_relusage`**](/ext/e/pg_relusage) | `0.0.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6850  | [**`pg_relusage`**](/ext/e/pg_relusage) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_qualstats`](/ext/e/pg_qualstats) [`online_advisor`](/ext/e/online_advisor) [`hypopg`](/ext/e/hypopg) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`index_advisor`](/ext/e/index_advisor) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_upless`](/ext/e/pg_upless) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_track_optimizer`](/ext/e/pg_track_optimizer) [`plan_filter`](/ext/e/plan_filter) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_relusage` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_relusage_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-relusage` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_relusage_18 pg_relusage_18-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_18-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_relusage_18 pg_relusage_18-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_18-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_relusage_18 pg_relusage_18-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_18-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_relusage_18 pg_relusage_18-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_18-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_relusage_18 pg_relusage_18-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_18-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_relusage_18 pg_relusage_18-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_18-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-relusage postgresql-18-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-18-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_relusage_17 pg_relusage_17-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_17-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_relusage_17 pg_relusage_17-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_17-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_relusage_17 pg_relusage_17-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_17-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_relusage_17 pg_relusage_17-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_17-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_relusage_17 pg_relusage_17-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_17-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_relusage_17 pg_relusage_17-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_17-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-relusage postgresql-17-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-17-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_relusage_16 pg_relusage_16-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_16-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_relusage_16 pg_relusage_16-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_16-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_relusage_16 pg_relusage_16-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_16-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_relusage_16 pg_relusage_16-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_16-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_relusage_16 pg_relusage_16-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_16-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_relusage_16 pg_relusage_16-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_16-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-relusage postgresql-16-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-16-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_relusage_15 pg_relusage_15-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_15-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_relusage_15 pg_relusage_15-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_15-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_relusage_15 pg_relusage_15-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_15-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_relusage_15 pg_relusage_15-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_15-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_relusage_15 pg_relusage_15-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_15-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_relusage_15 pg_relusage_15-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_15-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-relusage postgresql-15-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-15-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_relusage_14 pg_relusage_14-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relusage_14-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_relusage_14 pg_relusage_14-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relusage_14-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_relusage_14 pg_relusage_14-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relusage_14-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_relusage_14 pg_relusage_14-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relusage_14-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_relusage_14 pg_relusage_14-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relusage_14-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_relusage_14 pg_relusage_14-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relusage_14-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-relusage postgresql-14-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relusage/postgresql-14-pg-relusage_0.0.1-1PIGSTY~resolute_arm64.deb
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

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_relusage;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_relusage -v 18  # PG 18
pig ext install -y pg_relusage -v 17  # PG 17
pig ext install -y pg_relusage -v 16  # PG 16
pig ext install -y pg_relusage -v 15  # PG 15
pig ext install -y pg_relusage -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_relusage_18       # PG 18
dnf install -y pg_relusage_17       # PG 17
dnf install -y pg_relusage_16       # PG 16
dnf install -y pg_relusage_15       # PG 15
dnf install -y pg_relusage_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-relusage   # PG 18
apt install -y postgresql-17-pg-relusage   # PG 17
apt install -y postgresql-16-pg-relusage   # PG 16
apt install -y postgresql-15-pg-relusage   # PG 15
apt install -y postgresql-14-pg-relusage   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_relusage';
```





## Usage

> [pg_relusage: log relations actually used by SQL statements](https://github.com/adept/pg_relusage)

pg_relusage hooks into the query executor and logs which relations (tables, views, indexes, etc.) are actually used by each SQL statement. Unlike the statement log, it reports relations after view expansion and unused join elimination.

### How It Works

Once loaded, each SQL statement emits a log message listing all referenced relations:

```sql
SELECT * FROM pg_stats LIMIT 1;
```

Produces log output:
```
relations used: pg_stats,pg_statistic,pg_class,pg_attribute,pg_namespace
```

### Loading

```sql
-- Per-session
LOAD 'pg_relusage';

-- Or globally in postgresql.conf
shared_preload_libraries = 'pg_relusage'
```

### Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_relusage.log_level` | `LOG` | Log level for relation messages |
| `pg_relusage.rel_kinds` | `'riSvmfp'` | Relation kinds to report (one-letter codes from `pg_class.relkind`) |

Relation kind codes: `r` = table, `i` = index, `S` = sequence, `v` = view, `m` = materialized view, `f` = foreign table, `p` = partitioned table.

### Use Case

This extension is useful for discovering unused objects in legacy databases. By analyzing the logged relation usage over time, you can identify which tables, views, and indexes are actually accessed by your application.
