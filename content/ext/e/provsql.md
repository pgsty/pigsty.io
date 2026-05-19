---
title: "provsql"
linkTitle: "provsql"
description: "Semiring provenance and uncertainty management for PostgreSQL"
weight: 2900
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/PierreSenellart/provsql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">PierreSenellart/provsql</div>
    <div class="ext-card__desc">https://github.com/PierreSenellart/provsql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/provsql-1.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">provsql-1.4.0.tar.gz</div>
    <div class="ext-card__desc">provsql-1.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`provsql`**](/ext/e/provsql) | `1.4.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2900  | [**`provsql`**](/ext/e/provsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`uuid-ossp`](/ext/e/uuid-ossp) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.0` | {{< pgvers "18,17,16,15,14" >}} | `provsql` | `uuid-ossp` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.0` | {{< pgvers "18,17,16,15,14" >}} | `provsql_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-provsql` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 | AVAIL PIGSTY 1.4.0 1 |
@ el8.x86_64 18 provsql_18 provsql_18-1.4.0-1PIGSTY.el8.x86_64.rpm pigsty 1.4.0 368.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_18-1.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 provsql_18 provsql_18-1.4.0-1PIGSTY.el8.aarch64.rpm pigsty 1.4.0 340.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_18-1.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 provsql_18 provsql_18-1.4.0-1PIGSTY.el9.x86_64.rpm pigsty 1.4.0 381.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_18-1.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 provsql_18 provsql_18-1.4.0-1PIGSTY.el9.aarch64.rpm pigsty 1.4.0 365.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_18-1.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 provsql_18 provsql_18-1.4.0-1PIGSTY.el10.x86_64.rpm pigsty 1.4.0 392.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_18-1.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 provsql_18 provsql_18-1.4.0-1PIGSTY.el10.aarch64.rpm pigsty 1.4.0 361.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_18-1.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 330.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 292.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 359.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 314.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 342.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 322.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 354.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 336.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~resolute_amd64.deb pigsty 1.4.0 365.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.4.0-1PIGSTY~resolute_arm64.deb pigsty 1.4.0 341.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-18-provsql_1.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 provsql_17 provsql_17-1.4.0-1PIGSTY.el8.x86_64.rpm pigsty 1.4.0 368.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_17-1.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 provsql_17 provsql_17-1.4.0-1PIGSTY.el8.aarch64.rpm pigsty 1.4.0 340.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_17-1.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 provsql_17 provsql_17-1.4.0-1PIGSTY.el9.x86_64.rpm pigsty 1.4.0 380.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_17-1.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 provsql_17 provsql_17-1.4.0-1PIGSTY.el9.aarch64.rpm pigsty 1.4.0 365.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_17-1.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 provsql_17 provsql_17-1.4.0-1PIGSTY.el10.x86_64.rpm pigsty 1.4.0 391.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_17-1.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 provsql_17 provsql_17-1.4.0-1PIGSTY.el10.aarch64.rpm pigsty 1.4.0 361.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_17-1.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 330.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 291.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 358.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 314.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 340.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 321.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 357.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 336.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~resolute_amd64.deb pigsty 1.4.0 365.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.4.0-1PIGSTY~resolute_arm64.deb pigsty 1.4.0 341.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-17-provsql_1.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 provsql_16 provsql_16-1.4.0-1PIGSTY.el8.x86_64.rpm pigsty 1.4.0 368.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_16-1.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 provsql_16 provsql_16-1.4.0-1PIGSTY.el8.aarch64.rpm pigsty 1.4.0 340.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_16-1.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 provsql_16 provsql_16-1.4.0-1PIGSTY.el9.x86_64.rpm pigsty 1.4.0 380.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_16-1.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 provsql_16 provsql_16-1.4.0-1PIGSTY.el9.aarch64.rpm pigsty 1.4.0 365.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_16-1.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 provsql_16 provsql_16-1.4.0-1PIGSTY.el10.x86_64.rpm pigsty 1.4.0 392.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_16-1.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 provsql_16 provsql_16-1.4.0-1PIGSTY.el10.aarch64.rpm pigsty 1.4.0 361.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_16-1.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 330.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 292.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 358.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 314.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 341.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 322.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 354.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 336.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~resolute_amd64.deb pigsty 1.4.0 365.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.4.0-1PIGSTY~resolute_arm64.deb pigsty 1.4.0 341.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-16-provsql_1.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 provsql_15 provsql_15-1.4.0-1PIGSTY.el8.x86_64.rpm pigsty 1.4.0 399.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_15-1.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 provsql_15 provsql_15-1.4.0-1PIGSTY.el8.aarch64.rpm pigsty 1.4.0 371.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_15-1.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 provsql_15 provsql_15-1.4.0-1PIGSTY.el9.x86_64.rpm pigsty 1.4.0 409.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_15-1.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 provsql_15 provsql_15-1.4.0-1PIGSTY.el9.aarch64.rpm pigsty 1.4.0 394.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_15-1.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 provsql_15 provsql_15-1.4.0-1PIGSTY.el10.x86_64.rpm pigsty 1.4.0 416.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_15-1.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 provsql_15 provsql_15-1.4.0-1PIGSTY.el10.aarch64.rpm pigsty 1.4.0 386.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_15-1.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 366.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 328.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 391.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 347.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 379.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 363.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 391.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 372.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~resolute_amd64.deb pigsty 1.4.0 400.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.4.0-1PIGSTY~resolute_arm64.deb pigsty 1.4.0 377.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-15-provsql_1.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 provsql_14 provsql_14-1.4.0-1PIGSTY.el8.x86_64.rpm pigsty 1.4.0 398.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_14-1.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 provsql_14 provsql_14-1.4.0-1PIGSTY.el8.aarch64.rpm pigsty 1.4.0 371.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_14-1.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 provsql_14 provsql_14-1.4.0-1PIGSTY.el9.x86_64.rpm pigsty 1.4.0 409.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_14-1.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 provsql_14 provsql_14-1.4.0-1PIGSTY.el9.aarch64.rpm pigsty 1.4.0 394.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_14-1.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 provsql_14 provsql_14-1.4.0-1PIGSTY.el10.x86_64.rpm pigsty 1.4.0 416.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_14-1.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 provsql_14 provsql_14-1.4.0-1PIGSTY.el10.aarch64.rpm pigsty 1.4.0 385.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_14-1.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 365.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 327.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 392.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 348.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 379.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 364.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 391.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 372.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~resolute_amd64.deb pigsty 1.4.0 400.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.4.0-1PIGSTY~resolute_arm64.deb pigsty 1.4.0 377.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-14-provsql_1.4.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `provsql` using `pig build`:

```bash
pig build pkg provsql         # build RPM / DEB packages
```


## Install

You can install `provsql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install provsql;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y provsql -v 18  # PG 18
pig ext install -y provsql -v 17  # PG 17
pig ext install -y provsql -v 16  # PG 16
pig ext install -y provsql -v 15  # PG 15
pig ext install -y provsql -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y provsql_18       # PG 18
dnf install -y provsql_17       # PG 17
dnf install -y provsql_16       # PG 16
dnf install -y provsql_15       # PG 15
dnf install -y provsql_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-provsql   # PG 18
apt install -y postgresql-17-provsql   # PG 17
apt install -y postgresql-16-provsql   # PG 16
apt install -y postgresql-15-provsql   # PG 15
apt install -y postgresql-14-provsql   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'provsql';
```


**Create Extension**:

```sql
CREATE EXTENSION provsql CASCADE;  -- requires: uuid-ossp
```

## Usage

Sources: [README](https://github.com/PierreSenellart/provsql/blob/master/README.md), [v1.4.0 release](https://github.com/PierreSenellart/provsql/releases/tag/v1.4.0), [latest release](https://github.com/PierreSenellart/provsql/releases/tag/v1.6.0), [v1.4.0 control](https://github.com/PierreSenellart/provsql/blob/v1.4.0/provsql.common.control), [getting started](https://provsql.org/docs/user/getting-provsql.html), [configuration](https://provsql.org/docs/user/configuration.html), [semirings](https://provsql.org/docs/user/semirings.html), [v1.4.0 upgrade](https://github.com/PierreSenellart/provsql/blob/v1.4.0/sql/upgrades/provsql--1.3.1--1.4.0.sql)

`provsql` adds semiring provenance and uncertainty management to PostgreSQL. Upstream documents provenance tracking, semiring evaluation, probabilities, Shapley and Banzhaf values, where-provenance, update provenance, and temporal features.

### Load and Track Provenance

```ini
shared_preload_libraries = 'provsql'
```

```sql
CREATE EXTENSION provsql CASCADE;
```

The `CASCADE` form installs `uuid-ossp` automatically if needed. The getting-started guide says the preload step is mandatory because ProvSQL installs a planner hook.

```sql
SELECT provsql.add_provenance('mytable');

