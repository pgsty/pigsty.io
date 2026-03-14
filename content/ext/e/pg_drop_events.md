---
title: "pg_drop_events"
linkTitle: "pg_drop_events"
description: "logs transaction ids of drop table, drop column, drop materialized view statements"
weight: 5850
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bolajiwahab/pg_drop_events">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bolajiwahab/pg_drop_events</div>
    <div class="ext-card__desc">https://github.com/bolajiwahab/pg_drop_events</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_drop_events-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_drop_events-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_drop_events-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_drop_events`**](/ext/e/pg_drop_events) | `0.1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5850  | [**`pg_drop_events`**](/ext/e/pg_drop_events) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pg_savior`](/ext/e/pg_savior) [`table_log`](/ext/e/table_log) [`pgaudit`](/ext/e/pgaudit) [`pg_auditor`](/ext/e/pg_auditor) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`pg_upless`](/ext/e/pg_upless) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_drop_events` | `plpgsql` |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_drop_events_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-drop-events` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pg_drop_events_18 pg_drop_events_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_drop_events_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_drop_events_18 pg_drop_events_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_drop_events_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_drop_events_18 pg_drop_events_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_drop_events_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_drop_events_18 pg_drop_events_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_drop_events_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_drop_events_18 pg_drop_events_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_drop_events_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_drop_events_18 pg_drop_events_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_drop_events_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-drop-events postgresql-18-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-18-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_drop_events_17 pg_drop_events_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_drop_events_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_drop_events_17 pg_drop_events_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_drop_events_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_drop_events_17 pg_drop_events_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_drop_events_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_drop_events_17 pg_drop_events_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_drop_events_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_drop_events_17 pg_drop_events_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_drop_events_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_drop_events_17 pg_drop_events_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_drop_events_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-drop-events postgresql-17-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-17-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_drop_events_16 pg_drop_events_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_drop_events_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_drop_events_16 pg_drop_events_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_drop_events_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_drop_events_16 pg_drop_events_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_drop_events_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_drop_events_16 pg_drop_events_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_drop_events_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_drop_events_16 pg_drop_events_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_drop_events_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_drop_events_16 pg_drop_events_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_drop_events_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-drop-events postgresql-16-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-16-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_drop_events_15 pg_drop_events_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_drop_events_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_drop_events_15 pg_drop_events_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_drop_events_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_drop_events_15 pg_drop_events_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_drop_events_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_drop_events_15 pg_drop_events_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_drop_events_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_drop_events_15 pg_drop_events_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_drop_events_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_drop_events_15 pg_drop_events_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_drop_events_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-drop-events postgresql-15-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-15-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_drop_events_14 pg_drop_events_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_drop_events_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_drop_events_14 pg_drop_events_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_drop_events_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_drop_events_14 pg_drop_events_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_drop_events_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_drop_events_14 pg_drop_events_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_drop_events_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_drop_events_14 pg_drop_events_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_drop_events_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_drop_events_14 pg_drop_events_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_drop_events_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-drop-events postgresql-14-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 7.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-drop-events/postgresql-14-pg-drop-events_0.1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_drop_events` using `pig build`:

```bash
pig build pkg pg_drop_events         # build RPM / DEB packages
```


## Install

You can install `pg_drop_events` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_drop_events;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_drop_events -v 18  # PG 18
pig ext install -y pg_drop_events -v 17  # PG 17
pig ext install -y pg_drop_events -v 16  # PG 16
pig ext install -y pg_drop_events -v 15  # PG 15
pig ext install -y pg_drop_events -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_drop_events_18       # PG 18
dnf install -y pg_drop_events_17       # PG 17
dnf install -y pg_drop_events_16       # PG 16
dnf install -y pg_drop_events_15       # PG 15
dnf install -y pg_drop_events_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-drop-events   # PG 18
apt install -y postgresql-17-pg-drop-events   # PG 17
apt install -y postgresql-16-pg-drop-events   # PG 16
apt install -y postgresql-15-pg-drop-events   # PG 15
apt install -y postgresql-14-pg-drop-events   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_drop_events CASCADE;  -- requires: plpgsql
```




## Usage

> [pg_drop_events: logs transaction ids of drop table, drop column, drop materialized view statements](https://github.com/bolajiwahab/pg_drop_events)

The `pg_drop_events` extension uses event triggers to automatically log details about DROP operations on tables, columns, and materialized views. The logged information can be used for point-in-time recovery (PITR) after accidental drops.

### Tracked Operations

- `DROP TABLE`
- `DROP COLUMN` (via `ALTER TABLE`)
- `DROP MATERIALIZED VIEW`

### Logged Information

| Column | Description |
|--------|-------------|
| `pid` | Process identifier |
| `usename` | Database user who executed the command |
| `query` | The SQL statement |
| `xact_id` | Transaction identifier |
| `wal_position` | Write-ahead log position |
| `objid` | Object identifier |
| `object_name` | Fully qualified name of dropped object |
| `object_type` | Object classification (table, table column, etc.) |
| `xact_time` | Timestamp of the transaction |

### Example

```sql
CREATE EXTENSION pg_drop_events;

-- Drop a table
DROP TABLE t.t3;
-- NOTICE: table t.t3 dropped by transaction 1085.

-- Query the event log
SELECT * FROM pg_drop_events;
```

### Point-in-Time Recovery

The logged data maps directly to PostgreSQL recovery parameters:

| pg_drop_events column | Recovery parameter |
|-----------------------|-------------------|
| `xact_id` | `recovery_target_xid` |
| `xact_time` | `recovery_target_time` |
| `wal_position` | `recovery_target_lsn` |

Use these values in `postgresql.conf` or `recovery.conf` to restore the database to a point just before the accidental drop.
