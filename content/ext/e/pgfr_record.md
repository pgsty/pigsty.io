---
title: "pgfr_record"
linkTitle: "pgfr_record"
description: "Server-side PostgreSQL performance flight recorder"
weight: 6060
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dventimisupabase/pg_flight_recorder">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dventimisupabase/pg_flight_recorder</div>
    <div class="ext-card__desc">https://github.com/dventimisupabase/pg_flight_recorder</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_flight_recorder-2.29.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_flight_recorder-2.29.2.tar.gz</div>
    <div class="ext-card__desc">pg_flight_recorder-2.29.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_flight_recorder`**](/ext/e/pgfr_record) | `2.29.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6060  | [**`pgfr_record`**](/ext/e/pgfr_record) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgfr_record` |
| 6061  | [**`pgfr_analyze`**](/ext/e/pgfr_analyze) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgfr_analyze` |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_stat_log`](/ext/e/pg_stat_log) [`pg_tracing`](/ext/e/pg_tracing) [`pg_stat_backtrace`](/ext/e/pg_stat_backtrace) [`logerrors`](/ext/e/logerrors) [`pgelog`](/ext/e/pgelog) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgfr_analyze`](/ext/e/pgfr_analyze) |
{.ext-table .ext-table--rel}


> Package normalizes the upstream 0.0.0 control version to 2.29.2; run SELECT pgfr_record.enable() after CREATE EXTENSION. The downstream install patch defers scheduling until the CREATE transaction commits and guards optional pg_stat_statements.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.29.2` | {{< pgvers "18,17,16,15" >}} | `pg_flight_recorder` | `pg_cron` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.29.2` | {{< pgvers "18,17,16,15" >}} | `pg_flight_recorder_$v` | `pg_cron_$v` |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.29.2` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-flight-recorder` | `postgresql-$v-cron` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_flight_recorder_18 pg_flight_recorder_18-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_flight_recorder_18-2.29.2-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_flight_recorder_18 pg_flight_recorder_18-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_flight_recorder_18-2.29.2-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_flight_recorder_18 pg_flight_recorder_18-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_flight_recorder_18-2.29.2-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_flight_recorder_18 pg_flight_recorder_18-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_flight_recorder_18-2.29.2-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_flight_recorder_18 pg_flight_recorder_18-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_flight_recorder_18-2.29.2-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_flight_recorder_18 pg_flight_recorder_18-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_flight_recorder_18-2.29.2-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-flight-recorder postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-18-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pg_flight_recorder_17 pg_flight_recorder_17-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_flight_recorder_17-2.29.2-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_flight_recorder_17 pg_flight_recorder_17-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_flight_recorder_17-2.29.2-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_flight_recorder_17 pg_flight_recorder_17-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_flight_recorder_17-2.29.2-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_flight_recorder_17 pg_flight_recorder_17-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_flight_recorder_17-2.29.2-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_flight_recorder_17 pg_flight_recorder_17-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_flight_recorder_17-2.29.2-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_flight_recorder_17 pg_flight_recorder_17-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_flight_recorder_17-2.29.2-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-flight-recorder postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-17-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pg_flight_recorder_16 pg_flight_recorder_16-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_flight_recorder_16-2.29.2-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_flight_recorder_16 pg_flight_recorder_16-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_flight_recorder_16-2.29.2-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_flight_recorder_16 pg_flight_recorder_16-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_flight_recorder_16-2.29.2-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_flight_recorder_16 pg_flight_recorder_16-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_flight_recorder_16-2.29.2-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_flight_recorder_16 pg_flight_recorder_16-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_flight_recorder_16-2.29.2-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_flight_recorder_16 pg_flight_recorder_16-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_flight_recorder_16-2.29.2-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-flight-recorder postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-16-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pg_flight_recorder_15 pg_flight_recorder_15-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_flight_recorder_15-2.29.2-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_flight_recorder_15 pg_flight_recorder_15-2.29.2-1PIGSTY.el8.noarch.rpm pigsty 2.29.2 92.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_flight_recorder_15-2.29.2-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_flight_recorder_15 pg_flight_recorder_15-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_flight_recorder_15-2.29.2-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_flight_recorder_15 pg_flight_recorder_15-2.29.2-1PIGSTY.el9.noarch.rpm pigsty 2.29.2 86.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_flight_recorder_15-2.29.2-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_flight_recorder_15 pg_flight_recorder_15-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_flight_recorder_15-2.29.2-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_flight_recorder_15 pg_flight_recorder_15-2.29.2-1PIGSTY.el10.noarch.rpm pigsty 2.29.2 86.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_flight_recorder_15-2.29.2-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb pigsty 2.29.2 79.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb pigsty 2.29.2 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-flight-recorder postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb pigsty 2.29.2 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-flight-recorder/postgresql-15-pg-flight-recorder_2.29.2-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_flight_recorder` using `pig build`:

```bash
pig build pkg pg_flight_recorder         # build RPM / DEB packages
```


## Install

You can install `pg_flight_recorder` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_flight_recorder;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_flight_recorder -v 18  # PG 18
pig ext install -y pg_flight_recorder -v 17  # PG 17
pig ext install -y pg_flight_recorder -v 16  # PG 16
pig ext install -y pg_flight_recorder -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_flight_recorder_18       # PG 18
dnf install -y pg_flight_recorder_17       # PG 17
dnf install -y pg_flight_recorder_16       # PG 16
dnf install -y pg_flight_recorder_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-flight-recorder   # PG 18
apt install -y postgresql-17-pg-flight-recorder   # PG 17
apt install -y postgresql-16-pg-flight-recorder   # PG 16
apt install -y postgresql-15-pg-flight-recorder   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pgfr_record CASCADE;  -- requires: pg_cron
```

