---
title: "currency"
linkTitle: "currency"
description: "Custom PostgreSQL currency type in 1Byte"
weight: 3680
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/adjust/pg-currency">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">adjust/pg-currency</div>
    <div class="ext-card__desc">https://github.com/adjust/pg-currency</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-currency-0.0.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-currency-0.0.3.tar.gz</div>
    <div class="ext-card__desc">pg-currency-0.0.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_currency`**](/ext/e/currency) | `0.0.3` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3680  | [**`currency`**](/ext/e/currency) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`financial`](/ext/e/financial) [`pg_accumulator`](/ext/e/pg_accumulator) [`omni_ledger`](/ext/e/omni_ledger) [`country`](/ext/e/country) [`isn`](/ext/e/isn) [`pg_xenophile`](/ext/e/pg_xenophile) [`icu_ext`](/ext/e/icu_ext) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_currency` | `plpgsql` |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_currency_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-currency` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
@ el8.x86_64 18 pg_currency_18 pg_currency_18-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_currency_18-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_currency_18 pg_currency_18-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_currency_18-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_currency_18 pg_currency_18-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_currency_18-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_currency_18 pg_currency_18-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_currency_18-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_currency_18 pg_currency_18-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_currency_18-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_currency_18 pg_currency_18-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 17.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_currency_18-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb pigsty 0.0.3 19.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb pigsty 0.0.3 19.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb pigsty 0.0.3 20.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb pigsty 0.0.3 20.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb pigsty 0.0.3 20.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb pigsty 0.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb pigsty 0.0.3 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-currency postgresql-18-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb pigsty 0.0.3 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-18-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_currency_17 pg_currency_17-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_currency_17-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_currency_17 pg_currency_17-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_currency_17-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_currency_17 pg_currency_17-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_currency_17-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_currency_17 pg_currency_17-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_currency_17-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_currency_17 pg_currency_17-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_currency_17-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_currency_17 pg_currency_17-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 17.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_currency_17-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb pigsty 0.0.3 19.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb pigsty 0.0.3 19.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb pigsty 0.0.3 22.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb pigsty 0.0.3 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb pigsty 0.0.3 20.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb pigsty 0.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb pigsty 0.0.3 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-currency postgresql-17-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb pigsty 0.0.3 20.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-17-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_currency_16 pg_currency_16-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_currency_16-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_currency_16 pg_currency_16-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_currency_16-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_currency_16 pg_currency_16-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_currency_16-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_currency_16 pg_currency_16-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_currency_16-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_currency_16 pg_currency_16-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_currency_16-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_currency_16 pg_currency_16-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 17.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_currency_16-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb pigsty 0.0.3 19.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb pigsty 0.0.3 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb pigsty 0.0.3 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb pigsty 0.0.3 20.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb pigsty 0.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb pigsty 0.0.3 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-currency postgresql-16-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb pigsty 0.0.3 20.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-16-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_currency_15 pg_currency_15-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_currency_15-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_currency_15 pg_currency_15-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_currency_15-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_currency_15 pg_currency_15-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_currency_15-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_currency_15 pg_currency_15-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_currency_15-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_currency_15 pg_currency_15-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_currency_15-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_currency_15 pg_currency_15-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 17.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_currency_15-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb pigsty 0.0.3 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb pigsty 0.0.3 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb pigsty 0.0.3 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb pigsty 0.0.3 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb pigsty 0.0.3 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb pigsty 0.0.3 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb pigsty 0.0.3 20.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb pigsty 0.0.3 20.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb pigsty 0.0.3 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-currency postgresql-15-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb pigsty 0.0.3 20.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-15-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_currency_14 pg_currency_14-0.0.3-1PIGSTY.el8.x86_64.rpm pigsty 0.0.3 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_currency_14-0.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_currency_14 pg_currency_14-0.0.3-1PIGSTY.el8.aarch64.rpm pigsty 0.0.3 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_currency_14-0.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_currency_14 pg_currency_14-0.0.3-1PIGSTY.el9.x86_64.rpm pigsty 0.0.3 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_currency_14-0.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_currency_14 pg_currency_14-0.0.3-1PIGSTY.el9.aarch64.rpm pigsty 0.0.3 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_currency_14-0.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_currency_14 pg_currency_14-0.0.3-1PIGSTY.el10.x86_64.rpm pigsty 0.0.3 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_currency_14-0.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_currency_14 pg_currency_14-0.0.3-1PIGSTY.el10.aarch64.rpm pigsty 0.0.3 17.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_currency_14-0.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb pigsty 0.0.3 19.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb pigsty 0.0.3 19.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb pigsty 0.0.3 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb pigsty 0.0.3 19.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb pigsty 0.0.3 22.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb pigsty 0.0.3 22.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb pigsty 0.0.3 20.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb pigsty 0.0.3 20.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb pigsty 0.0.3 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-currency postgresql-14-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb pigsty 0.0.3 20.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-currency/postgresql-14-pg-currency_0.0.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_currency` using `pig build`:

```bash
pig build pkg pg_currency         # build RPM / DEB packages
```


## Install

You can install `pg_currency` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_currency;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_currency -v 18  # PG 18
pig ext install -y pg_currency -v 17  # PG 17
pig ext install -y pg_currency -v 16  # PG 16
pig ext install -y pg_currency -v 15  # PG 15
pig ext install -y pg_currency -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_currency_18       # PG 18
dnf install -y pg_currency_17       # PG 17
dnf install -y pg_currency_16       # PG 16
dnf install -y pg_currency_15       # PG 15
dnf install -y pg_currency_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-currency   # PG 18
apt install -y postgresql-17-pg-currency   # PG 17
apt install -y postgresql-16-pg-currency   # PG 16
apt install -y postgresql-15-pg-currency   # PG 15
apt install -y postgresql-14-pg-currency   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION currency CASCADE;  -- requires: plpgsql
```




## Usage

> [currency: ISO 4217 currency code type](https://github.com/adjust/pg-currency)

The `currency` extension provides a data type for ISO 4217 currency codes using only a single byte of storage per value.

```sql
CREATE EXTENSION currency;

CREATE TABLE transactions (
    id                serial,
    payment_currency  currency
);

INSERT INTO transactions VALUES (1, 'USD'), (2, 'EUR'), (3, 'USD');

SELECT * FROM transactions ORDER BY payment_currency;
 id | payment_currency
----+------------------
  2 | EUR
  1 | USD
  3 | USD
```

### Operators

Standard comparison operators are supported: `=`, `<>`, `<`, `>`, `<=`, `>=`.

B-tree index support is included for efficient ordering and lookups.

### Functions

```sql
-- List all supported currency codes
SELECT * FROM supported_currencies() currency ORDER BY currency;
```
