---
title: "pglock"
linkTitle: "pglock"
description: "Lightweight distributed lock service inside PostgreSQL"
weight: 4140
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fraruiz/pglock">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fraruiz/pglock</div>
    <div class="ext-card__desc">https://github.com/fraruiz/pglock</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pglock-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pglock-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pglock-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pglock`**](/ext/e/pglock) | `1.0.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4140  | [**`pglock`**](/ext/e/pglock) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pglock` |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pgmb`](/ext/e/pgmb) [`pgmq`](/ext/e/pgmq) [`pgq`](/ext/e/pgq) [`pg_cron`](/ext/e/pg_cron) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Packaging patches the upstream pgmb.control mismatch and installs the extension as pglock.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pglock` | `pg_cron` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pglock_$v` | `pg_cron_$v` |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pglock` | `postgresql-$v-cron` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pglock_18 pglock_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglock_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pglock_18 pglock_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglock_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pglock_18 pglock_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglock_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pglock_18 pglock_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglock_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pglock_18 pglock_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglock_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pglock_18 pglock_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglock_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pglock postgresql-18-pglock_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-18-pglock_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pglock_17 pglock_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglock_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pglock_17 pglock_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglock_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pglock_17 pglock_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglock_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pglock_17 pglock_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglock_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pglock_17 pglock_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglock_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pglock_17 pglock_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglock_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pglock postgresql-17-pglock_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-17-pglock_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pglock_16 pglock_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglock_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pglock_16 pglock_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglock_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pglock_16 pglock_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglock_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pglock_16 pglock_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglock_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pglock_16 pglock_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglock_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pglock_16 pglock_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglock_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pglock postgresql-16-pglock_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-16-pglock_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pglock_15 pglock_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglock_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pglock_15 pglock_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglock_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pglock_15 pglock_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglock_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pglock_15 pglock_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglock_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pglock_15 pglock_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglock_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pglock_15 pglock_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglock_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pglock postgresql-15-pglock_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-15-pglock_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pglock_14 pglock_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglock_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pglock_14 pglock_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglock_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pglock_14 pglock_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglock_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pglock_14 pglock_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglock_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pglock_14 pglock_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglock_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pglock_14 pglock_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglock_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 4.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pglock postgresql-14-pglock_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglock/postgresql-14-pglock_1.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pglock` using `pig build`:

```bash
pig build pkg pglock         # build RPM / DEB packages
```


## Install

You can install `pglock` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pglock;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pglock -v 18  # PG 18
pig ext install -y pglock -v 17  # PG 17
pig ext install -y pglock -v 16  # PG 16
pig ext install -y pglock -v 15  # PG 15
pig ext install -y pglock -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pglock_18       # PG 18
dnf install -y pglock_17       # PG 17
dnf install -y pglock_16       # PG 16
dnf install -y pglock_15       # PG 15
dnf install -y pglock_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pglock   # PG 18
apt install -y postgresql-17-pglock   # PG 17
apt install -y postgresql-16-pglock   # PG 16
apt install -y postgresql-15-pglock   # PG 15
apt install -y postgresql-14-pglock   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pglock CASCADE;  -- requires: pg_cron
```

## Usage

- Source: [README](https://github.com/fraruiz/pglock/blob/master/README.md)

`pglock` is a lightweight distributed lock service implemented inside PostgreSQL. It stores lock state in `pglock.locks` and uses TTL-based cleanup for stale rows.

### Create The Extension

```sql
CREATE EXTENSION pglock;
```

The upstream README lists PostgreSQL 9.1+ and `plpgsql` as requirements.

### Acquire And Release Locks

```sql
SELECT pglock.lock('worker-1', 'users');
SELECT pglock.unlock('worker-1', 'users');
```

`pglock.lock(id, resource)` returns `true` if the lock is acquired and `false` if another process already holds it. `pglock.unlock(id, resource)` is documented as idempotent.

### Isolation And Expiration

The README recommends serializable isolation for correctness under concurrency:

```sql
SELECT pglock.set_serializable();

BEGIN ISOLATION LEVEL SERIALIZABLE;
SELECT pglock.lock('my-id', 'my-resource');
SELECT pglock.unlock('my-id', 'my-resource');
COMMIT;
```

Stale locks are expired with:

```sql
SELECT pglock.ttl();
```

The documented default TTL is 5 minutes. If `pg_cron` is available, the README says `pglock.ttl()` can be scheduled every minute.

### Lock Table

The upstream schema is `pglock.locks` with columns `id`, `resource`, `locked`, `ttl`, `created_at`, and `updated_at`. The primary key is `(id, resource)`.
