---
title: "logical_ddl"
linkTitle: "logical_ddl"
description: "Replicate supported DDL changes over PostgreSQL logical replication"
weight: 9530
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/samedyildirim/logical_ddl">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">samedyildirim/logical_ddl</div>
    <div class="ext-card__desc">https://github.com/samedyildirim/logical_ddl</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/logical_ddl-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">logical_ddl-0.1.0.tar.gz</div>
    <div class="ext-card__desc">logical_ddl-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`logical_ddl`**](/ext/e/logical_ddl) | `0.1.0` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9530  | [**`logical_ddl`**](/ext/e/logical_ddl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `logical_ddl` |
{.ext-table}

| **Related** | [`pglogical`](/ext/e/pglogical) [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`spock`](/ext/e/spock) [`pgactive`](/ext/e/pgactive) [`mimeo`](/ext/e/mimeo) [`pgoutput`](/ext/e/pgoutput) [`lolor`](/ext/e/lolor) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Pigsty carries the upstream RAISE WARNING typo fix for 0.1.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `logical_ddl` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `logical_ddl_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-logical-ddl` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 logical_ddl_18 logical_ddl_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/logical_ddl_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 logical_ddl_18 logical_ddl_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/logical_ddl_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 logical_ddl_18 logical_ddl_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/logical_ddl_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 logical_ddl_18 logical_ddl_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/logical_ddl_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 logical_ddl_18 logical_ddl_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/logical_ddl_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 logical_ddl_18 logical_ddl_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/logical_ddl_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 15.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-logical-ddl postgresql-18-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-18-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 logical_ddl_17 logical_ddl_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/logical_ddl_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 logical_ddl_17 logical_ddl_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/logical_ddl_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 logical_ddl_17 logical_ddl_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/logical_ddl_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 logical_ddl_17 logical_ddl_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/logical_ddl_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 logical_ddl_17 logical_ddl_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/logical_ddl_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 logical_ddl_17 logical_ddl_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/logical_ddl_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 15.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-logical-ddl postgresql-17-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-17-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 logical_ddl_16 logical_ddl_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/logical_ddl_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 logical_ddl_16 logical_ddl_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/logical_ddl_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 logical_ddl_16 logical_ddl_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/logical_ddl_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 logical_ddl_16 logical_ddl_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/logical_ddl_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 logical_ddl_16 logical_ddl_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/logical_ddl_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 logical_ddl_16 logical_ddl_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/logical_ddl_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 15.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 15.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-logical-ddl postgresql-16-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-16-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 logical_ddl_15 logical_ddl_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/logical_ddl_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 logical_ddl_15 logical_ddl_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/logical_ddl_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 logical_ddl_15 logical_ddl_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/logical_ddl_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 logical_ddl_15 logical_ddl_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/logical_ddl_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 logical_ddl_15 logical_ddl_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/logical_ddl_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 logical_ddl_15 logical_ddl_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/logical_ddl_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 15.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-logical-ddl postgresql-15-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-15-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 logical_ddl_14 logical_ddl_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/logical_ddl_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 logical_ddl_14 logical_ddl_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/logical_ddl_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 logical_ddl_14 logical_ddl_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/logical_ddl_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 logical_ddl_14 logical_ddl_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/logical_ddl_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 logical_ddl_14 logical_ddl_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/logical_ddl_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 logical_ddl_14 logical_ddl_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/logical_ddl_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 15.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 15.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 15.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-logical-ddl postgresql-14-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logical-ddl/postgresql-14-logical-ddl_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `logical_ddl` using `pig build`:

```bash
pig build pkg logical_ddl         # build RPM / DEB packages
```


## Install

You can install `logical_ddl` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install logical_ddl;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y logical_ddl -v 18  # PG 18
pig ext install -y logical_ddl -v 17  # PG 17
pig ext install -y logical_ddl -v 16  # PG 16
pig ext install -y logical_ddl -v 15  # PG 15
pig ext install -y logical_ddl -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y logical_ddl_18       # PG 18
dnf install -y logical_ddl_17       # PG 17
dnf install -y logical_ddl_16       # PG 16
dnf install -y logical_ddl_15       # PG 15
dnf install -y logical_ddl_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-logical-ddl   # PG 18
apt install -y postgresql-17-logical-ddl   # PG 17
apt install -y postgresql-16-logical-ddl   # PG 16
apt install -y postgresql-15-logical-ddl   # PG 15
apt install -y postgresql-14-logical-ddl   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION logical_ddl;
```




## Usage

Source: [README](https://github.com/samedyildirim/logical_ddl/blob/master/README.md)

`logical_ddl` captures a limited set of `ALTER TABLE` changes, writes them into a replicated shadow table, and replays equivalent DDL on logical-replication subscribers.

### Supported DDL

- `ALTER TABLE ... RENAME TO ...`
- `ALTER TABLE ... RENAME COLUMN ... TO ...`
- `ALTER TABLE ... ADD COLUMN ...`
- `ALTER TABLE ... ALTER COLUMN ... TYPE ...`
- `ALTER TABLE ... DROP COLUMN ...`

Built-in types, arrays, composite types, domains, and enums are supported as column types, but the extension does not replicate the definitions of those custom types themselves.

### Publisher and subscriber setup

```sql
CREATE EXTENSION logical_ddl;

-- Publisher
INSERT INTO logical_ddl.settings VALUES (true, 'source1');
INSERT INTO logical_ddl.publish_tablelist (relid) VALUES ('table1'::regclass);
ALTER PUBLICATION log_pub_1 ADD TABLE logical_ddl.shadow_table;

-- Subscriber
INSERT INTO logical_ddl.settings VALUES (false, 'source1');
INSERT INTO logical_ddl.subscribe_tablelist (source, relid)
VALUES ('source1', 'table1'::regclass);
ALTER SUBSCRIPTION log_sub_1 REFRESH PUBLICATION;
```

### Main tables

- `logical_ddl.settings`: declares publisher/subscriber role and source name.
- `logical_ddl.publish_tablelist`: tables and command kinds to capture.
- `logical_ddl.subscribe_tablelist`: target tables and command kinds to replay.
- `logical_ddl.shadow_table`: replicated command log.
- `logical_ddl.applied_commands`: replay history and failure tracking.

### Caveats

- The extension works under superuser privileges.
- `USING` expressions for type changes, default expressions, constraints, and indexes are not implemented.
- Pigsty notes an upstream `RAISE WARNING` typo fix for `0.1.0`; that does not change the user-facing usage documented here.
