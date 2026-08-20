---
title: "online_advisor"
linkTitle: "online_advisor"
description: "Suggest missing indexes and extended statistics online"
weight: 5270
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/knizhnik/online_advisor">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">knizhnik/online_advisor</div>
    <div class="ext-card__desc">https://github.com/knizhnik/online_advisor</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/online_advisor-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">online_advisor-1.0.tar.gz</div>
    <div class="ext-card__desc">online_advisor-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`online_advisor`**](/ext/e/online_advisor) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5270  | [**`online_advisor`**](/ext/e/online_advisor) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_qualstats`](/ext/e/pg_qualstats) [`hypopg`](/ext/e/hypopg) [`index_advisor`](/ext/e/index_advisor) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`plan_filter`](/ext/e/plan_filter) [`pg_relusage`](/ext/e/pg_relusage) [`pg_track_optimizer`](/ext/e/pg_track_optimizer) [`pg_strom`](/ext/e/pg_strom) [`pg_orca`](/ext/e/pg_orca) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires shared_preload_libraries=online_advisor on PostgreSQL 14-16; PGSTY backports upstream PG18 hook compatibility.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `online_advisor` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `online_advisor_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-online-advisor` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 online_advisor_18 online_advisor_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/online_advisor_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 online_advisor_18 online_advisor_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/online_advisor_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 online_advisor_18 online_advisor_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 21.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/online_advisor_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 online_advisor_18 online_advisor_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/online_advisor_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 online_advisor_18 online_advisor_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/online_advisor_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 online_advisor_18 online_advisor_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 22.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/online_advisor_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 30.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 29.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 32.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 30.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-online-advisor postgresql-18-online-advisor_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-18-online-advisor_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 online_advisor_17 online_advisor_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/online_advisor_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 online_advisor_17 online_advisor_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/online_advisor_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 online_advisor_17 online_advisor_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 21.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/online_advisor_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 online_advisor_17 online_advisor_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/online_advisor_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 online_advisor_17 online_advisor_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/online_advisor_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 online_advisor_17 online_advisor_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 22.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/online_advisor_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 29.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 38.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 30.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-online-advisor postgresql-17-online-advisor_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-17-online-advisor_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 online_advisor_16 online_advisor_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/online_advisor_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 online_advisor_16 online_advisor_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/online_advisor_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 online_advisor_16 online_advisor_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/online_advisor_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 online_advisor_16 online_advisor_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 21.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/online_advisor_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 online_advisor_16 online_advisor_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/online_advisor_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 online_advisor_16 online_advisor_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 22.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/online_advisor_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 30.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 30.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 38.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 37.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-online-advisor postgresql-16-online-advisor_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 30.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-16-online-advisor_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 online_advisor_15 online_advisor_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/online_advisor_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 online_advisor_15 online_advisor_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/online_advisor_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 online_advisor_15 online_advisor_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/online_advisor_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 online_advisor_15 online_advisor_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 21.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/online_advisor_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 online_advisor_15 online_advisor_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/online_advisor_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 online_advisor_15 online_advisor_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 22.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/online_advisor_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 30.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-online-advisor postgresql-15-online-advisor_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 30.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-15-online-advisor_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 online_advisor_14 online_advisor_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/online_advisor_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 online_advisor_14 online_advisor_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 21.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/online_advisor_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 online_advisor_14 online_advisor_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/online_advisor_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 online_advisor_14 online_advisor_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 21.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/online_advisor_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 online_advisor_14 online_advisor_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/online_advisor_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 online_advisor_14 online_advisor_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 22.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/online_advisor_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 30.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 29.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 29.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 37.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 37.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 31.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-online-advisor postgresql-14-online-advisor_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/online-advisor/postgresql-14-online-advisor_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `online_advisor` using `pig build`:

```bash
pig build pkg online_advisor         # build RPM / DEB packages
```


## Install

You can install `online_advisor` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install online_advisor;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y online_advisor -v 18  # PG 18
pig ext install -y online_advisor -v 17  # PG 17
pig ext install -y online_advisor -v 16  # PG 16
pig ext install -y online_advisor -v 15  # PG 15
pig ext install -y online_advisor -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y online_advisor_18       # PG 18
dnf install -y online_advisor_17       # PG 17
dnf install -y online_advisor_16       # PG 16
dnf install -y online_advisor_15       # PG 15
dnf install -y online_advisor_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-online-advisor   # PG 18
apt install -y postgresql-17-online-advisor   # PG 17
apt install -y postgresql-16-online-advisor   # PG 16
apt install -y postgresql-15-online-advisor   # PG 15
apt install -y postgresql-14-online-advisor   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'online_advisor';
```


**Create Extension**:

```sql
CREATE EXTENSION online_advisor;
```

## Usage

Sources:

- [Official README for version 1.0](https://github.com/knizhnik/online_advisor/blob/1.0/README.md)
- [Extension control file](https://github.com/knizhnik/online_advisor/blob/1.0/online_advisor.control)
- [Version 1.0 SQL objects](https://github.com/knizhnik/online_advisor/blob/1.0/online_advisor--1.0.sql)
- [Sample preload configuration](https://github.com/knizhnik/online_advisor/blob/1.0/online_advisor.conf)

`online_advisor` observes PostgreSQL execution plans and workload timing, then recommends indexes, extended statistics, or prepared statements. It reports candidates only; it never creates an index or statistics object automatically.

### Core Workflow

Preload the library and restart PostgreSQL:

```conf
shared_preload_libraries = 'online_advisor'
```

Create and activate the extension in each database whose workload should be observed:

```sql
CREATE EXTENSION online_advisor;

-- Calling an extension function activates collection in this database.
SELECT get_executor_stats();
```

After representative workload has run, inspect the recommendations:

```sql
SELECT * FROM proposed_indexes;
SELECT * FROM proposed_statistics;
SELECT * FROM get_executor_stats();

-- Keep separate index candidates instead of combining compatible clauses.
SELECT * FROM propose_indexes(combine => false);
```

Review each generated `create_index` or `create_statistics` statement before applying it. Run `ANALYZE` after creating an index or statistics object so the planner can use current statistics.

### Objects and Settings

- `proposed_indexes`: view over `propose_indexes(combine, reset)` with filtering volume, call count, elapsed time, and a candidate `CREATE INDEX` statement.
- `proposed_statistics`: view over `propose_statistics(combine, reset)` with misestimation, call count, elapsed time, and a candidate `CREATE STATISTICS` statement.
- `get_executor_stats(reset)`: returns aggregate planning and execution time, query count, and planning-overhead ratios.
- `online_advisor.filtered_threshold`: minimum filtered-row count considered for an index proposal; default `1000`.
- `online_advisor.misestimation_threshold`: actual-to-estimated row ratio considered for statistics; default `10`.
- `online_advisor.min_rows`: minimum returned rows for misestimation analysis; default `1000`.
- `online_advisor.max_index_proposals` and `online_advisor.max_stat_proposals`: proposal capacities; set them before the extension is activated.
- `online_advisor.do_instrumentation`, `online_advisor.log_duration`, and `online_advisor.prepare_threshold`: control collection and prepared-statement advice.

### Caveats

- Instrumentation adds workload overhead; measure it on the target system and disable collection when it is not needed.
- The index heuristic does not reason about operator ordering in compound indexes, join indexes, or indexes used only to avoid sorting.
- The extension does not estimate the benefit of a proposed index. Use plan review or a hypothetical-index tool before building expensive indexes.
- Advice is database-local and depends on the workload observed since activation or reset.
