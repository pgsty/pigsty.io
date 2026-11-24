---
title: "pg_tracing"
linkTitle: "pg_tracing"
description: "Distributed Tracing for PostgreSQL"
weight: 6010
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/DataDog/pg_tracing">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">DataDog/pg_tracing</div>
    <div class="ext-card__desc">https://github.com/DataDog/pg_tracing</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_tracing-0.1.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_tracing-0.1.3.tar.gz</div>
    <div class="ext-card__desc">pg_tracing-0.1.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tracing`**](/ext/e/pg_tracing) | `0.1.3` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6010  | [**`pg_tracing`**](/ext/e/pg_tracing) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_stat_log`](/ext/e/pg_stat_log) [`pg_stat_backtrace`](/ext/e/pg_stat_backtrace) [`pgfr_record`](/ext/e/pgfr_record) [`logerrors`](/ext/e/logerrors) [`pgelog`](/ext/e/pgelog) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.3` | {{< pgvers "18,17,16,15" >}} | `pg_tracing` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.3` | {{< pgvers "18,17,16,15" >}} | `pg_tracing_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.3` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-tracing` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el9.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el9.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el10.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el10.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d12.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d12.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d13.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d13.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u22.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u22.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u24.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u24.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u26.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u26.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
@ el8.x86_64 18 pg_tracing_18 pg_tracing_18-0.1.3-1PGSTY.el8.x86_64.rpm pigsty 0.1.3 117.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tracing_18-0.1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_tracing_18 pg_tracing_18-0.1.3-1PGSTY.el8.aarch64.rpm pigsty 0.1.3 114.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tracing_18-0.1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_tracing_18 pg_tracing_18-0.1.3-1PGSTY.el9.x86_64.rpm pigsty 0.1.3 118.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tracing_18-0.1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tracing_18 pg_tracing_18-0.1.3-1PGSTY.el9.aarch64.rpm pigsty 0.1.3 117.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tracing_18-0.1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tracing_18 pg_tracing_18-0.1.3-1PGSTY.el10.x86_64.rpm pigsty 0.1.3 119.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tracing_18-0.1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tracing_18 pg_tracing_18-0.1.3-1PGSTY.el10.aarch64.rpm pigsty 0.1.3 117.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tracing_18-0.1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb pigsty 0.1.3 105.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb pigsty 0.1.3 102.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb pigsty 0.1.3 105.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb pigsty 0.1.3 103.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb pigsty 0.1.3 114.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb pigsty 0.1.3 113.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb pigsty 0.1.3 110.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb pigsty 0.1.3 109.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb pigsty 0.1.3 109.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-tracing postgresql-18-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb pigsty 0.1.3 108.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-18-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_tracing_17 pg_tracing_17-0.1.3-1PGSTY.el8.x86_64.rpm pigsty 0.1.3 117.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tracing_17-0.1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_tracing_17 pg_tracing_17-0.1.3-1PGSTY.el8.aarch64.rpm pigsty 0.1.3 114.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tracing_17-0.1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_tracing_17 pg_tracing_17-0.1.3-1PGSTY.el9.x86_64.rpm pigsty 0.1.3 118.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tracing_17-0.1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tracing_17 pg_tracing_17-0.1.3-1PGSTY.el9.aarch64.rpm pigsty 0.1.3 117.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tracing_17-0.1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tracing_17 pg_tracing_17-0.1.3-1PGSTY.el10.x86_64.rpm pigsty 0.1.3 119.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tracing_17-0.1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tracing_17 pg_tracing_17-0.1.3-1PGSTY.el10.aarch64.rpm pigsty 0.1.3 117.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tracing_17-0.1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb pigsty 0.1.3 105.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb pigsty 0.1.3 103.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb pigsty 0.1.3 105.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb pigsty 0.1.3 103.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb pigsty 0.1.3 129.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb pigsty 0.1.3 128.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb pigsty 0.1.3 110.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb pigsty 0.1.3 109.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb pigsty 0.1.3 109.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-tracing postgresql-17-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb pigsty 0.1.3 108.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-17-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_tracing_16 pg_tracing_16-0.1.3-1PGSTY.el8.x86_64.rpm pigsty 0.1.3 117.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tracing_16-0.1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_tracing_16 pg_tracing_16-0.1.3-1PGSTY.el8.aarch64.rpm pigsty 0.1.3 114.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tracing_16-0.1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_tracing_16 pg_tracing_16-0.1.3-1PGSTY.el9.x86_64.rpm pigsty 0.1.3 118.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tracing_16-0.1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_tracing_16 pg_tracing_16-0.1.3-1PGSTY.el9.aarch64.rpm pigsty 0.1.3 116.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tracing_16-0.1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_tracing_16 pg_tracing_16-0.1.3-1PGSTY.el10.x86_64.rpm pigsty 0.1.3 119.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tracing_16-0.1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_tracing_16 pg_tracing_16-0.1.3-1PGSTY.el10.aarch64.rpm pigsty 0.1.3 117.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tracing_16-0.1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb pigsty 0.1.3 105.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb pigsty 0.1.3 103.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb pigsty 0.1.3 105.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb pigsty 0.1.3 103.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb pigsty 0.1.3 128.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb pigsty 0.1.3 127.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb pigsty 0.1.3 110.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb pigsty 0.1.3 109.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb pigsty 0.1.3 109.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-tracing postgresql-16-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb pigsty 0.1.3 108.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-16-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_tracing_15 pg_tracing_15-0.1.3-1PGSTY.el8.x86_64.rpm pigsty 0.1.3 119.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tracing_15-0.1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_tracing_15 pg_tracing_15-0.1.3-1PGSTY.el8.aarch64.rpm pigsty 0.1.3 116.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tracing_15-0.1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_tracing_15 pg_tracing_15-0.1.3-1PGSTY.el9.x86_64.rpm pigsty 0.1.3 121.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tracing_15-0.1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_tracing_15 pg_tracing_15-0.1.3-1PGSTY.el9.aarch64.rpm pigsty 0.1.3 120.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tracing_15-0.1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_tracing_15 pg_tracing_15-0.1.3-1PGSTY.el10.x86_64.rpm pigsty 0.1.3 122.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tracing_15-0.1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_tracing_15 pg_tracing_15-0.1.3-1PGSTY.el10.aarch64.rpm pigsty 0.1.3 120.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tracing_15-0.1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb pigsty 0.1.3 108.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb pigsty 0.1.3 105.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb pigsty 0.1.3 108.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb pigsty 0.1.3 106.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb pigsty 0.1.3 132.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb pigsty 0.1.3 130.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb pigsty 0.1.3 113.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb pigsty 0.1.3 112.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb pigsty 0.1.3 112.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-tracing postgresql-15-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb pigsty 0.1.3 111.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tracing/postgresql-15-pg-tracing_0.1.3-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_tracing` using `pig build`:

```bash
pig build pkg pg_tracing         # build RPM / DEB packages
```


## Install

You can install `pg_tracing` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_tracing;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_tracing -v 18  # PG 18
pig ext install -y pg_tracing -v 17  # PG 17
pig ext install -y pg_tracing -v 16  # PG 16
pig ext install -y pg_tracing -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_tracing_18       # PG 18
dnf install -y pg_tracing_17       # PG 17
dnf install -y pg_tracing_16       # PG 16
dnf install -y pg_tracing_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-tracing   # PG 18
apt install -y postgresql-17-pg-tracing   # PG 17
apt install -y postgresql-16-pg-tracing   # PG 16
apt install -y postgresql-15-pg-tracing   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_tracing';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_tracing;
```




## Usage

> [pg_tracing: distributed tracing for PostgreSQL](https://github.com/DataDog/pg_tracing)

pg_tracing generates server-side spans for distributed tracing. It creates spans for planner, executor, plan nodes, nested queries, triggers, parallel workers, and transaction commits.

### Trace Propagation via SQLCommenter

Pass trace context as a SQL comment. Queries with a sampled flag will generate spans:

```sql
/*traceparent='00-00000000000000000000000000000123-0000000000000123-01'*/ SELECT 1;
```

### Trace Propagation via GUC

```sql
BEGIN;
SET LOCAL pg_tracing.trace_context='traceparent=''00-00000000000000000000000000000005-0000000000000005-01''';
UPDATE pgbench_accounts SET abalance=1 WHERE aid=1;
COMMIT;
```

### Standalone Sampling

Randomly sample queries without external trace context:

```sql
SET pg_tracing.sample_rate = 1.0;  -- trace all queries
SELECT 1;
```

### Viewing Spans

```sql
-- Consume spans (removes them from buffer)
SELECT trace_id, parent_id, span_id, span_start, span_end, span_type, span_operation
FROM pg_tracing_consume_spans ORDER BY span_start;

-- Peek at spans (non-destructive)
SELECT * FROM pg_tracing_peek_spans;

-- Export as OTLP JSON
SELECT pg_tracing_json_spans();
```

### Statistics

```sql
SELECT * FROM pg_tracing_info;
SELECT pg_tracing_reset();
```

### Sending Spans to OpenTelemetry Collector

Configure in `postgresql.conf`:

```ini
pg_tracing.otel_endpoint = http://127.0.0.1:4318/v1/traces
pg_tracing.otel_naptime = 2000
```

### Key GUC Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_tracing.max_span` | 10000 | Maximum spans in shared memory |
| `pg_tracing.track` | `all` | Which statements to track |
| `pg_tracing.sample_rate` | 0 | Fraction of queries to sample randomly |
| `pg_tracing.otel_endpoint` | (empty) | OTLP HTTP endpoint for span export |