SELECT name, provenance()
FROM mytable;

SELECT provsql.remove_provenance('mytable');
```

The user docs also describe provenance mappings:

```sql
SELECT create_provenance_mapping('my_mapping', 'mytable', 'column_name');
SELECT create_provenance_mapping_view('my_mapping_view', 'mytable', 'column_name');
```

### Probability and Influence

Assign probabilities to tuple tokens:

```sql
SELECT set_prob(provenance(), 0.8)
FROM mytable
WHERE id = 1;

SELECT name, probability_evaluate(provenance()) AS prob
FROM mytable;
```

Compute influence scores:

```sql
SELECT shapley(provenance(), m.token)
FROM mytable, my_mapping AS m;

SELECT banzhaf(provenance(), m.token)
FROM mytable, my_mapping AS m;
```

The docs also describe `shapley_all_vars` and `banzhaf_all_vars` for computing scores for all input variables at once.

### Built-in Semirings

Built-in semiring functions use a provenance token and a provenance mapping table:

```sql
SELECT name, sr_boolean(provenance(), 'my_mapping')
FROM mytable;

SELECT name, sr_formula(provenance(), 'my_mapping')
FROM mytable;

SELECT name, sr_how(provenance(), 'my_mapping')
FROM mytable;
```

`provsql` 1.4.0 adds compiled wrappers for `sr_how`, `sr_which`, `sr_tropical`, `sr_viterbi`, `sr_lukasiewicz`, `sr_minmax`, and `sr_maxmin`. For PostgreSQL 14 and later it also adds `sr_temporal`, `sr_interval_num`, and `sr_interval_int` over multirange values.

```sql
SELECT city,
       sr_minmax(provenance(), 'personnel_level',
                 'unclassified'::classification_level) AS clearance
