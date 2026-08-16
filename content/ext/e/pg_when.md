---
title: "pg_when"
linkTitle: "pg_when"
description: "Natural language time parsing for PostgreSQL"
weight: 1120
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/frectonz/pg-when">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">frectonz/pg-when</div>
    <div class="ext-card__desc">https://github.com/frectonz/pg-when</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_when-0.1.10.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_when-0.1.10.tar.gz</div>
    <div class="ext-card__desc">pg_when-0.1.10.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_when`**](/ext/e/pg_when) | `0.1.10` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1120  | [**`pg_when`**](/ext/e/pg_when) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pgcalendar`](/ext/e/pgcalendar) [`pg_rrule`](/ext/e/pg_rrule) [`cron_utils`](/ext/e/cron_utils) [`pgagent`](/ext/e/pgagent) [`pg_task`](/ext/e/pg_task) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`pg_duration`](/ext/e/pg_duration) [`pg_bikram_sambat`](/ext/e/pg_bikram_sambat) [`pg_dispatch`](/ext/e/pg_dispatch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream 0.1.10 supports PostgreSQL 13-18 and pins pgrx 0.18.1; PIGSTY packages PostgreSQL 14-18 with a locked pgrx 0.19.1 compatibility update.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.10` | {{< pgvers "18,17,16,15,14" >}} | `pg_when` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.10` | {{< pgvers "18,17,16,15,14" >}} | `pg_when_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.10` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-when` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 | AVAIL PIGSTY 0.1.10 1 |
@ el8.x86_64 18 pg_when_18 pg_when_18-0.1.10-1PGSTY.el8.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_when_18-0.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_when_18 pg_when_18-0.1.10-1PGSTY.el8.aarch64.rpm pigsty 0.1.10 973.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_when_18-0.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_when_18 pg_when_18-0.1.10-1PGSTY.el9.x86_64.rpm pigsty 0.1.10 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_when_18-0.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_when_18 pg_when_18-0.1.10-1PGSTY.el9.aarch64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_when_18-0.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_when_18 pg_when_18-0.1.10-1PGSTY.el10.x86_64.rpm pigsty 0.1.10 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_when_18-0.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_when_18 pg_when_18-0.1.10-1PGSTY.el10.aarch64.rpm pigsty 0.1.10 1016.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_when_18-0.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb pigsty 0.1.10 882.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb pigsty 0.1.10 755.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~trixie_amd64.deb pigsty 0.1.10 882.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~trixie_arm64.deb pigsty 0.1.10 756.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~jammy_amd64.deb pigsty 0.1.10 977.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~jammy_arm64.deb pigsty 0.1.10 887.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~noble_amd64.deb pigsty 0.1.10 967.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~noble_arm64.deb pigsty 0.1.10 877.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~resolute_amd64.deb pigsty 0.1.10 964.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-when postgresql-18-pg-when_0.1.10-1PGSTY~resolute_arm64.deb pigsty 0.1.10 875.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-18-pg-when_0.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_when_17 pg_when_17-0.1.10-1PGSTY.el8.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_when_17-0.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_when_17 pg_when_17-0.1.10-1PGSTY.el8.aarch64.rpm pigsty 0.1.10 970.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_when_17-0.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_when_17 pg_when_17-0.1.10-1PGSTY.el9.x86_64.rpm pigsty 0.1.10 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_when_17-0.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_when_17 pg_when_17-0.1.10-1PGSTY.el9.aarch64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_when_17-0.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_when_17 pg_when_17-0.1.10-1PGSTY.el10.x86_64.rpm pigsty 0.1.10 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_when_17-0.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_when_17 pg_when_17-0.1.10-1PGSTY.el10.aarch64.rpm pigsty 0.1.10 1015.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_when_17-0.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb pigsty 0.1.10 881.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb pigsty 0.1.10 753.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~trixie_amd64.deb pigsty 0.1.10 881.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~trixie_arm64.deb pigsty 0.1.10 754.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~jammy_amd64.deb pigsty 0.1.10 976.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~jammy_arm64.deb pigsty 0.1.10 884.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~noble_amd64.deb pigsty 0.1.10 967.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~noble_arm64.deb pigsty 0.1.10 874.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~resolute_amd64.deb pigsty 0.1.10 962.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-when postgresql-17-pg-when_0.1.10-1PGSTY~resolute_arm64.deb pigsty 0.1.10 873.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-17-pg-when_0.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_when_16 pg_when_16-0.1.10-1PGSTY.el8.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_when_16-0.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_when_16 pg_when_16-0.1.10-1PGSTY.el8.aarch64.rpm pigsty 0.1.10 969.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_when_16-0.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_when_16 pg_when_16-0.1.10-1PGSTY.el9.x86_64.rpm pigsty 0.1.10 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_when_16-0.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_when_16 pg_when_16-0.1.10-1PGSTY.el9.aarch64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_when_16-0.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_when_16 pg_when_16-0.1.10-1PGSTY.el10.x86_64.rpm pigsty 0.1.10 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_when_16-0.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_when_16 pg_when_16-0.1.10-1PGSTY.el10.aarch64.rpm pigsty 0.1.10 1015.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_when_16-0.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb pigsty 0.1.10 880.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb pigsty 0.1.10 753.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~trixie_amd64.deb pigsty 0.1.10 880.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~trixie_arm64.deb pigsty 0.1.10 754.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~jammy_amd64.deb pigsty 0.1.10 974.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~jammy_arm64.deb pigsty 0.1.10 884.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~noble_amd64.deb pigsty 0.1.10 965.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~noble_arm64.deb pigsty 0.1.10 875.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~resolute_amd64.deb pigsty 0.1.10 961.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-when postgresql-16-pg-when_0.1.10-1PGSTY~resolute_arm64.deb pigsty 0.1.10 872.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-16-pg-when_0.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_when_15 pg_when_15-0.1.10-1PGSTY.el8.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_when_15-0.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_when_15 pg_when_15-0.1.10-1PGSTY.el8.aarch64.rpm pigsty 0.1.10 960.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_when_15-0.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_when_15 pg_when_15-0.1.10-1PGSTY.el9.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_when_15-0.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_when_15 pg_when_15-0.1.10-1PGSTY.el9.aarch64.rpm pigsty 0.1.10 1022.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_when_15-0.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_when_15 pg_when_15-0.1.10-1PGSTY.el10.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_when_15-0.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_when_15 pg_when_15-0.1.10-1PGSTY.el10.aarch64.rpm pigsty 0.1.10 1012.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_when_15-0.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb pigsty 0.1.10 875.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb pigsty 0.1.10 748.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~trixie_amd64.deb pigsty 0.1.10 874.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~trixie_arm64.deb pigsty 0.1.10 749.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~jammy_amd64.deb pigsty 0.1.10 970.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~jammy_arm64.deb pigsty 0.1.10 877.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~noble_amd64.deb pigsty 0.1.10 959.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~noble_arm64.deb pigsty 0.1.10 868.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~resolute_amd64.deb pigsty 0.1.10 953.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-when postgresql-15-pg-when_0.1.10-1PGSTY~resolute_arm64.deb pigsty 0.1.10 866.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-15-pg-when_0.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_when_14 pg_when_14-0.1.10-1PGSTY.el8.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_when_14-0.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_when_14 pg_when_14-0.1.10-1PGSTY.el8.aarch64.rpm pigsty 0.1.10 957.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_when_14-0.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_when_14 pg_when_14-0.1.10-1PGSTY.el9.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_when_14-0.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_when_14 pg_when_14-0.1.10-1PGSTY.el9.aarch64.rpm pigsty 0.1.10 1020.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_when_14-0.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_when_14 pg_when_14-0.1.10-1PGSTY.el10.x86_64.rpm pigsty 0.1.10 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_when_14-0.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_when_14 pg_when_14-0.1.10-1PGSTY.el10.aarch64.rpm pigsty 0.1.10 1010.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_when_14-0.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb pigsty 0.1.10 872.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb pigsty 0.1.10 746.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~trixie_amd64.deb pigsty 0.1.10 872.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~trixie_arm64.deb pigsty 0.1.10 747.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~jammy_amd64.deb pigsty 0.1.10 965.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~jammy_arm64.deb pigsty 0.1.10 875.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~noble_amd64.deb pigsty 0.1.10 955.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~noble_arm64.deb pigsty 0.1.10 866.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~resolute_amd64.deb pigsty 0.1.10 952.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-when postgresql-14-pg-when_0.1.10-1PGSTY~resolute_arm64.deb pigsty 0.1.10 863.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-when/postgresql-14-pg-when_0.1.10-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_when` using `pig build`:

```bash
pig build pkg pg_when         # build RPM / DEB packages
```


## Install

You can install `pg_when` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_when;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_when -v 18  # PG 18
pig ext install -y pg_when -v 17  # PG 17
pig ext install -y pg_when -v 16  # PG 16
pig ext install -y pg_when -v 15  # PG 15
pig ext install -y pg_when -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_when_18       # PG 18
dnf install -y pg_when_17       # PG 17
dnf install -y pg_when_16       # PG 16
dnf install -y pg_when_15       # PG 15
dnf install -y pg_when_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-when   # PG 18
apt install -y postgresql-17-pg-when   # PG 17
apt install -y postgresql-16-pg-when   # PG 16
apt install -y postgresql-15-pg-when   # PG 15
apt install -y postgresql-14-pg-when   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_when;
```

## Usage

Sources:

- [pg_when 0.1.10 on PGXN](https://pgxn.org/dist/pg_when/0.1.10/)
- [pg_when 0.1.10 README](https://github.com/frectonz/pg-when/blob/0.1.10/README.md)
- [pg_when 0.1.10 Cargo manifest](https://api.pgxn.org/src/pg_when/pg_when-0.1.10/Cargo.toml)
- [pg_when 0.1.10 control file](https://api.pgxn.org/src/pg_when/pg_when-0.1.10/pg_when.control)
- [pg_when 0.1.10 exported functions](https://api.pgxn.org/src/pg_when/pg_when-0.1.10/src/when_is.rs)
- [pg_when 0.1.10 relative-date implementation](https://api.pgxn.org/src/pg_when/pg_when-0.1.10/src/when_relative_date.rs)

`pg_when` 0.1.10 parses a constrained natural-language date and time expression and returns either a PostgreSQL `timestamptz` value or a Unix epoch value at a selected precision.

```sql
CREATE EXTENSION pg_when;

SELECT when_is('next friday at 8:00 pm in America/New_York');
SELECT seconds_at('5 days ago at this hour in Asia/Tokyo');
SELECT millis_at('in 2 months at midnight in UTC-8');
SELECT micros_at('December 31, 2026 at evening');
SELECT nanos_at('last monday at 22:30');
```

### Query Shape

A query can contain a date, a time, and a time zone, joined by `at` and `in`:

```sql
SELECT when_is('<date> at <time> in <timezone>');
SELECT when_is('<date>');
SELECT when_is('<date> in <timezone>');
SELECT when_is('<time>');
SELECT when_is('<time> in <timezone>');
SELECT when_is('<date> at <time>');
```

If the time zone is omitted, the parser uses UTC. Supported inputs include relative dates such as `tomorrow`, `last month`, and `5 days ago`; exact dates in common numeric and month-name forms; relative times such as `noon`, `midnight`, and `next hour`; clock times; IANA time-zone names; and UTC offsets.

### Function Index

- `when_is(text)` returns `timestamptz`.
- `seconds_at(text)` returns Unix epoch seconds.
- `millis_at(text)` returns Unix epoch milliseconds.
- `micros_at(text)` returns Unix epoch microseconds.
- `nanos_at(text)` returns Unix epoch nanoseconds.

### Compatibility and Boundaries

- The parser implements the documented grammar; it is not a general-purpose natural-language interpreter.
- Upstream 0.1.10 declares PostgreSQL 13–18 features and pins pgrx 0.18.1. Pigsty packages cover PostgreSQL 14–18 and apply a locked pgrx 0.19.1 compatibility update.
- `pg_when` is not relocatable and its control file requires a superuser for `CREATE EXTENSION`.
- Invalid text raises an error. All five functions are `STRICT`, so a null input returns null; `nanos_at(text)` also errors when the epoch nanoseconds cannot fit in `bigint`.
- The 0.1.10 SQL functions are declared `IMMUTABLE`, but relative expressions such as `now`, `tomorrow`, and `5 days ago` read the wall clock. Do not use relative-input calls in expression indexes or generated columns, and do not rely on them being reevaluated in cached plans; only fully specified date, time, and time-zone inputs are time-independent.
