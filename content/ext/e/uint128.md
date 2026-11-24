---
title: "uint128"
linkTitle: "uint128"
description: "Native uint128 type"
weight: 3760
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pg-uint/pg-uint128">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pg-uint/pg-uint128</div>
    <div class="ext-card__desc">https://github.com/pg-uint/pg-uint128</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-uint128-1.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-uint128-1.3.0.tar.gz</div>
    <div class="ext-card__desc">pg-uint128-1.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_uint128`**](/ext/e/uint128) | `1.3.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3760  | [**`uint128`**](/ext/e/uint128) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`uint`](/ext/e/uint) [`pgmp`](/ext/e/pgmp) [`numeral`](/ext/e/numeral) [`unit`](/ext/e/unit) [`pg_rational`](/ext/e/pg_rational) [`seg`](/ext/e/seg) [`cube`](/ext/e/cube) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> breaks on el8 since 1.1 ,fix el8 build problem by adding __has_builtin marco


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "19,18,17,16,15" >}} | `pg_uint128` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "19,18,17,16,15" >}} | `pg_uint128_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-uint128` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
@ el9.x86_64 19 pg_uint128_19 pg_uint128_19-1.3.0-1PGSTY.el9.x86_64.rpm pigsty 1.3.0 387.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_19-1.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pg_uint128_19 pg_uint128_19-1.3.0-1PGSTY.el9.aarch64.rpm pigsty 1.3.0 379.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_19-1.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pg_uint128_19 pg_uint128_19-1.3.0-1PGSTY.el10.x86_64.rpm pigsty 1.3.0 389.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_19-1.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pg_uint128_19 pg_uint128_19-1.3.0-1PGSTY.el10.aarch64.rpm pigsty 1.3.0 382.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_19-1.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 330.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 320.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 329.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 323.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 368.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 360.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 358.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 355.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 359.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-uint128 postgresql-19-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 353.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-19-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_uint128_18 pg_uint128_18-1.3.0-1PGSTY.el8.x86_64.rpm pigsty 1.3.0 386.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_18-1.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_uint128_18 pg_uint128_18-1.3.0-1PGSTY.el8.aarch64.rpm pigsty 1.3.0 372.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_18-1.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_uint128_18 pg_uint128_18-1.3.0-1PGSTY.el9.x86_64.rpm pigsty 1.3.0 387.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_18-1.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_uint128_18 pg_uint128_18-1.3.0-1PGSTY.el9.aarch64.rpm pigsty 1.3.0 379.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_18-1.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_uint128_18 pg_uint128_18-1.3.0-1PGSTY.el10.x86_64.rpm pigsty 1.3.0 389.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_18-1.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_uint128_18 pg_uint128_18-1.3.0-1PGSTY.el10.aarch64.rpm pigsty 1.3.0 382.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_18-1.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 331.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 320.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 330.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 323.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 368.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 360.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 357.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 355.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 359.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 353.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_uint128_17 pg_uint128_17-1.3.0-1PGSTY.el8.x86_64.rpm pigsty 1.3.0 385.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_17-1.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_uint128_17 pg_uint128_17-1.3.0-1PGSTY.el8.aarch64.rpm pigsty 1.3.0 372.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_17-1.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_uint128_17 pg_uint128_17-1.3.0-1PGSTY.el9.x86_64.rpm pigsty 1.3.0 387.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_17-1.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_uint128_17 pg_uint128_17-1.3.0-1PGSTY.el9.aarch64.rpm pigsty 1.3.0 379.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_17-1.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_uint128_17 pg_uint128_17-1.3.0-1PGSTY.el10.x86_64.rpm pigsty 1.3.0 389.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_17-1.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_uint128_17 pg_uint128_17-1.3.0-1PGSTY.el10.aarch64.rpm pigsty 1.3.0 382.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_17-1.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 331.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 320.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 329.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 322.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 385.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 375.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 358.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 355.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 359.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 352.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_uint128_16 pg_uint128_16-1.3.0-1PGSTY.el8.x86_64.rpm pigsty 1.3.0 385.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_16-1.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_uint128_16 pg_uint128_16-1.3.0-1PGSTY.el8.aarch64.rpm pigsty 1.3.0 372.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_16-1.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_uint128_16 pg_uint128_16-1.3.0-1PGSTY.el9.x86_64.rpm pigsty 1.3.0 387.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_16-1.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_uint128_16 pg_uint128_16-1.3.0-1PGSTY.el9.aarch64.rpm pigsty 1.3.0 379.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_16-1.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_uint128_16 pg_uint128_16-1.3.0-1PGSTY.el10.x86_64.rpm pigsty 1.3.0 389.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_16-1.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_uint128_16 pg_uint128_16-1.3.0-1PGSTY.el10.aarch64.rpm pigsty 1.3.0 382.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_16-1.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 331.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 320.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 329.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 322.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 383.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 374.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 357.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 354.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 358.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 352.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_uint128_15 pg_uint128_15-1.3.0-1PGSTY.el8.x86_64.rpm pigsty 1.3.0 387.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_15-1.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_uint128_15 pg_uint128_15-1.3.0-1PGSTY.el8.aarch64.rpm pigsty 1.3.0 373.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_15-1.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_uint128_15 pg_uint128_15-1.3.0-1PGSTY.el9.x86_64.rpm pigsty 1.3.0 388.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_15-1.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_uint128_15 pg_uint128_15-1.3.0-1PGSTY.el9.aarch64.rpm pigsty 1.3.0 381.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_15-1.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_uint128_15 pg_uint128_15-1.3.0-1PGSTY.el10.x86_64.rpm pigsty 1.3.0 391.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_15-1.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_uint128_15 pg_uint128_15-1.3.0-1PGSTY.el10.aarch64.rpm pigsty 1.3.0 384.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_15-1.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 335.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 324.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 333.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 326.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 386.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 377.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 361.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 358.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 360.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 354.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.3.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_uint128` using `pig build`:

```bash
pig build pkg pg_uint128         # build RPM / DEB packages
```


## Install

You can install `pg_uint128` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_uint128;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_uint128 -v 19  # PG 19
pig ext install -y pg_uint128 -v 18  # PG 18
pig ext install -y pg_uint128 -v 17  # PG 17
pig ext install -y pg_uint128 -v 16  # PG 16
pig ext install -y pg_uint128 -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_uint128_19       # PG 19
dnf install -y pg_uint128_18       # PG 18
dnf install -y pg_uint128_17       # PG 17
dnf install -y pg_uint128_16       # PG 16
dnf install -y pg_uint128_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-uint128   # PG 19
apt install -y postgresql-18-pg-uint128   # PG 18
apt install -y postgresql-17-pg-uint128   # PG 17
apt install -y postgresql-16-pg-uint128   # PG 16
apt install -y postgresql-15-pg-uint128   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION uint128;
```

