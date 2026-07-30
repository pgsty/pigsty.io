---
title: "pg_durable"
linkTitle: "pg_durable"
description: "Durable SQL functions for PostgreSQL"
weight: 2870
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/microsoft/pg_durable">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">microsoft/pg_durable</div>
    <div class="ext-card__desc">https://github.com/microsoft/pg_durable</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_durable-0.2.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_durable-0.2.3.tar.gz</div>
    <div class="ext-card__desc">pg_durable-0.2.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_durable`**](/ext/e/pg_durable) | `0.2.3` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2870  | [**`pg_durable`**](/ext/e/pg_durable) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `df` |
{.ext-table}

| **Related** | [`pg_task`](/ext/e/pg_task) [`pgmq`](/ext/e/pgmq) [`pg_background`](/ext/e/pg_background) [`ulak`](/ext/e/ulak) [`pgmb`](/ext/e/pgmb) [`pg_later`](/ext/e/pg_later) [`pg_dispatch`](/ext/e/pg_dispatch) [`pg_retry`](/ext/e/pg_retry) [`fsm_core`](/ext/e/fsm_core) [`pglock`](/ext/e/pglock) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires shared_preload_libraries=pg_durable and a superuser worker role.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_durable` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_durable_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-durable` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
@ el8.x86_64 18 pg_durable_18 pg_durable_18-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_18-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_durable_18 pg_durable_18-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_18-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_durable_18 pg_durable_18-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_18-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_durable_18 pg_durable_18-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 4.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_18-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_durable_18 pg_durable_18-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_18-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_durable_18 pg_durable_18-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_18-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 3.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_durable_17 pg_durable_17-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_17-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_durable_17 pg_durable_17-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_17-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_durable_17 pg_durable_17-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_17-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_durable_17 pg_durable_17-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 4.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_17-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_durable_17 pg_durable_17-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_17-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_durable_17 pg_durable_17-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 4.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_17-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 3.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 3.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_durable_16 pg_durable_16-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_16-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_durable_16 pg_durable_16-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_16-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_durable_16 pg_durable_16-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_16-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_durable_16 pg_durable_16-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 4.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_16-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_durable_16 pg_durable_16-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_16-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_durable_16 pg_durable_16-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_16-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 3.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 3.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_durable_15 pg_durable_15-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_15-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_durable_15 pg_durable_15-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_15-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_durable_15 pg_durable_15-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_15-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_durable_15 pg_durable_15-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 4.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_15-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_durable_15 pg_durable_15-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_15-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_durable_15 pg_durable_15-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 4.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_15-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 3.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_durable_14 pg_durable_14-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 4.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_14-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_durable_14 pg_durable_14-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 4.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_14-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_durable_14 pg_durable_14-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_14-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_durable_14 pg_durable_14-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_14-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_durable_14 pg_durable_14-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_14-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_durable_14 pg_durable_14-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 4.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_14-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 3.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb pigsty 0.2.3 4.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb pigsty 0.2.3 3.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_durable` using `pig build`:

```bash
pig build pkg pg_durable         # build RPM / DEB packages
```


## Install

You can install `pg_durable` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_durable;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_durable -v 18  # PG 18
pig ext install -y pg_durable -v 17  # PG 17
pig ext install -y pg_durable -v 16  # PG 16
pig ext install -y pg_durable -v 15  # PG 15
pig ext install -y pg_durable -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_durable_18       # PG 18
dnf install -y pg_durable_17       # PG 17
dnf install -y pg_durable_16       # PG 16
dnf install -y pg_durable_15       # PG 15
dnf install -y pg_durable_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-durable   # PG 18
apt install -y postgresql-17-pg-durable   # PG 17
apt install -y postgresql-16-pg-durable   # PG 16
apt install -y postgresql-15-pg-durable   # PG 15
apt install -y postgresql-14-pg-durable   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_durable';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_durable;
```

## Usage

Sources:

- [Official v0.2.3 README](https://github.com/microsoft/pg_durable/blob/v0.2.3/README.md)
- [v0.2.3 user guide](https://github.com/microsoft/pg_durable/blob/v0.2.3/USER_GUIDE.md)
- [v0.2.3 release notes](https://github.com/microsoft/pg_durable/releases/tag/v0.2.3)
- [v0.2.2 to v0.2.3 upgrade SQL](https://github.com/microsoft/pg_durable/blob/v0.2.3/sql/pg_durable--0.2.2--0.2.3.sql)

`pg_durable` runs durable, fault-tolerant SQL workflows inside PostgreSQL. A workflow is a graph of SQL steps, timers, signals, conditions, and parallel branches submitted with `df.start()`. Execution state is checkpointed in PostgreSQL so completed steps are not repeated after a crash, restart, or retry.

### Enable and Grant Access

Preload the worker, select its database and superuser role if the defaults are unsuitable, then restart PostgreSQL:

```conf
shared_preload_libraries = 'pg_durable'
pg_durable.database = 'postgres'
pg_durable.worker_role = 'postgres'
```

Create the extension in `pg_durable.database` and grant an application login role access:

```sql
CREATE EXTENSION pg_durable;
SELECT df.grant_usage('app_role');
```

The worker role must be a superuser because it manages all users' instances while bypassing row-level security. The role that calls `df.start()` must have `LOGIN`, because workflow SQL is executed through a connection authenticated as that captured role.

### Build and Run a Workflow

```sql
SELECT df.start(
    'SELECT 100 AS amount' |=> 'total'
    ~> 'SELECT $total.amount * 2 AS doubled',
    'double-total'
);
```

`df.start()` returns an instance ID. Use it to monitor or control the run:

```sql
SELECT df.status('a1b2c3d4');
SELECT df.result('a1b2c3d4');
SELECT * FROM df.instance_nodes('a1b2c3d4');
SELECT * FROM df.instance_executions('a1b2c3d4', 20);
SELECT df.cancel('a1b2c3d4', 'No longer needed');
```

### DSL Index

- `~>` sequences steps; `|=>` names a result for `$name`, `$name.column`, or `$name.*` substitution.
- `&` / `df.join()` waits for parallel branches; `|` / `df.race()` keeps the first result.
- `?>` and `!>` / `df.if()` select conditional branches; `@>` / `df.loop()` repeats a graph.
- `df.sleep()`, `df.wait_for_schedule()`, and `df.wait_for_signal()` make waits durable.
- `df.signal()`, `df.wait_for_completion()`, `df.explain()`, and the instance-inspection functions operate on running or stored instances.
- `df.setvar()`, `df.getvar()`, `df.unsetvar()`, and `df.clearvars()` manage per-user variables captured when `df.start()` is called.

### Version 0.2.3 Boundaries

- Fresh v0.2.3 installs place provider objects in `_duroxide`; installations upgraded from 0.2.2 or earlier keep `duroxide`. `df.duroxide_schema()` reports the active schema.
- Graphs deeper than 256 levels or larger than 10,000 nodes are rejected. A condition query returning no rows evaluates as false.
- Re-run `df.grant_usage()` after `ALTER EXTENSION ... UPDATE`, because grants on all functions do not automatically include functions added later.
- Variable `{name}` substitution is raw SQL text substitution; never place untrusted input in such variables. Named step-result substitution through `$name` performs SQL escaping.
- `df.http()` availability and egress policy are compile-time features. Its restrictions do not sandbox arbitrary SQL or other installed extensions.
- Upstream labels the project preview, and the published v0.2.3 Docker images are for evaluation and learning rather than production.
