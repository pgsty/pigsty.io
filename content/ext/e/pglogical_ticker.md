---
title: "pglogical_ticker"
linkTitle: "pglogical_ticker"
description: "Have an accurate view on pglogical replication delay"
weight: 9510
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/enova/pglogical_ticker">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">enova/pglogical_ticker</div>
    <div class="ext-card__desc">https://github.com/enova/pglogical_ticker</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pglogical_ticker-1.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pglogical_ticker-1.4.1.tar.gz</div>
    <div class="ext-card__desc">pglogical_ticker-1.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pglogical_ticker`**](/ext/e/pglogical_ticker) | `1.4.1` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9510  | [**`pglogical_ticker`**](/ext/e/pglogical_ticker) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pglogical_ticker` |
{.ext-table}

| **Related** | [`pglogical`](/ext/e/pglogical) [`pglogical_origin`](/ext/e/pglogical_origin) [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`pgactive`](/ext/e/pgactive) [`wal2json`](/ext/e/wal2json) [`decoderbufs`](/ext/e/decoderbufs) [`repmgr`](/ext/e/repmgr) [`decoder_raw`](/ext/e/decoder_raw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require a patch on el, pg18 break on el


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pglogical_ticker` | `pglogical` |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pglogical_ticker_$v` | `pglogical_$v` |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pglogical-ticker` | `postgresql-$v-pglogical` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 |
| d13.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 |
| u22.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 |
| u24.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
@ el8.x86_64 18 pglogical_ticker_18 pglogical_ticker_18-1.4.1-2PIGSTY.el8.x86_64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglogical_ticker_18-1.4.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pglogical_ticker_18 pglogical_ticker_18-1.4.1-2PIGSTY.el8.aarch64.rpm pigsty 1.4.1 17.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglogical_ticker_18-1.4.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pglogical_ticker_18 pglogical_ticker_18-1.4.1-2PIGSTY.el9.x86_64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglogical_ticker_18-1.4.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pglogical_ticker_18 pglogical_ticker_18-1.4.1-2PIGSTY.el9.aarch64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglogical_ticker_18-1.4.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pglogical_ticker_18 pglogical_ticker_18-1.4.1-2PIGSTY.el10.x86_64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglogical_ticker_18-1.4.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pglogical_ticker_18 pglogical_ticker_18-1.4.1-2PIGSTY.el10.aarch64.rpm pigsty 1.4.1 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglogical_ticker_18-1.4.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~bookworm_amd64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~bookworm_arm64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb pigsty 1.4.1 19.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~jammy_amd64.deb pigsty 1.4.1 19.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~jammy_arm64.deb pigsty 1.4.1 19.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb pigsty 1.4.1 19.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pglogical-ticker postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~noble_arm64.deb pigsty 1.4.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglogical-ticker/postgresql-18-pglogical-ticker_1.4.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pglogical_ticker_17 pglogical_ticker_17-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglogical_ticker_17-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pglogical_ticker_17 pglogical_ticker_17-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 17.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglogical_ticker_17-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pglogical_ticker_17 pglogical_ticker_17-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglogical_ticker_17-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pglogical_ticker_17 pglogical_ticker_17-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglogical_ticker_17-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pglogical_ticker_17 pglogical_ticker_17-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglogical_ticker_17-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pglogical_ticker_17 pglogical_ticker_17-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglogical_ticker_17-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb pgdg 1.4.1 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb pgdg 1.4.1 20.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb
@ d13.x86_64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb pgdg 1.4.1 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb
@ d13.aarch64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb pgdg 1.4.1 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb pgdg 1.4.1 20.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb pgdg 1.4.1 20.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb pigsty 1.4.1 19.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pglogical-ticker postgresql-17-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb pgdg 1.4.1 20.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-17-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 pglogical_ticker_16 pglogical_ticker_16-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglogical_ticker_16-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pglogical_ticker_16 pglogical_ticker_16-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 17.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglogical_ticker_16-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pglogical_ticker_16 pglogical_ticker_16-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglogical_ticker_16-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pglogical_ticker_16 pglogical_ticker_16-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglogical_ticker_16-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pglogical_ticker_16 pglogical_ticker_16-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglogical_ticker_16-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pglogical_ticker_16 pglogical_ticker_16-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglogical_ticker_16-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb pgdg 1.4.1 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb
@ d13.x86_64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb pigsty 1.4.1 19.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb pgdg 1.4.1 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb
@ d13.aarch64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb pgdg 1.4.1 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb pgdg 1.4.1 20.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb pgdg 1.4.1 20.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb pigsty 1.4.1 19.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pglogical-ticker postgresql-16-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb pgdg 1.4.1 20.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-16-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 pglogical_ticker_15 pglogical_ticker_15-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglogical_ticker_15-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pglogical_ticker_15 pglogical_ticker_15-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 17.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglogical_ticker_15-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pglogical_ticker_15 pglogical_ticker_15-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglogical_ticker_15-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pglogical_ticker_15 pglogical_ticker_15-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglogical_ticker_15-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pglogical_ticker_15 pglogical_ticker_15-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglogical_ticker_15-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pglogical_ticker_15 pglogical_ticker_15-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglogical_ticker_15-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb pgdg 1.4.1 20.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb
@ d13.x86_64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb pgdg 1.4.1 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb
@ d13.aarch64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb pigsty 1.4.1 19.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb pgdg 1.4.1 20.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb pgdg 1.4.1 20.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb pgdg 1.4.1 20.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb pigsty 1.4.1 19.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pglogical-ticker postgresql-15-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb pgdg 1.4.1 20.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-15-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 pglogical_ticker_14 pglogical_ticker_14-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglogical_ticker_14-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pglogical_ticker_14 pglogical_ticker_14-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 17.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglogical_ticker_14-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pglogical_ticker_14 pglogical_ticker_14-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglogical_ticker_14-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pglogical_ticker_14 pglogical_ticker_14-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglogical_ticker_14-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pglogical_ticker_14 pglogical_ticker_14-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 17.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglogical_ticker_14-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pglogical_ticker_14 pglogical_ticker_14-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglogical_ticker_14-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg120+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb pgdg 1.4.1 20.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg120+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg130+2_amd64.deb
@ d13.x86_64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb pigsty 1.4.1 19.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb pgdg 1.4.1 20.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg130+2_arm64.deb
@ d13.aarch64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb pigsty 1.4.1 19.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb pgdg 1.4.1 20.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb pgdg 1.4.1 20.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb pgdg 1.4.1 20.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb pigsty 1.4.1 19.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pglogical-ticker postgresql-14-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb pgdg 1.4.1 20.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical-ticker/postgresql-14-pglogical-ticker_1.4.1-8.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pglogical_ticker` using `pig build`:

```bash
pig build pkg pglogical_ticker         # build RPM / DEB packages
```


## Install

You can install `pglogical_ticker` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pglogical_ticker;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pglogical_ticker -v 18  # PG 18
pig ext install -y pglogical_ticker -v 17  # PG 17
pig ext install -y pglogical_ticker -v 16  # PG 16
pig ext install -y pglogical_ticker -v 15  # PG 15
pig ext install -y pglogical_ticker -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pglogical_ticker_18       # PG 18
dnf install -y pglogical_ticker_17       # PG 17
dnf install -y pglogical_ticker_16       # PG 16
dnf install -y pglogical_ticker_15       # PG 15
dnf install -y pglogical_ticker_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pglogical-ticker   # PG 18
apt install -y postgresql-17-pglogical-ticker   # PG 17
apt install -y postgresql-16-pglogical-ticker   # PG 16
apt install -y postgresql-15-pglogical-ticker   # PG 15
apt install -y postgresql-14-pglogical-ticker   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pglogical, pglogical_ticker';
```


**Create Extension**:

```sql
CREATE EXTENSION pglogical_ticker CASCADE;  -- requires: pglogical
```



## Usage

> [pglogical_ticker: Have an accurate view on pglogical replication delay](https://github.com/enova/pglogical_ticker)

A background worker that periodically updates ticker tables to measure pglogical replication lag from the provider's standpoint.

### Enabling

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'pglogical,pglogical_ticker'
pglogical_ticker.database = 'mydb'
pglogical_ticker.naptime = 10      -- tick interval in seconds (default 10)
```

Install on both provider and all subscribers:

```sql
CREATE EXTENSION pglogical_ticker;
```

### Deploy Ticker Tables

Run on the **provider** only (propagated to subscribers via pglogical):

```sql
-- Deploy ticker tables (one per replication set)
SELECT pglogical_ticker.deploy_ticker_tables();

-- Add ticker tables to replication
SELECT pglogical_ticker.add_ticker_tables_to_replication();
```

For cascading replication:

```sql
SELECT pglogical_ticker.deploy_ticker_tables('my_cascaded_set_name');
SELECT pglogical_ticker.add_ticker_tables_to_replication('my_cascaded_set_name');
```

### Manual Tick

```sql
SELECT pglogical_ticker.tick();
```

### Launching the Ticker

The ticker auto-launches on server start if configured in `shared_preload_libraries`. Otherwise:

```sql
SELECT pglogical_ticker.launch();

-- Or, only launch if replication set tables exist
SELECT pglogical_ticker.launch_if_repset_tables();
```

### Viewing Replication Delay

On the **provider**:

```sql
SELECT * FROM pglogical_ticker.all_repset_tickers();
```

On a **subscriber**:

```sql
SELECT * FROM pglogical_ticker.all_subscription_tickers();
```

### Configuration

- `pglogical_ticker.database` - Database to run the ticker in
- `pglogical_ticker.naptime` - Tick interval in seconds (default 10)
- `pglogical_ticker.restart_time` - Seconds before auto-restart (default 10, -1 to disable)
