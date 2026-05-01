---
title: "pgclone"
linkTitle: "pgclone"
description: "Clone PostgreSQL databases, schemas, tables, and functions across environments"
weight: 9590
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/valehdba/pgclone">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">valehdba/pgclone</div>
    <div class="ext-card__desc">https://github.com/valehdba/pgclone</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgclone-4.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgclone-4.0.0.tar.gz</div>
    <div class="ext-card__desc">pgclone-4.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgclone`**](/ext/e/pgclone) | `4.0.0` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9590  | [**`pgclone`**](/ext/e/pgclone) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`db_migrator`](/ext/e/db_migrator) [`pglogical`](/ext/e/pglogical) [`repmgr`](/ext/e/repmgr) [`pgactive`](/ext/e/pgactive) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> preload for async/progress


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgclone` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgclone_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgclone` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 | AVAIL PIGSTY 4.0.0 1 |
@ el8.x86_64 18 pgclone_18 pgclone_18-4.0.0-1PIGSTY.el8.x86_64.rpm pigsty 4.0.0 60.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_18-4.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgclone_18 pgclone_18-4.0.0-1PIGSTY.el8.aarch64.rpm pigsty 4.0.0 59.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_18-4.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgclone_18 pgclone_18-4.0.0-1PIGSTY.el9.x86_64.rpm pigsty 4.0.0 60.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_18-4.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgclone_18 pgclone_18-4.0.0-1PIGSTY.el9.aarch64.rpm pigsty 4.0.0 59.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_18-4.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgclone_18 pgclone_18-4.0.0-1PIGSTY.el10.x86_64.rpm pigsty 4.0.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_18-4.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgclone_18 pgclone_18-4.0.0-1PIGSTY.el10.aarch64.rpm pigsty 4.0.0 60.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_18-4.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0.0 131.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0.0 128.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb pigsty 4.0.0 131.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb pigsty 4.0.0 127.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb pigsty 4.0.0 133.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb pigsty 4.0.0 133.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~noble_amd64.deb pigsty 4.0.0 130.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~noble_arm64.deb pigsty 4.0.0 129.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb pigsty 4.0.0 128.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb pigsty 4.0.0 127.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-18-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgclone_17 pgclone_17-4.0.0-1PIGSTY.el8.x86_64.rpm pigsty 4.0.0 60.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_17-4.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgclone_17 pgclone_17-4.0.0-1PIGSTY.el8.aarch64.rpm pigsty 4.0.0 59.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_17-4.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgclone_17 pgclone_17-4.0.0-1PIGSTY.el9.x86_64.rpm pigsty 4.0.0 60.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_17-4.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgclone_17 pgclone_17-4.0.0-1PIGSTY.el9.aarch64.rpm pigsty 4.0.0 59.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_17-4.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgclone_17 pgclone_17-4.0.0-1PIGSTY.el10.x86_64.rpm pigsty 4.0.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_17-4.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgclone_17 pgclone_17-4.0.0-1PIGSTY.el10.aarch64.rpm pigsty 4.0.0 60.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_17-4.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0.0 131.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0.0 127.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb pigsty 4.0.0 130.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb pigsty 4.0.0 127.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb pigsty 4.0.0 144.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb pigsty 4.0.0 144.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~noble_amd64.deb pigsty 4.0.0 130.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~noble_arm64.deb pigsty 4.0.0 129.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb pigsty 4.0.0 128.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb pigsty 4.0.0 127.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-17-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgclone_16 pgclone_16-4.0.0-1PIGSTY.el8.x86_64.rpm pigsty 4.0.0 60.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_16-4.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgclone_16 pgclone_16-4.0.0-1PIGSTY.el8.aarch64.rpm pigsty 4.0.0 59.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_16-4.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgclone_16 pgclone_16-4.0.0-1PIGSTY.el9.x86_64.rpm pigsty 4.0.0 60.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_16-4.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgclone_16 pgclone_16-4.0.0-1PIGSTY.el9.aarch64.rpm pigsty 4.0.0 59.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_16-4.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgclone_16 pgclone_16-4.0.0-1PIGSTY.el10.x86_64.rpm pigsty 4.0.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_16-4.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgclone_16 pgclone_16-4.0.0-1PIGSTY.el10.aarch64.rpm pigsty 4.0.0 59.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_16-4.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0.0 130.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0.0 128.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb pigsty 4.0.0 130.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb pigsty 4.0.0 127.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb pigsty 4.0.0 144.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb pigsty 4.0.0 143.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~noble_amd64.deb pigsty 4.0.0 130.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~noble_arm64.deb pigsty 4.0.0 129.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb pigsty 4.0.0 128.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb pigsty 4.0.0 127.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-16-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgclone_15 pgclone_15-4.0.0-1PIGSTY.el8.x86_64.rpm pigsty 4.0.0 60.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_15-4.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgclone_15 pgclone_15-4.0.0-1PIGSTY.el8.aarch64.rpm pigsty 4.0.0 59.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_15-4.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgclone_15 pgclone_15-4.0.0-1PIGSTY.el9.x86_64.rpm pigsty 4.0.0 60.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_15-4.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgclone_15 pgclone_15-4.0.0-1PIGSTY.el9.aarch64.rpm pigsty 4.0.0 60.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_15-4.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgclone_15 pgclone_15-4.0.0-1PIGSTY.el10.x86_64.rpm pigsty 4.0.0 61.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_15-4.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgclone_15 pgclone_15-4.0.0-1PIGSTY.el10.aarch64.rpm pigsty 4.0.0 60.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_15-4.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0.0 130.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0.0 127.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb pigsty 4.0.0 130.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb pigsty 4.0.0 127.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb pigsty 4.0.0 144.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb pigsty 4.0.0 144.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~noble_amd64.deb pigsty 4.0.0 130.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~noble_arm64.deb pigsty 4.0.0 129.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb pigsty 4.0.0 128.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb pigsty 4.0.0 127.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-15-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgclone_14 pgclone_14-4.0.0-1PIGSTY.el8.x86_64.rpm pigsty 4.0.0 60.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_14-4.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgclone_14 pgclone_14-4.0.0-1PIGSTY.el8.aarch64.rpm pigsty 4.0.0 59.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_14-4.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgclone_14 pgclone_14-4.0.0-1PIGSTY.el9.x86_64.rpm pigsty 4.0.0 60.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_14-4.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgclone_14 pgclone_14-4.0.0-1PIGSTY.el9.aarch64.rpm pigsty 4.0.0 59.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_14-4.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgclone_14 pgclone_14-4.0.0-1PIGSTY.el10.x86_64.rpm pigsty 4.0.0 61.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_14-4.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgclone_14 pgclone_14-4.0.0-1PIGSTY.el10.aarch64.rpm pigsty 4.0.0 59.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_14-4.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0.0 130.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0.0 127.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb pigsty 4.0.0 130.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb pigsty 4.0.0 127.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb pigsty 4.0.0 143.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb pigsty 4.0.0 142.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~noble_amd64.deb pigsty 4.0.0 129.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~noble_arm64.deb pigsty 4.0.0 128.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb pigsty 4.0.0 128.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb pigsty 4.0.0 127.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-14-pgclone_4.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgclone` using `pig build`:

