---
title: "pg_statkit"
linkTitle: "pg_statkit"
description: "Descriptive statistics and clinical effect-size functions over arrays"
weight: 4690
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/kirdmi/pg_statkit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">kirdmi/pg_statkit</div>
    <div class="ext-card__desc">https://github.com/kirdmi/pg_statkit</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_statkit-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_statkit-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_statkit-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_statkit`**](/ext/e/pg_statkit) | `1.1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4690  | [**`pg_statkit`**](/ext/e/pg_statkit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`weighted_statistics`](/ext/e/weighted_statistics) [`quantile`](/ext/e/quantile) [`pg_math`](/ext/e/pg_math) [`xicor`](/ext/e/xicor) [`plr`](/ext/e/plr) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release Cargo/CI support PostgreSQL 13-17 with pgrx 0.18.1; no PG18 feature. This is statistical computation, not server monitoring.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "17,16,15,14" >}} | `pg_statkit` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "17,16,15,14" >}} | `pg_statkit_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "17,16,15,14" >}} | `postgresql-$v-pg-statkit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
@ el8.x86_64 17 pg_statkit_17 pg_statkit_17-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 196.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statkit_17-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_statkit_17 pg_statkit_17-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 175.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statkit_17-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_statkit_17 pg_statkit_17-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 200.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statkit_17-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_statkit_17 pg_statkit_17-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 188.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statkit_17-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_statkit_17 pg_statkit_17-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 200.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statkit_17-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_statkit_17 pg_statkit_17-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 189.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statkit_17-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 164.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 143.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 163.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 143.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 177.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 166.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 174.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 166.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 174.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-statkit postgresql-17-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 165.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-17-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_statkit_16 pg_statkit_16-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 196.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statkit_16-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_statkit_16 pg_statkit_16-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 175.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statkit_16-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_statkit_16 pg_statkit_16-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 200.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statkit_16-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_statkit_16 pg_statkit_16-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 189.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statkit_16-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_statkit_16 pg_statkit_16-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 200.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statkit_16-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_statkit_16 pg_statkit_16-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 189.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statkit_16-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 164.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 144.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 164.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 144.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 177.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 166.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 174.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 166.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 174.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-statkit postgresql-16-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 165.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-16-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_statkit_15 pg_statkit_15-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 196.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statkit_15-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_statkit_15 pg_statkit_15-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 175.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statkit_15-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_statkit_15 pg_statkit_15-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 200.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statkit_15-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_statkit_15 pg_statkit_15-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 188.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statkit_15-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_statkit_15 pg_statkit_15-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 200.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statkit_15-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_statkit_15 pg_statkit_15-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 189.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statkit_15-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 164.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 143.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 164.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 144.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 177.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 166.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 174.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 166.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 174.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-statkit postgresql-15-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 165.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-15-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_statkit_14 pg_statkit_14-1.1.0-1PGSTY.el8.x86_64.rpm pigsty 1.1.0 196.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statkit_14-1.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_statkit_14 pg_statkit_14-1.1.0-1PGSTY.el8.aarch64.rpm pigsty 1.1.0 175.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statkit_14-1.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_statkit_14 pg_statkit_14-1.1.0-1PGSTY.el9.x86_64.rpm pigsty 1.1.0 200.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statkit_14-1.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_statkit_14 pg_statkit_14-1.1.0-1PGSTY.el9.aarch64.rpm pigsty 1.1.0 189.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statkit_14-1.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_statkit_14 pg_statkit_14-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 200.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statkit_14-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_statkit_14 pg_statkit_14-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 189.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statkit_14-1.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 166.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 146.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 166.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 146.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 180.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 168.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 176.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 168.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 176.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-statkit postgresql-14-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 167.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statkit/postgresql-14-pg-statkit_1.1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_statkit` using `pig build`:

```bash
pig build pkg pg_statkit         # build RPM / DEB packages
```


## Install

You can install `pg_statkit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_statkit;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_statkit -v 17  # PG 17
pig ext install -y pg_statkit -v 16  # PG 16
pig ext install -y pg_statkit -v 15  # PG 15
pig ext install -y pg_statkit -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_statkit_17       # PG 17
dnf install -y pg_statkit_16       # PG 16
dnf install -y pg_statkit_15       # PG 15
dnf install -y pg_statkit_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-17-pg-statkit   # PG 17
apt install -y postgresql-16-pg-statkit   # PG 16
apt install -y postgresql-15-pg-statkit   # PG 15
apt install -y postgresql-14-pg-statkit   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_statkit;
```

## Usage

Sources:

- [Official README](https://github.com/kirdmi/pg_statkit/blob/v1.1.0/README.md)
- [Extension control file](https://github.com/kirdmi/pg_statkit/blob/v1.1.0/pg_statkit.control)
- [pgrx manifest](https://github.com/kirdmi/pg_statkit/blob/v1.1.0/Cargo.toml)

`pg_statkit` provides descriptive statistics and clinical effect-size functions over PostgreSQL arrays without exporting source data to a separate analysis process.

### Enablement

Release 1.1.0 builds and tests PostgreSQL 13–17 with pgrx 0.18.1. Install the matching native artifact, then create the non-relocatable, untrusted extension as a superuser:

```sql
CREATE EXTENSION pg_statkit;
```

It does not require preloading or a restart.

### Descriptive Statistics

Functions accept `double precision[]`; explicitly cast array literals because decimal literals otherwise form `numeric[]`.

```sql
SELECT statkit_mean('{1,2,3,4,5}'::float8[]);
SELECT statkit_median('{1,2,3,4,5}'::float8[]);
SELECT statkit_iqr('{1,2,3,4,5}'::float8[]);
SELECT statkit_percentile('{1,2,3,4,5}'::float8[], 40);

SELECT patient_id,
       statkit_median(array_agg(value::float8)) AS median_value
FROM measurements
GROUP BY patient_id;
```

The surface also includes variance, population/sample standard deviation, MAD, coefficient of variation, and standard error.

### Effect Sizes and Interpretation

`statkit_risk_difference`, `statkit_risk_ratio`, and `statkit_odds_ratio` accept a 2×2 table as four `bigint` counts. `statkit_cohens_d`, `statkit_hedges_g`, and `statkit_glass_delta` accept two samples.

```sql
SELECT statkit_odds_ratio(a => 8, b => 2, c => 2, d => 8);

SELECT statkit_cohens_d(
  array_agg(value::float8) FILTER (WHERE arm = 'treatment'),
  array_agg(value::float8) FILTER (WHERE arm = 'control')
)
FROM trial;
```

The odds-ratio function applies a 0.5 correction when any cell is zero. Undefined inputs return `NULL`. Version 1.1.0 does not provide confidence intervals, hypothesis tests, or assumption checks; use a full statistical package when those are required for research conclusions.
