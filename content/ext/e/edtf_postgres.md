---
title: "edtf_postgres"
linkTitle: "edtf_postgres"
description: "EDTF validation, normalization, date bounds, and temporal relations"
weight: 1130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/monumental-archive/edtf/tree/edtf-postgres-v1.2.3/crates/edtf-postgres">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">crates/edtf-postgres</div>
    <div class="ext-card__desc">https://github.com/monumental-archive/edtf/tree/edtf-postgres-v1.2.3/crates/edtf-postgres</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/edtf_postgres-1.2.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">edtf_postgres-1.2.3.tar.gz</div>
    <div class="ext-card__desc">edtf_postgres-1.2.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`edtf_postgres`**](/ext/e/edtf_postgres) | `1.2.3` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license mit or apache20" href="/ext/license#mitorapache20">MIT OR Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1130  | [**`edtf_postgres`**](/ext/e/edtf_postgres) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_when`](/ext/e/pg_when) [`pgcalendar`](/ext/e/pgcalendar) [`pg_rrule`](/ext/e/pg_rrule) [`pg_duration`](/ext/e/pg_duration) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Trusted extension; upstream Cargo requests pgrx 0.19.1 and the locked build uses 0.19.2.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `edtf_postgres` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `edtf_postgres_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-edtf-postgres` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el8.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
@ el8.x86_64 18 edtf_postgres_18 edtf_postgres_18-1.2.3-1PGSTY.el8.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/edtf_postgres_18-1.2.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 edtf_postgres_18 edtf_postgres_18-1.2.3-1PGSTY.el8.aarch64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/edtf_postgres_18-1.2.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 edtf_postgres_18 edtf_postgres_18-1.2.3-1PGSTY.el9.x86_64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/edtf_postgres_18-1.2.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 edtf_postgres_18 edtf_postgres_18-1.2.3-1PGSTY.el9.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/edtf_postgres_18-1.2.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 edtf_postgres_18 edtf_postgres_18-1.2.3-1PGSTY.el10.x86_64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/edtf_postgres_18-1.2.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 edtf_postgres_18 edtf_postgres_18-1.2.3-1PGSTY.el10.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/edtf_postgres_18-1.2.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-edtf-postgres postgresql-18-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-18-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 edtf_postgres_17 edtf_postgres_17-1.2.3-1PGSTY.el8.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/edtf_postgres_17-1.2.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 edtf_postgres_17 edtf_postgres_17-1.2.3-1PGSTY.el8.aarch64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/edtf_postgres_17-1.2.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 edtf_postgres_17 edtf_postgres_17-1.2.3-1PGSTY.el9.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/edtf_postgres_17-1.2.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 edtf_postgres_17 edtf_postgres_17-1.2.3-1PGSTY.el9.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/edtf_postgres_17-1.2.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 edtf_postgres_17 edtf_postgres_17-1.2.3-1PGSTY.el10.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/edtf_postgres_17-1.2.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 edtf_postgres_17 edtf_postgres_17-1.2.3-1PGSTY.el10.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/edtf_postgres_17-1.2.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-edtf-postgres postgresql-17-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-17-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 edtf_postgres_16 edtf_postgres_16-1.2.3-1PGSTY.el8.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/edtf_postgres_16-1.2.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 edtf_postgres_16 edtf_postgres_16-1.2.3-1PGSTY.el8.aarch64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/edtf_postgres_16-1.2.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 edtf_postgres_16 edtf_postgres_16-1.2.3-1PGSTY.el9.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/edtf_postgres_16-1.2.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 edtf_postgres_16 edtf_postgres_16-1.2.3-1PGSTY.el9.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/edtf_postgres_16-1.2.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 edtf_postgres_16 edtf_postgres_16-1.2.3-1PGSTY.el10.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/edtf_postgres_16-1.2.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 edtf_postgres_16 edtf_postgres_16-1.2.3-1PGSTY.el10.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/edtf_postgres_16-1.2.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-edtf-postgres postgresql-16-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-16-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 edtf_postgres_15 edtf_postgres_15-1.2.3-1PGSTY.el8.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/edtf_postgres_15-1.2.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 edtf_postgres_15 edtf_postgres_15-1.2.3-1PGSTY.el8.aarch64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/edtf_postgres_15-1.2.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 edtf_postgres_15 edtf_postgres_15-1.2.3-1PGSTY.el9.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/edtf_postgres_15-1.2.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 edtf_postgres_15 edtf_postgres_15-1.2.3-1PGSTY.el9.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/edtf_postgres_15-1.2.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 edtf_postgres_15 edtf_postgres_15-1.2.3-1PGSTY.el10.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/edtf_postgres_15-1.2.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 edtf_postgres_15 edtf_postgres_15-1.2.3-1PGSTY.el10.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/edtf_postgres_15-1.2.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-edtf-postgres postgresql-15-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-15-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 edtf_postgres_14 edtf_postgres_14-1.2.3-1PGSTY.el8.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/edtf_postgres_14-1.2.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 edtf_postgres_14 edtf_postgres_14-1.2.3-1PGSTY.el8.aarch64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/edtf_postgres_14-1.2.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 edtf_postgres_14 edtf_postgres_14-1.2.3-1PGSTY.el9.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/edtf_postgres_14-1.2.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 edtf_postgres_14 edtf_postgres_14-1.2.3-1PGSTY.el9.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/edtf_postgres_14-1.2.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 edtf_postgres_14 edtf_postgres_14-1.2.3-1PGSTY.el10.x86_64.rpm pigsty 1.2.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/edtf_postgres_14-1.2.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 edtf_postgres_14 edtf_postgres_14-1.2.3-1PGSTY.el10.aarch64.rpm pigsty 1.2.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/edtf_postgres_14-1.2.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb pigsty 1.2.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb pigsty 1.2.3 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-edtf-postgres postgresql-14-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb pigsty 1.2.3 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/e/edtf-postgres/postgresql-14-edtf-postgres_1.2.3-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `edtf_postgres` using `pig build`:

```bash
pig build pkg edtf_postgres         # build RPM / DEB packages
```


## Install

You can install `edtf_postgres` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install edtf_postgres;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y edtf_postgres -v 18  # PG 18
pig ext install -y edtf_postgres -v 17  # PG 17
pig ext install -y edtf_postgres -v 16  # PG 16
pig ext install -y edtf_postgres -v 15  # PG 15
pig ext install -y edtf_postgres -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y edtf_postgres_18       # PG 18
dnf install -y edtf_postgres_17       # PG 17
dnf install -y edtf_postgres_16       # PG 16
dnf install -y edtf_postgres_15       # PG 15
dnf install -y edtf_postgres_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-edtf-postgres   # PG 18
apt install -y postgresql-17-edtf-postgres   # PG 17
apt install -y postgresql-16-edtf-postgres   # PG 16
apt install -y postgresql-15-edtf-postgres   # PG 15
apt install -y postgresql-14-edtf-postgres   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION edtf_postgres;
```

## Usage

Sources:

- [Official extension README](https://github.com/monumental-archive/edtf/blob/edtf-postgres-v1.2.3/crates/edtf-postgres/README.md)
- [Extension control file](https://github.com/monumental-archive/edtf/blob/edtf-postgres-v1.2.3/crates/edtf-postgres/edtf_postgres.control)
- [pgrx manifest](https://github.com/monumental-archive/edtf/blob/edtf-postgres-v1.2.3/crates/edtf-postgres/Cargo.toml)

`edtf_postgres` exposes Extended Date/Time Format validation, normalization, bounds, and temporal relations for ISO 8601-2:2019 Annex A strings.

### Enablement

Release 1.2.3 publishes artifacts for PostgreSQL 14–18 on amd64 and arm64. Install the matching artifact, then run:

```sql
CREATE EXTENSION edtf_postgres;
```

The extension is relocatable and trusted, so a role with database `CREATE` privilege can install it. It does not require preloading.

### Validation and Canonical Form

Use `edtf_valid` before accepting external text, `edtf_level` to inspect the supported EDTF level, and `edtf_canonical` to normalize equivalent forms.

```sql
SELECT edtf_valid('1985-04-12');
SELECT edtf_level('1985-04-12/..');
SELECT edtf_canonical('1985-04-12');
```

`edtf_min` and `edtf_max` return index-friendly date bounds. `edtf_relation` compares two expressions and returns a three-valued temporal relation.

```sql
SELECT edtf_min('1985-04'), edtf_max('1985-04');
SELECT edtf_relation('1985', '1986');
```

### Data Modeling Boundary

The extension operates on text and derived dates; it does not replace application validation or introduce a stored EDTF base type. Preserve the original expression when uncertainty and qualifiers are significant, and index derived bounds only for the query semantics your application intends.
