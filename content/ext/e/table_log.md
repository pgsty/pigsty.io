---
title: "table_log"
linkTitle: "table_log"
description: "record table modification logs and PITR for table/row"
weight: 5860
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/df7cb/table_log">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">df7cb/table_log</div>
    <div class="ext-card__desc">https://github.com/df7cb/table_log</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/table_log-0.6.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">table_log-0.6.4.tar.gz</div>
    <div class="ext-card__desc">table_log-0.6.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`table_log`**](/ext/e/table_log) | `0.6.4` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5860  | [**`table_log`**](/ext/e/table_log) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`pg_drop_events`](/ext/e/pg_drop_events) [`pg_auditor`](/ext/e/pg_auditor) [`pg_upless`](/ext/e/pg_upless) [`pg_savior`](/ext/e/pg_savior) [`pgaudit`](/ext/e/pgaudit) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.6.4` | {{< pgvers "18,17,16,15,14" >}} | `table_log` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.4` | {{< pgvers "18,17,16,15,14" >}} | `table_log_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.6.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-tablelog` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| d12.x86_64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| d12.aarch64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| d13.x86_64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| d13.aarch64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| u22.x86_64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| u22.aarch64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| u24.x86_64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| u24.aarch64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| u26.x86_64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
| u26.aarch64 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 | AVAIL PGDG 0.6.4 1 |
@ el8.x86_64 18 table_log_18 table_log_18-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_log_18-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 table_log_18 table_log_18-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_log_18-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 table_log_18 table_log_18-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_log_18-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 table_log_18 table_log_18-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_log_18-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 table_log_18 table_log_18-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_log_18-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 table_log_18 table_log_18-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 29.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_log_18-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg12+1_amd64.deb pgdg 0.6.4 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg12+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg13+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg13+1_arm64.deb pgdg 0.6.4 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb pgdg 0.6.4 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb pgdg 0.6.4 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb pgdg 0.6.4 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb pgdg 0.6.4 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb pgdg 0.6.4 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-tablelog postgresql-18-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb pgdg 0.6.4 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-18-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 table_log_17 table_log_17-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 29.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_log_17-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 table_log_17 table_log_17-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 28.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_log_17-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 table_log_17 table_log_17-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_log_17-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 table_log_17 table_log_17-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_log_17-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 table_log_17 table_log_17-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_log_17-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 table_log_17 table_log_17-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 29.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_log_17-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg12+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg12+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg13+1_amd64.deb pgdg 0.6.4 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg13+1_arm64.deb pgdg 0.6.4 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb pgdg 0.6.4 50.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb pgdg 0.6.4 48.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb pgdg 0.6.4 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb pgdg 0.6.4 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-tablelog postgresql-17-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb pgdg 0.6.4 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-17-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 table_log_16 table_log_16-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 29.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_log_16-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 table_log_16 table_log_16-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_log_16-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 table_log_16 table_log_16-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_log_16-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 table_log_16 table_log_16-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_log_16-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 table_log_16 table_log_16-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_log_16-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 table_log_16 table_log_16-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 29.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_log_16-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg12+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg12+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg13+1_amd64.deb pgdg 0.6.4 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg13+1_arm64.deb pgdg 0.6.4 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb pgdg 0.6.4 50.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb pgdg 0.6.4 48.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb pgdg 0.6.4 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb pgdg 0.6.4 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-tablelog postgresql-16-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb pgdg 0.6.4 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-16-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 table_log_15 table_log_15-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_log_15-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 table_log_15 table_log_15-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_log_15-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 table_log_15 table_log_15-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_log_15-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 table_log_15 table_log_15-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_log_15-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 table_log_15 table_log_15-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_log_15-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 table_log_15 table_log_15-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 29.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_log_15-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg12+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg12+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg13+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg13+1_arm64.deb pgdg 0.6.4 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb pgdg 0.6.4 50.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb pgdg 0.6.4 48.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb pgdg 0.6.4 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-tablelog postgresql-15-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb pgdg 0.6.4 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-15-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 table_log_14 table_log_14-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/table_log_14-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 table_log_14 table_log_14-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/table_log_14-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 table_log_14 table_log_14-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/table_log_14-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 table_log_14 table_log_14-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/table_log_14-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 table_log_14 table_log_14-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/table_log_14-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 table_log_14 table_log_14-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 29.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/table_log_14-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg12+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg12+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg13+1_amd64.deb pgdg 0.6.4 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg13+1_arm64.deb pgdg 0.6.4 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb pgdg 0.6.4 48.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb pgdg 0.6.4 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb pgdg 0.6.4 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb pgdg 0.6.4 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb pgdg 0.6.4 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-tablelog postgresql-14-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb pgdg 0.6.4 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tablelog/postgresql-14-tablelog_0.6.4-4.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `table_log` using `pig build`:

