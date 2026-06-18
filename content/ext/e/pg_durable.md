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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_durable-0.2.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_durable-0.2.2.tar.gz</div>
    <div class="ext-card__desc">pg_durable-0.2.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_durable`**](/ext/e/pg_durable) | `0.2.2` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2870  | [**`pg_durable`**](/ext/e/pg_durable) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `df` |
{.ext-table}


> Requires shared_preload_libraries=pg_durable and a superuser worker role. Upstream README targets PG17; DEB validated PG14-18 on u24a arm64, RPM spec targets PG14-18; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.2` | {{< pgvers "14,15,16,17,18" >}} | `pg_durable` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.2` | {{< pgvers "14,15,16,17,18" >}} | `pg_durable_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.2` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-durable` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
@ el8.x86_64 18 pg_durable_18 pg_durable_18-0.2.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_18-0.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_durable_18 pg_durable_18-0.2.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2.2 4.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_18-0.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_durable_18 pg_durable_18-0.2.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_18-0.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_durable_18 pg_durable_18-0.2.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_18-0.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_durable_18 pg_durable_18-0.2.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_18-0.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_durable_18 pg_durable_18-0.2.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_18-0.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-durable postgresql-18-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb pigsty 0.2.2 3.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-18-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_durable_17 pg_durable_17-0.2.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_17-0.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_durable_17 pg_durable_17-0.2.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2.2 4.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_17-0.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_durable_17 pg_durable_17-0.2.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_17-0.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_durable_17 pg_durable_17-0.2.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_17-0.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_durable_17 pg_durable_17-0.2.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_17-0.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_durable_17 pg_durable_17-0.2.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_17-0.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-durable postgresql-17-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb pigsty 0.2.2 3.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-17-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_durable_16 pg_durable_16-0.2.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_16-0.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_durable_16 pg_durable_16-0.2.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2.2 4.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_16-0.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_durable_16 pg_durable_16-0.2.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_16-0.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_durable_16 pg_durable_16-0.2.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_16-0.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_durable_16 pg_durable_16-0.2.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_16-0.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_durable_16 pg_durable_16-0.2.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_16-0.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-durable postgresql-16-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb pigsty 0.2.2 3.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-16-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_durable_15 pg_durable_15-0.2.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_15-0.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_durable_15 pg_durable_15-0.2.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2.2 4.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_15-0.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_durable_15 pg_durable_15-0.2.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_15-0.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_durable_15 pg_durable_15-0.2.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_15-0.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_durable_15 pg_durable_15-0.2.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_15-0.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_durable_15 pg_durable_15-0.2.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_15-0.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-durable postgresql-15-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb pigsty 0.2.2 3.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-15-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_durable_14 pg_durable_14-0.2.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_durable_14-0.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_durable_14 pg_durable_14-0.2.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2.2 4.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_durable_14-0.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_durable_14 pg_durable_14-0.2.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_durable_14-0.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_durable_14 pg_durable_14-0.2.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_durable_14-0.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_durable_14 pg_durable_14-0.2.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2.2 5.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_durable_14-0.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_durable_14 pg_durable_14-0.2.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2.2 5.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_durable_14-0.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb pigsty 0.2.2 4.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb pigsty 0.2.2 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb pigsty 0.2.2 4.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb pigsty 0.2.2 4.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-durable postgresql-14-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb pigsty 0.2.2 3.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-durable/postgresql-14-pg-durable_0.2.2-2PIGSTY~resolute_arm64.deb
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

Source: [pg_durable v0.2.2 README](https://github.com/microsoft/pg_durable/blob/v0.2.2/README.md), [User Guide](https://github.com/microsoft/pg_durable/blob/v0.2.2/USER_GUIDE.md), [control file](https://github.com/microsoft/pg_durable/blob/v0.2.2/pg_durable.control), [GUC definitions](https://github.com/microsoft/pg_durable/blob/v0.2.2/src/lib.rs).

## Usage

`pg_durable` runs durable, fault-tolerant SQL workflows inside PostgreSQL. A workflow is built from SQL strings, functions, and DSL operators, then submitted with `df.start()`. State is persisted in PostgreSQL so completed steps are not re-executed after crashes or restarts.

`pg_durable` must be loaded through `shared_preload_libraries`, followed by a PostgreSQL restart. Its background worker connects to the database named by `pg_durable.database` and runs under `pg_durable.worker_role`; upstream defaults are `postgres` and `azuresu`, and the worker role must be a superuser.

### Enable and Grant Access

```sql
CREATE EXTENSION pg_durable;

SELECT df.grant_usage('app_role');
```

`CREATE EXTENSION` does not grant usage to `PUBLIC`. Use `df.grant_usage()` for application roles, and rerun it after extension upgrades so newly added functions are covered. The background worker initializes asynchronously after extension creation; retry if `df.*` calls report that the worker is not initialized yet.

### Start and Monitor Workflows

```sql
SELECT df.start('SELECT ''Hello, durable world!''', 'hello-job');

SELECT *
FROM df.list_instances();

SELECT df.status('a1b2c3d4');
SELECT df.result('a1b2c3d4');
SELECT df.cancel('a1b2c3d4', 'No longer needed');
```

`df.start()` returns an instance ID. Use that ID with `df.status()`, `df.result()`, `df.cancel()`, `df.signal()`, and `df.explain()`.

### Compose SQL Steps

```sql
-- Run one step, name its result, then substitute it in the next step.
SELECT df.start(
  'SELECT 100 AS amount' |=> 'total'
  ~> 'SELECT $total * 2 AS doubled',
  'double-total'
);

-- Branch on a SQL condition.
SELECT df.start(
  'SELECT count(*) > 10 FROM orders'
    ?> 'SELECT ''high volume'''
    !> 'SELECT ''low volume''',
  'order-volume'
);

-- Run in parallel and wait for both branches.
SELECT df.start(
  'SELECT refresh_accounts()' & 'SELECT refresh_orders()',
  'parallel-refresh'
);
```

Core operators are `~>` for sequence, `|=>` for naming a result, `&` for join, `|` for race, `?>` and `!>` for conditional branches, and `@>` for loops.

### Timers, Schedules, and Signals

```sql
SELECT df.start(
  @> (
    df.wait_for_schedule('0 * * * *')
    ~> 'SELECT run_hourly_rollup()'
  ),
  'hourly-rollup'
);

SELECT df.start(
  'SELECT create_invoice()' |=> 'invoice'
  ~> df.wait_for_signal('approval', 86400)
  ~> 'SELECT finalize_invoice($invoice.id)',
  'invoice-approval'
);
```

Useful DSL functions include `df.sleep(seconds)`, `df.wait_for_schedule(cron)`, `df.wait_for_signal(name, timeout)`, `df.signal(id, name, data)`, `df.join()`, `df.race()`, `df.if()`, `df.loop()`, and `df.explain()`.

### Configuration and Caveats

- Required preload: add `pg_durable` to `shared_preload_libraries` and restart PostgreSQL.
- `pg_durable.database` must name the database where the extension is created; workflows are not processed in a different database.
- `pg_durable.worker_role` must exist and be a superuser because the worker bypasses RLS to manage all users' instances.
- Connection-related GUCs include `pg_durable.max_management_connections`, `pg_durable.max_duroxide_connections`, `pg_durable.max_user_connections`, and `pg_durable.execution_acquire_timeout`.
- `df.http()` performs outbound HTTP work and is not included in standard grants unless `df.grant_usage(..., include_http => true)` is used.
- Upstream marks v0.2.2 as early development and not production-ready.
