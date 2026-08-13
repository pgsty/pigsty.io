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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgclone-4.4.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgclone-4.4.2.tar.gz</div>
    <div class="ext-card__desc">pgclone-4.4.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgclone`**](/ext/e/pgclone) | `4.4.2` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9590  | [**`pgclone`**](/ext/e/pgclone) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`db_migrator`](/ext/e/db_migrator) [`mimeo`](/ext/e/mimeo) [`postgres_fdw`](/ext/e/postgres_fdw) [`pglogical`](/ext/e/pglogical) [`spock`](/ext/e/spock) [`pgactive`](/ext/e/pgactive) [`pgspider_ext`](/ext/e/pgspider_ext) [`dblink`](/ext/e/dblink) [`pgoutput`](/ext/e/pgoutput) [`mysql_fdw`](/ext/e/mysql_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> preload for async/progress; RPM LLVM_BINPATH build fix retained in the 4.4.2 package.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.4.2` | {{< pgvers "18,17,16,15,14" >}} | `pgclone` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.4.2` | {{< pgvers "18,17,16,15,14" >}} | `pgclone_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.4.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgclone` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| el8.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| el9.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| el9.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| el10.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| el10.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| d12.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| d12.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| d13.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| d13.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| u22.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| u22.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| u24.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| u24.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| u26.x86_64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
| u26.aarch64 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 | AVAIL PIGSTY 4.4.2 1 |
@ el8.x86_64 18 pgclone_18 pgclone_18-4.4.2-1PIGSTY.el8.x86_64.rpm pigsty 4.4.2 98.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_18-4.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgclone_18 pgclone_18-4.4.2-1PIGSTY.el8.aarch64.rpm pigsty 4.4.2 95.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_18-4.4.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgclone_18 pgclone_18-4.4.2-1PIGSTY.el9.x86_64.rpm pigsty 4.4.2 96.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_18-4.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgclone_18 pgclone_18-4.4.2-1PIGSTY.el9.aarch64.rpm pigsty 4.4.2 96.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_18-4.4.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgclone_18 pgclone_18-4.4.2-1PIGSTY.el10.x86_64.rpm pigsty 4.4.2 97.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_18-4.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgclone_18 pgclone_18-4.4.2-1PIGSTY.el10.aarch64.rpm pigsty 4.4.2 96.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_18-4.4.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb pigsty 4.4.2 222.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb pigsty 4.4.2 216.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb pigsty 4.4.2 222.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb pigsty 4.4.2 216.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb pigsty 4.4.2 220.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb pigsty 4.4.2 220.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~noble_amd64.deb pigsty 4.4.2 216.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~noble_arm64.deb pigsty 4.4.2 214.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb pigsty 4.4.2 213.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgclone postgresql-18-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb pigsty 4.4.2 212.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-18-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgclone_17 pgclone_17-4.4.2-1PIGSTY.el8.x86_64.rpm pigsty 4.4.2 98.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_17-4.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgclone_17 pgclone_17-4.4.2-1PIGSTY.el8.aarch64.rpm pigsty 4.4.2 95.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_17-4.4.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgclone_17 pgclone_17-4.4.2-1PIGSTY.el9.x86_64.rpm pigsty 4.4.2 96.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_17-4.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgclone_17 pgclone_17-4.4.2-1PIGSTY.el9.aarch64.rpm pigsty 4.4.2 96.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_17-4.4.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgclone_17 pgclone_17-4.4.2-1PIGSTY.el10.x86_64.rpm pigsty 4.4.2 97.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_17-4.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgclone_17 pgclone_17-4.4.2-1PIGSTY.el10.aarch64.rpm pigsty 4.4.2 96.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_17-4.4.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb pigsty 4.4.2 221.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb pigsty 4.4.2 216.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb pigsty 4.4.2 222.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb pigsty 4.4.2 216.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb pigsty 4.4.2 236.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb pigsty 4.4.2 235.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~noble_amd64.deb pigsty 4.4.2 215.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~noble_arm64.deb pigsty 4.4.2 213.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb pigsty 4.4.2 213.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgclone postgresql-17-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb pigsty 4.4.2 212.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-17-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgclone_16 pgclone_16-4.4.2-1PIGSTY.el8.x86_64.rpm pigsty 4.4.2 98.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_16-4.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgclone_16 pgclone_16-4.4.2-1PIGSTY.el8.aarch64.rpm pigsty 4.4.2 95.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_16-4.4.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgclone_16 pgclone_16-4.4.2-1PIGSTY.el9.x86_64.rpm pigsty 4.4.2 96.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_16-4.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgclone_16 pgclone_16-4.4.2-1PIGSTY.el9.aarch64.rpm pigsty 4.4.2 96.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_16-4.4.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgclone_16 pgclone_16-4.4.2-1PIGSTY.el10.x86_64.rpm pigsty 4.4.2 97.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_16-4.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgclone_16 pgclone_16-4.4.2-1PIGSTY.el10.aarch64.rpm pigsty 4.4.2 96.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_16-4.4.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb pigsty 4.4.2 221.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb pigsty 4.4.2 216.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb pigsty 4.4.2 222.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb pigsty 4.4.2 216.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb pigsty 4.4.2 236.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb pigsty 4.4.2 235.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~noble_amd64.deb pigsty 4.4.2 215.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~noble_arm64.deb pigsty 4.4.2 213.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb pigsty 4.4.2 213.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgclone postgresql-16-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb pigsty 4.4.2 212.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-16-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgclone_15 pgclone_15-4.4.2-1PIGSTY.el8.x86_64.rpm pigsty 4.4.2 97.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_15-4.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgclone_15 pgclone_15-4.4.2-1PIGSTY.el8.aarch64.rpm pigsty 4.4.2 95.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_15-4.4.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgclone_15 pgclone_15-4.4.2-1PIGSTY.el9.x86_64.rpm pigsty 4.4.2 96.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_15-4.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgclone_15 pgclone_15-4.4.2-1PIGSTY.el9.aarch64.rpm pigsty 4.4.2 96.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_15-4.4.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgclone_15 pgclone_15-4.4.2-1PIGSTY.el10.x86_64.rpm pigsty 4.4.2 97.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_15-4.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgclone_15 pgclone_15-4.4.2-1PIGSTY.el10.aarch64.rpm pigsty 4.4.2 96.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_15-4.4.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb pigsty 4.4.2 221.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb pigsty 4.4.2 216.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb pigsty 4.4.2 222.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb pigsty 4.4.2 216.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb pigsty 4.4.2 235.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb pigsty 4.4.2 235.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~noble_amd64.deb pigsty 4.4.2 215.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~noble_arm64.deb pigsty 4.4.2 214.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb pigsty 4.4.2 213.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgclone postgresql-15-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb pigsty 4.4.2 212.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-15-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgclone_14 pgclone_14-4.4.2-1PIGSTY.el8.x86_64.rpm pigsty 4.4.2 97.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgclone_14-4.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgclone_14 pgclone_14-4.4.2-1PIGSTY.el8.aarch64.rpm pigsty 4.4.2 95.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgclone_14-4.4.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgclone_14 pgclone_14-4.4.2-1PIGSTY.el9.x86_64.rpm pigsty 4.4.2 96.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgclone_14-4.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgclone_14 pgclone_14-4.4.2-1PIGSTY.el9.aarch64.rpm pigsty 4.4.2 96.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgclone_14-4.4.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgclone_14 pgclone_14-4.4.2-1PIGSTY.el10.x86_64.rpm pigsty 4.4.2 97.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgclone_14-4.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgclone_14 pgclone_14-4.4.2-1PIGSTY.el10.aarch64.rpm pigsty 4.4.2 96.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgclone_14-4.4.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb pigsty 4.4.2 221.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb pigsty 4.4.2 216.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb pigsty 4.4.2 221.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb pigsty 4.4.2 215.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb pigsty 4.4.2 234.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb pigsty 4.4.2 233.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~noble_amd64.deb pigsty 4.4.2 215.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~noble_arm64.deb pigsty 4.4.2 213.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb pigsty 4.4.2 213.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgclone postgresql-14-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb pigsty 4.4.2 211.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgclone/postgresql-14-pgclone_4.4.2-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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

Sources:

- [pgclone v4.4.2 README](https://github.com/valehdba/pgclone/blob/v4.4.2/README.md)
- [pgclone v4.4.2 usage guide](https://github.com/valehdba/pgclone/blob/v4.4.2/docs/USAGE.md)
- [Async cloning guide](https://github.com/valehdba/pgclone/blob/v4.4.2/docs/ASYNC.md)
- [pgclone v4.4.2 release notes](https://github.com/valehdba/pgclone/releases/tag/v4.4.2)

pgclone clones tables, schemas, functions, roles, or whole databases over a PostgreSQL connection. It also provides preflight checks, structural diffs, masking, consistent snapshots, and optional background jobs. Use it for controlled database copies, not as an unattended substitute for backup and recovery.

### Create and Run a Clone

    CREATE EXTENSION pgclone;
    SELECT pgclone.version();

    SELECT pgclone.table(
      'host=source.example dbname=app user=clone_user',
      'public',
      'customers',
      true
    );

Schema and database entry points follow the same connection-first pattern:

    SELECT pgclone.schema(
      'host=source.example dbname=app user=clone_user',
      'sales',
      true
    );

    SELECT pgclone.database(
      'host=source.example dbname=app user=clone_user',
      true
    );

The main API includes pgclone.table, pgclone.schema, pgclone.functions, pgclone.database, and pgclone.database_create. The _ex variants expose explicit choices for indexes, constraints, and triggers.

### Filter and Mask Data

JSON options can restrict columns and rows:

    SELECT pgclone.table(
      'host=source.example dbname=app user=clone_user',
      'public',
      'users',
      true,
      'users_lite',
      '{"columns":["id","name","email"],"where":"active"}'
    );

Version 4.4 adds schema- and database-level masks, table inclusion patterns, and exclude_tables. Mask expressions run in the source-side COPY query, so values that are successfully masked do not reach the target unmasked.

The 4.4.2 mask validator skips unsafe or incompatible masks: constant values that cannot cast to the column, NULL for NOT NULL columns, non-hash masks on unique or primary-key columns, and masks on foreign-key columns. A skipped mask leaves that column unmasked. Treat warnings as a failed privacy gate and inspect the result before distributing a clone.

### Preflight, Diff, and Consistency

    SELECT pgclone.preflight(
      'host=source.example dbname=app user=clone_user',
      'public'
    )::jsonb;

    SELECT pgclone.diff(
      'host=source.example dbname=app user=clone_user',
      'public'
    )::jsonb;

preflight checks connectivity, versions, privileges, capacity, names, roles, extensions, and tablespaces. diff reports DDL differences without applying changes.

Schema and database clones use a shared exported snapshot by default so related tables are copied consistently. A long snapshot can delay source vacuum cleanup and WAL recycling. Set the consistent option to false only when accepting cross-table inconsistency is an explicit tradeoff.

### Async Jobs

Async execution requires preload and a restart:

    shared_preload_libraries = 'pgclone'

    SELECT pgclone.schema_async(
      'host=source.example dbname=app user=clone_user',
      'sales',
      true,
      '{"parallel":4}'
    );

    SELECT * FROM pgclone.jobs_view;
    SELECT pgclone.progress(1);
    SELECT pgclone.cancel(1);

pgclone also exposes progress_detail, resume, and clear_jobs for job administration. Size max_worker_processes for the requested parallelism.

### Important Boundaries

- The upstream usage guide requires superuser privileges to install and use pgclone.
- Async schema/database/parallel paths do not honor masks, tables, or exclude_tables in v4.4.2. Use the documented synchronous path when those controls are a security requirement.
- Keep passwords out of stored SQL and logs; prefer libpq service files, passfiles, or another controlled credential mechanism.
- Version 4.4.2 improves sequence-state copying and protects PostgreSQL 17 source sessions from transaction_timeout, but callers must still validate object ownership, extensions, roles, large objects, and post-clone application behavior.
