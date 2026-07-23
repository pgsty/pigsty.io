---
title: "pg_kpart"
linkTitle: "pg_kpart"
description: "Reject full partition scans that omit the partition key"
weight: 7450
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hexacluster/pg_kpart">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hexacluster/pg_kpart</div>
    <div class="ext-card__desc">https://github.com/hexacluster/pg_kpart</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_kpart-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_kpart-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_kpart-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_kpart`**](/ext/e/pg_kpart) | `1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7450  | [**`pg_kpart`**](/ext/e/pg_kpart) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_partman`](/ext/e/pg_partman) [`pg_fkpart`](/ext/e/pg_fkpart) [`plan_filter`](/ext/e/plan_filter) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`citus`](/ext/e/citus) [`timescaledb`](/ext/e/timescaledb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Planner hook must be loaded through shared_preload_libraries or session_preload_libraries; CREATE EXTENSION is optional.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_kpart` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_kpart_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-kpart` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 pg_kpart_18 pg_kpart_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kpart_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_kpart_18 pg_kpart_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kpart_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_kpart_18 pg_kpart_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kpart_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_kpart_18 pg_kpart_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kpart_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_kpart_18 pg_kpart_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kpart_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_kpart_18 pg_kpart_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kpart_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 18.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-kpart postgresql-18-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-18-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_kpart_17 pg_kpart_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kpart_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_kpart_17 pg_kpart_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kpart_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_kpart_17 pg_kpart_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kpart_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_kpart_17 pg_kpart_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kpart_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_kpart_17 pg_kpart_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kpart_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_kpart_17 pg_kpart_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kpart_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 23.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 23.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-kpart postgresql-17-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-17-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_kpart_16 pg_kpart_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kpart_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_kpart_16 pg_kpart_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kpart_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_kpart_16 pg_kpart_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kpart_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_kpart_16 pg_kpart_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kpart_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_kpart_16 pg_kpart_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kpart_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_kpart_16 pg_kpart_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kpart_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 18.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-kpart postgresql-16-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-16-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_kpart_15 pg_kpart_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kpart_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_kpart_15 pg_kpart_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kpart_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_kpart_15 pg_kpart_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kpart_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_kpart_15 pg_kpart_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kpart_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_kpart_15 pg_kpart_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kpart_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_kpart_15 pg_kpart_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kpart_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 18.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-kpart postgresql-15-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-15-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_kpart_14 pg_kpart_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kpart_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_kpart_14 pg_kpart_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kpart_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_kpart_14 pg_kpart_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kpart_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_kpart_14 pg_kpart_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kpart_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_kpart_14 pg_kpart_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kpart_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_kpart_14 pg_kpart_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kpart_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 18.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 19.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-kpart postgresql-14-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 19.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kpart/postgresql-14-pg-kpart_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_kpart` using `pig build`:

```bash
pig build pkg pg_kpart         # build RPM / DEB packages
```


## Install

You can install `pg_kpart` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_kpart;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_kpart -v 18  # PG 18
pig ext install -y pg_kpart -v 17  # PG 17
pig ext install -y pg_kpart -v 16  # PG 16
pig ext install -y pg_kpart -v 15  # PG 15
pig ext install -y pg_kpart -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_kpart_18       # PG 18
dnf install -y pg_kpart_17       # PG 17
dnf install -y pg_kpart_16       # PG 16
dnf install -y pg_kpart_15       # PG 15
dnf install -y pg_kpart_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-kpart   # PG 18
apt install -y postgresql-17-pg-kpart   # PG 17
apt install -y postgresql-16-pg-kpart   # PG 16
apt install -y postgresql-15-pg-kpart   # PG 15
apt install -y postgresql-14-pg-kpart   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_kpart';
```


## Usage

Sources:

- [Official v1.0 README](https://github.com/HexaCluster/pg_kpart/blob/v1.0/README.md)
- [v1.0 control file](https://github.com/HexaCluster/pg_kpart/blob/v1.0/pg_kpart.control)

`pg_kpart` prevents accidental queries that would scan every leaf partition of a partitioned table without effective partition pruning. Its planner hook can raise, warn, or log before execution. The functional unit is the preloaded library; there are no SQL objects to create, and upstream describes `CREATE EXTENSION` only as optional catalog registration.

### Enable and Roll Out

For cluster-wide enforcement, preload the library and restart PostgreSQL:

```conf
shared_preload_libraries = 'pg_kpart'
```

It can also be loaded for selected sessions or databases without a server restart:

```conf
session_preload_libraries = 'pg_kpart'
```

Start in audit mode before enforcing errors:

```sql
ALTER SYSTEM SET pg_kpart.message_level = 'warning';
SELECT pg_reload_conf();
```

Once the observed queries are understood, set `pg_kpart.message_level = 'error'`.

### Scope and Behavior

```sql
-- Check only these tables and their sub-partitions.
ALTER SYSTEM SET pg_kpart.blacklisted =
    'public.measurement, public.orders';

-- Or check all partitioned tables except selected hierarchies.
ALTER SYSTEM SET pg_kpart.whitelisted = 'public.audit_log';
SELECT pg_reload_conf();
```

```sql
-- Partition key is logdate.
SELECT * FROM measurement WHERE city_id = 5;              -- violation
SELECT * FROM measurement WHERE logdate = DATE '2026-07-01'; -- pruned, allowed
SELECT * FROM measurement WHERE logdate = $1;             -- runtime pruning, allowed
```

Violations use SQLSTATE `FS001`, which applications can trap when `message_level` is `error`.

### Configuration Index and Caveats

- `pg_kpart.enabled`: master switch; default `on`.
- `pg_kpart.message_level`: `error`, `warning`, `notice`, `log`, and other PostgreSQL message levels.
- `pg_kpart.min_partitions`: minimum leaf-partition count to check; default `2`.
- `pg_kpart.check_superuser`: superusers bypass checks by default.
- `pg_kpart.blacklisted`: when nonempty, only named hierarchies are checked and `whitelisted` is ignored.
- `pg_kpart.whitelisted`: hierarchies exempt from checking when no blacklist is set.
- A predicate whose range still includes every partition is treated as a full scan and rejected, even if it mentions the partition key.
- The hook also applies to `UPDATE`, `DELETE`, and `EXPLAIN` without `ANALYZE`. It relies on PostgreSQL's planned pruning result, not textual inspection of `WHERE` clauses.
- Upstream v1.0 is tested on PostgreSQL 14 and newer.

