---
title: "pg_disorder"
linkTitle: "pg_disorder"
description: "Perturb unordered SELECT row order to expose order-dependent tests"
weight: 2880
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/viralpraxis/pg_disorder">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">viralpraxis/pg_disorder</div>
    <div class="ext-card__desc">https://github.com/viralpraxis/pg_disorder</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_disorder-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_disorder-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_disorder-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_disorder`**](/ext/e/pg_disorder) | `0.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2880  | [**`pg_disorder`**](/ext/e/pg_disorder) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plan_filter`](/ext/e/plan_filter) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_mockable`](/ext/e/pg_mockable) [`pgtap`](/ext/e/pgtap) `pg_simula` `pg_fiu` [`pg_crash`](/ext/e/pg_crash) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Headless loadable module with no control file and no CREATE EXTENSION step; intended only for test databases; load per session with session_preload_libraries and never enable globally in production.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_disorder` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_disorder_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-disorder` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pg_disorder_18 pg_disorder_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_disorder_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_disorder_18 pg_disorder_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_disorder_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_disorder_18 pg_disorder_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_disorder_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_disorder_18 pg_disorder_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_disorder_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_disorder_18 pg_disorder_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_disorder_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_disorder_18 pg_disorder_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_disorder_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 22.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 22.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 21.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 22.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-disorder postgresql-18-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 21.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-18-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_disorder_17 pg_disorder_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_disorder_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_disorder_17 pg_disorder_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_disorder_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_disorder_17 pg_disorder_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_disorder_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_disorder_17 pg_disorder_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_disorder_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_disorder_17 pg_disorder_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_disorder_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_disorder_17 pg_disorder_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_disorder_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 21.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 21.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 25.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 21.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 22.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-disorder postgresql-17-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 21.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-17-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_disorder_16 pg_disorder_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_disorder_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_disorder_16 pg_disorder_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_disorder_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_disorder_16 pg_disorder_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_disorder_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_disorder_16 pg_disorder_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_disorder_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_disorder_16 pg_disorder_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_disorder_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_disorder_16 pg_disorder_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_disorder_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 21.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 21.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 22.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-disorder postgresql-16-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 21.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-16-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_disorder_15 pg_disorder_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_disorder_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_disorder_15 pg_disorder_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_disorder_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_disorder_15 pg_disorder_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_disorder_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_disorder_15 pg_disorder_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_disorder_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_disorder_15 pg_disorder_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_disorder_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_disorder_15 pg_disorder_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_disorder_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 21.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 21.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 22.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-disorder postgresql-15-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-15-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_disorder_14 pg_disorder_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_disorder_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_disorder_14 pg_disorder_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_disorder_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_disorder_14 pg_disorder_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_disorder_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_disorder_14 pg_disorder_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_disorder_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_disorder_14 pg_disorder_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_disorder_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_disorder_14 pg_disorder_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_disorder_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 21.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 21.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 21.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 22.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-disorder postgresql-14-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 21.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-disorder/postgresql-14-pg-disorder_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_disorder` using `pig build`:

```bash
pig build pkg pg_disorder         # build RPM / DEB packages
```


## Install

You can install `pg_disorder` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_disorder;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_disorder -v 18  # PG 18
pig ext install -y pg_disorder -v 17  # PG 17
pig ext install -y pg_disorder -v 16  # PG 16
pig ext install -y pg_disorder -v 15  # PG 15
pig ext install -y pg_disorder -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_disorder_18       # PG 18
dnf install -y pg_disorder_17       # PG 17
dnf install -y pg_disorder_16       # PG 16
dnf install -y pg_disorder_15       # PG 15
dnf install -y pg_disorder_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-disorder   # PG 18
apt install -y postgresql-17-pg-disorder   # PG 17
apt install -y postgresql-16-pg-disorder   # PG 16
apt install -y postgresql-15-pg-disorder   # PG 15
apt install -y postgresql-14-pg-disorder   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_disorder';
```


## Usage

Sources:

- [pg_disorder 0.1.0 README](https://api.pgxn.org/src/pg_disorder/pg_disorder-0.1.0/README.md)
- [pg_disorder 0.1.0 metadata](https://api.pgxn.org/src/pg_disorder/pg_disorder-0.1.0/META.json)
- [pg_disorder 0.1.0 Makefile](https://api.pgxn.org/src/pg_disorder/pg_disorder-0.1.0/Makefile)

`pg_disorder` is a test-only PostgreSQL loadable module that deliberately changes the output order of eligible `SELECT` queries. It helps find applications and tests that accidentally depend on unspecified row order. It is a headless module: there is no control file, SQL install script, or `CREATE EXTENSION pg_disorder` step.

### Enable It for a Test Database

Load the module at session start so its planner hook is available:

```sql
ALTER DATABASE regression_db
  SET session_preload_libraries = 'pg_disorder';

ALTER DATABASE regression_db
  SET pg_disorder.mode = 'reverse';
```

Reconnect after changing `session_preload_libraries`. Do not add this module to a production-wide `shared_preload_libraries` setting.

### Modes

```sql
SET pg_disorder.mode = 'off';
SET pg_disorder.mode = 'reverse';
SET pg_disorder.mode = 'shuffle';
SET pg_disorder.seed = 42;
SET pg_disorder.force_serial = on;
```

- `off` leaves plans unchanged.
- `reverse` deterministically reverses eligible output.
- `shuffle` produces a deterministic permutation for a fixed session seed, submitted query text, and plan. With the default seed of zero, each session first chooses and logs a random seed.
- `force_serial` suppresses parallel plans to make disorder tests reproducible.

Always fix a failing query by adding a semantically correct `ORDER BY`; do not encode the accidental order observed under `off`.

### Eligibility and Caveats

The hook targets top-level `SELECT` statements without `ORDER BY`. It deliberately skips query shapes where reordering is unsafe or changes SQL semantics, including aggregates, grouping, `DISTINCT`, set operations, window functions, recursive queries, row locks, and queries without a `FROM` relation.

- `pg_disorder` is fault-injection tooling, not a production query feature.
- Passing a disorder run does not prove every unordered query is safe; excluded query shapes and planner paths are not rewritten.
- The package installs a server module only. Verify enablement with the GUCs or module load state, not `pg_extension`.
