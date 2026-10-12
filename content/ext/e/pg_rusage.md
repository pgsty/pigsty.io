---
title: "pg_rusage"
linkTitle: "pg_rusage"
description: "Measure backend CPU usage between explicit reset and print calls"
weight: 6230
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/michaelpq/pg_plugins/tree/ae57c1f3df697fb942f4576f873a655187193ace/pg_rusage">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ae57c1f3df697fb942f4576f873a655187193ace/pg_rusage</div>
    <div class="ext-card__desc">https://github.com/michaelpq/pg_plugins/tree/ae57c1f3df697fb942f4576f873a655187193ace/pg_rusage</div>
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
| [**`pg_rusage`**](/ext/e/pg_rusage) | `1.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6230  | [**`pg_rusage`**](/ext/e/pg_rusage) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_proctab`](/ext/e/pg_proctab) [`system_stats`](/ext/e/system_stats) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg_rusage_print() emits the current backend measurement as a WARNING and returns void. No preload; PostgreSQL 14-18 verified in PGSTY builds; upstream declares no major-version matrix.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_rusage` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_rusage_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-rusage` | - |
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
@ el8.x86_64 18 pg_rusage_18 pg_rusage_18-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rusage_18-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_rusage_18 pg_rusage_18-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rusage_18-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_rusage_18 pg_rusage_18-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rusage_18-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_rusage_18 pg_rusage_18-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rusage_18-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_rusage_18 pg_rusage_18-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rusage_18-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_rusage_18 pg_rusage_18-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rusage_18-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 7.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-rusage postgresql-18-pg-rusage_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 7.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-18-pg-rusage_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_rusage_17 pg_rusage_17-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rusage_17-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_rusage_17 pg_rusage_17-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rusage_17-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_rusage_17 pg_rusage_17-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rusage_17-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_rusage_17 pg_rusage_17-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rusage_17-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_rusage_17 pg_rusage_17-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rusage_17-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_rusage_17 pg_rusage_17-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rusage_17-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-rusage postgresql-17-pg-rusage_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 7.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-17-pg-rusage_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_rusage_16 pg_rusage_16-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rusage_16-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_rusage_16 pg_rusage_16-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rusage_16-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_rusage_16 pg_rusage_16-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rusage_16-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_rusage_16 pg_rusage_16-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rusage_16-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_rusage_16 pg_rusage_16-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rusage_16-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_rusage_16 pg_rusage_16-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rusage_16-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-rusage postgresql-16-pg-rusage_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 7.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-16-pg-rusage_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_rusage_15 pg_rusage_15-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rusage_15-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_rusage_15 pg_rusage_15-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rusage_15-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_rusage_15 pg_rusage_15-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rusage_15-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_rusage_15 pg_rusage_15-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rusage_15-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_rusage_15 pg_rusage_15-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rusage_15-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_rusage_15 pg_rusage_15-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rusage_15-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 7.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 7.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-rusage postgresql-15-pg-rusage_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 7.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-15-pg-rusage_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_rusage_14 pg_rusage_14-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rusage_14-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_rusage_14 pg_rusage_14-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rusage_14-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_rusage_14 pg_rusage_14-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rusage_14-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_rusage_14 pg_rusage_14-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rusage_14-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_rusage_14 pg_rusage_14-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rusage_14-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_rusage_14 pg_rusage_14-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rusage_14-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 8.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 8.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 8.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 8.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 8.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-rusage postgresql-14-pg-rusage_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 8.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rusage/postgresql-14-pg-rusage_1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_rusage` using `pig build`:

```bash
pig build pkg pg_rusage         # build RPM / DEB packages
```


## Install

You can install `pg_rusage` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_rusage;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_rusage -v 18  # PG 18
pig ext install -y pg_rusage -v 17  # PG 17
pig ext install -y pg_rusage -v 16  # PG 16
pig ext install -y pg_rusage -v 15  # PG 15
pig ext install -y pg_rusage -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_rusage_18       # PG 18
dnf install -y pg_rusage_17       # PG 17
dnf install -y pg_rusage_16       # PG 16
dnf install -y pg_rusage_15       # PG 15
dnf install -y pg_rusage_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-rusage   # PG 18
apt install -y postgresql-17-pg-rusage   # PG 17
apt install -y postgresql-16-pg-rusage   # PG 16
apt install -y postgresql-15-pg-rusage   # PG 15
apt install -y postgresql-14-pg-rusage   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_rusage;
```

## Usage

Sources:

- [Official upstream README](https://github.com/michaelpq/pg_plugins/blob/626fb56b0a0b833d4f23ca55359ce56d38162864/pg_rusage/README)
- [Official extension control file (pg_rusage.control)](https://github.com/michaelpq/pg_plugins/blob/626fb56b0a0b833d4f23ca55359ce56d38162864/pg_rusage/pg_rusage.control)
- [Official extension SQL (pg_rusage--1.0.sql)](https://github.com/michaelpq/pg_plugins/blob/626fb56b0a0b833d4f23ca55359ce56d38162864/pg_rusage/pg_rusage--1.0.sql)

`pg_rusage` — This module is a PostgreSQL extension that can enable CPU measurements, with one SQL function to enable the measurement and one to disable it. When disabling, the existing accumulated results will show up. Use it when collecting or interpreting the corresponding PostgreSQL statistics. Use the pinned upstream revision linked above as the API boundary and test it on the target PostgreSQL build.

### Core Workflow

```sql
CREATE EXTENSION pg_rusage;
```

Install the extension in the intended database, run the smallest upstream example above when available, and verify the installed version and returned values before integrating it into application SQL.

### Important Objects

- `pg_rusage_print()` is an extension function and returns `void`.
- `pg_rusage_reset()` is an extension function and returns `void`.

### Requirements and Caveats

- The reviewed control file declares default version `1.0`.
- The control file marks the extension as relocatable.
- Confirm privileges, supported PostgreSQL versions, upgrade behavior, and failure cases against the pinned source before production use.
