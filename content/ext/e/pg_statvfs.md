---
title: "pg_statvfs"
linkTitle: "pg_statvfs"
description: "Server filesystem capacity and inode statistics through statvfs"
weight: 6470
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/michaelpq/pg_plugins/tree/ae57c1f3df697fb942f4576f873a655187193ace/pg_statvfs">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ae57c1f3df697fb942f4576f873a655187193ace/pg_statvfs</div>
    <div class="ext-card__desc">https://github.com/michaelpq/pg_plugins/tree/ae57c1f3df697fb942f4576f873a655187193ace/pg_statvfs</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_plugins-ae57c1f3df69.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_plugins-ae57c1f3df69.tar.gz</div>
    <div class="ext-card__desc">pg_plugins-ae57c1f3df69.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_statvfs`**](/ext/e/pg_statvfs) | `1.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6470  | [**`pg_statvfs`**](/ext/e/pg_statvfs) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`system_stats`](/ext/e/system_stats) [`pgnodemx`](/ext/e/pgnodemx) [`pgexporter_ext`](/ext/e/pgexporter_ext) [`pg_proctab`](/ext/e/pg_proctab) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Superuser-only; checks server paths under data/log-directory rules. No preload. PostgreSQL 14-18 verified in PGSTY builds; upstream declares no major-version matrix.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_statvfs` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_statvfs_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-statvfs` | - |
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
@ el8.x86_64 18 pg_statvfs_18 pg_statvfs_18-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statvfs_18-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_statvfs_18 pg_statvfs_18-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statvfs_18-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_statvfs_18 pg_statvfs_18-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statvfs_18-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_statvfs_18 pg_statvfs_18-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statvfs_18-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_statvfs_18 pg_statvfs_18-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statvfs_18-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_statvfs_18 pg_statvfs_18-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statvfs_18-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-statvfs postgresql-18-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-18-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_statvfs_17 pg_statvfs_17-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statvfs_17-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_statvfs_17 pg_statvfs_17-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statvfs_17-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_statvfs_17 pg_statvfs_17-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statvfs_17-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_statvfs_17 pg_statvfs_17-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statvfs_17-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_statvfs_17 pg_statvfs_17-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statvfs_17-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_statvfs_17 pg_statvfs_17-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statvfs_17-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-statvfs postgresql-17-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-17-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_statvfs_16 pg_statvfs_16-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statvfs_16-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_statvfs_16 pg_statvfs_16-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statvfs_16-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_statvfs_16 pg_statvfs_16-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statvfs_16-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_statvfs_16 pg_statvfs_16-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statvfs_16-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_statvfs_16 pg_statvfs_16-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statvfs_16-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_statvfs_16 pg_statvfs_16-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statvfs_16-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-statvfs postgresql-16-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-16-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_statvfs_15 pg_statvfs_15-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statvfs_15-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_statvfs_15 pg_statvfs_15-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statvfs_15-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_statvfs_15 pg_statvfs_15-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statvfs_15-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_statvfs_15 pg_statvfs_15-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statvfs_15-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_statvfs_15 pg_statvfs_15-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statvfs_15-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_statvfs_15 pg_statvfs_15-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statvfs_15-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-statvfs postgresql-15-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-15-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_statvfs_14 pg_statvfs_14-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statvfs_14-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_statvfs_14 pg_statvfs_14-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statvfs_14-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_statvfs_14 pg_statvfs_14-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statvfs_14-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_statvfs_14 pg_statvfs_14-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statvfs_14-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_statvfs_14 pg_statvfs_14-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statvfs_14-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_statvfs_14 pg_statvfs_14-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 20.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statvfs_14-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 12.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 12.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-statvfs postgresql-14-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statvfs/postgresql-14-pg-statvfs_1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_statvfs` using `pig build`:

```bash
pig build pkg pg_statvfs         # build RPM / DEB packages
```


## Install

You can install `pg_statvfs` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_statvfs;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_statvfs -v 18  # PG 18
pig ext install -y pg_statvfs -v 17  # PG 17
pig ext install -y pg_statvfs -v 16  # PG 16
pig ext install -y pg_statvfs -v 15  # PG 15
pig ext install -y pg_statvfs -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_statvfs_18       # PG 18
dnf install -y pg_statvfs_17       # PG 17
dnf install -y pg_statvfs_16       # PG 16
dnf install -y pg_statvfs_15       # PG 15
dnf install -y pg_statvfs_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-statvfs   # PG 18
apt install -y postgresql-17-pg-statvfs   # PG 17
apt install -y postgresql-16-pg-statvfs   # PG 16
apt install -y postgresql-15-pg-statvfs   # PG 15
apt install -y postgresql-14-pg-statvfs   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_statvfs;
```

## Usage

Sources:

- [Official documentation](https://github.com/michaelpq/pg_plugins/blob/ae57c1f3df697fb942f4576f873a655187193ace/pg_statvfs/README)
- [Control file](https://github.com/michaelpq/pg_plugins/blob/ae57c1f3df697fb942f4576f873a655187193ace/pg_statvfs/pg_statvfs.control)
- [Version 1.0 SQL](https://github.com/michaelpq/pg_plugins/blob/ae57c1f3df697fb942f4576f873a655187193ace/pg_statvfs/pg_statvfs--1.0.sql)
- [Privilege and path checks](https://github.com/michaelpq/pg_plugins/blob/ae57c1f3df697fb942f4576f873a655187193ace/pg_statvfs/pg_statvfs.c)

`pg_statvfs` 1.0 exposes filesystem capacity, inode availability, and mount flags through the server's statvfs call. It inspects the filesystem containing a server-side path, not a client directory or the size of an individual relation.

### Core Workflow

After installing the extension files, use a superuser session:

```sql
CREATE EXTENSION pg_statvfs;
SELECT * FROM pg_statvfs(current_setting('data_directory'));
SELECT f_frsize * f_blocks AS total_bytes,
       f_frsize * f_bavail AS available_bytes
FROM pg_statvfs(current_setting('data_directory'));
```

### Result and Access

`pg_statvfs(path text)` returns one record. `f_bsize` is the preferred block size; `f_frsize` is the unit for block counts. `f_blocks`, `f_bfree`, and `f_bavail` report total, free, and unprivileged-available blocks. `f_files`, `f_ffree`, and `f_favail` describe inode counts; `f_fsid`, `f_namemax`, and `flags` expose filesystem identity, name limits, and supported mount flags.

The C function explicitly requires superuser privileges and validates the path before asking the operating system. Missing or inaccessible paths produce an error. The extension needs no preload or restart of its own. Its control file permits relocation, but does not mark it trusted. The upstream subdirectory does not declare a complete PostgreSQL-major compatibility matrix; operating-system support and mount-flag coverage also vary.
