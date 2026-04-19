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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/wrappers-0.6.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">wrappers-0.6.0.tar.gz</div>
    <div class="ext-card__desc">wrappers-0.6.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`wrappers`**](/ext/e/wrappers) | `0.6.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8500  | [**`wrappers`**](/ext/e/wrappers) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`multicorn`](/ext/e/multicorn) [`odbc_fdw`](/ext/e/odbc_fdw) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`pgspider_ext`](/ext/e/pgspider_ext) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> manually upgraded PGRX from 0.16.1 to 0.17.0 by Vonng


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.0` | {{< pgvers "18,17,16,15,14" >}} | `wrappers` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.0` | {{< pgvers "18,17,16,15,14" >}} | `wrappers_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-wrappers` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 | AVAIL PIGSTY 0.6.0 1 |
@ el8.x86_64 18 wrappers_18 wrappers_18-0.6.0-1PIGSTY.el8.x86_64.rpm pigsty 0.6.0 236.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_18-0.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 wrappers_18 wrappers_18-0.6.0-1PIGSTY.el8.aarch64.rpm pigsty 0.6.0 154.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_18-0.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 wrappers_18 wrappers_18-0.6.0-1PIGSTY.el9.x86_64.rpm pigsty 0.6.0 247.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_18-0.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 wrappers_18 wrappers_18-0.6.0-1PIGSTY.el9.aarch64.rpm pigsty 0.6.0 164.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_18-0.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 wrappers_18 wrappers_18-0.6.0-1PIGSTY.el10.x86_64.rpm pigsty 0.6.0 247.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_18-0.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 wrappers_18 wrappers_18-0.6.0-1PIGSTY.el10.aarch64.rpm pigsty 0.6.0 164.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_18-0.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb pigsty 0.6.0 197.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb pigsty 0.6.0 121.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb pigsty 0.6.0 197.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb pigsty 0.6.0 121.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb pigsty 0.6.0 221.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb pigsty 0.6.0 139.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~noble_amd64.deb pigsty 0.6.0 219.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-wrappers postgresql-18-wrappers_0.6.0-1PIGSTY~noble_arm64.deb pigsty 0.6.0 138.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-18-wrappers_0.6.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 wrappers_17 wrappers_17-0.6.0-1PIGSTY.el8.x86_64.rpm pigsty 0.6.0 236.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_17-0.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 wrappers_17 wrappers_17-0.6.0-1PIGSTY.el8.aarch64.rpm pigsty 0.6.0 154.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_17-0.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 wrappers_17 wrappers_17-0.6.0-1PIGSTY.el9.x86_64.rpm pigsty 0.6.0 247.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_17-0.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 wrappers_17 wrappers_17-0.6.0-1PIGSTY.el9.aarch64.rpm pigsty 0.6.0 164.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_17-0.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 wrappers_17 wrappers_17-0.6.0-1PIGSTY.el10.x86_64.rpm pigsty 0.6.0 247.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_17-0.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 wrappers_17 wrappers_17-0.6.0-1PIGSTY.el10.aarch64.rpm pigsty 0.6.0 164.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_17-0.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb pigsty 0.6.0 198.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb pigsty 0.6.0 121.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb pigsty 0.6.0 198.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb pigsty 0.6.0 121.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb pigsty 0.6.0 221.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb pigsty 0.6.0 139.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~noble_amd64.deb pigsty 0.6.0 219.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-wrappers postgresql-17-wrappers_0.6.0-1PIGSTY~noble_arm64.deb pigsty 0.6.0 138.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-17-wrappers_0.6.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 wrappers_16 wrappers_16-0.6.0-1PIGSTY.el8.x86_64.rpm pigsty 0.6.0 236.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_16-0.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 wrappers_16 wrappers_16-0.6.0-1PIGSTY.el8.aarch64.rpm pigsty 0.6.0 154.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_16-0.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 wrappers_16 wrappers_16-0.6.0-1PIGSTY.el9.x86_64.rpm pigsty 0.6.0 247.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_16-0.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 wrappers_16 wrappers_16-0.6.0-1PIGSTY.el9.aarch64.rpm pigsty 0.6.0 164.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_16-0.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 wrappers_16 wrappers_16-0.6.0-1PIGSTY.el10.x86_64.rpm pigsty 0.6.0 247.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_16-0.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 wrappers_16 wrappers_16-0.6.0-1PIGSTY.el10.aarch64.rpm pigsty 0.6.0 165.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_16-0.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb pigsty 0.6.0 198.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb pigsty 0.6.0 121.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb pigsty 0.6.0 197.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb pigsty 0.6.0 121.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb pigsty 0.6.0 221.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb pigsty 0.6.0 139.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~noble_amd64.deb pigsty 0.6.0 219.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-wrappers postgresql-16-wrappers_0.6.0-1PIGSTY~noble_arm64.deb pigsty 0.6.0 138.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-16-wrappers_0.6.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 wrappers_15 wrappers_15-0.6.0-1PIGSTY.el8.x86_64.rpm pigsty 0.6.0 236.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_15-0.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 wrappers_15 wrappers_15-0.6.0-1PIGSTY.el8.aarch64.rpm pigsty 0.6.0 154.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_15-0.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 wrappers_15 wrappers_15-0.6.0-1PIGSTY.el9.x86_64.rpm pigsty 0.6.0 247.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_15-0.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 wrappers_15 wrappers_15-0.6.0-1PIGSTY.el9.aarch64.rpm pigsty 0.6.0 164.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_15-0.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 wrappers_15 wrappers_15-0.6.0-1PIGSTY.el10.x86_64.rpm pigsty 0.6.0 247.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_15-0.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 wrappers_15 wrappers_15-0.6.0-1PIGSTY.el10.aarch64.rpm pigsty 0.6.0 164.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_15-0.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb pigsty 0.6.0 197.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb pigsty 0.6.0 121.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb pigsty 0.6.0 197.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb pigsty 0.6.0 121.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb pigsty 0.6.0 221.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb pigsty 0.6.0 139.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~noble_amd64.deb pigsty 0.6.0 218.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-wrappers postgresql-15-wrappers_0.6.0-1PIGSTY~noble_arm64.deb pigsty 0.6.0 138.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-15-wrappers_0.6.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 wrappers_14 wrappers_14-0.6.0-1PIGSTY.el8.x86_64.rpm pigsty 0.6.0 236.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wrappers_14-0.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 wrappers_14 wrappers_14-0.6.0-1PIGSTY.el8.aarch64.rpm pigsty 0.6.0 154.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wrappers_14-0.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 wrappers_14 wrappers_14-0.6.0-1PIGSTY.el9.x86_64.rpm pigsty 0.6.0 247.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wrappers_14-0.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 wrappers_14 wrappers_14-0.6.0-1PIGSTY.el9.aarch64.rpm pigsty 0.6.0 164.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wrappers_14-0.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 wrappers_14 wrappers_14-0.6.0-1PIGSTY.el10.x86_64.rpm pigsty 0.6.0 247.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/wrappers_14-0.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 wrappers_14 wrappers_14-0.6.0-1PIGSTY.el10.aarch64.rpm pigsty 0.6.0 164.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/wrappers_14-0.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb pigsty 0.6.0 197.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb pigsty 0.6.0 121.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb pigsty 0.6.0 197.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb pigsty 0.6.0 121.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb pigsty 0.6.0 221.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb pigsty 0.6.0 139.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~noble_amd64.deb pigsty 0.6.0 218.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-wrappers postgresql-14-wrappers_0.6.0-1PIGSTY~noble_arm64.deb pigsty 0.6.0 138.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/w/wrappers/postgresql-14-wrappers_0.6.0-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

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

Sources: [official README](https://github.com/supabase/wrappers/blob/main/README.md), [official docs](https://fdw.dev/), [v0.6.0 release](https://github.com/supabase/wrappers/releases/tag/v0.6.0)

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

Upstream ships wrappers for databases and services such as BigQuery, ClickHouse, DuckDB, MySQL, Redis, S3, Stripe, Snowflake, Slack, Notion, OpenAPI, Infura, and many others. Read and write support varies by wrapper, but pushdown for `WHERE`, `ORDER BY`, and `LIMIT` is a core framework feature.

### Version Notes

The `v0.6.0` release keeps the same extension model but expands the catalog and wrapper behavior. Official release notes call out:

- new OpenAPI FDW support
- new Infura FDW support
- Snowflake `timeout_secs` table option
- write-path and scan fixes across several wrappers

### Caveats

- Wrapper-specific options, supported objects, and write support differ widely; check the official catalog page for the exact FDW you use.
- The docs warn that logical restores can fail when materialized views depend on foreign tables, so avoid that pattern or rely on physical backups.