```bash
pig build pkg pgclone         # build RPM / DEB packages
```


## Install

You can install `pgclone` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgclone;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgclone -v 18  # PG 18
pig ext install -y pgclone -v 17  # PG 17
pig ext install -y pgclone -v 16  # PG 16
pig ext install -y pgclone -v 15  # PG 15
pig ext install -y pgclone -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgclone_18       # PG 18
dnf install -y pgclone_17       # PG 17
dnf install -y pgclone_16       # PG 16
dnf install -y pgclone_15       # PG 15
dnf install -y pgclone_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgclone   # PG 18
apt install -y postgresql-17-pgclone   # PG 17
apt install -y postgresql-16-pgclone   # PG 16
apt install -y postgresql-15-pgclone   # PG 15
apt install -y postgresql-14-pgclone   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgclone';
```


**Create Extension**:

```sql
CREATE EXTENSION pgclone;
```

## Usage

Source: [README](https://github.com/valehdba/pgclone/blob/main/README.md), [Usage guide](https://github.com/valehdba/pgclone/blob/main/docs/USAGE.md), [Async guide](https://github.com/valehdba/pgclone/blob/main/docs/ASYNC.md), [Release v4.0.0](https://github.com/valehdba/pgclone/releases/tag/v4.0.0), [SQL install script](https://github.com/valehdba/pgclone/blob/main/sql/pgclone--4.0.0.sql)

`pgclone` clones tables, schemas, functions, roles, and whole databases directly from SQL. In v4.0.0 the public API is namespaced under the `pgclone` schema.

### Core clone functions

```sql
CREATE EXTENSION pgclone;

SELECT pgclone.table(
  'host=source-server dbname=mydb user=postgres password=secret',
  'public',
  'customers',
  true
);

SELECT pgclone.schema(
  'host=source-server dbname=mydb user=postgres password=secret',
  'sales',
  true
);

SELECT pgclone.database(
  'host=source-server dbname=mydb user=postgres password=secret',
  true
);
```

- `pgclone.table(...)`, `pgclone.schema(...)`, `pgclone.functions(...)`, `pgclone.database(...)`
- `pgclone.database_create(...)` creates a local target database and clones into it.
- `_ex` variants expose explicit booleans for indexes, constraints, and triggers.

### Options and masking

- JSON options support `columns`, `where`, `conflict`, and object toggles such as `indexes`, `constraints`, and `triggers`.
- Upstream documents masking, auto-discovery of sensitive columns, static masking, dynamic masking, clone verification, and GDPR/compliance reporting in the usage guide.

```sql
SELECT pgclone.table(
  'host=source-server dbname=mydb user=postgres',
  'public', 'users', true, 'users_lite',
  '{"columns":["id","name","email"],"where":"status = ''active''"}'
);
```

### Async and progress

```sql
-- postgresql.conf
shared_preload_libraries = 'pgclone'

SELECT pgclone.schema_async(
  'host=source-server dbname=mydb user=postgres',
  'sales', true, '{"parallel":4}'
);

SELECT * FROM pgclone.jobs_view;
SELECT pgclone.progress(1);
SELECT pgclone.cancel(1);
```

- `pgclone.table_async(...)` and `pgclone.schema_async(...)` run in background workers.
- `pgclone.jobs_view`, `pgclone.progress_detail()`, `pgclone.resume()`, and `pgclone.clear_jobs()` provide job tracking and recovery.

### Caveats

- Upstream requires PostgreSQL 14+.
- The usage guide states the extension requires superuser privileges to install and use.
- Async features need `shared_preload_libraries = 'pgclone'`; worker-pool parallelism also depends on `max_worker_processes`.
