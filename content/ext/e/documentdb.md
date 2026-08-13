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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/documentdb-0.114-0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">documentdb-0.114-0.tar.gz</div>
    <div class="ext-card__desc">documentdb-0.114-0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`documentdb`**](/ext/e/documentdb) | `0.114` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9000  | [**`documentdb`**](/ext/e/documentdb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9010  | [**`documentdb_core`**](/ext/e/documentdb_core) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9020  | [**`documentdb_distributed`**](/ext/e/documentdb_distributed) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9030  | [**`documentdb_extended_rum`**](/ext/e/documentdb_extended_rum) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`documentdb_core`](/ext/e/documentdb_core) [`pg_cron`](/ext/e/pg_cron) [`postgis`](/ext/e/postgis) [`tsm_system_rows`](/ext/e/tsm_system_rows) [`vector`](/ext/e/vector) [`pgbson`](/ext/e/pgbson) [`jsquery`](/ext/e/jsquery) [`pg_projection`](/ext/e/pg_projection) [`mongo_fdw`](/ext/e/mongo_fdw) [`pgjq`](/ext/e/pgjq) [`pg_graphql`](/ext/e/pg_graphql) [`omni_rest`](/ext/e/omni_rest) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`pg_net`](/ext/e/pg_net) [`jsonschema`](/ext/e/jsonschema) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb_distributed`](/ext/e/documentdb_distributed) [`documentdb_extended_rum`](/ext/e/documentdb_extended_rum) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.114` | {{< pgvers "18,17,16,15" >}} | `documentdb` | `documentdb_core`, `pg_cron`, `postgis`, `tsm_system_rows`, `vector` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.114` | {{< pgvers "18,17,16,15" >}} | `documentdb_$v` | `postgresql$v-contrib`, `pg_cron_$v`, `pgvector_$v`, `rum_$v`, `postgis36_$v` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.114` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-documentdb` | `postgresql-$v-cron`, `postgresql-$v-pgvector`, `postgresql-$v-rum`, `postgresql-$v-postgis-3` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
@ el8.x86_64 18 documentdb_18 documentdb_18-0.114-0PIGSTY.el8.x86_64.rpm pigsty 0.114 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_18-0.114-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 documentdb_18 documentdb_18-0.114-0PIGSTY.el8.aarch64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_18-0.114-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 documentdb_18 documentdb_18-0.114-0PIGSTY.el9.x86_64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_18-0.114-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 documentdb_18 documentdb_18-0.114-0PIGSTY.el9.aarch64.rpm pigsty 0.114 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_18-0.114-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 documentdb_18 documentdb_18-0.114-0PIGSTY.el10.x86_64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_18-0.114-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 documentdb_18 documentdb_18-0.114-0PIGSTY.el10.aarch64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_18-0.114-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~bookworm_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~bookworm_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0-1.pgdg13+1_amd64.deb pgdg 0.114 5.1MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~trixie_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.113-0-1.pgdg13+1_amd64.deb pgdg 0.113 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.113-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.112-0-1.pgdg13+1_amd64.deb pgdg 0.112 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.112-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0-1.pgdg13+1_arm64.deb pgdg 0.114 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~trixie_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.113-0-1.pgdg13+1_arm64.deb pgdg 0.113 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.113-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.112-0-1.pgdg13+1_arm64.deb pgdg 0.112 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.112-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~jammy_amd64.deb pigsty 0.114 5.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~jammy_arm64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~noble_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~noble_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb pgdg 0.114 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~resolute_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb pgdg 0.113 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-documentdb postgresql-18-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb pgdg 0.112 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb pgdg 0.114 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.114-0PIGSTY~resolute_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-18-documentdb_0.114-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb pgdg 0.113 4.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-documentdb postgresql-18-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb pgdg 0.112 4.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-18-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 documentdb_17 documentdb_17-0.114-0PIGSTY.el8.x86_64.rpm pigsty 0.114 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_17-0.114-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 documentdb_17 documentdb_17-0.114-0PIGSTY.el8.aarch64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_17-0.114-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 documentdb_17 documentdb_17-0.114-0PIGSTY.el9.x86_64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_17-0.114-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 documentdb_17 documentdb_17-0.114-0PIGSTY.el9.aarch64.rpm pigsty 0.114 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_17-0.114-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 documentdb_17 documentdb_17-0.114-0PIGSTY.el10.x86_64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_17-0.114-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 documentdb_17 documentdb_17-0.114-0PIGSTY.el10.aarch64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_17-0.114-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~bookworm_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~bookworm_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0-1.pgdg13+1_amd64.deb pgdg 0.114 5.1MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~trixie_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.113-0-1.pgdg13+1_amd64.deb pgdg 0.113 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.113-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.112-0-1.pgdg13+1_amd64.deb pgdg 0.112 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.112-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0-1.pgdg13+1_arm64.deb pgdg 0.114 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~trixie_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.113-0-1.pgdg13+1_arm64.deb pgdg 0.113 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.113-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.112-0-1.pgdg13+1_arm64.deb pgdg 0.112 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.112-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~jammy_amd64.deb pigsty 0.114 6.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~jammy_arm64.deb pigsty 0.114 6.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~noble_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~noble_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb pgdg 0.114 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~resolute_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb pgdg 0.113 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-documentdb postgresql-17-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb pgdg 0.112 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb pgdg 0.114 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.114-0PIGSTY~resolute_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-17-documentdb_0.114-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb pgdg 0.113 4.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-documentdb postgresql-17-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb pgdg 0.112 4.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-17-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 documentdb_16 documentdb_16-0.114-0PIGSTY.el8.x86_64.rpm pigsty 0.114 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_16-0.114-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 documentdb_16 documentdb_16-0.114-0PIGSTY.el8.aarch64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_16-0.114-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 documentdb_16 documentdb_16-0.114-0PIGSTY.el9.x86_64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_16-0.114-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 documentdb_16 documentdb_16-0.114-0PIGSTY.el9.aarch64.rpm pigsty 0.114 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_16-0.114-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 documentdb_16 documentdb_16-0.114-0PIGSTY.el10.x86_64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_16-0.114-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 documentdb_16 documentdb_16-0.114-0PIGSTY.el10.aarch64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_16-0.114-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~bookworm_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~bookworm_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0-1.pgdg13+1_amd64.deb pgdg 0.114 5.1MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~trixie_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.113-0-1.pgdg13+1_amd64.deb pgdg 0.113 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.113-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.112-0-1.pgdg13+1_amd64.deb pgdg 0.112 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.112-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0-1.pgdg13+1_arm64.deb pgdg 0.114 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~trixie_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.113-0-1.pgdg13+1_arm64.deb pgdg 0.113 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.113-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.112-0-1.pgdg13+1_arm64.deb pgdg 0.112 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.112-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~jammy_amd64.deb pigsty 0.114 6.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~jammy_arm64.deb pigsty 0.114 6.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~noble_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~noble_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb pgdg 0.114 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~resolute_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb pgdg 0.113 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-documentdb postgresql-16-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb pgdg 0.112 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb pgdg 0.114 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.114-0PIGSTY~resolute_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-16-documentdb_0.114-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb pgdg 0.113 4.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-documentdb postgresql-16-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb pgdg 0.112 4.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-16-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 documentdb_15 documentdb_15-0.114-0PIGSTY.el8.x86_64.rpm pigsty 0.114 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/documentdb_15-0.114-0PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 documentdb_15 documentdb_15-0.114-0PIGSTY.el8.aarch64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/documentdb_15-0.114-0PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 documentdb_15 documentdb_15-0.114-0PIGSTY.el9.x86_64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/documentdb_15-0.114-0PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 documentdb_15 documentdb_15-0.114-0PIGSTY.el9.aarch64.rpm pigsty 0.114 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/documentdb_15-0.114-0PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 documentdb_15 documentdb_15-0.114-0PIGSTY.el10.x86_64.rpm pigsty 0.114 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/documentdb_15-0.114-0PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 documentdb_15 documentdb_15-0.114-0PIGSTY.el10.aarch64.rpm pigsty 0.114 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/documentdb_15-0.114-0PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~bookworm_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~bookworm_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0-1.pgdg13+1_amd64.deb pgdg 0.114 5.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~trixie_amd64.deb pigsty 0.114 5.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.113-0-1.pgdg13+1_amd64.deb pgdg 0.113 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.113-0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.112-0-1.pgdg13+1_amd64.deb pgdg 0.112 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.112-0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0-1.pgdg13+1_arm64.deb pgdg 0.114 5.0MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~trixie_arm64.deb pigsty 0.114 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.113-0-1.pgdg13+1_arm64.deb pgdg 0.113 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.113-0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.112-0-1.pgdg13+1_arm64.deb pgdg 0.112 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.112-0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~jammy_amd64.deb pigsty 0.114 6.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~jammy_arm64.deb pigsty 0.114 6.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~noble_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~noble_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb pgdg 0.114 5.1MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~resolute_amd64.deb pigsty 0.114 5.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb pgdg 0.113 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.113-0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-documentdb postgresql-15-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb pgdg 0.112 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.112-0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb pgdg 0.114 4.9MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.114-0PIGSTY~resolute_arm64.deb pigsty 0.114 5.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/documentdb/postgresql-15-documentdb_0.114-0PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb pgdg 0.113 4.8MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.113-0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-documentdb postgresql-15-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb pgdg 0.112 4.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/d/documentdb/postgresql-15-documentdb_0.112-0-1.pgdg26.04+1_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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

Sources:

- [DocumentDB v0.114-0 README](https://github.com/documentdb/documentdb/blob/v0.114-0/README.md)
- [DocumentDB v0.114-0 changelog](https://github.com/documentdb/documentdb/blob/v0.114-0/CHANGELOG.md)
- [`documentdb` control file](https://github.com/documentdb/documentdb/blob/v0.114-0/pg_documentdb/documentdb.control)
- [Official preload helper](https://github.com/documentdb/documentdb/blob/v0.114-0/scripts/preload_libraries.sh)

`documentdb` is the public PostgreSQL API extension for DocumentDB, an open-source MongoDB-compatible document database built on PostgreSQL. It stores BSON documents and implements CRUD, aggregation, full-text, geospatial, and vector workflows. MongoDB drivers require the separate DocumentDB gateway; installing this extension alone exposes the PostgreSQL API, not a wire-protocol listener.

### Configure and Install

The official deployment helper preloads the core and API libraries with `pg_cron`. Restart PostgreSQL after changing this setting:

```conf
shared_preload_libraries = 'pg_cron, pg_documentdb_core, pg_documentdb'
```

Install the public extension and its declared dependencies:

```sql
CREATE EXTENSION documentdb CASCADE;
```

`CASCADE` can install `documentdb_core`, `pg_cron`, `tsm_system_rows`, `vector`, and `postgis` when their files are present. Installation is superuser-only and non-relocatable.

### Native SQL Workflow

The SQL surface uses a database name, collection name, and BSON command document:

```sql
SELECT documentdb_api.create_collection('appdb', 'people');

