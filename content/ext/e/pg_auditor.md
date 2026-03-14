---
title: "pg_auditor"
linkTitle: "pg_auditor"
description: "Audit data changes and provide flashback ability"
weight: 7130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/kouber/pg_auditor">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">kouber/pg_auditor</div>
    <div class="ext-card__desc">https://github.com/kouber/pg_auditor</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_auditor-0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_auditor-0.2.tar.gz</div>
    <div class="ext-card__desc">pg_auditor-0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_auditor`**](/ext/e/pg_auditor) | `0.2` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7130  | [**`pg_auditor`**](/ext/e/pg_auditor) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `auditor` |
{.ext-table}

| **Related** | [`hstore`](/ext/e/hstore) [`pg_drop_events`](/ext/e/pg_drop_events) [`table_log`](/ext/e/table_log) [`pgaudit`](/ext/e/pgaudit) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`pg_savior`](/ext/e/pg_savior) [`pg_upless`](/ext/e/pg_upless) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg15 rpm pkg name is pgaudit17_$v*


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_auditor` | `hstore` |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_auditor_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-auditor` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 | AVAIL PIGSTY 0.2 1 |
@ el8.x86_64 18 pg_auditor_18 pg_auditor_18-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_auditor_18-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_auditor_18 pg_auditor_18-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_auditor_18-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_auditor_18 pg_auditor_18-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_auditor_18-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_auditor_18 pg_auditor_18-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_auditor_18-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_auditor_18 pg_auditor_18-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_auditor_18-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_auditor_18 pg_auditor_18-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_auditor_18-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-auditor postgresql-18-pg-auditor_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-18-pg-auditor_0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_auditor_17 pg_auditor_17-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_auditor_17-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_auditor_17 pg_auditor_17-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_auditor_17-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_auditor_17 pg_auditor_17-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_auditor_17-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_auditor_17 pg_auditor_17-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_auditor_17-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_auditor_17 pg_auditor_17-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_auditor_17-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_auditor_17 pg_auditor_17-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_auditor_17-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-auditor postgresql-17-pg-auditor_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-17-pg-auditor_0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_auditor_16 pg_auditor_16-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_auditor_16-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_auditor_16 pg_auditor_16-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_auditor_16-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_auditor_16 pg_auditor_16-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_auditor_16-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_auditor_16 pg_auditor_16-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_auditor_16-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_auditor_16 pg_auditor_16-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_auditor_16-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_auditor_16 pg_auditor_16-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_auditor_16-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-auditor postgresql-16-pg-auditor_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-16-pg-auditor_0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_auditor_15 pg_auditor_15-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_auditor_15-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_auditor_15 pg_auditor_15-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_auditor_15-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_auditor_15 pg_auditor_15-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_auditor_15-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_auditor_15 pg_auditor_15-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_auditor_15-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_auditor_15 pg_auditor_15-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_auditor_15-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_auditor_15 pg_auditor_15-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_auditor_15-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-auditor postgresql-15-pg-auditor_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-15-pg-auditor_0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_auditor_14 pg_auditor_14-0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_auditor_14-0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_auditor_14 pg_auditor_14-0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_auditor_14-0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_auditor_14 pg_auditor_14-0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_auditor_14-0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_auditor_14 pg_auditor_14-0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_auditor_14-0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_auditor_14 pg_auditor_14-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 11.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_auditor_14-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_auditor_14 pg_auditor_14-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 10.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_auditor_14-0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 8.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-auditor postgresql-14-pg-auditor_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 8.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auditor/postgresql-14-pg-auditor_0.2-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_auditor` using `pig build`:

```bash
pig build pkg pg_auditor         # build RPM / DEB packages
```


## Install

You can install `pg_auditor` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_auditor;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_auditor -v 18  # PG 18
pig ext install -y pg_auditor -v 17  # PG 17
pig ext install -y pg_auditor -v 16  # PG 16
pig ext install -y pg_auditor -v 15  # PG 15
pig ext install -y pg_auditor -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_auditor_18       # PG 18
dnf install -y pg_auditor_17       # PG 17
dnf install -y pg_auditor_16       # PG 16
dnf install -y pg_auditor_15       # PG 15
dnf install -y pg_auditor_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-auditor   # PG 18
apt install -y postgresql-17-pg-auditor   # PG 17
apt install -y postgresql-16-pg-auditor   # PG 16
apt install -y postgresql-15-pg-auditor   # PG 15
apt install -y postgresql-14-pg-auditor   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_auditor CASCADE;  -- requires: hstore
```




## Usage

> [pg_auditor: Audit data changes with flashback capability](https://github.com/kouber/pg_auditor)

`pg_auditor` records each data modification (INSERT, UPDATE, DELETE) on specified tables and allows partial or complete flashback of transactions.

```sql
CREATE EXTENSION pg_auditor CASCADE;  -- also installs hstore
```

### Auditing Control

```sql
-- Start auditing a table (all DML by default)
SELECT auditor.attach('fruit');

-- Audit specific operations only
SELECT auditor.attach('fruit', ARRAY['INSERT', 'UPDATE']);

-- Audit specific columns only
SELECT auditor.attach('fruit', ARRAY['INSERT', 'UPDATE', 'DELETE'], ARRAY['name', 'weight']);

-- Stop auditing
SELECT auditor.detach('fruit');

-- Manage individual statements/columns
SELECT auditor.attach_statement('fruit', 'DELETE');
SELECT auditor.detach_statement('fruit', 'DELETE');
SELECT auditor.attach_column('fruit', 'weight');
SELECT auditor.detach_column('fruit', 'weight');

-- Protect against TRUNCATE
SELECT auditor.forbid_truncate('fruit');
```

### Viewing Audit Log

```sql
SELECT transaction_id, operation, old_rec, new_rec FROM auditor.log;
```

### Flashback Functions

```sql
-- Undo the last N transactions in current session
SELECT auditor.undo();          -- undo last 1
SELECT auditor.undo(3);         -- undo last 3
SELECT auditor.undo(1, true);   -- override other sessions

-- Cancel a specific transaction
SELECT auditor.cancel(5557);

-- Restore data to a specific transaction or timestamp
SELECT auditor.flashback(5556);
SELECT auditor.flashback('2021-02-08 14:40:00'::timestamp);
```

### Column Evolution Tracking

```sql
SELECT * FROM auditor.evolution('fruit'::regclass, 'weight', 'orange'::text);
-- Shows complete history of a column value for a given primary key
```
