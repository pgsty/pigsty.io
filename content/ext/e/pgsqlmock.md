---
title: "pgsqlmock"
linkTitle: "pgsqlmock"
description: "Mocking and faking helpers for PostgreSQL unit tests"
weight: 3130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/v-maliutin/pgSQLMock">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">v-maliutin/pgSQLMock</div>
    <div class="ext-card__desc">https://github.com/v-maliutin/pgSQLMock</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsqlmock-1.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsqlmock-1.0.1.tar.gz</div>
    <div class="ext-card__desc">pgsqlmock-1.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgsqlmock`**](/ext/e/pgsqlmock) | `1.0.1` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3130  | [**`pgsqlmock`**](/ext/e/pgsqlmock) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pgtap`](/ext/e/pgtap) [`faker`](/ext/e/faker) [`dbt2`](/ext/e/dbt2) [`pg_mockable`](/ext/e/pg_mockable) [`pgtap`](/ext/e/pgtap) [`omni_test`](/ext/e/omni_test) [`random`](/ext/e/random) [`tsm_system_time`](/ext/e/tsm_system_time) [`tsm_system_rows`](/ext/e/tsm_system_rows) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Packaging corrects the upstream control dependency name from pgTap to pgtap and requires pgTAP 1.3.4 or newer.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pgsqlmock` | `plpgsql`, `pgtap` |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pgsqlmock_$v` | `pgtap_$v` |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgsqlmock` | `postgresql-$v-pgtap` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
@ el8.x86_64 18 pgsqlmock_18 pgsqlmock_18-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsqlmock_18-1.0.1-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pgsqlmock_18 pgsqlmock_18-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsqlmock_18-1.0.1-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pgsqlmock_18 pgsqlmock_18-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsqlmock_18-1.0.1-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pgsqlmock_18 pgsqlmock_18-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsqlmock_18-1.0.1-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pgsqlmock_18 pgsqlmock_18-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsqlmock_18-1.0.1-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pgsqlmock_18 pgsqlmock_18-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsqlmock_18-1.0.1-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pgsqlmock postgresql-18-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-18-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pgsqlmock_17 pgsqlmock_17-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsqlmock_17-1.0.1-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pgsqlmock_17 pgsqlmock_17-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsqlmock_17-1.0.1-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pgsqlmock_17 pgsqlmock_17-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsqlmock_17-1.0.1-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pgsqlmock_17 pgsqlmock_17-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsqlmock_17-1.0.1-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pgsqlmock_17 pgsqlmock_17-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsqlmock_17-1.0.1-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pgsqlmock_17 pgsqlmock_17-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsqlmock_17-1.0.1-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pgsqlmock postgresql-17-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-17-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pgsqlmock_16 pgsqlmock_16-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsqlmock_16-1.0.1-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pgsqlmock_16 pgsqlmock_16-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsqlmock_16-1.0.1-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pgsqlmock_16 pgsqlmock_16-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsqlmock_16-1.0.1-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pgsqlmock_16 pgsqlmock_16-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsqlmock_16-1.0.1-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pgsqlmock_16 pgsqlmock_16-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsqlmock_16-1.0.1-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pgsqlmock_16 pgsqlmock_16-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsqlmock_16-1.0.1-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pgsqlmock postgresql-16-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-16-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pgsqlmock_15 pgsqlmock_15-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsqlmock_15-1.0.1-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pgsqlmock_15 pgsqlmock_15-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsqlmock_15-1.0.1-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pgsqlmock_15 pgsqlmock_15-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsqlmock_15-1.0.1-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pgsqlmock_15 pgsqlmock_15-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsqlmock_15-1.0.1-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pgsqlmock_15 pgsqlmock_15-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsqlmock_15-1.0.1-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pgsqlmock_15 pgsqlmock_15-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsqlmock_15-1.0.1-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pgsqlmock postgresql-15-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-15-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pgsqlmock_14 pgsqlmock_14-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsqlmock_14-1.0.1-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 pgsqlmock_14 pgsqlmock_14-1.0.1-1PIGSTY.el8.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsqlmock_14-1.0.1-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 pgsqlmock_14 pgsqlmock_14-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsqlmock_14-1.0.1-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 pgsqlmock_14 pgsqlmock_14-1.0.1-1PIGSTY.el9.noarch.rpm pigsty 1.0.1 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsqlmock_14-1.0.1-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 pgsqlmock_14 pgsqlmock_14-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsqlmock_14-1.0.1-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 pgsqlmock_14 pgsqlmock_14-1.0.1-1PIGSTY.el10.noarch.rpm pigsty 1.0.1 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsqlmock_14-1.0.1-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb pigsty 1.0.1 12.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pgsqlmock postgresql-14-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb pigsty 1.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsqlmock/postgresql-14-pgsqlmock_1.0.1-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgsqlmock` using `pig build`:

```bash
pig build pkg pgsqlmock         # build RPM / DEB packages
```


## Install

