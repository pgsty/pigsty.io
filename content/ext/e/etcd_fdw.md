---
title: "etcd_fdw"
linkTitle: "etcd_fdw"
description: "Foreign data wrapper for etcd"
weight: 8660
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/etcd_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/etcd_fdw</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/etcd_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/etcd_fdw-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">etcd_fdw-0.0.1.tar.gz</div>
    <div class="ext-card__desc">etcd_fdw-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`etcd_fdw`**](/ext/e/etcd_fdw) | `0.0.1` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8660  | [**`etcd_fdw`**](/ext/e/etcd_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`wrappers`](/ext/e/wrappers) [`redis_fdw`](/ext/e/redis_fdw) [`kafka_fdw`](/ext/e/kafka_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) [`mysql_fdw`](/ext/e/mysql_fdw) [`mongo_fdw`](/ext/e/mongo_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `etcd_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `etcd_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-etcd-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 etcd_fdw_18 etcd_fdw_18-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/etcd_fdw_18-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 etcd_fdw_18 etcd_fdw_18-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/etcd_fdw_18-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 etcd_fdw_18 etcd_fdw_18-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/etcd_fdw_18-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 etcd_fdw_18 etcd_fdw_18-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/etcd_fdw_18-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 etcd_fdw_18 etcd_fdw_18-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/etcd_fdw_18-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 etcd_fdw_18 etcd_fdw_18-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/etcd_fdw_18-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-etcd-fdw postgresql-18-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-18-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 etcd_fdw_17 etcd_fdw_17-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/etcd_fdw_17-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 etcd_fdw_17 etcd_fdw_17-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/etcd_fdw_17-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 etcd_fdw_17 etcd_fdw_17-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/etcd_fdw_17-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 etcd_fdw_17 etcd_fdw_17-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/etcd_fdw_17-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 etcd_fdw_17 etcd_fdw_17-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/etcd_fdw_17-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 etcd_fdw_17 etcd_fdw_17-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/etcd_fdw_17-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-etcd-fdw postgresql-17-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-17-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 etcd_fdw_16 etcd_fdw_16-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/etcd_fdw_16-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 etcd_fdw_16 etcd_fdw_16-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/etcd_fdw_16-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 etcd_fdw_16 etcd_fdw_16-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/etcd_fdw_16-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 etcd_fdw_16 etcd_fdw_16-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/etcd_fdw_16-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 etcd_fdw_16 etcd_fdw_16-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/etcd_fdw_16-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 etcd_fdw_16 etcd_fdw_16-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/etcd_fdw_16-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-etcd-fdw postgresql-16-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-16-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 etcd_fdw_15 etcd_fdw_15-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/etcd_fdw_15-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 etcd_fdw_15 etcd_fdw_15-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/etcd_fdw_15-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 etcd_fdw_15 etcd_fdw_15-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/etcd_fdw_15-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 etcd_fdw_15 etcd_fdw_15-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/etcd_fdw_15-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 etcd_fdw_15 etcd_fdw_15-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/etcd_fdw_15-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 etcd_fdw_15 etcd_fdw_15-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/etcd_fdw_15-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-etcd-fdw postgresql-15-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-15-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 etcd_fdw_14 etcd_fdw_14-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/etcd_fdw_14-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 etcd_fdw_14 etcd_fdw_14-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/etcd_fdw_14-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 etcd_fdw_14 etcd_fdw_14-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/etcd_fdw_14-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 etcd_fdw_14 etcd_fdw_14-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/etcd_fdw_14-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 etcd_fdw_14 etcd_fdw_14-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/etcd_fdw_14-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 etcd_fdw_14 etcd_fdw_14-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/etcd_fdw_14-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-etcd-fdw postgresql-14-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/etcd-fdw/postgresql-14-etcd-fdw_0.0.1-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `etcd_fdw` using `pig build`:

```bash
pig build pkg etcd_fdw         # build RPM / DEB packages
```


## Install

You can install `etcd_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install etcd_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y etcd_fdw -v 18  # PG 18
pig ext install -y etcd_fdw -v 17  # PG 17
pig ext install -y etcd_fdw -v 16  # PG 16
pig ext install -y etcd_fdw -v 15  # PG 15
pig ext install -y etcd_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y etcd_fdw_18       # PG 18
dnf install -y etcd_fdw_17       # PG 17
dnf install -y etcd_fdw_16       # PG 16
dnf install -y etcd_fdw_15       # PG 15
dnf install -y etcd_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-etcd-fdw   # PG 18
apt install -y postgresql-17-etcd-fdw   # PG 17
apt install -y postgresql-16-etcd-fdw   # PG 16
apt install -y postgresql-15-etcd-fdw   # PG 15
apt install -y postgresql-14-etcd-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION etcd_fdw;
```




## Usage

Sources: [intro blog](https://www.cybertec-postgresql.com/en/bringing-etcd-to-the-database-with-rust-and-pgrx/), [GitHub repo](https://github.com/cybertec-postgresql/etcd_fdw), [v0.0.1 release](https://github.com/cybertec-postgresql/etcd_fdw/releases/tag/v0.0.1)


-----------

### Quick Start

### 1. Enable Extension

```sql
CREATE EXTENSION etcd_fdw;
```

### 2. Create Foreign Data Wrapper

```sql
CREATE FOREIGN DATA WRAPPER etcd_fdw
  HANDLER etcd_fdw_handler
  VALIDATOR etcd_fdw_validator;
```

### 3. Create Server

```sql
-- Basic connection
CREATE SERVER etcd_plain
  FOREIGN DATA WRAPPER etcd_fdw
  OPTIONS (connstr '127.0.0.1:2379');

-- Production etcd with authentication and SSL
CREATE SERVER etcd FOREIGN DATA WRAPPER etcd_fdw OPTIONS (
    connstr '127.0.0.1:2379',
    username 'root',
    password 'Etcd.Root',
    ssl_ca '/pg/cert/ca.crt',
    ssl_cert '/pg/cert/server.crt',
    ssl_key '/pg/cert/server.key'
);
```

### 4. Create Foreign Table

```sql
-- Basic table mapping all keys
CREATE FOREIGN TABLE etcd_kv (key TEXT, value TEXT) SERVER etcd OPTIONS (rowid_column 'key');

-- Table with prefix filter (only keys starting with '/config/')
CREATE FOREIGN TABLE etcd_config (key TEXT, value TEXT)
  SERVER etcd OPTIONS (rowid_column 'key', prefix '/config/');
```

### 5. Query Data

```sql
-- Read all keys
SELECT * FROM etcd_kv;

-- Filter by key pattern (pushdown supported)
SELECT * FROM etcd_kv WHERE key LIKE '/app/%';

-- Range query
SELECT * FROM etcd_kv WHERE key >= '/a' AND key < '/b';

-- Insert new key
INSERT INTO etcd_kv (key, value) VALUES ('/mykey', 'myvalue');

-- Delete key
DELETE FROM etcd_kv WHERE key = '/mykey';
```

### 6. Real-time Sync with etcd

Changes made outside PostgreSQL are immediately visible:

```bash
# Insert via etcdctl
etcdctl put '/config/db_pool_size' '20'
```

```sql
-- Instantly visible in PostgreSQL
SELECT * FROM etcd_config;
     key               | value
-----------------------+-------
 /config/db_pool_size  | 20
(1 row)
```

-----------

### Reference

### Server Options

| Option            | Required | Description                            |
|-------------------|----------|----------------------------------------|
| `connstr`         | Yes      | etcd endpoint (e.g., `127.0.0.1:2379`) |
| `username`        | No       | Authentication username                |
| `password`        | No       | Authentication password                |
| `ssl_ca`          | No       | CA certificate file path               |
| `ssl_cert`        | No       | Client certificate file path           |
| `ssl_key`         | No       | Client private key file path           |
| `ssl_servername`  | No       | Domain name for TLS verification       |
| `connect_timeout` | No       | Connection timeout (default: `10s`)    |
| `request_timeout` | No       | Request timeout (default: `30s`)       |

### Foreign Table Options

| Option         | Default  | Description                              |
|----------------|----------|------------------------------------------|
| `rowid_column` | Required | Column used as unique row identifier     |
| `prefix`       | None     | Restrict to keys with this prefix        |
| `keys_only`    | `false`  | Fetch only keys, skip values             |
| `revision`     | `0`      | Read at specific etcd revision           |
| `key`          | `\0`     | Starting key for range scan              |
| `range_end`    | None     | Exclusive end key for range scan         |
| `consistency`  | `l`      | `l` (linearizable) or `s` (serializable) |

### Query Pushdown

The following operations are pushed down to etcd for better performance:

- **WHERE**: `=`, `>=`, `>`, `<=`, `<`, `BETWEEN`, `LIKE 'prefix%'`
- **ORDER BY**: Remote sorting
- **LIMIT/OFFSET**: Remote pagination

### Limitations

- `UPDATE` on key column is not supported. Workaround: `INSERT` new key, then `DELETE` old key.
- Requires etcd v3 API.

### Version Notes

`etcd_fdw` 0.0.1 is the first public release. It uses `pgrx` 0.18.1, and the documented SQL surface is the FDW/server/table workflow above.
