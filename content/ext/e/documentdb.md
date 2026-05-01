---
title: "documentdb"
linkTitle: "documentdb"
description: "API surface for DocumentDB for PostgreSQL"
weight: 9000
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/documentdb/documentdb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">documentdb/documentdb</div>
    <div class="ext-card__desc">https://github.com/documentdb/documentdb</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/documentdb-0.110-0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">documentdb-0.110-0.tar.gz</div>
    <div class="ext-card__desc">documentdb-0.110-0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`documentdb`**](/ext/e/documentdb) | `0.110` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9000  | [**`documentdb`**](/ext/e/documentdb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9010  | [**`documentdb_core`**](/ext/e/documentdb_core) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9020  | [**`documentdb_distributed`**](/ext/e/documentdb_distributed) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9030  | [**`documentdb_extended_rum`**](/ext/e/documentdb_extended_rum) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`documentdb_core`](/ext/e/documentdb_core) [`pg_cron`](/ext/e/pg_cron) [`postgis`](/ext/e/postgis) [`tsm_system_rows`](/ext/e/tsm_system_rows) [`vector`](/ext/e/vector) [`mongo_fdw`](/ext/e/mongo_fdw) [`wal2mongo`](/ext/e/wal2mongo) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb_distributed`](/ext/e/documentdb_distributed) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.110` | {{< pgvers "18,17,16,15" >}} | `documentdb` | `documentdb_core`, `pg_cron`, `postgis`, `tsm_system_rows`, `vector` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.110` | {{< pgvers "18,17,16,15" >}} | `documentdb_$v` | `postgresql$v-contrib`, `pg_cron_$v`, `pgvector_$v`, `rum_$v`, `postgis36_$v` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.110` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-documentdb` | `postgresql-$v-cron`, `postgresql-$v-pgvector`, `postgresql-$v-rum`, `postgresql-$v-postgis-3` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | AVAIL PIGSTY 0.110 1 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | AVAIL PIGSTY 0.110 2 | MISS PIGSTY - 0 |
@ el8.x86_64 18 documentdb_18 documentdb_18-0.110-0PIGSTY.el8.x86_64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_18-0.110-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 documentdb_18 documentdb_18-0.110-0PIGSTY.el8.aarch64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_18-0.110-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 documentdb_18 documentdb_18-0.110-0PIGSTY.el9.x86_64.rpm pigsty 0.110 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_18-0.110-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 documentdb_18 documentdb_18-0.110-0PIGSTY.el9.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_18-0.110-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 documentdb_18 documentdb_18-0.110-0PIGSTY.el10.x86_64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_18-0.110-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 documentdb_18 documentdb_18-0.110-0PIGSTY.el10.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_18-0.110-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~bookworm_amd64.deb pigsty 0.110 5.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~bookworm_arm64.deb pigsty 0.110 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~trixie_amd64.deb pigsty 0.110 5.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.108-0-1.pgdg13+1_amd64.deb pgdg 0.108 4.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.108-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~trixie_arm64.deb pigsty 0.110 4.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.108-0-1.pgdg13+1_arm64.deb pgdg 0.108 4.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.108-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~jammy_amd64.deb pigsty 0.110 5.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~jammy_arm64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~noble_amd64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~noble_arm64.deb pigsty 0.110 4.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~resolute_amd64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb pgdg 0.108 4.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.110-0PIGSTY~resolute_arm64.deb pigsty 0.110 5.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-18-documentdb_0.110-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb pgdg 0.108 4.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 documentdb_17 documentdb_17-0.110-0PIGSTY.el8.x86_64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_17-0.110-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 documentdb_17 documentdb_17-0.110-0PIGSTY.el8.aarch64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_17-0.110-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 documentdb_17 documentdb_17-0.110-0PIGSTY.el9.x86_64.rpm pigsty 0.110 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_17-0.110-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 documentdb_17 documentdb_17-0.110-0PIGSTY.el9.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_17-0.110-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 documentdb_17 documentdb_17-0.110-0PIGSTY.el10.x86_64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_17-0.110-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 documentdb_17 documentdb_17-0.110-0PIGSTY.el10.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_17-0.110-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~bookworm_amd64.deb pigsty 0.110 5.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~bookworm_arm64.deb pigsty 0.110 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~trixie_amd64.deb pigsty 0.110 5.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.108-0-1.pgdg13+1_amd64.deb pgdg 0.108 4.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.108-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~trixie_arm64.deb pigsty 0.110 4.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.108-0-1.pgdg13+1_arm64.deb pgdg 0.108 4.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.108-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~jammy_amd64.deb pigsty 0.110 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~jammy_arm64.deb pigsty 0.110 5.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~noble_amd64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~noble_arm64.deb pigsty 0.110 4.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~resolute_amd64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb pgdg 0.108 4.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.110-0PIGSTY~resolute_arm64.deb pigsty 0.110 5.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-17-documentdb_0.110-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb pgdg 0.108 4.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 documentdb_16 documentdb_16-0.110-0PIGSTY.el8.x86_64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_16-0.110-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 documentdb_16 documentdb_16-0.110-0PIGSTY.el8.aarch64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_16-0.110-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 documentdb_16 documentdb_16-0.110-0PIGSTY.el9.x86_64.rpm pigsty 0.110 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_16-0.110-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 documentdb_16 documentdb_16-0.110-0PIGSTY.el9.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_16-0.110-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 documentdb_16 documentdb_16-0.110-0PIGSTY.el10.x86_64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_16-0.110-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 documentdb_16 documentdb_16-0.110-0PIGSTY.el10.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_16-0.110-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~bookworm_amd64.deb pigsty 0.110 5.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~bookworm_arm64.deb pigsty 0.110 4.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~trixie_amd64.deb pigsty 0.110 5.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.108-0-1.pgdg13+1_amd64.deb pgdg 0.108 4.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.108-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~trixie_arm64.deb pigsty 0.110 4.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.108-0-1.pgdg13+1_arm64.deb pgdg 0.108 4.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.108-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~jammy_amd64.deb pigsty 0.110 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~jammy_arm64.deb pigsty 0.110 5.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~noble_amd64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~noble_arm64.deb pigsty 0.110 4.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~resolute_amd64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb pgdg 0.108 4.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.110-0PIGSTY~resolute_arm64.deb pigsty 0.110 5.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-16-documentdb_0.110-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb pgdg 0.108 4.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 documentdb_15 documentdb_15-0.110-0PIGSTY.el8.x86_64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_15-0.110-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 documentdb_15 documentdb_15-0.110-0PIGSTY.el8.aarch64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_15-0.110-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 documentdb_15 documentdb_15-0.110-0PIGSTY.el9.x86_64.rpm pigsty 0.110 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_15-0.110-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 documentdb_15 documentdb_15-0.110-0PIGSTY.el9.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_15-0.110-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 documentdb_15 documentdb_15-0.110-0PIGSTY.el10.x86_64.rpm pigsty 0.110 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_15-0.110-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 documentdb_15 documentdb_15-0.110-0PIGSTY.el10.aarch64.rpm pigsty 0.110 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_15-0.110-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~bookworm_amd64.deb pigsty 0.110 5.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~bookworm_arm64.deb pigsty 0.110 4.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~trixie_amd64.deb pigsty 0.110 5.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.108-0-1.pgdg13+1_amd64.deb pgdg 0.108 4.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.108-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~trixie_arm64.deb pigsty 0.110 4.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.108-0-1.pgdg13+1_arm64.deb pgdg 0.108 4.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.108-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~jammy_amd64.deb pigsty 0.110 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~jammy_arm64.deb pigsty 0.110 5.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~noble_amd64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~noble_arm64.deb pigsty 0.110 4.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~resolute_amd64.deb pigsty 0.110 5.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb pgdg 0.108 4.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.108-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.110-0PIGSTY~resolute_arm64.deb pigsty 0.110 5.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-15-documentdb_0.110-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb pgdg 0.108 4.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.108-0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `documentdb` using `pig build`:

```bash
pig build pkg documentdb         # build RPM / DEB packages
```


## Install

You can install `documentdb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install documentdb;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y documentdb -v 18  # PG 18
pig ext install -y documentdb -v 17  # PG 17
pig ext install -y documentdb -v 16  # PG 16
pig ext install -y documentdb -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y documentdb_18       # PG 18
dnf install -y documentdb_17       # PG 17
dnf install -y documentdb_16       # PG 16
dnf install -y documentdb_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-documentdb   # PG 18
apt install -y postgresql-17-documentdb   # PG 17
apt install -y postgresql-16-documentdb   # PG 16
apt install -y postgresql-15-documentdb   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_documentdb, pg_documentdb_core, pg_cron';
```


**Create Extension**:

```sql
CREATE EXTENSION documentdb CASCADE;  -- requires: documentdb_core, pg_cron, postgis, tsm_system_rows, vector
```


## Usage

Add to shared_preload_libraries first:

```ini
shared_preload_libraries = 'pg_documentdb_core, pg_stat_statements, auto_explain'
```

Example, create extension and perform DDL & CRUD

```sql
-- CASCADE will install documentdb_core, pg_cron, vector, etc.
CREATE EXTENSION IF NOT EXISTS documentdb CASCADE;
```

Currently, DocumentDB can be used with FerretDB 2.0+ as a MongoDB-compatible backend.