FROM (SELECT DISTINCT city FROM personnel) AS t;

SELECT entity_id, sr_temporal(provenance(), 'validity_mapping')
FROM mytable;
```

Advanced users can still define custom semirings and evaluate them with `provenance_evaluate` or `aggregation_evaluate`; upstream recommends the compiled semirings when one matches the needed algebra.

### Extra Modes and Helpers

Session GUCs documented upstream include:

```sql
SET provsql.active = on;
SET provsql.where_provenance = on;
SET provsql.update_provenance = on;
SET provsql.tool_search_path = '/opt/d4:/home/postgres/bin';
SET provsql.aggtoken_text_as_uuid = on;
```

`provsql.tool_search_path` is used for external probability and visualization tools such as `d4`, `c2d`, `dsharp`, `minic2d`, `weightmc`, and `graph-easy`. `provsql.aggtoken_text_as_uuid` makes aggregate-token cells render as their provenance UUIDs; `agg_token_value_text(token)` can recover the display text for those aggregate tokens.

The user guide separately documents where-provenance helpers, update provenance, and temporal helpers such as `get_valid_time`, `timetravel`, `timeslice`, `history`, and `undo`. Version 1.4.0 also adds circuit-inspection helpers `circuit_subgraph(root, max_depth)` and `resolve_input(uuid)`, used by ProvSQL Studio and useful for browsing circuit fragments.

### Notes

- The package row in `db/extension.csv` lists version `1.4.0`, package `provsql`, dependency `uuid-ossp`, and PostgreSQL support for 14 through 18.
- Upstream docs say ProvSQL has been tested on PostgreSQL 10 through 18. The Pigsty row tracks `1.4.0` even though upstream GitHub now has `v1.6.0`, so package metadata should be treated as the installed version for Pigsty builds.
- `provsql.update_provenance` and the multirange semirings require PostgreSQL 14 or later.