SELECT documentdb_api.insert_one(
  'appdb',
  'people',
  '{"_id": 1, "name": "Ada", "team": "storage"}',
  NULL
);

SELECT document
FROM documentdb_api_catalog.bson_aggregation_find(
  'appdb',
  '{"find":"people","filter":{"team":"storage"}}'
);
```

For application compatibility, run the gateway and use a supported MongoDB driver against its configured TLS endpoint. The gateway translates wire-protocol commands into this PostgreSQL API.

### Important Objects

- `documentdb_api` contains collection-management and command functions such as `create_collection` and `insert_one`.
- `documentdb_api_catalog.bson_aggregation_find` executes a MongoDB-style find specification and returns BSON documents.
- `documentdb_core.bson` is the storage and interchange type supplied by `documentdb_core`.
- DocumentDB roles and internal schemas separate public read/write operations from administrative and implementation objects.
- `documentdb.enableNonBlockingUniqueIndexBuild` controls the v0.114 path for background unique ordered-index builds and is enabled by default in that release.

### Version and Operational Notes

The v0.114-0 tagged changelog enables schema validation by default, fixes validator propagation and caching, and enables non-blocking unique ordered-index builds. It also records gateway configuration, connectivity-check, TLS, and credential-handling improvements. Two RUM optimizations in that changelog remain feature-flagged and disabled by default; do not describe them as active behavior.

MongoDB compatibility is not identical to every MongoDB server version. Test operators, index behavior, transactions, schema validation, authentication, and driver behavior used by the application. Match `documentdb`, `documentdb_core`, gateway, and optional distributed/index components to the same release line.
