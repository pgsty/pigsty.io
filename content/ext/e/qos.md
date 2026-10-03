---
title: "qos"
linkTitle: "qos"
description: "QoS resource governor extension for PostgreSQL sessions and queries"
weight: 5240
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/appstonia/pg_qos">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">appstonia/pg_qos</div>
    <div class="ext-card__desc">https://github.com/appstonia/pg_qos</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_qos-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_qos-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_qos-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_qos`**](/ext/e/qos) | `1.1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5240  | [**`qos`**](/ext/e/qos) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plan_filter`](/ext/e/plan_filter) [`pg_kpart`](/ext/e/pg_kpart) [`pg_readonly`](/ext/e/pg_readonly) [`prioritize`](/ext/e/prioritize) [`block_copy_command`](/ext/e/block_copy_command) [`safeupdate`](/ext/e/safeupdate) [`pg_command_fw`](/ext/e/pg_command_fw) [`pg_strict`](/ext/e/pg_strict) [`pg_hint_plan`](/ext/e/pg_hint_plan) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream PG15-18; RPM also carries PG14. Requires preload.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15" >}} | `pg_qos` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_qos_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-qos` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_qos_18 pg_qos_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_qos_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_qos_18 pg_qos_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 29.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_qos_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_qos_18 pg_qos_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_qos_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_qos_18 pg_qos_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_qos_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_qos_18 pg_qos_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_qos_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_qos_18 pg_qos_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_qos_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 69.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 68.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 69.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 68.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 73.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 73.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 71.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 71.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 71.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-qos postgresql-18-qos_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 71.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-18-qos_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_qos_17 pg_qos_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_qos_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_qos_17 pg_qos_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 29.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_qos_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_qos_17 pg_qos_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_qos_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_qos_17 pg_qos_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_qos_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_qos_17 pg_qos_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_qos_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_qos_17 pg_qos_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_qos_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 69.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 68.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 69.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 68.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 81.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 80.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 71.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 71.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 72.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-qos postgresql-17-qos_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 71.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-17-qos_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_qos_16 pg_qos_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_qos_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_qos_16 pg_qos_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 28.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_qos_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_qos_16 pg_qos_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_qos_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_qos_16 pg_qos_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_qos_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_qos_16 pg_qos_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_qos_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_qos_16 pg_qos_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_qos_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 69.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 68.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 69.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 68.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 79.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 79.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 71.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 71.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 71.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-qos postgresql-16-qos_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 71.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-16-qos_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_qos_15 pg_qos_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_qos_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_qos_15 pg_qos_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 29.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_qos_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_qos_15 pg_qos_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 29.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_qos_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_qos_15 pg_qos_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 29.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_qos_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_qos_15 pg_qos_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 29.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_qos_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_qos_15 pg_qos_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 29.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_qos_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 69.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 68.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 69.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 68.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 80.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 80.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 72.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 71.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 71.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-qos postgresql-15-qos_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 71.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qos/postgresql-15-qos_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_qos` using `pig build`:

```bash
pig build pkg pg_qos         # build RPM / DEB packages
```


## Install

You can install `pg_qos` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_qos;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_qos -v 18  # PG 18
pig ext install -y pg_qos -v 17  # PG 17
pig ext install -y pg_qos -v 16  # PG 16
pig ext install -y pg_qos -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_qos_18       # PG 18
dnf install -y pg_qos_17       # PG 17
dnf install -y pg_qos_16       # PG 16
dnf install -y pg_qos_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-qos   # PG 18
apt install -y postgresql-17-qos   # PG 17
apt install -y postgresql-16-qos   # PG 16
apt install -y postgresql-15-qos   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'qos';
```


**Create Extension**:

```sql
CREATE EXTENSION qos;
```

## Usage

Sources:

- [README.md](https://github.com/appstonia/pg_qos/blob/fd3462b7fa81f8bb8aed2113a1f75bcf0e5dfe00/README.md)
- [qos.control](https://github.com/appstonia/pg_qos/blob/fd3462b7fa81f8bb8aed2113a1f75bcf0e5dfe00/qos.control)
- [qos--1.0--1.1.sql](https://github.com/appstonia/pg_qos/blob/fd3462b7fa81f8bb8aed2113a1f75bcf0e5dfe00/qos--1.0--1.1.sql)
- [qos--1.1.sql](https://github.com/appstonia/pg_qos/blob/fd3462b7fa81f8bb8aed2113a1f75bcf0e5dfe00/qos--1.1.sql)

`qos` 1.1 (distribution 1.1.0) applies per-role and per-database resource limits on PostgreSQL 15+. Merge `qos` into `shared_preload_libraries` and restart before creating its SQL objects as an administrator. CPU affinity limits require Linux.

### Configure Limits

```sql
CREATE EXTENSION qos;
ALTER ROLE app_user SET qos.work_mem_limit = '32MB';
ALTER ROLE app_user SET qos.max_concurrent_select = '100';
ALTER ROLE app_user SET qos.max_select_rate = '10/500ms';
SELECT * FROM qos_stat_rate;
```

### Limit Semantics

`qos.work_mem_limit` caps effective work memory; `qos.cpu_core_limit` controls CPU affinity on Linux and limits parallel workers on other platforms. `qos.max_concurrent_tx`, `qos.max_concurrent_select`, `qos.max_concurrent_update`, `qos.max_concurrent_delete` and `qos.max_concurrent_insert` cap concurrent operations.

`qos.max_tx_rate`, `qos.max_select_rate`, `qos.max_update_rate`, `qos.max_delete_rate` and `qos.max_insert_rate` use count/window pairs such as 100/1s. The default -1 disables each rate limit. Windows range from 100 ms to one day. Rate and concurrency violations raise SQLSTATE 54000; clients should use the retry hint. The most restrictive applicable role/database setting wins, and rate pairs are compared by normalized rate.

### Observability and Upgrade

`qos_stat_rate` exposes live windows; the other `qos_stat` views expose activity and counters. `qos_prometheus_metrics()` renders Prometheus exposition text. Counters reset at server restart. Version 1.1 replaces the old nonfunctional `qos_get_stats()` with these views.

Upgrading requires replacing the library and restarting PostgreSQL because the shared-memory layout changes, followed by `ALTER EXTENSION qos UPDATE TO '1.1'` in each database. New rate limits stay disabled until configured. These controls do not replace application admission limits or operating-system isolation.
