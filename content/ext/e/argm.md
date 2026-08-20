---
title: "argm"
linkTitle: "argm"
description: "argmax, argmin, and anyold aggregate functions"
weight: 4755
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bashtanov/argm">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bashtanov/argm</div>
    <div class="ext-card__desc">https://github.com/bashtanov/argm</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/argm-1.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">argm-1.1.1.tar.gz</div>
    <div class="ext-card__desc">argm-1.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`argm`**](/ext/e/argm) | `1.1.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4755  | [**`argm`**](/ext/e/argm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`tablefunc`](/ext/e/tablefunc) [`first_last_agg`](/ext/e/first_last_agg) [`extra_window_functions`](/ext/e/extra_window_functions) [`pg_duckdb`](/ext/e/pg_duckdb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> fix pg16+ varlena header with patch


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `argm` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `argm_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-argm` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
@ el8.x86_64 18 argm_18 argm_18-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/argm_18-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 argm_18 argm_18-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/argm_18-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 argm_18 argm_18-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/argm_18-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 argm_18 argm_18-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/argm_18-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 argm_18 argm_18-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/argm_18-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 argm_18 argm_18-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/argm_18-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 19.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 20.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 20.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 20.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 19.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-argm postgresql-18-argm_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-18-argm_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 argm_17 argm_17-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/argm_17-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 argm_17 argm_17-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/argm_17-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 argm_17 argm_17-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/argm_17-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 argm_17 argm_17-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/argm_17-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 argm_17 argm_17-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/argm_17-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 argm_17 argm_17-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/argm_17-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 19.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 20.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 21.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 20.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 20.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-argm postgresql-17-argm_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-17-argm_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 argm_16 argm_16-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/argm_16-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 argm_16 argm_16-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/argm_16-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 argm_16 argm_16-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/argm_16-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 argm_16 argm_16-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/argm_16-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 argm_16 argm_16-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/argm_16-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 argm_16 argm_16-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/argm_16-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 19.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 20.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 21.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 20.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 20.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-argm postgresql-16-argm_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-16-argm_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 argm_15 argm_15-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/argm_15-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 argm_15 argm_15-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/argm_15-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 argm_15 argm_15-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/argm_15-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 argm_15 argm_15-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/argm_15-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 argm_15 argm_15-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/argm_15-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 argm_15 argm_15-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/argm_15-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 20.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 21.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 20.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 20.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-argm postgresql-15-argm_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-15-argm_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 argm_14 argm_14-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/argm_14-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 argm_14 argm_14-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/argm_14-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 argm_14 argm_14-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/argm_14-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 argm_14 argm_14-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/argm_14-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 argm_14 argm_14-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/argm_14-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 argm_14 argm_14-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 18.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/argm_14-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 19.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 19.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 20.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 21.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 20.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-argm postgresql-14-argm_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 20.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/argm/postgresql-14-argm_1.1.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `argm` using `pig build`:

```bash
pig build pkg argm         # build RPM / DEB packages
```


## Install

You can install `argm` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install argm;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y argm -v 18  # PG 18
pig ext install -y argm -v 17  # PG 17
pig ext install -y argm -v 16  # PG 16
pig ext install -y argm -v 15  # PG 15
pig ext install -y argm -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y argm_18       # PG 18
dnf install -y argm_17       # PG 17
dnf install -y argm_16       # PG 16
dnf install -y argm_15       # PG 15
dnf install -y argm_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-argm   # PG 18
apt install -y postgresql-17-argm   # PG 17
apt install -y postgresql-16-argm   # PG 16
apt install -y postgresql-15-argm   # PG 15
apt install -y postgresql-14-argm   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION argm;
```

## Usage

Sources:

- [argm 1.1.1 README](https://github.com/bashtanov/argm/blob/1.1.1/README.md)
- [Extension control file](https://github.com/bashtanov/argm/blob/1.1.1/argm.control)
- [SQL definitions](https://github.com/bashtanov/argm/blob/1.1.1/argm--1.1.1.sql)

`argm` provides the polymorphic aggregates `argmax`, `argmin`, and `anyold`. They return a value from a selected row while grouping, avoiding a join or window-function pass when the row can be chosen by one or more sortable keys.

### Core Workflow

```sql
CREATE EXTENSION argm;

SELECT customer_id,
       argmax(order_id, total, ordered_at) AS largest_order
FROM orders
GROUP BY customer_id;
```

`argmax(value, key...)` returns the `value` belonging to the lexicographically greatest key tuple. `argmin` selects the least tuple. Additional keys break ties without building a composite value:

```sql
SELECT device_id,
       argmax(reading, measured_at, sequence_no) AS latest_reading
FROM measurements
GROUP BY device_id;
```

Use `anyold(value)` when any member of a group is acceptable:

```sql
SELECT account_id, anyold(display_name)
FROM account_aliases
GROUP BY account_id;
```

### Important Objects

- `argmax(value, key [, key ...])` selects the value associated with the greatest key tuple.
- `argmin(value, key [, key ...])` selects the value associated with the least key tuple.
- `anyold(value)` returns an arbitrary non-null value from the aggregate state.

The aggregates accept any value type; key types must have ordering support. The SQL definitions are parallel-safe and include combine and serialization functions for partial aggregation.

### Semantics and Caveats

Key tuples use one ordering direction and one collation for the whole tuple, with null keys sorted last. If complete key tuples tie, the chosen value is unspecified; add a stable final key when deterministic results matter. As with other PostgreSQL aggregates, empty input produces `NULL`.

`argm` 1.1.x requires PostgreSQL 9.6 or newer. The extension is relocatable. Upgrading from 1.0.3 to 1.1.x requires dropping and recreating the extension because the aggregate state changed; the 1.1.0-to-1.1.1 upgrade does not change the public SQL surface.
