---
title: "storage_engine"
linkTitle: "storage_engine"
description: "colcompress and rowcompress Table Access Methods with vectorized execution"
weight: 2450
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/saulojb/storage_engine">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">saulojb/storage_engine</div>
    <div class="ext-card__desc">https://github.com/saulojb/storage_engine</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/storage_engine-2.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">storage_engine-2.4.0.tar.gz</div>
    <div class="ext-card__desc">storage_engine-2.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`storage_engine`**](/ext/e/storage_engine) | `2.4.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2450  | [**`storage_engine`**](/ext/e/storage_engine) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `engine` |
{.ext-table}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.0` | {{< pgvers "18,17,16,15" >}} | `storage_engine` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.0` | {{< pgvers "18,17,16,15" >}} | `storage_engine_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-storage-engine` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| d12.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| d13.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| d13.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| u22.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| u22.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| u24.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| u24.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| u26.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
| u26.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 1.3.4 1 |
@ el8.x86_64 18 storage_engine_18 storage_engine_18-2.4.0-1PIGSTY.el8.x86_64.rpm pigsty 2.4.0 302.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_18-2.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 storage_engine_18 storage_engine_18-2.4.0-1PIGSTY.el8.aarch64.rpm pigsty 2.4.0 289.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_18-2.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 storage_engine_18 storage_engine_18-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 269.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_18-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 storage_engine_18 storage_engine_18-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 262.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_18-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 storage_engine_18 storage_engine_18-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 273.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_18-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 storage_engine_18 storage_engine_18-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 264.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_18-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb pigsty 2.4.0 242.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb pigsty 2.4.0 223.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb pigsty 2.4.0 243.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb pigsty 2.4.0 226.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb pigsty 2.4.0 245.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb pigsty 2.4.0 241.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb pigsty 2.4.0 242.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb pigsty 2.4.0 235.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb pigsty 2.4.0 242.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb pigsty 2.4.0 235.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-18-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 storage_engine_17 storage_engine_17-2.4.0-1PIGSTY.el8.x86_64.rpm pigsty 2.4.0 302.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_17-2.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 storage_engine_17 storage_engine_17-2.4.0-1PIGSTY.el8.aarch64.rpm pigsty 2.4.0 289.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_17-2.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 storage_engine_17 storage_engine_17-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 268.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_17-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 storage_engine_17 storage_engine_17-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 261.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_17-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 storage_engine_17 storage_engine_17-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 272.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_17-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 storage_engine_17 storage_engine_17-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 264.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_17-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb pigsty 2.4.0 241.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb pigsty 2.4.0 223.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb pigsty 2.4.0 242.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb pigsty 2.4.0 225.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb pigsty 2.4.0 245.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb pigsty 2.4.0 238.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb pigsty 2.4.0 241.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb pigsty 2.4.0 234.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb pigsty 2.4.0 241.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb pigsty 2.4.0 235.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-17-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 storage_engine_16 storage_engine_16-2.4.0-1PIGSTY.el8.x86_64.rpm pigsty 2.4.0 302.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_16-2.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 storage_engine_16 storage_engine_16-2.4.0-1PIGSTY.el8.aarch64.rpm pigsty 2.4.0 289.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_16-2.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 storage_engine_16 storage_engine_16-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 269.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_16-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 storage_engine_16 storage_engine_16-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 262.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_16-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 storage_engine_16 storage_engine_16-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 272.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_16-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 storage_engine_16 storage_engine_16-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 264.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_16-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb pigsty 2.4.0 241.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb pigsty 2.4.0 223.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb pigsty 2.4.0 242.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb pigsty 2.4.0 225.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb pigsty 2.4.0 245.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb pigsty 2.4.0 241.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb pigsty 2.4.0 241.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb pigsty 2.4.0 234.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb pigsty 2.4.0 241.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb pigsty 2.4.0 236.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-16-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 storage_engine_15 storage_engine_15-2.4.0-1PIGSTY.el8.x86_64.rpm pigsty 2.4.0 293.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_15-2.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 storage_engine_15 storage_engine_15-2.4.0-1PIGSTY.el8.aarch64.rpm pigsty 2.4.0 281.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_15-2.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 storage_engine_15 storage_engine_15-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 274.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_15-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 storage_engine_15 storage_engine_15-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 268.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_15-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 storage_engine_15 storage_engine_15-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 278.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_15-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 storage_engine_15 storage_engine_15-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 270.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_15-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb pigsty 2.4.0 234.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb pigsty 2.4.0 217.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb pigsty 2.4.0 235.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb pigsty 2.4.0 219.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb pigsty 2.4.0 249.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb pigsty 2.4.0 246.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb pigsty 2.4.0 245.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb pigsty 2.4.0 240.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb pigsty 2.4.0 246.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb pigsty 2.4.0 240.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-15-storage-engine_2.4.0-1PIGSTY~resolute_arm64.deb
@ d12.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~bookworm_amd64.deb pigsty 1.3.4 477.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~bookworm_arm64.deb pigsty 1.3.4 463.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~trixie_amd64.deb pigsty 1.3.4 479.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~trixie_arm64.deb pigsty 1.3.4 466.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~jammy_amd64.deb pigsty 1.3.4 586.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~jammy_arm64.deb pigsty 1.3.4 578.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~noble_amd64.deb pigsty 1.3.4 501.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~noble_arm64.deb pigsty 1.3.4 494.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~resolute_amd64.deb pigsty 1.3.4 500.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.3.4-1PIGSTY~resolute_arm64.deb pigsty 1.3.4 494.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/storage-engine/postgresql-14-storage-engine_1.3.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `storage_engine` using `pig build`:

```bash
pig build pkg storage_engine         # build RPM / DEB packages
```


## Install

You can install `storage_engine` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install storage_engine;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y storage_engine -v 18  # PG 18
pig ext install -y storage_engine -v 17  # PG 17
pig ext install -y storage_engine -v 16  # PG 16
pig ext install -y storage_engine -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y storage_engine_18       # PG 18
dnf install -y storage_engine_17       # PG 17
dnf install -y storage_engine_16       # PG 16
dnf install -y storage_engine_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-storage-engine   # PG 18
apt install -y postgresql-17-storage-engine   # PG 17
apt install -y postgresql-16-storage-engine   # PG 16
apt install -y postgresql-15-storage-engine   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'storage_engine';
```