You can install `pgsqlmock` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pgsqlmock;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgsqlmock -v 18  # PG 18
pig ext install -y pgsqlmock -v 17  # PG 17
pig ext install -y pgsqlmock -v 16  # PG 16
pig ext install -y pgsqlmock -v 15  # PG 15
pig ext install -y pgsqlmock -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgsqlmock_18       # PG 18
dnf install -y pgsqlmock_17       # PG 17
dnf install -y pgsqlmock_16       # PG 16
dnf install -y pgsqlmock_15       # PG 15
dnf install -y pgsqlmock_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgsqlmock   # PG 18
apt install -y postgresql-17-pgsqlmock   # PG 17
apt install -y postgresql-16-pgsqlmock   # PG 16
apt install -y postgresql-15-pgsqlmock   # PG 15
apt install -y postgresql-14-pgsqlmock   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgsqlmock CASCADE;  -- requires: plpgsql, pgtap
```

## Usage

Sources:

- [pgSQLMock 1.0.1 documentation](https://github.com/v-maliutin/pgSQLMock/blob/Release_v1.0.1/doc/pgsqlmock.md)
- [pgSQLMock README](https://github.com/v-maliutin/pgSQLMock/blob/Release_v1.0.1/README.md)
- [pgSQLMock control file](https://github.com/v-maliutin/pgSQLMock/blob/Release_v1.0.1/pgsqlmock.control)
- [pgSQLMock 1.0.1 release](https://github.com/v-maliutin/pgSQLMock/releases/tag/Release_v1.0.1)

`pgsqlmock` extends pgTAP with table fakes, function and view mocks, call-count assertions, and debugging helpers. Its helpers alter or replace real database objects, so upstream requires using them inside pgTAP's transaction-based test context, where the changes are rolled back after the test.

```sql
CREATE EXTENSION pgtap;
CREATE EXTENSION pgsqlmock;
```

### Fake Tables

`fake_table(text[], ...)` can isolate a test from foreign keys, primary keys, `NOT NULL` constraints, partitions, or pre-existing rows. Pass schema-qualified table names as a `text[]`:

```sql
SELECT plan(2);

SELECT fake_table(
  _table_ident       => ARRAY['app.accounts', 'app.transactions'],
  _make_table_empty  => true,
  _leave_primary_key => false,
  _drop_not_null     => true
);

INSERT INTO app.transactions(account_id, amount)
VALUES (999, 42.00);

SELECT is(
  (SELECT sum(amount) FROM app.transactions WHERE account_id = 999),
  42.00::numeric,
  'transaction logic is isolated from account fixtures'
);

SELECT * FROM finish();
```

Important options include `make_table_empty`, `leave_primary_key`, `drop_not_null`, `drop_collation`, and `drop_partitions`. Keeping a primary key while dropping the participating columns' `NOT NULL` constraints is contradictory; remove or recreate the key explicitly for that test shape.

### Mock Functions

`mock_func(schema, name, signature, ...)` temporarily replaces a routine while preserving its identity. Supply either a scalar value or SQL/prepared-statement text for a set result:

```sql
CREATE OR REPLACE FUNCTION app.current_business_time()
RETURNS time LANGUAGE sql AS $$ SELECT current_time $$;

SELECT mock_func(
  'app',
  'current_business_time',
  '()',
  _return_scalar_value => '13:00'::time
);

SELECT is(app.current_business_time(), '13:00'::time, 'clock is deterministic');
```

For set-returning routines, pass `_return_set_value` as a SQL query or the name of a prepared statement. Use `get_routine_signature()` when overloaded or defaulted arguments make the stored signature unclear.

### Mock Views

`mock_view(schema, view_name, return_set_sql)` replaces a view with controlled rows:

```sql
SELECT mock_view(
  'app',
  'active_accounts',
  $$SELECT * FROM (VALUES (1, 'test')) AS v(id, name)$$
);

SELECT results_eq(
  'SELECT id, name FROM app.active_accounts',
  $$VALUES (1, 'test')$$,
  'view consumer sees only the fixture'
);
```

### Call Counts and Diagnostics

Set `track_functions = 'all'` before using `call_count()` to assert how often a routine was invoked:

```sql
SET LOCAL track_functions = 'all';

SELECT call_count(
  1,
  'app',
  'current_business_time',
  '()'
);
```

`print_table_as_json()` and `print_query_as_json()` emit reproducible SQL/JSON-style snapshots through `NOTICE`, which is useful when pgTAP's rollback would otherwise hide the state created during a failed test.

### Caveats

- Run mocks and fakes only inside isolated test transactions; they issue real `ALTER`, `DROP`, and replacement DDL.
- pgSQLMock depends on PL/pgSQL and pgTAP. Load pgTAP before running its assertions.
- `call_count()` depends on PostgreSQL function statistics and therefore requires `track_functions = 'all'`.
- Release 1.0.1 fixes `fake_table()` dropping `NOT NULL` constraints on tables without a primary key.
