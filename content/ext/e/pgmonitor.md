---
title: "pgmonitor"
linkTitle: "pgmonitor"
description: "Collector-friendly metric views and background refresh worker"
weight: 6070
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrunchyData/pgmonitor-extension">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrunchyData/pgmonitor-extension</div>
    <div class="ext-card__desc">https://github.com/CrunchyData/pgmonitor-extension</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmonitor-extension-2.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmonitor-extension-2.2.0.tar.gz</div>
    <div class="ext-card__desc">pgmonitor-extension-2.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmonitor`**](/ext/e/pgmonitor) | `2.2.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6070  | [**`pgmonitor`**](/ext/e/pgmonitor) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgnodemx`](/ext/e/pgnodemx) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`system_stats`](/ext/e/system_stats) [`pg_datasentinel`](/ext/e/pg_datasentinel) [`pgsentinel`](/ext/e/pgsentinel) [`pg_stat_ch`](/ext/e/pg_stat_ch) [`pgbouncer_fdw`](/ext/e/pgbouncer_fdw) [`pgpool_adm`](/ext/e/pgpool_adm) [`pg_profile`](/ext/e/pg_profile) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Metric objects work without preloading; the optional background worker requires shared_preload_libraries=pgmonitor_bgw.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmonitor` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmonitor_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmonitor` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 |
@ el8.x86_64 18 pgmonitor_18 pgmonitor_18-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmonitor_18-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmonitor_18 pgmonitor_18-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 32.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmonitor_18-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmonitor_18 pgmonitor_18-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmonitor_18-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmonitor_18 pgmonitor_18-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 31.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmonitor_18-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmonitor_18 pgmonitor_18-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmonitor_18-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgmonitor_18 pgmonitor_18-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmonitor_18-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 36.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 36.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 36.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 38.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 38.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 38.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 37.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 38.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgmonitor postgresql-18-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 37.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-18-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgmonitor_17 pgmonitor_17-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmonitor_17-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmonitor_17 pgmonitor_17-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 32.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmonitor_17-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmonitor_17 pgmonitor_17-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmonitor_17-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmonitor_17 pgmonitor_17-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 31.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmonitor_17-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmonitor_17 pgmonitor_17-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmonitor_17-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgmonitor_17 pgmonitor_17-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmonitor_17-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 36.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 36.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 43.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 42.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 37.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 37.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 38.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgmonitor postgresql-17-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 38.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-17-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgmonitor_16 pgmonitor_16-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmonitor_16-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgmonitor_16 pgmonitor_16-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmonitor_16-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgmonitor_16 pgmonitor_16-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmonitor_16-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgmonitor_16 pgmonitor_16-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 31.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmonitor_16-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgmonitor_16 pgmonitor_16-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmonitor_16-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgmonitor_16 pgmonitor_16-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmonitor_16-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 36.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 36.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 42.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 42.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 37.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 37.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 38.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgmonitor postgresql-16-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 38.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-16-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgmonitor_15 pgmonitor_15-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmonitor_15-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgmonitor_15 pgmonitor_15-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmonitor_15-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmonitor_15 pgmonitor_15-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmonitor_15-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgmonitor_15 pgmonitor_15-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 31.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmonitor_15-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgmonitor_15 pgmonitor_15-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmonitor_15-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgmonitor_15 pgmonitor_15-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmonitor_15-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 36.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 36.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 42.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 42.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 38.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 37.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 38.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgmonitor postgresql-15-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 38.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-15-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgmonitor_14 pgmonitor_14-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmonitor_14-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgmonitor_14 pgmonitor_14-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmonitor_14-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmonitor_14 pgmonitor_14-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmonitor_14-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgmonitor_14 pgmonitor_14-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmonitor_14-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgmonitor_14 pgmonitor_14-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmonitor_14-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgmonitor_14 pgmonitor_14-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmonitor_14-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 36.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 36.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 36.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 41.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 41.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 38.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 37.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 38.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgmonitor postgresql-14-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 38.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmonitor/postgresql-14-pgmonitor_2.2.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmonitor` using `pig build`:

```bash
pig build pkg pgmonitor         # build RPM / DEB packages
```


## Install