**Create Extension**:

```sql
CREATE EXTENSION storage_engine;
```




## Usage

Sources: [README v2.4.0](https://github.com/saulojb/storage_engine/blob/v2.4.0/README.md), [release v2.4.0](https://github.com/saulojb/storage_engine/releases/tag/v2.4.0), [PGXN 2.4.0](https://pgxn.org/dist/storage_engine/2.4.0/), [current README](https://github.com/saulojb/storage_engine/blob/main/README.md)

`storage_engine` 2.4.0 provides two PostgreSQL table access methods in the `engine` schema:

- `colcompress` for column-oriented compressed storage with vectorized filtering, vectorized aggregation, parallel scans, and stripe/chunk min/max pruning.
- `rowcompress` for row-batch compression with parallel scans, index scans, and batch metadata.

```sql
CREATE EXTENSION storage_engine;
```

### Quick Start

Create tables using either access method. Version 2.2 and later accept per-table options directly in `CREATE TABLE ... WITH (...)`.

```sql
CREATE TABLE events (
  ts timestamptz NOT NULL,
  user_id bigint,
  event_type text,
  value float8
) USING colcompress
  WITH (compression = 'zstd', compression_level = 9, orderby = 'ts ASC');

CREATE TABLE logs (
  id bigserial,
  logged_at timestamptz NOT NULL,
  message text
) USING rowcompress
  WITH (batch_size = 10000, compression = 'zstd');

SELECT event_type, count(*), avg(value)
FROM events
WHERE ts > now() - interval '1 day'
GROUP BY 1;
```

Version 2.4 keeps the 2.3 vectorized-aggregation work and adds planner-hook improvements for TPC-H Q7/Q18/Q20/Q21 plus Q9-style post-join aggregates. It also adds backend-local reread caches for repeated `rowcompress` index probes and repeated `colcompress` scans.

### Main Tuning Knobs

Session-level GUCs documented upstream include:

- `storage_engine.compression`
- `storage_engine.compression_level`
- `storage_engine.stripe_row_limit`
- `storage_engine.chunk_group_row_limit`
- `storage_engine.enable_parallel_execution`
- `storage_engine.min_parallel_processes`
- `storage_engine.enable_vectorization`
- `storage_engine.enable_vectorized_groupagg`
- `storage_engine.enable_automatic_plan`
- `storage_engine.enable_dml`
- `storage_engine.enable_custom_scan`
- `storage_engine.enable_qual_pushdown`
- `storage_engine.qual_pushdown_correlation_threshold`
- `storage_engine.max_custom_scan_paths`
- `storage_engine.enable_engine_index_scan`
- `storage_engine.enable_column_cache`
- `storage_engine.column_cache_size`
- `storage_engine.debug_vectorized_groupagg_fallback`
- `storage_engine.planner_debug_level`
- `storage_engine.maintenance_auto_enabled`
- `storage_engine.maintenance_auto_naptime`
- `storage_engine.maintenance_auto_database`

The README says these GUCs become visible once the shared library is loaded; add `storage_engine` to `shared_preload_libraries` if you want them available immediately in every session or need the built-in maintenance background worker.

### Types and Operators

`engine.uint8` stores unsigned 64-bit values for `colcompress` workloads that need the full `0` through `2^64 - 1` range. Upstream documents comparison operators (`=`, `<>`, `<`, `<=`, `>`, `>=`), B-tree and hash opclasses, casts to and from `bigint`, `numeric`, and `text`, plus `engine.min`, `engine.max`, and `engine.sum` aggregates. The vectorized planner can dispatch `engine.vmin`, `engine.vmax`, and `engine.vsum` on `colcompress` tables.

### Useful Management Functions

For `colcompress` tables:

```sql
SELECT engine.alter_colcompress_table_set(
  'events'::regclass,
  orderby => 'ts ASC, user_id ASC',
  compression => 'zstd',
  compression_level => 9
);

SELECT engine.colcompress_merge('events');
CALL engine.colcompress_repack('events');
CALL engine.colcompress_repack('events', min_fill_ratio => 0.7);
CALL engine.colcompress_merge_incremental('events', max_stripes => 64);
CALL engine.smart_update(
  'events'::regclass,
  'value = value * 1.1',
  'event_type = ''purchase'''
);
```

Use `engine.colcompress_merge()` after bulk loads when the `orderby` key should be globally sorted for pruning. Use `CALL engine.colcompress_repack()` to compact low-fill stripes, and `CALL engine.colcompress_merge_incremental()` for lower-lock maintenance that processes dirty stripes in batches.

For `rowcompress` tables:

```sql
SELECT engine.alter_rowcompress_table_set(
  'logs'::regclass,
  batch_size => 10000,
  compression => 'zstd',
  compression_level => 5
);

SELECT engine.rowcompress_repack('logs');
CALL engine.rowcompress_merge_incremental('logs', max_batches => 128);
SELECT * FROM engine.rowcompress_scan_stats();
```

Operational views include `engine.colcompress_options`, `engine.colcompress_stripes`, `engine.rowcompress_options`, `engine.rowcompress_batches`, and `engine.storage_health`. `engine.storage_maintenance_recommendation(table)` returns health metrics and a recommended action for one table, and `CALL engine.storage_maintenance_auto(...)` can dispatch maintenance manually or through the built-in background worker. In v2.4, repeated `rowcompress` probes can reuse backend-local metadata and decompressed batches, and `engine.rowcompress_scan_stats()` reports those cache effects more reliably.

### When to Use Which AM

- Use `colcompress` for analytical scans, aggregates, and range predicates where projection, vectorization, and stripe/chunk pruning pay off.
- Use `rowcompress` for append-heavy logs or wide rows that are usually fetched together, where compression matters more than column projection.
- For point lookups on `colcompress`, use per-table `index_scan => true` or session-level `storage_engine.enable_engine_index_scan = on`; for analytical range scans, prefer `index_scan => false` with `engine.colcompress_merge()` and an `orderby` key.

### Caveats

- The packaged version in this repo is `2.4.0` for PostgreSQL 15 through 18. Upstream v2.4 validation also covers PostgreSQL 19 devel, but PG19 is not in this repo's package matrix. PostgreSQL 12, 13, and 14 users should stay on upstream 1.3.4.
- This stub follows `extension.csv` and the v2.4.0 release/PGXN docs.
- Upgrade existing installations with `ALTER EXTENSION storage_engine UPDATE TO '2.4.0';`.
- `colcompress` and `rowcompress` do not support foreign keys or `AFTER ROW` triggers.
- `pg_repack` cannot be used on these table access methods. `engine.colcompress_repack()` acquires `AccessExclusiveLock`, so schedule it during maintenance windows for large tables; the incremental merge procedures are the lower-lock option for dirty stripes or batches.
- `VACUUM FULL`, `CLUSTER`, and `CREATE UNLOGGED TABLE ... USING colcompress` are not supported; upstream recommends the extension's merge/repack functions instead.
- On `colcompress`, combining `orderby` with B-tree indexes can disable the sort-on-write path, and B-tree indexes on ordered columns can defeat stripe pruning for range queries. Use `engine.colcompress_merge()` after loading data when global ordering matters, and prefer `index_scan => false` for analytical tables.
- If `citus` or `pg_cron` is also preloaded, upstream documents the load order as `shared_preload_libraries = 'pg_cron,citus,storage_engine'`; `citus` must appear before `storage_engine`.