## Usage

Sources:

- [README.md](https://api.pgxn.org/src/uint128/uint128-1.3.0/README.md)
- [uint128.control](https://api.pgxn.org/src/uint128/uint128-1.3.0/uint128.control)
- [uint128--1.2.0--1.3.0.sql](https://api.pgxn.org/src/uint128/uint128-1.3.0/uint128--1.2.0--1.3.0.sql)
- [1.3.0](https://github.com/pg-uint/pg-uint128/releases/tag/1.3.0)


`uint128` adds unsigned integers and signed 8-bit and 128-bit integer types. Version 1.3.0 supports PostgreSQL 12–18 and fixes operator metadata that could make indexed comparisons return incorrect results.

### Store and Query Integers

Installation requires a superuser; the control file does not mark the extension trusted. It is relocatable and requires no preload.

```sql
CREATE EXTENSION uint128;
CREATE TABLE ids (id uint16 PRIMARY KEY);
INSERT INTO ids VALUES ('340282366920938463463374607431768211455'::uint16);
SELECT * FROM ids WHERE id > '18446744073709551615'::uint16;
SELECT * FROM generate_series(1::uint4, 3::uint4);
```

The unsigned types `uint1`, `uint2`, `uint4`, `uint8` and `uint16` occupy 1, 2, 4, 8 and 16 bytes. Their range is zero through 2 raised to the bit width minus one. `int1` and `int16` are signed 1-byte and 16-byte types.

### Operators and Indexes

The types provide arithmetic, comparisons, bitwise operations, B-tree and hash indexes, binary I/O, casts and `generate_series`. Corresponding range types, including `uint1range` and `uint16range`, support GiST indexes; multiranges depend on server support. `SUM` and `AVG` use `numeric` internally; `MIN` and `MAX` are also available.

Mixed signed/unsigned arithmetic is sensitive to operand order and result type. Cast explicitly when a negative result is possible: an unsigned result cannot represent it. Conversions and arithmetic may raise range errors; do not assume wraparound.

### Upgrade to 1.3.0

Install the matching files, then run as a superuser:

```sql
ALTER EXTENSION uint128 UPDATE TO '1.3.0';
```

This corrects comparison commutators and removes invalid mixed-type addition/subtraction commutators. It also fixes installation with the stricter operator checks in PostgreSQL 17.12. The supplied SQL updates operator metadata in place while preserving data, indexes, views and materialized views. Check the installed version and representative indexed comparisons after upgrading.