## Usage

Sources:

- [pgfr_record v2.29.2 README](https://github.com/dventimisupabase/pg_flight_recorder/blob/v2.29.2/pgfr_record/README.md)
- [pgfr_record control file](https://github.com/dventimisupabase/pg_flight_recorder/blob/v2.29.2/pgfr_record/extension.control)
- [pg_flight_recorder v2.29.2 reference](https://github.com/dventimisupabase/pg_flight_recorder/blob/v2.29.2/REFERENCE.md)
- [v2.29.2 release notes](https://github.com/dventimisupabase/pg_flight_recorder/releases/tag/v2.29.2)

pgfr_record is the collection half of PostgreSQL Flight Recorder. It periodically samples PostgreSQL activity, waits, locks, replication, vacuum, and related health data into bounded in-database buffers, then retains snapshots for incident analysis. Use it when short-lived database conditions must survive long enough for later diagnosis.

### Install and Enable Recording

pgfr_record requires pg_cron:

    CREATE EXTENSION pg_cron;
    CREATE EXTENSION pgfr_record;
    SELECT pgfr_record.enable();

enable() installs and schedules the collector jobs. It also reports configuration warnings; review them rather than treating a successful call as proof that every metric is being collected.

### Inspect Recorder Health

    SELECT * FROM pgfr_record.health_check();
    SELECT * FROM pgfr_record.ring_buffer_health();
    SELECT * FROM pgfr_record.list_profiles();

Use set_mode or apply_profile to select the intended collection profile before an incident:

    SELECT pgfr_record.set_mode('normal');

The available collection modes are normal, light, emergency, and kill. Profile names and sampling intervals can evolve, so list the installed profiles rather than hard-coding an undocumented name.

### Recorded Data Index

- deltas: interval changes for cumulative PostgreSQL counters.
- recent_activity and recent_waits: sampled sessions and wait events.
- recent_locks and recent_idle: lock and idle-session observations.
- recent_replication and recent_vacuum: replication and maintenance state.
- archiver_status: WAL archive health.
- snapshot and ring-buffer tables: retained history used by pgfr_analyze.

Many working buffers are UNLOGGED to reduce write amplification. They are not crash-durable and are not replicated like ordinary logged tables; durable snapshots provide the longer-lived analysis surface.

### Administration Functions

- pgfr_record.enable(): create or activate scheduled collectors.
- pgfr_record.disable(): stop scheduled collection.
- pgfr_record.health_check(): report collector and configuration health.
- pgfr_record.set_mode(...): change collection mode.
- pgfr_record.apply_profile(...): apply a predefined profile.
- pgfr_record.list_profiles(): enumerate available profiles.
- pgfr_record.ring_buffer_health(): inspect capacity and retention pressure.
- pgfr_record.cleanup(...): remove retained history according to the API.

### Retention and Overhead

The default design keeps short ring-buffer history and longer durable snapshots, commonly around 7 and 30 days depending on the installed profile. Verify actual table sizes, job schedules, and retention settings in the installed version.

The recorder creates roughly ten pg_cron jobs. pg_cron.log_run can generate thousands of rows per day; disable that logging or purge cron history when the extra audit trail is unnecessary. Sampling also adds SQL, storage, and catalog traffic, so measure overhead on the target workload.

Version 2.29.2 handles managed-service roles that cannot UPDATE cron.job: jobs can still be scheduled, while the optional nodename normalization is skipped with a warning.

### Caveats

- pg_stat_statements enriches several analyses but is optional; enable and size it separately when needed.
- Collection cannot reconstruct time periods that were never sampled. Enable and validate the recorder before an incident.
- UNLOGGED buffers can be truncated after crash recovery.
- Recorder tables can contain query text, role names, client data, and operational details. Apply appropriate privileges and retention controls.
