---
title: "pg_stat_backtrace"
linkTitle: "pg_stat_backtrace"
description: "Capture or log C-level stack backtraces of PostgreSQL processes"
weight: 6030
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Nickyoung0/pg_stat_backtrace">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Nickyoung0/pg_stat_backtrace</div>
    <div class="ext-card__desc">https://github.com/Nickyoung0/pg_stat_backtrace</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_stat_backtrace-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_stat_backtrace-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_stat_backtrace-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stat_backtrace`**](/ext/e/pg_stat_backtrace) | `1.0.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6030  | [**`pg_stat_backtrace`**](/ext/e/pg_stat_backtrace) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_stat_log`](/ext/e/pg_stat_log) [`pg_tracing`](/ext/e/pg_tracing) [`pgfr_record`](/ext/e/pgfr_record) [`logerrors`](/ext/e/logerrors) [`pgelog`](/ext/e/pgelog) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> GitHub v1.0.0; C PGXS extension using ptrace(PTRACE_SEIZE) and libunwind; Linux only; runtime may need kernel.yama.ptrace_scope=0


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_stat_backtrace` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_stat_backtrace_$v` | `libunwind` |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-stat-backtrace` | `libunwind8` |
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
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pg_stat_backtrace_18 pg_stat_backtrace_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_backtrace_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_stat_backtrace_18 pg_stat_backtrace_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_backtrace_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_stat_backtrace_18 pg_stat_backtrace_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 31.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_backtrace_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_stat_backtrace_18 pg_stat_backtrace_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_backtrace_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_stat_backtrace_18 pg_stat_backtrace_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_backtrace_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_stat_backtrace_18 pg_stat_backtrace_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 32.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_backtrace_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 17.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 17.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 18.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 18.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-stat-backtrace postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-18-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_stat_backtrace_17 pg_stat_backtrace_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_backtrace_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_stat_backtrace_17 pg_stat_backtrace_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_backtrace_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_stat_backtrace_17 pg_stat_backtrace_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_backtrace_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_stat_backtrace_17 pg_stat_backtrace_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_backtrace_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_stat_backtrace_17 pg_stat_backtrace_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_backtrace_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_stat_backtrace_17 pg_stat_backtrace_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_backtrace_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 17.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 17.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 18.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-stat-backtrace postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-17-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_stat_backtrace_16 pg_stat_backtrace_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_backtrace_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_stat_backtrace_16 pg_stat_backtrace_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_backtrace_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_stat_backtrace_16 pg_stat_backtrace_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_backtrace_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_stat_backtrace_16 pg_stat_backtrace_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_backtrace_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_stat_backtrace_16 pg_stat_backtrace_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_backtrace_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_stat_backtrace_16 pg_stat_backtrace_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_backtrace_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 17.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 17.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 18.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-stat-backtrace postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-16-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_stat_backtrace_15 pg_stat_backtrace_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_backtrace_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_stat_backtrace_15 pg_stat_backtrace_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_backtrace_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_stat_backtrace_15 pg_stat_backtrace_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 31.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_backtrace_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_stat_backtrace_15 pg_stat_backtrace_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_backtrace_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_stat_backtrace_15 pg_stat_backtrace_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_backtrace_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_stat_backtrace_15 pg_stat_backtrace_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_backtrace_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 17.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 17.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 18.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-stat-backtrace postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-15-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_stat_backtrace_14 pg_stat_backtrace_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_backtrace_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_stat_backtrace_14 pg_stat_backtrace_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_backtrace_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_stat_backtrace_14 pg_stat_backtrace_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_backtrace_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_stat_backtrace_14 pg_stat_backtrace_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_backtrace_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_stat_backtrace_14 pg_stat_backtrace_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 32.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_backtrace_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_stat_backtrace_14 pg_stat_backtrace_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 32.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_backtrace_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 17.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 17.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 18.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 17.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 18.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-stat-backtrace postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 17.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-backtrace/postgresql-14-pg-stat-backtrace_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_stat_backtrace` using `pig build`:

```bash
pig build pkg pg_stat_backtrace         # build DEB packages
```


## Install

