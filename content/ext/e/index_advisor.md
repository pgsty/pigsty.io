---
title: "index_advisor"
linkTitle: "index_advisor"
description: "Query index advisor"
weight: 2800
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supabase/index_advisor">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supabase/index_advisor</div>
    <div class="ext-card__desc">https://github.com/supabase/index_advisor</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/index_advisor-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">index_advisor-0.2.0.tar.gz</div>
    <div class="ext-card__desc">index_advisor-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`index_advisor`**](/ext/e/index_advisor) | `0.2.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2800  | [**`index_advisor`**](/ext/e/index_advisor) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`hypopg`](/ext/e/hypopg) [`hypopg`](/ext/e/hypopg) [`online_advisor`](/ext/e/online_advisor) [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`plan_filter`](/ext/e/plan_filter) [`pg_track_optimizer`](/ext/e/pg_track_optimizer) [`pg_strom`](/ext/e/pg_strom) [`pg_orca`](/ext/e/pg_orca) [`pg_relusage`](/ext/e/pg_relusage) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream 0.2.1; pkg 0.2.0; planner estimates only.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `index_advisor` | `hypopg` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `index_advisor_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-index-advisor` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
@ el8.x86_64 18 index_advisor_18 index_advisor_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/index_advisor_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 index_advisor_18 index_advisor_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/index_advisor_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 index_advisor_18 index_advisor_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/index_advisor_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 index_advisor_18 index_advisor_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/index_advisor_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 index_advisor_18 index_advisor_18-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/index_advisor_18-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 index_advisor_18 index_advisor_18-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/index_advisor_18-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-index-advisor postgresql-18-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-18-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 index_advisor_17 index_advisor_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/index_advisor_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 index_advisor_17 index_advisor_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/index_advisor_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 index_advisor_17 index_advisor_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/index_advisor_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 index_advisor_17 index_advisor_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/index_advisor_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 index_advisor_17 index_advisor_17-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/index_advisor_17-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 index_advisor_17 index_advisor_17-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/index_advisor_17-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-index-advisor postgresql-17-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-17-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 index_advisor_16 index_advisor_16-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/index_advisor_16-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 index_advisor_16 index_advisor_16-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/index_advisor_16-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 index_advisor_16 index_advisor_16-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/index_advisor_16-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 index_advisor_16 index_advisor_16-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/index_advisor_16-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 index_advisor_16 index_advisor_16-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/index_advisor_16-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 index_advisor_16 index_advisor_16-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/index_advisor_16-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-index-advisor postgresql-16-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-16-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 index_advisor_15 index_advisor_15-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/index_advisor_15-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 index_advisor_15 index_advisor_15-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/index_advisor_15-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 index_advisor_15 index_advisor_15-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/index_advisor_15-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 index_advisor_15 index_advisor_15-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/index_advisor_15-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 index_advisor_15 index_advisor_15-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/index_advisor_15-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 index_advisor_15 index_advisor_15-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/index_advisor_15-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-index-advisor postgresql-15-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-15-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 index_advisor_14 index_advisor_14-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/index_advisor_14-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 index_advisor_14 index_advisor_14-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/index_advisor_14-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 index_advisor_14 index_advisor_14-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/index_advisor_14-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 index_advisor_14 index_advisor_14-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/index_advisor_14-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 index_advisor_14 index_advisor_14-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/index_advisor_14-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 index_advisor_14 index_advisor_14-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/index_advisor_14-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-index-advisor postgresql-14-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 5.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/index-advisor/postgresql-14-index-advisor_0.2.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `index_advisor` using `pig build`:

```bash
pig build pkg index_advisor         # build RPM / DEB packages
```


## Install

You can install `index_advisor` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install index_advisor;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y index_advisor -v 18  # PG 18
pig ext install -y index_advisor -v 17  # PG 17
pig ext install -y index_advisor -v 16  # PG 16
pig ext install -y index_advisor -v 15  # PG 15
pig ext install -y index_advisor -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y index_advisor_18       # PG 18
dnf install -y index_advisor_17       # PG 17
dnf install -y index_advisor_16       # PG 16
dnf install -y index_advisor_15       # PG 15
dnf install -y index_advisor_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-index-advisor   # PG 18
apt install -y postgresql-17-index-advisor   # PG 17
apt install -y postgresql-16-index-advisor   # PG 16
apt install -y postgresql-15-index-advisor   # PG 15
apt install -y postgresql-14-index-advisor   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION index_advisor CASCADE;  -- requires: hypopg
```

## Usage

Sources:

- [Official source](https://github.com/supabase/index_advisor/blob/b41d1f5f42f8909091edd6752d1f5006d6535db3/README.md)
- [Official source](https://github.com/supabase/index_advisor/blob/b41d1f5f42f8909091edd6752d1f5006d6535db3/index_advisor.control)
- [Official source](https://github.com/supabase/index_advisor/blob/b41d1f5f42f8909091edd6752d1f5006d6535db3/index_advisor--0.2.0--0.2.1.sql)

`index_advisor` 0.2.1 uses HypoPG to compare planner costs with hypothetical indexes. It returns recommendations, not measured execution-time guarantees, and does not create the recommended physical indexes.

### Core Workflow

Install the required `hypopg` extension first, with the privileges its installation requires. This SQL extension needs no preload or restart.

```sql
CREATE EXTENSION hypopg;
CREATE EXTENSION index_advisor;
CREATE TABLE book (id bigint PRIMARY KEY, title text NOT NULL);
SELECT * FROM index_advisor('SELECT id FROM book WHERE title = $1');
```

`index_advisor(query text)` accepts a parameterized query and returns before/after startup and total cost values, `index_statements` and `errors`. Inspect the suggested DDL and real workload before creating an index. View and materialized-view support depends on what the advisor can resolve to underlying tables.

### 0.2.1 Corrections and Limits

Version 0.2.1 fixes qualification of HypoPG calls when HypoPG uses another schema, non-greedy removal of comments, and cleanup of the advisor's own prepared statement. Update installed databases with `ALTER EXTENSION index_advisor UPDATE TO '0.2.1'` after installing the new SQL files.

Run analysis with deliberate table permissions and representative statistics. Planning cost does not account for every operational cost: additional indexes consume disk and slow writes, and should be validated against production query shapes before deployment.