You can install `pgmonitor` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmonitor;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmonitor -v 18  # PG 18
pig ext install -y pgmonitor -v 17  # PG 17
pig ext install -y pgmonitor -v 16  # PG 16
pig ext install -y pgmonitor -v 15  # PG 15
pig ext install -y pgmonitor -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmonitor_18       # PG 18
dnf install -y pgmonitor_17       # PG 17
dnf install -y pgmonitor_16       # PG 16
dnf install -y pgmonitor_15       # PG 15
dnf install -y pgmonitor_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmonitor   # PG 18
apt install -y postgresql-17-pgmonitor   # PG 17
apt install -y postgresql-16-pgmonitor   # PG 16
apt install -y postgresql-15-pgmonitor   # PG 15
apt install -y postgresql-14-pgmonitor   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgmonitor_bgw';
```


**Create Extension**:

```sql
CREATE EXTENSION pgmonitor;
```

## Usage

Sources:

- [pgmonitor-extension v2.2.0 README](https://github.com/CrunchyData/pgmonitor-extension/blob/v2.2.0/README.md)
- [pgmonitor v2.2.0 control file](https://github.com/CrunchyData/pgmonitor-extension/blob/v2.2.0/pgmonitor.control)
- [pgmonitor-extension v2.2.0 release notes](https://github.com/CrunchyData/pgmonitor-extension/releases/tag/v2.2.0)

pgmonitor exposes PostgreSQL monitoring metrics through a curated set of views, materialized views, and tables for external collectors. Its SQL metrics work without a background worker; the optional pgmonitor_bgw worker periodically refreshes materialized data.

### Create the Extension

Create a dedicated schema and install pgmonitor there:

    CREATE SCHEMA pgmonitor_ext;
    CREATE EXTENSION pgmonitor SCHEMA pgmonitor_ext;

Grant collectors only the access they need to the metric objects. Some underlying PostgreSQL statistics remain subject to built-in role and row-visibility rules.

### Collect Metrics

External agents can select the active objects described by the extension's configuration tables:

    SELECT *
    FROM pgmonitor_ext.metric_views
    WHERE active;

    SELECT *
    FROM pgmonitor_ext.metric_matviews
    WHERE active;

    SELECT *
    FROM pgmonitor_ext.metric_tables
    WHERE active;

These tables describe metric name, activation, scope, and refresh interval. Query the installed definitions rather than assuming every metric is enabled on every PostgreSQL version.

The metric surface includes activity, database and table statistics, locks, replication, WAL and archive status, vacuum progress, settings, checkpoints, and extension-specific views when their dependencies are available.

### Refresh Materialized Metrics Manually

Without the background worker, invoke the refresh procedure for the configured schema and metric:

    CALL pgmonitor_ext.refresh_metrics(
      'pgmonitor_ext',
      'pg_stat_statements'
    );

Use names returned by metric_matviews; do not assume the example metric is installed or active. The extension retains a legacy refresh function for compatibility, but new integrations should use the documented procedure.

### Optional Background Worker

To schedule refreshes inside PostgreSQL:

    shared_preload_libraries = 'pgmonitor_bgw'
    pgmonitor_bgw.dbname = 'postgres,app'
    pgmonitor_bgw.role = 'postgres'
    pgmonitor_bgw.interval = 30

Restart PostgreSQL after changing shared_preload_libraries. pgmonitor_bgw.dbname is required and lists the databases to maintain. Upstream v2.2 currently requires the worker role to be a superuser; use the narrowest controlled role and protect its credentials and settings.

### Object Index

- metric_views: directly queried metric views and their collection metadata.
- metric_matviews: materialized metrics and refresh intervals.
- metric_tables: table-backed metrics and maintenance metadata.
- refresh_metrics(schema, name): refresh procedure for one configured metric.
- pgmonitor_bgw.dbname: databases processed by the optional worker.
- pgmonitor_bgw.role: role used for refresh work.
- pgmonitor_bgw.interval: worker loop interval in seconds.

### Version 2.2 and Caveats

Version 2.2 removes the settings-checksum metric, fixes the legacy refresh path on PostgreSQL 13, and reduces routine log noise.

- Metric queries add load to shared statistics, catalogs, and extension objects. Set collection intervals from measured cost.
- A healthy collector connection does not prove materialized views are fresh; monitor their timestamps and worker logs.
- The extension supplies database metrics, not host, filesystem, or process metrics.
- Installing pgmonitor does not automatically configure Prometheus, exporters, dashboards, or alert rules.
