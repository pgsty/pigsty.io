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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_command_fw-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_command_fw-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_command_fw-0.1.0.tar.gz</div>
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

| **Related** | [`pgextwlist`](/ext/e/pgextwlist) [`supautils`](/ext/e/supautils) [`block_copy_command`](/ext/e/block_copy_command) [`pg_kpart`](/ext/e/pg_kpart) [`noset`](/ext/e/noset) [`sepgsql`](/ext/e/sepgsql) [`set_user`](/ext/e/set_user) [`pg_permissions`](/ext/e/pg_permissions) [`pg_readonly`](/ext/e/pg_readonly) [`pg_roast`](/ext/e/pg_roast) |
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
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-3PIGSTY.el8.x86_64.rpm pigsty 0.1.0 864.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_18-0.1.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-3PIGSTY.el8.aarch64.rpm pigsty 0.1.0 775.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_18-0.1.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-3PIGSTY.el9.x86_64.rpm pigsty 0.1.0 872.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_18-0.1.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-3PIGSTY.el9.aarch64.rpm pigsty 0.1.0 822.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_18-0.1.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-3PIGSTY.el10.x86_64.rpm pigsty 0.1.0 873.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_18-0.1.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_command_fw_18 pg_command_fw_18-0.1.0-3PIGSTY.el10.aarch64.rpm pigsty 0.1.0 800.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_18-0.1.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb pigsty 0.1.0 687.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb pigsty 0.1.0 573.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb pigsty 0.1.0 687.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb pigsty 0.1.0 574.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb pigsty 0.1.0 766.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb pigsty 0.1.0 678.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb pigsty 0.1.0 757.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb pigsty 0.1.0 668.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb pigsty 0.1.0 752.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-command-fw postgresql-18-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb pigsty 0.1.0 666.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-18-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-3PIGSTY.el8.x86_64.rpm pigsty 0.1.0 861.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_17-0.1.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-3PIGSTY.el8.aarch64.rpm pigsty 0.1.0 772.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_17-0.1.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-3PIGSTY.el9.x86_64.rpm pigsty 0.1.0 869.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_17-0.1.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-3PIGSTY.el9.aarch64.rpm pigsty 0.1.0 819.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_17-0.1.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-3PIGSTY.el10.x86_64.rpm pigsty 0.1.0 869.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_17-0.1.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_command_fw_17 pg_command_fw_17-0.1.0-3PIGSTY.el10.aarch64.rpm pigsty 0.1.0 800.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_17-0.1.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb pigsty 0.1.0 685.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb pigsty 0.1.0 571.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb pigsty 0.1.0 685.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb pigsty 0.1.0 572.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb pigsty 0.1.0 763.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb pigsty 0.1.0 675.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb pigsty 0.1.0 754.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb pigsty 0.1.0 666.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb pigsty 0.1.0 749.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-command-fw postgresql-17-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb pigsty 0.1.0 665.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-17-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-3PIGSTY.el8.x86_64.rpm pigsty 0.1.0 861.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_16-0.1.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-3PIGSTY.el8.aarch64.rpm pigsty 0.1.0 770.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_16-0.1.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-3PIGSTY.el9.x86_64.rpm pigsty 0.1.0 869.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_16-0.1.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-3PIGSTY.el9.aarch64.rpm pigsty 0.1.0 818.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_16-0.1.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-3PIGSTY.el10.x86_64.rpm pigsty 0.1.0 869.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_16-0.1.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_command_fw_16 pg_command_fw_16-0.1.0-3PIGSTY.el10.aarch64.rpm pigsty 0.1.0 800.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_16-0.1.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb pigsty 0.1.0 685.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb pigsty 0.1.0 571.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb pigsty 0.1.0 685.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb pigsty 0.1.0 571.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb pigsty 0.1.0 763.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb pigsty 0.1.0 674.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb pigsty 0.1.0 755.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb pigsty 0.1.0 665.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb pigsty 0.1.0 750.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-command-fw postgresql-16-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb pigsty 0.1.0 664.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-16-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-3PIGSTY.el8.x86_64.rpm pigsty 0.1.0 849.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_command_fw_15-0.1.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-3PIGSTY.el8.aarch64.rpm pigsty 0.1.0 760.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_command_fw_15-0.1.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-3PIGSTY.el9.x86_64.rpm pigsty 0.1.0 857.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_command_fw_15-0.1.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-3PIGSTY.el9.aarch64.rpm pigsty 0.1.0 806.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_command_fw_15-0.1.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-3PIGSTY.el10.x86_64.rpm pigsty 0.1.0 856.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_command_fw_15-0.1.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_command_fw_15 pg_command_fw_15-0.1.0-3PIGSTY.el10.aarch64.rpm pigsty 0.1.0 794.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_command_fw_15-0.1.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb pigsty 0.1.0 677.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb pigsty 0.1.0 565.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb pigsty 0.1.0 677.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb pigsty 0.1.0 565.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb pigsty 0.1.0 754.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb pigsty 0.1.0 667.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb pigsty 0.1.0 745.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb pigsty 0.1.0 658.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb pigsty 0.1.0 741.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-command-fw postgresql-15-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb pigsty 0.1.0 656.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-command-fw/postgresql-15-pg-command-fw_0.1.0-3PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_command_fw;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_command_fw -v 18  # PG 18
pig ext install -y pg_command_fw -v 17  # PG 17
pig ext install -y pg_command_fw -v 16  # PG 16
pig ext install -y pg_command_fw -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_command_fw_18       # PG 18
dnf install -y pg_command_fw_17       # PG 17
dnf install -y pg_command_fw_16       # PG 16
dnf install -y pg_command_fw_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-command-fw   # PG 18
apt install -y postgresql-17-pg-command-fw   # PG 17
apt install -y postgresql-16-pg-command-fw   # PG 16
apt install -y postgresql-15-pg-command-fw   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_command_fw';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_command_fw;
```




## Usage

- Source: [README](https://github.com/rustwizard/pg_command_fw/blob/master/README.md)

`pg_command_fw` is a PostgreSQL command firewall. It intercepts DDL and utility commands through the `ProcessUtility` hook and blocks selected built-in file-reading functions through the post-parse analyze hook. Each command category is controlled by its own GUC.

### Enable It

The extension must be preloaded:

```ini
shared_preload_libraries = 'pg_command_fw'
```

Then enable it in the database:

```sql
CREATE EXTENSION pg_command_fw;
```

Pigsty package metadata is version `0.1.0` for PostgreSQL 15-18 and notes that preloading is required to activate hooks for all sessions. The upstream README also documents PostgreSQL 15-18 support.

### Command Categories

The upstream README documents these firewall categories:

- `TRUNCATE`: `pg_command_fw.block_truncate`, default `on`, blocks non-superusers.
- `DROP TABLE`: `pg_command_fw.block_drop_table`, default `off`, blocks non-superusers when enabled.
- `ALTER SYSTEM`: `pg_command_fw.block_alter_system`, default `on`, blocks everyone.
- `LOAD`: `pg_command_fw.block_load`, default `on`, blocks everyone.
- `COPY ... PROGRAM`: `pg_command_fw.block_copy_program`, default `on`, blocks everyone.
- plain `COPY`: `pg_command_fw.block_copy`, default `off`, blocks non-superusers when enabled.
- `pg_read_file()`, `pg_read_binary_file()`, and `pg_stat_file()`: `pg_command_fw.block_read_file`, default `on`, blocks everyone.

Some categories block only non-superusers, while others block everyone including superusers. Superusers are only exempt from non-superuser categories unless they are explicitly listed in `pg_command_fw.blocked_roles`.

### Important GUCs

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

When `production_schemas` is set, `DROP TABLE` checks are limited to schema-qualified table names in those schemas; the README says unqualified names are not resolved through `search_path`.

### Audit Log

The extension records intercepted commands in `command_fw.audit_log`. The README documents columns such as:

- timestamp
- session and current user names
- original query text
- command type
- target schema or object
- client address
- whether the command was blocked
- internal block reason

Blocked audit inserts are best-effort because the row is rolled back with the blocked transaction; use the PostgreSQL server log as the authoritative record for blocked events.

### Examples

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

Temporarily disable the firewall in a maintenance session:

```sql
SET pg_command_fw.enabled = off;
TRUNCATE big_table;
SET pg_command_fw.enabled = on;
```
