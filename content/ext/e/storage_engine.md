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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/storage_engine-1.0.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">storage_engine-1.0.7.tar.gz</div>
    <div class="ext-card__desc">storage_engine-1.0.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`storage_engine`**](/ext/e/storage_engine) | `1.0.7` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2450  | [**`storage_engine`**](/ext/e/storage_engine) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `engine` |
{.ext-table}


> release 1.0.7; SQL v1.0


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.7` | {{< pgvers "18,17,16,15,14" >}} | `storage_engine` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.7` | {{< pgvers "18,17,16,15,14" >}} | `storage_engine_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-storage-engine` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 | AVAIL PIGSTY 1.0.7 1 |
@ el8.x86_64 18 storage_engine_18 storage_engine_18-1.0.7-1PIGSTY.el8.x86_64.rpm pigsty 1.0.7 182.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_18-1.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 storage_engine_18 storage_engine_18-1.0.7-1PIGSTY.el8.aarch64.rpm pigsty 1.0.7 174.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_18-1.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 storage_engine_18 storage_engine_18-1.0.7-1PIGSTY.el9.x86_64.rpm pigsty 1.0.7 154.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_18-1.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 storage_engine_18 storage_engine_18-1.0.7-1PIGSTY.el9.aarch64.rpm pigsty 1.0.7 150.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_18-1.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 storage_engine_18 storage_engine_18-1.0.7-1PIGSTY.el10.x86_64.rpm pigsty 1.0.7 156.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_18-1.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 storage_engine_18 storage_engine_18-1.0.7-1PIGSTY.el10.aarch64.rpm pigsty 1.0.7 151.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_18-1.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 415.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 403.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 416.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 405.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 440.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 434.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 423.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-storage-engine postgresql-18-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 419.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-18-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 storage_engine_17 storage_engine_17-1.0.7-1PIGSTY.el8.x86_64.rpm pigsty 1.0.7 182.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_17-1.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 storage_engine_17 storage_engine_17-1.0.7-1PIGSTY.el8.aarch64.rpm pigsty 1.0.7 173.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_17-1.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 storage_engine_17 storage_engine_17-1.0.7-1PIGSTY.el9.x86_64.rpm pigsty 1.0.7 153.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_17-1.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 storage_engine_17 storage_engine_17-1.0.7-1PIGSTY.el9.aarch64.rpm pigsty 1.0.7 149.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_17-1.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 storage_engine_17 storage_engine_17-1.0.7-1PIGSTY.el10.x86_64.rpm pigsty 1.0.7 156.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_17-1.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 storage_engine_17 storage_engine_17-1.0.7-1PIGSTY.el10.aarch64.rpm pigsty 1.0.7 150.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_17-1.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 413.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 402.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 414.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 404.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 503.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 496.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 420.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-storage-engine postgresql-17-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 418.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-17-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 storage_engine_16 storage_engine_16-1.0.7-1PIGSTY.el8.x86_64.rpm pigsty 1.0.7 181.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_16-1.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 storage_engine_16 storage_engine_16-1.0.7-1PIGSTY.el8.aarch64.rpm pigsty 1.0.7 173.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_16-1.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 storage_engine_16 storage_engine_16-1.0.7-1PIGSTY.el9.x86_64.rpm pigsty 1.0.7 153.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_16-1.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 storage_engine_16 storage_engine_16-1.0.7-1PIGSTY.el9.aarch64.rpm pigsty 1.0.7 149.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_16-1.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 storage_engine_16 storage_engine_16-1.0.7-1PIGSTY.el10.x86_64.rpm pigsty 1.0.7 155.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_16-1.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 storage_engine_16 storage_engine_16-1.0.7-1PIGSTY.el10.aarch64.rpm pigsty 1.0.7 150.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_16-1.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 412.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 402.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 414.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 403.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 499.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 491.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 420.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-storage-engine postgresql-16-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 417.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-16-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 storage_engine_15 storage_engine_15-1.0.7-1PIGSTY.el8.x86_64.rpm pigsty 1.0.7 185.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_15-1.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 storage_engine_15 storage_engine_15-1.0.7-1PIGSTY.el8.aarch64.rpm pigsty 1.0.7 177.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_15-1.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 storage_engine_15 storage_engine_15-1.0.7-1PIGSTY.el9.x86_64.rpm pigsty 1.0.7 173.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_15-1.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 storage_engine_15 storage_engine_15-1.0.7-1PIGSTY.el9.aarch64.rpm pigsty 1.0.7 167.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_15-1.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 storage_engine_15 storage_engine_15-1.0.7-1PIGSTY.el10.x86_64.rpm pigsty 1.0.7 175.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_15-1.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 storage_engine_15 storage_engine_15-1.0.7-1PIGSTY.el10.aarch64.rpm pigsty 1.0.7 168.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_15-1.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 419.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 406.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 420.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 408.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 519.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 512.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 440.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-storage-engine postgresql-15-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 434.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-15-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 storage_engine_14 storage_engine_14-1.0.7-1PIGSTY.el8.x86_64.rpm pigsty 1.0.7 185.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/storage_engine_14-1.0.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 storage_engine_14 storage_engine_14-1.0.7-1PIGSTY.el8.aarch64.rpm pigsty 1.0.7 177.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/storage_engine_14-1.0.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 storage_engine_14 storage_engine_14-1.0.7-1PIGSTY.el9.x86_64.rpm pigsty 1.0.7 173.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/storage_engine_14-1.0.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 storage_engine_14 storage_engine_14-1.0.7-1PIGSTY.el9.aarch64.rpm pigsty 1.0.7 167.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/storage_engine_14-1.0.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 storage_engine_14 storage_engine_14-1.0.7-1PIGSTY.el10.x86_64.rpm pigsty 1.0.7 175.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/storage_engine_14-1.0.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 storage_engine_14 storage_engine_14-1.0.7-1PIGSTY.el10.aarch64.rpm pigsty 1.0.7 168.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/storage_engine_14-1.0.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb pigsty 1.0.7 420.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb pigsty 1.0.7 407.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb pigsty 1.0.7 421.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb pigsty 1.0.7 409.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb pigsty 1.0.7 521.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb pigsty 1.0.7 514.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb pigsty 1.0.7 440.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-storage-engine postgresql-14-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb pigsty 1.0.7 435.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/storage-engine/postgresql-14-storage-engine_1.0.7-1PIGSTY~noble_arm64.deb
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
pig ext install -y storage_engine -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y storage_engine_18       # PG 18
dnf install -y storage_engine_17       # PG 17
dnf install -y storage_engine_16       # PG 16
dnf install -y storage_engine_15       # PG 15
dnf install -y storage_engine_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-storage-engine   # PG 18
apt install -y postgresql-17-storage-engine   # PG 17
apt install -y postgresql-16-storage-engine   # PG 16
apt install -y postgresql-15-storage-engine   # PG 15
apt install -y postgresql-14-storage-engine   # PG 14
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
