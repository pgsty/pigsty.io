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
  <a class="ext-card ext-card--source" href="pg_qos-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_qos-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_qos-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_qos`**](/ext/e/qos) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5240  | [**`qos`**](/ext/e/qos) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`prioritize`](/ext/e/prioritize) [`pg_permissions`](/ext/e/pg_permissions) [`pg_readonly`](/ext/e/pg_readonly) [`pg_crash`](/ext/e/pg_crash) [`pg_cooldown`](/ext/e/pg_cooldown) [`pg_rewrite`](/ext/e/pg_rewrite) [`pg_repack`](/ext/e/pg_repack) [`pgfincore`](/ext/e/pgfincore) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> requires shared_preload_libraries = 'qos'; official support PG15+


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15" >}} | `pg_qos` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `pg_qos_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-qos` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_qos;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_qos -v 18  # PG 18
pig ext install -y pg_qos -v 17  # PG 17
pig ext install -y pg_qos -v 16  # PG 16
pig ext install -y pg_qos -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_qos_18       # PG 18
dnf install -y pg_qos_17       # PG 17
dnf install -y pg_qos_16       # PG 16
dnf install -y pg_qos_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-qos   # PG 18
apt install -y postgresql-17-qos   # PG 17
apt install -y postgresql-16-qos   # PG 16
apt install -y postgresql-15-qos   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'qos';
```


**Create Extension**:

```sql
CREATE EXTENSION qos;
```




## Usage

> [qos: QoS resource governor extension for PostgreSQL sessions and queries](https://github.com/appstonia/pg_qos)

The `qos` extension provides Quality of Service resource governance for PostgreSQL, allowing administrators to set per-role and per-database limits on memory usage, CPU cores, and concurrent transactions/statements.

### Configuration Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `qos.work_mem_limit` | bytes | Maximum effective `work_mem` per session |
| `qos.cpu_core_limit` | integer | Maximum CPU cores available to a session |
| `qos.max_concurrent_tx` | integer | Maximum concurrent transactions |
| `qos.max_concurrent_select` | integer | Maximum concurrent SELECT statements |
| `qos.max_concurrent_update` | integer | Maximum concurrent UPDATE statements |
| `qos.max_concurrent_delete` | integer | Maximum concurrent DELETE statements |
| `qos.max_concurrent_insert` | integer | Maximum concurrent INSERT statements |

### Per-Role Limits

```sql
ALTER ROLE app_user SET qos.work_mem_limit = '32MB';
ALTER ROLE app_user SET qos.cpu_core_limit = '2';
ALTER ROLE app_user SET qos.max_concurrent_select = '100';
```

### Per-Database Limits

```sql
ALTER DATABASE appdb SET qos.max_concurrent_tx = '200';
```

### Combined Role + Database Limits

```sql
ALTER ROLE app_user IN DATABASE appdb SET qos.work_mem_limit = '4MB';
ALTER ROLE app_user IN DATABASE appdb SET qos.max_concurrent_update = '10';
```

### Enforcement Behavior

- **Work memory**: Intercepts `SET work_mem` and rejects values exceeding configured limits
- **CPU limiting** (Linux only): Binds backend to N CPU cores via CPU affinity; on non-Linux platforms, limits parallel workers instead
- **Concurrency**: Executor hooks track active transactions/statements by type; violations block execution

### Observability

```sql
SET client_min_messages = 'debug1';  -- enable debug output for QoS events
```

The most restrictive combination of role-level and database-level settings takes effect. Requires `shared_preload_libraries = 'qos'` and PostgreSQL 15+.
