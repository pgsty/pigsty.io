---
title: "uint128"
linkTitle: "uint128"
description: "Native uint128 type"
weight: 3740
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pg-uint/pg-uint128">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pg-uint/pg-uint128</div>
    <div class="ext-card__desc">https://github.com/pg-uint/pg-uint128</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-uint128-1.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-uint128-1.2.0.tar.gz</div>
    <div class="ext-card__desc">pg-uint128-1.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_uint128`**](/ext/e/uint128) | `1.2.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3740  | [**`uint128`**](/ext/e/uint128) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`uint`](/ext/e/uint) [`pgmp`](/ext/e/pgmp) [`numeral`](/ext/e/numeral) [`unit`](/ext/e/unit) [`pg_rational`](/ext/e/pg_rational) [`seg`](/ext/e/seg) [`cube`](/ext/e/cube) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> breaks on el8 since 1.1 ,fix el8 build problem by adding __has_builtin marco


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_uint128` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_uint128_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-uint128` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
@ el8.x86_64 18 pg_uint128_18 pg_uint128_18-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 189.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_18-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_uint128_18 pg_uint128_18-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 176.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_18-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_uint128_18 pg_uint128_18-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 170.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_18-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_uint128_18 pg_uint128_18-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 161.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_18-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_uint128_18 pg_uint128_18-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 169.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_18-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_uint128_18 pg_uint128_18-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 163.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_18-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 328.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 318.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 327.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 319.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 365.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 357.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 355.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 352.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb pigsty 1.2.0 357.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-uint128 postgresql-18-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb pigsty 1.2.0 350.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-18-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_uint128_17 pg_uint128_17-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 189.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_17-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_uint128_17 pg_uint128_17-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 176.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_17-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_uint128_17 pg_uint128_17-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 169.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_17-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_uint128_17 pg_uint128_17-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 161.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_17-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_uint128_17 pg_uint128_17-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 169.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_17-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_uint128_17 pg_uint128_17-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 163.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_17-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 327.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 327.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 320.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 384.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 373.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 355.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 352.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb pigsty 1.2.0 357.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-uint128 postgresql-17-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb pigsty 1.2.0 350.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-17-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_uint128_16 pg_uint128_16-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 189.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_16-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_uint128_16 pg_uint128_16-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 176.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_16-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_uint128_16 pg_uint128_16-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 170.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_16-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_uint128_16 pg_uint128_16-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 161.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_16-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_uint128_16 pg_uint128_16-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 169.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_16-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_uint128_16 pg_uint128_16-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 164.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_16-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 327.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 318.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 326.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 319.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 381.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 371.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 354.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 352.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb pigsty 1.2.0 356.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-uint128 postgresql-16-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb pigsty 1.2.0 350.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-16-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_uint128_15 pg_uint128_15-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 189.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_15-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_uint128_15 pg_uint128_15-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 176.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_15-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_uint128_15 pg_uint128_15-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 170.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_15-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_uint128_15 pg_uint128_15-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 161.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_15-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_uint128_15 pg_uint128_15-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 172.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_15-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_uint128_15 pg_uint128_15-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 164.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_15-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 331.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 322.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 331.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 324.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 383.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 374.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 359.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 356.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb pigsty 1.2.0 358.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-uint128 postgresql-15-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb pigsty 1.2.0 351.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-15-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_uint128_14 pg_uint128_14-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 189.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uint128_14-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_uint128_14 pg_uint128_14-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 176.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uint128_14-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_uint128_14 pg_uint128_14-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 171.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uint128_14-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_uint128_14 pg_uint128_14-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 161.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uint128_14-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_uint128_14 pg_uint128_14-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 171.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uint128_14-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_uint128_14 pg_uint128_14-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 165.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uint128_14-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 331.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 322.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 331.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 324.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 383.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 374.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 359.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 356.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb pigsty 1.2.0 358.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-uint128 postgresql-14-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb pigsty 1.2.0 351.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uint128/postgresql-14-pg-uint128_1.2.0-1PIGSTY~resolute_arm64.deb
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

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_uint128;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_uint128 -v 18  # PG 18
pig ext install -y pg_uint128 -v 17  # PG 17
pig ext install -y pg_uint128 -v 16  # PG 16
pig ext install -y pg_uint128 -v 15  # PG 15
pig ext install -y pg_uint128 -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_uint128_18       # PG 18
dnf install -y pg_uint128_17       # PG 17
dnf install -y pg_uint128_16       # PG 16
dnf install -y pg_uint128_15       # PG 15
dnf install -y pg_uint128_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-uint128   # PG 18
apt install -y postgresql-17-pg-uint128   # PG 17
apt install -y postgresql-16-pg-uint128   # PG 16
apt install -y postgresql-15-pg-uint128   # PG 15
apt install -y postgresql-14-pg-uint128   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION uint128;
```




## Usage

> [uint128: unsigned 128-bit integer type for PostgreSQL](https://github.com/pg-uint/pg-uint128)

The `uint128` extension provides comprehensive unsigned and 128-bit integer types with full operator and index support.

```sql
CREATE EXTENSION uint128;
```

### Data Types

| Type | Size | Range |
|------|------|-------|
| `uint1` | 8-bit | 0 to 255 |
| `uint2` | 16-bit | 0 to 65535 |
| `uint4` | 32-bit | 0 to 4294967295 |
| `uint8` | 64-bit | 0 to 18446744073709551615 |
| `uint16` | 128-bit | 0 to 340282366920938463463374607431768211455 |
| `int1` | 8-bit | -128 to 127 |
| `int16` | 128-bit | -170141183460469231731687303715884105728 to 170141183460469231731687303715884105727 |

### Operators

- **Arithmetic**: `+`, `-`, `*`, `/`, `%`
- **Bitwise**: `#` (XOR), `&` (AND), `|` (OR), `~` (NOT), `<<` (left shift), `>>` (right shift)
- **Comparison**: `=`, `<>`, `>`, `<`, `>=`, `<=`

Mixed-type arithmetic between signed and unsigned types is supported.

### Features

- Range types for all integer types (`uint1range`, `uint16range`, etc.) with GiST indexing
- Casts to/from `numeric`, `real`, `double`, `uuid` (uint16 only), `json`, `jsonb`
- Aggregate functions: `SUM`, `AVG`, `MIN`, `MAX`
- `generate_series()` support for all types
- Btree and hash index support
- Binary send/receive protocol support
