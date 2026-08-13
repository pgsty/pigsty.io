---
title: "wrappers"
linkTitle: "wrappers"
description: "Foreign data wrappers developed by Supabase"
weight: 8500
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supabase/wrappers">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supabase/wrappers</div>
    <div class="ext-card__desc">https://github.com/supabase/wrappers</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/wrappers-0.6.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">wrappers-0.6.2.tar.gz</div>
    <div class="ext-card__desc">wrappers-0.6.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`wrappers`**](/ext/e/wrappers) | `0.6.2` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8500  | [**`wrappers`**](/ext/e/wrappers) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`odbc_fdw`](/ext/e/odbc_fdw) [`multicorn`](/ext/e/multicorn) [`jdbc_fdw`](/ext/e/jdbc_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.2` | {{< pgvers "18,17,16,15,14" >}} | `wrappers` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.2` | {{< pgvers "18,17,16,15,14" >}} | `wrappers_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-wrappers` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| u26.x86_64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
| u26.aarch64 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 | AVAIL PIGSTY 0.6.2 1 |
@ el8.x86_64 18 wrappers_18 wrappers_18-0.6.2-1PIGSTY.el8.x86_64.rpm pigsty 0.6.2 461.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_18-0.6.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 wrappers_18 wrappers_18-0.6.2-1PIGSTY.el8.aarch64.rpm pigsty 0.6.2 440.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_18-0.6.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 wrappers_18 wrappers_18-0.6.2-1PIGSTY.el9.x86_64.rpm pigsty 0.6.2 467.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_18-0.6.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 wrappers_18 wrappers_18-0.6.2-1PIGSTY.el9.aarch64.rpm pigsty 0.6.2 465.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_18-0.6.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 wrappers_18 wrappers_18-0.6.2-1PIGSTY.el10.x86_64.rpm pigsty 0.6.2 466.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_18-0.6.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 wrappers_18 wrappers_18-0.6.2-1PIGSTY.el10.aarch64.rpm pigsty 0.6.2 465.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_18-0.6.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb pigsty 0.6.2 372.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb pigsty 0.6.2 331.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb pigsty 0.6.2 372.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb pigsty 0.6.2 331.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb pigsty 0.6.2 411.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb pigsty 0.6.2 388.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~noble_amd64.deb pigsty 0.6.2 406.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~noble_arm64.deb pigsty 0.6.2 383.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb pigsty 0.6.2 403.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb pigsty 0.6.2 381.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-18-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 wrappers_17 wrappers_17-0.6.2-1PIGSTY.el8.x86_64.rpm pigsty 0.6.2 460.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_17-0.6.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 wrappers_17 wrappers_17-0.6.2-1PIGSTY.el8.aarch64.rpm pigsty 0.6.2 440.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_17-0.6.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 wrappers_17 wrappers_17-0.6.2-1PIGSTY.el9.x86_64.rpm pigsty 0.6.2 466.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_17-0.6.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 wrappers_17 wrappers_17-0.6.2-1PIGSTY.el9.aarch64.rpm pigsty 0.6.2 464.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_17-0.6.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 wrappers_17 wrappers_17-0.6.2-1PIGSTY.el10.x86_64.rpm pigsty 0.6.2 467.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_17-0.6.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 wrappers_17 wrappers_17-0.6.2-1PIGSTY.el10.aarch64.rpm pigsty 0.6.2 465.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_17-0.6.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb pigsty 0.6.2 372.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb pigsty 0.6.2 332.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb pigsty 0.6.2 372.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb pigsty 0.6.2 331.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb pigsty 0.6.2 410.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb pigsty 0.6.2 388.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~noble_amd64.deb pigsty 0.6.2 405.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~noble_arm64.deb pigsty 0.6.2 383.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb pigsty 0.6.2 403.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb pigsty 0.6.2 381.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-17-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 wrappers_16 wrappers_16-0.6.2-1PIGSTY.el8.x86_64.rpm pigsty 0.6.2 459.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_16-0.6.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 wrappers_16 wrappers_16-0.6.2-1PIGSTY.el8.aarch64.rpm pigsty 0.6.2 439.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_16-0.6.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 wrappers_16 wrappers_16-0.6.2-1PIGSTY.el9.x86_64.rpm pigsty 0.6.2 466.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_16-0.6.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 wrappers_16 wrappers_16-0.6.2-1PIGSTY.el9.aarch64.rpm pigsty 0.6.2 464.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_16-0.6.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 wrappers_16 wrappers_16-0.6.2-1PIGSTY.el10.x86_64.rpm pigsty 0.6.2 466.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_16-0.6.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 wrappers_16 wrappers_16-0.6.2-1PIGSTY.el10.aarch64.rpm pigsty 0.6.2 464.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_16-0.6.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb pigsty 0.6.2 372.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb pigsty 0.6.2 332.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb pigsty 0.6.2 371.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb pigsty 0.6.2 332.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb pigsty 0.6.2 410.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb pigsty 0.6.2 388.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~noble_amd64.deb pigsty 0.6.2 405.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~noble_arm64.deb pigsty 0.6.2 383.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb pigsty 0.6.2 403.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb pigsty 0.6.2 381.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-16-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 wrappers_15 wrappers_15-0.6.2-1PIGSTY.el8.x86_64.rpm pigsty 0.6.2 455.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_15-0.6.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 wrappers_15 wrappers_15-0.6.2-1PIGSTY.el8.aarch64.rpm pigsty 0.6.2 435.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_15-0.6.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 wrappers_15 wrappers_15-0.6.2-1PIGSTY.el9.x86_64.rpm pigsty 0.6.2 463.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_15-0.6.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 wrappers_15 wrappers_15-0.6.2-1PIGSTY.el9.aarch64.rpm pigsty 0.6.2 460.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_15-0.6.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 wrappers_15 wrappers_15-0.6.2-1PIGSTY.el10.x86_64.rpm pigsty 0.6.2 462.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_15-0.6.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 wrappers_15 wrappers_15-0.6.2-1PIGSTY.el10.aarch64.rpm pigsty 0.6.2 461.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_15-0.6.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb pigsty 0.6.2 368.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb pigsty 0.6.2 329.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb pigsty 0.6.2 368.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb pigsty 0.6.2 328.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb pigsty 0.6.2 406.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb pigsty 0.6.2 384.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~noble_amd64.deb pigsty 0.6.2 401.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~noble_arm64.deb pigsty 0.6.2 380.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb pigsty 0.6.2 399.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb pigsty 0.6.2 378.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-15-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 wrappers_14 wrappers_14-0.6.2-1PIGSTY.el8.x86_64.rpm pigsty 0.6.2 454.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_14-0.6.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 wrappers_14 wrappers_14-0.6.2-1PIGSTY.el8.aarch64.rpm pigsty 0.6.2 435.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_14-0.6.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 wrappers_14 wrappers_14-0.6.2-1PIGSTY.el9.x86_64.rpm pigsty 0.6.2 462.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_14-0.6.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 wrappers_14 wrappers_14-0.6.2-1PIGSTY.el9.aarch64.rpm pigsty 0.6.2 459.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_14-0.6.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 wrappers_14 wrappers_14-0.6.2-1PIGSTY.el10.x86_64.rpm pigsty 0.6.2 462.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_14-0.6.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 wrappers_14 wrappers_14-0.6.2-1PIGSTY.el10.aarch64.rpm pigsty 0.6.2 460.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_14-0.6.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb pigsty 0.6.2 368.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb pigsty 0.6.2 329.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb pigsty 0.6.2 368.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb pigsty 0.6.2 330.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb pigsty 0.6.2 406.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb pigsty 0.6.2 385.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~noble_amd64.deb pigsty 0.6.2 401.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~noble_arm64.deb pigsty 0.6.2 380.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb pigsty 0.6.2 399.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb pigsty 0.6.2 378.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/w/wrappers/postgresql-14-wrappers_0.6.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `wrappers` using `pig build`:

```bash
pig build pkg wrappers         # build RPM / DEB packages
```


## Install

You can install `wrappers` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install wrappers;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y wrappers -v 18  # PG 18
pig ext install -y wrappers -v 17  # PG 17
pig ext install -y wrappers -v 16  # PG 16
pig ext install -y wrappers -v 15  # PG 15
pig ext install -y wrappers -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y wrappers_18       # PG 18
dnf install -y wrappers_17       # PG 17
dnf install -y wrappers_16       # PG 16
dnf install -y wrappers_15       # PG 15
dnf install -y wrappers_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-wrappers   # PG 18
apt install -y postgresql-17-wrappers   # PG 17
apt install -y postgresql-16-wrappers   # PG 16
apt install -y postgresql-15-wrappers   # PG 15
apt install -y postgresql-14-wrappers   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION wrappers;
```




## Usage

Sources:

- [Wrappers v0.6.2 README](https://github.com/supabase/wrappers/blob/v0.6.2/README.md)
- [Official FDW documentation](https://fdw.dev/)
- [v0.6.2 release](https://github.com/supabase/wrappers/releases/tag/v0.6.2)
- [MongoDB FDW documentation](https://fdw.dev/catalog/mongodb/)
- [Security guidance](https://fdw.dev/guides/security/)

`wrappers` is both a Rust framework for writing PostgreSQL foreign data wrappers and a packaged collection of Supabase-maintained FDWs. A single extension installs many wrapper implementations, then each foreign server chooses the specific wrapper type it needs.

```sql
CREATE EXTENSION wrappers;
```

### Typical Workflow

Create a server for one wrapper, then expose remote data through foreign tables:

```sql
CREATE SERVER stripe_server
  FOREIGN DATA WRAPPER stripe_wrapper
  OPTIONS (
    api_key_id 'stripe_api_key',
    api_url 'https://api.stripe.com/v1/'
  );

CREATE FOREIGN TABLE stripe_customers (
  id text,
  email text,
  name text,
  description text,
  created timestamp,
  attrs jsonb
)
  SERVER stripe_server
  OPTIONS (
    object 'customers',
    rowid_column 'id'
  );
```

### What It Covers

Upstream ships wrappers for databases and services such as BigQuery, ClickHouse, DuckDB, DynamoDB, MySQL/Doris, Redis, S3, S3 Vectors, Stripe, Snowflake, Slack, Notion, OpenAPI, Infura, and many others. Read and write support varies by wrapper, but pushdown for `WHERE`, `ORDER BY`, and `LIMIT` is a core framework feature.

### Version 0.6.2

The `v0.6.2` release keeps the same extension model and adds:

- a MongoDB FDW with read and write support
- session-variable credentials for per-request authentication in WASM wrappers
- RFC 8288 `Link` header pagination for the OpenAPI FDW
- runtime, dependency, and wrapper-specific fixes documented in the release notes

Wrapper-specific pages remain the authority for server options, foreign-table columns, pushdown, and write support.

### Caveats

- Wrapper-specific options, supported objects, and write support differ widely; check the official catalog page for the exact FDW you use.
- The docs warn that logical restores can fail when materialized views depend on foreign tables, so avoid that pattern or rely on physical backups.
- Foreign tables do not provide a security boundary by themselves. Keep them in private schemas, grant access deliberately, use the least-privileged remote credentials available, and apply Row Level Security to local tables that expose or cache remote data.
- Keep API keys and tokens in the supported secret store or per-request credential mechanism instead of embedding them in SQL checked into source control.
