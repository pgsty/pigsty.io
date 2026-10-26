---
title: "pg_kv"
linkTitle: "pg_kv"
description: "Shared-memory key/value cache, token-bucket rate limits and sorted sets."
weight: 2895
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Murat7Ay/pg_kv">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Murat7Ay/pg_kv</div>
    <div class="ext-card__desc">https://github.com/Murat7Ay/pg_kv</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_kv-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_kv-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_kv-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_kv`**](/ext/e/pg_kv) | `0.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2895  | [**`pg_kv`**](/ext/e/pg_kv) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `kv` |
{.ext-table}


> Early release, not production ready. Preload/restart and superuser installation required. Cluster-wide keyspace: nontransactional, not durable or replicated. Grant kv schema usage deliberately; prefixing keys is not tenant access control. Capacity eviction can reset rate-limit allowance.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "15,16,17,18" >}} | `pg_kv` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "15,16,17,18" >}} | `pg_kv_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "15,16,17,18" >}} | `postgresql-$v-pg-kv` | - |
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
@ el8.x86_64 18 pg_kv_18 pg_kv_18-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 242.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kv_18-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_kv_18 pg_kv_18-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 213.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kv_18-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_kv_18 pg_kv_18-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 246.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kv_18-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_kv_18 pg_kv_18-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 229.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kv_18-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_kv_18 pg_kv_18-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 246.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kv_18-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_kv_18 pg_kv_18-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 229.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kv_18-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 209.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 181.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 209.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 181.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 224.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 208.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 223.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 206.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 223.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-kv postgresql-18-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 206.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-18-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_kv_17 pg_kv_17-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 242.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kv_17-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_kv_17 pg_kv_17-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 213.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kv_17-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_kv_17 pg_kv_17-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 246.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kv_17-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_kv_17 pg_kv_17-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 229.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kv_17-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_kv_17 pg_kv_17-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 246.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kv_17-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_kv_17 pg_kv_17-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 229.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kv_17-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 209.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 181.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 209.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 181.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 224.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 208.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 223.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 206.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 223.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-kv postgresql-17-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 206.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-17-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_kv_16 pg_kv_16-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 242.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kv_16-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_kv_16 pg_kv_16-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 213.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kv_16-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_kv_16 pg_kv_16-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 246.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kv_16-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_kv_16 pg_kv_16-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 229.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kv_16-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_kv_16 pg_kv_16-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 246.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kv_16-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_kv_16 pg_kv_16-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 229.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kv_16-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 209.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 181.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 209.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 181.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 224.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 208.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 223.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 206.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 223.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-kv postgresql-16-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 205.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-16-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_kv_15 pg_kv_15-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 242.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kv_15-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_kv_15 pg_kv_15-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 213.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kv_15-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_kv_15 pg_kv_15-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 246.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kv_15-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_kv_15 pg_kv_15-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 229.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kv_15-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_kv_15 pg_kv_15-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 246.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kv_15-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_kv_15 pg_kv_15-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 229.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kv_15-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 209.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 181.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 209.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 181.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 224.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 208.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 223.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 206.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 223.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-kv postgresql-15-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 205.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kv/postgresql-15-pg-kv_0.1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_kv` using `pig build`:

```bash
pig build pkg pg_kv         # build RPM / DEB packages
```


## Install

You can install `pg_kv` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_kv;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_kv -v 18  # PG 18
pig ext install -y pg_kv -v 17  # PG 17
pig ext install -y pg_kv -v 16  # PG 16
pig ext install -y pg_kv -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_kv_18       # PG 18
dnf install -y pg_kv_17       # PG 17
dnf install -y pg_kv_16       # PG 16
dnf install -y pg_kv_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-kv   # PG 18
apt install -y postgresql-17-pg-kv   # PG 17
apt install -y postgresql-16-pg-kv   # PG 16
apt install -y postgresql-15-pg-kv   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_kv';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_kv;
```

## Usage

Sources:

- [Official source](https://github.com/Murat7Ay/pg_kv/blob/bf45bbfd6f29782701a4e6c9bf9c672a0c02bc8f/README.md)
- [Official source](https://github.com/Murat7Ay/pg_kv/blob/bf45bbfd6f29782701a4e6c9bf9c672a0c02bc8f/pg_kv.control)
- [Official source](https://github.com/Murat7Ay/pg_kv/blob/bf45bbfd6f29782701a4e6c9bf9c672a0c02bc8f/Cargo.toml)
- [Official source](https://github.com/Murat7Ay/pg_kv/blob/bf45bbfd6f29782701a4e6c9bf9c672a0c02bc8f/src/lib.rs)

`pg_kv` 0.1.0 provides a shared-memory cache, counters, token-bucket rate limiting and sorted sets. This early release targets PostgreSQL 15–18 and is not production ready.

### Core Workflow

Add the library to the existing preload list and restart PostgreSQL before installing the extension as a superuser:

```ini
shared_preload_libraries = 'pg_kv'
```

```sql
CREATE EXTENSION pg_kv;
SELECT kv.set('app:session:42', '{"user":1}', interval '30 minutes');
SELECT kv.get('app:session:42');
SELECT kv.ttl('app:session:42');
SELECT kv.incr('app:views:7');
SELECT kv.rate_limit('app:api:42', 100, interval '1 minute');
SELECT kv.zadd('app:leaderboard', 'player:9', 1520);
SELECT * FROM kv.zrange('app:leaderboard', 0, 9, reverse => true);
SELECT * FROM kv.stats();
```

Installation fails if the library was not preloaded. Grant schema `kv` usage only to intended callers. The keyspace is shared across every database in the cluster; prefixes organize keys but do not enforce tenant isolation.

### Operations and Capacity

`kv.ttl` returns milliseconds, -1 for a permanent key and -2 for a missing key. `kv.expire` changes expiry, `kv.del` removes a key, and `kv.rate_limit_info` reports allowance and retry timing. Sorted sets also support `kv.zscore`, `kv.zrank`, `kv.zrevrank`, `kv.zincrby`, `kv.zcard` and `kv.zrem`.

Restart settings include `pg_kv.max_entries`, `pg_kv.max_key_bytes`, `pg_kv.max_value_bytes`, `pg_kv.shards`, `pg_kv.sweep_interval_ms`, `pg_kv.max_zset_members` and `pg_kv.max_member_bytes`. Storage is bounded; oversize values fail, and pressure can evict cached keys. `kv.flush` is an administrative operation unavailable to the public role by default.

### Durability Boundary

Cache changes survive transaction rollback but disappear on a server restart or crash. They are not WAL logged or replicated; a standby has its own cache. Use this for disposable state, not authoritative records or a globally coordinated limiter across independent servers.
