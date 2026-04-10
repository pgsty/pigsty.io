---
title: "pg_command_fw"
linkTitle: "pg_command_fw"
description: "DDL and utility command firewall for PostgreSQL"
weight: 7400
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rustwizard/pg_command_fw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rustwizard/pg_command_fw</div>
    <div class="ext-card__desc">https://github.com/rustwizard/pg_command_fw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_command_fw-0.1.0.zip">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_command_fw-0.1.0.zip</div>
    <div class="ext-card__desc">pg_command_fw-0.1.0.zip</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_command_fw`**](/ext/e/pg_command_fw) | `0.1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7400  | [**`pg_command_fw`**](/ext/e/pg_command_fw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgaudit`](/ext/e/pgaudit) [`pgextwlist`](/ext/e/pgextwlist) [`login_hook`](/ext/e/login_hook) [`set_user`](/ext/e/set_user) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires shared_preload_libraries = pg_command_fw to activate hooks for all sessions.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15" >}} | `pg_command_fw` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15" >}} | `pg_command_fw_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-command-fw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 313.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 204.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 329.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 216.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 329.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 217.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 255.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 155.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 255.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 155.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 288.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 179.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 286.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 178.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 313.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 204.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 329.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 216.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 329.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 217.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 255.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 155.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 254.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 155.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 288.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 179.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 285.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 178.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 313.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 204.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 329.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 216.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 328.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 217.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 255.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 155.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 255.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 155.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 288.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 179.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 286.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 178.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 311.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 202.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 327.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 215.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 327.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 216.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 254.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 153.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 254.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 153.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 287.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 178.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 284.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 176.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_command_fw` using `pig build`:

```bash
pig build pkg pg_command_fw         # build RPM / DEB packages
```


## Install

You can install `pg_command_fw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_command_fw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_command_fw -v 18  # PG 18
pig ext install -y pg_command_fw -v 17  # PG 17
pig ext install -y pg_command_fw -v 16  # PG 16
pig ext install -y pg_command_fw -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_command_fw_18       # PG 18
dnf install -y pg_command_fw_17       # PG 17
dnf install -y pg_command_fw_16       # PG 16
dnf install -y pg_command_fw_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-command-fw   # PG 18
apt install -y postgresql-17-pg-command-fw   # PG 17
apt install -y postgresql-16-pg-command-fw   # PG 16
apt install -y postgresql-15-pg-command-fw   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_command_fw';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_command_fw;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION pg_command_fw;
> ALTER SYSTEM SET pg_command_fw.block_truncate = on;
> ALTER SYSTEM SET pg_command_fw.production_schemas = 'public,payments';
> SELECT pg_reload_conf();
> ```
>
> Source: [README](https://github.com/rustwizard/pg_command_fw)

`pg_command_fw` is a PostgreSQL command firewall. It intercepts DDL and utility commands through the `ProcessUtility` hook and blocks selected built-in file-reading functions through the post-parse analyze hook. Each command category is controlled by its own GUC.

## Setup

The extension must be preloaded:

```ini
shared_preload_libraries = 'pg_command_fw'
```

Then enable it in the database:

```sql
CREATE EXTENSION pg_command_fw;
```

## Command Categories

The upstream README documents these firewall categories:

- `TRUNCATE`
- `DROP TABLE`
- `ALTER SYSTEM`
- `LOAD`
- `COPY ... PROGRAM`
- plain `COPY`
- `pg_read_file()`, `pg_read_binary_file()`, and `pg_stat_file()`

Some categories block only non-superusers, while others block everyone including superusers. Superusers are only exempt from non-superuser categories unless they are explicitly listed in `pg_command_fw.blocked_roles`.

## Important GUCs

- `pg_command_fw.enabled` to enable or disable all checks
- `pg_command_fw.block_truncate`
- `pg_command_fw.block_drop_table`
- `pg_command_fw.production_schemas`
- `pg_command_fw.block_alter_system`
- `pg_command_fw.block_load`
- `pg_command_fw.block_copy_program`
- `pg_command_fw.block_copy`
- `pg_command_fw.block_read_file`
- `pg_command_fw.blocked_roles`
- `pg_command_fw.hint`
- `pg_command_fw.audit_log_enabled`

## Audit Log

The extension records intercepted commands in `command_fw.audit_log`. The README documents columns such as:

- timestamp
- session and current user names
- original query text
- command type
- target schema or object
- client address
- whether the command was blocked
- internal block reason

## Examples

Block `TRUNCATE` and `DROP TABLE` in production schemas:

```sql
ALTER SYSTEM SET pg_command_fw.block_truncate = on;
ALTER SYSTEM SET pg_command_fw.block_drop_table = on;
ALTER SYSTEM SET pg_command_fw.production_schemas = 'public,payments';
ALTER SYSTEM SET pg_command_fw.hint = 'Contact your DBA to request access';
SELECT pg_reload_conf();
```

Block a specific role from any governed command:

```sql
ALTER SYSTEM SET pg_command_fw.blocked_roles = 'app_deploy';
SELECT pg_reload_conf();
```