You can install `pg_stat_backtrace` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_stat_backtrace;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_stat_backtrace -v 18  # PG 18
pig ext install -y pg_stat_backtrace -v 17  # PG 17
pig ext install -y pg_stat_backtrace -v 16  # PG 16
pig ext install -y pg_stat_backtrace -v 15  # PG 15
pig ext install -y pg_stat_backtrace -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_stat_backtrace_18       # PG 18
dnf install -y pg_stat_backtrace_17       # PG 17
dnf install -y pg_stat_backtrace_16       # PG 16
dnf install -y pg_stat_backtrace_15       # PG 15
dnf install -y pg_stat_backtrace_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-stat-backtrace   # PG 18
apt install -y postgresql-17-pg-stat-backtrace   # PG 17
apt install -y postgresql-16-pg-stat-backtrace   # PG 16
apt install -y postgresql-15-pg-stat-backtrace   # PG 15
apt install -y postgresql-14-pg-stat-backtrace   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_stat_backtrace;
```




## Usage

> Sources: [pg_stat_backtrace upstream README](https://github.com/Nickyoung0/pg_stat_backtrace), [upstream changelog](https://github.com/Nickyoung0/pg_stat_backtrace/blob/main/CHANGELOG.md), local source tarball `pg_stat_backtrace-1.0.0.tar.gz`.

`pg_stat_backtrace` captures or logs the C-level stack backtrace of a PostgreSQL backend or auxiliary process on the same Linux host. It uses `ptrace(PTRACE_SEIZE)` plus `libunwind`; it does not use `shared_preload_libraries` and does not send `SIGSTOP` to the target.

```sql
CREATE EXTENSION pg_stat_backtrace;
```

### Capture A Backtrace

Find a target process from PostgreSQL views, then call `pg_get_backtrace(pid)`:

```sql
SELECT pid, backend_type, state, wait_event, query
FROM pg_stat_activity
WHERE backend_type = 'autovacuum worker';

SELECT pg_get_backtrace(123456);
```

The returned text uses a `pstack(1)`-style format:

```text
#0  0x00007f5e6c1a4d9e in __epoll_wait+0x4e
#1  0x000055f1a8c2a213 in WaitEventSetWaitBlock+0x83
#2  0x000055f1a8c2a04e in WaitEventSetWait+0xfe
```

### Write To The Server Log

Use `pg_log_backtrace(pid)` when the result should go through the normal PostgreSQL log pipeline:

```sql
SELECT pg_log_backtrace(123456);

SELECT pid, pg_log_backtrace(pid)
FROM pg_stat_activity
WHERE backend_type = 'walsender';
```

The function returns `true` on success.

### Permissions

By default, execute privilege is revoked from `PUBLIC` for both functions. Grant access only to trusted monitoring roles:

```sql
GRANT EXECUTE ON FUNCTION pg_get_backtrace(int) TO observability;
GRANT EXECUTE ON FUNCTION pg_log_backtrace(int) TO observability;
```

The C code still enforces target checks:

- Superusers may target any PostgreSQL process in the instance, including auxiliary processes such as `walwriter`, `checkpointer`, `walsender`, autovacuum workers, startup, and archiver processes.
- Non-superusers may target only regular backends owned by roles they are members of.
- Auxiliary processes have no role ownership and are rejected for non-superusers.
- A non-superuser may not target a superuser-owned backend, even with role membership.

### Input And Error Behavior

Both functions are `VOLATILE STRICT PARALLEL RESTRICTED`.

```sql
SELECT pg_get_backtrace(NULL::int);  -- NULL, no ptrace attempt
SELECT pg_log_backtrace(NULL::int);  -- NULL, no ptrace attempt
SELECT pg_get_backtrace(0);          -- WARNING, then NULL
SELECT pg_log_backtrace(-1);         -- WARNING, then false
```

Self-targeting is rejected because a Linux process cannot ptrace itself:

```sql
SELECT pg_get_backtrace(pg_backend_pid());
```

### Operational Caveats

- Version 1.0.0 supports PostgreSQL 14-18. Upstream 1.0.0 also advertises PostgreSQL 19 compatibility.
- The extension is Linux-only and depends on `libunwind` / `libunwind-ptrace` at build and runtime.
- On hosts with Yama ptrace restrictions, backend-to-backend capture may require `kernel.yama.ptrace_scope = 0`.
- The target process is briefly paused while the stack is unwound. Avoid tight loops against critical processes such as `walwriter`, `checkpointer`, or synchronous-replication `walsender` on busy primaries.
- Linux permits only one tracer per target process. Concurrent calls against the same PID can fail with `EPERM`; retry after the in-flight call finishes.