```bash
pig build pkg table_log         # build RPM packages
```


## Install

You can install `table_log` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install table_log;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y table_log -v 18  # PG 18
pig ext install -y table_log -v 17  # PG 17
pig ext install -y table_log -v 16  # PG 16
pig ext install -y table_log -v 15  # PG 15
pig ext install -y table_log -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y table_log_18       # PG 18
dnf install -y table_log_17       # PG 17
dnf install -y table_log_16       # PG 16
dnf install -y table_log_15       # PG 15
dnf install -y table_log_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-tablelog   # PG 18
apt install -y postgresql-17-tablelog   # PG 17
apt install -y postgresql-16-tablelog   # PG 16
apt install -y postgresql-15-tablelog   # PG 15
apt install -y postgresql-14-tablelog   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION table_log;
```




## Usage

> [table_log: record table modification logs and PITR for table/row](https://github.com/df7cb/table_log)

The `table_log` extension records INSERT, UPDATE, and DELETE operations on a table into a separate log table, enabling point-in-time recovery at the table or row level.

### Initialize Logging

```sql
CREATE EXTENSION table_log;

-- Basic setup: creates a log table and trigger for 'my_table'
-- Level 5 = log trigger_id + trigger_user + trigger columns
SELECT table_log_init(5, 'my_table');

-- With explicit log schema
SELECT table_log_init(5, 'my_table', 'log_schema');

-- Full form with all options
SELECT table_log_init(
    5,                -- level: 3=minimal, 4=+user, 5=+id+user
    'public',         -- source schema
    'my_table',       -- source table
    'log_schema',     -- log table schema
    'my_table_log',   -- log table name (default: {table}_log)
    'SINGLE',         -- partition mode: 'SINGLE' or 'PARTITION'
    false,            -- basic_mode (simpler trigger)
    '{INSERT, UPDATE, DELETE}'::text[]  -- actions to log
);
```

### Log Table Structure

The log table mirrors the original table columns plus metadata:

| Column | Description |
|--------|-------------|
| `trigger_mode` | Operation type: INSERT, UPDATE, DELETE |
| `trigger_tuple` | Tuple version: 'old' or 'new' |
| `trigger_changed` | Timestamp of the change |
| `trigger_id` | Sequential ID (level 4+) |
| `trigger_user` | User who made the change (level 5) |

### Point-in-Time Restore

```sql
-- Restore table to a specific point in time
SELECT table_log_restore_table(
    'my_table',           -- original table name
    'my_table_log',       -- log table name
    'id',                 -- primary key column
    'trigger_changed',    -- timestamp column in log
    'trigger_tuple',      -- tuple type column in log
    '2024-01-15 10:30:00' -- restore to this timestamp
);
```

### Trigger Functions

| Function | Description |
|----------|-------------|
| `table_log()` | Full trigger function logging all columns |
| `table_log_basic()` | Basic trigger function with simpler logging |
| `table_log_restore_table(...)` | Restore table state to a given timestamp |
