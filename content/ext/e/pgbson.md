---
title: "pgbson"
linkTitle: "pgbson"
description: "BSON data type and accessor functions for PostgreSQL"
weight: 3910
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/buzzm/postgresbson">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">buzzm/postgresbson</div>
    <div class="ext-card__desc">https://github.com/buzzm/postgresbson</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresbson-2.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresbson-2.0.2.tar.gz</div>
    <div class="ext-card__desc">postgresbson-2.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgbson`**](/ext/e/pgbson) | `2.0.2` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3910  | [**`pgbson`**](/ext/e/pgbson) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`mongo_fdw`](/ext/e/mongo_fdw) [`documentdb`](/ext/e/documentdb) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb_distributed`](/ext/e/documentdb_distributed) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release tag 2.0.2 still ships extension SQL version 2.0; PGXN dist name is bson, CREATE EXTENSION name is pgbson, RPM package root is postgresbson, and the runtime dependency is libbson.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pgbson` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresbson_$v` | `libbson` |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgbson` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 |
@ el8.x86_64 18 postgresbson_18 postgresbson_18-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 30.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_18-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 postgresbson_18 postgresbson_18-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_18-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 postgresbson_18 postgresbson_18-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_18-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 postgresbson_18 postgresbson_18-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 29.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_18-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 postgresbson_18 postgresbson_18-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_18-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 postgresbson_18 postgresbson_18-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 29.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_18-2.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb pigsty 2.0.2 37.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb pigsty 2.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb pigsty 2.0.2 37.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb pigsty 2.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb pigsty 2.0.2 39.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb pigsty 2.0.2 38.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~noble_amd64.deb pigsty 2.0.2 38.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~noble_arm64.deb pigsty 2.0.2 38.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb pigsty 2.0.2 38.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb pigsty 2.0.2 38.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 postgresbson_17 postgresbson_17-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 30.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_17-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 postgresbson_17 postgresbson_17-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_17-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 postgresbson_17 postgresbson_17-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_17-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 postgresbson_17 postgresbson_17-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 29.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_17-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 postgresbson_17 postgresbson_17-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_17-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 postgresbson_17 postgresbson_17-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 29.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_17-2.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb pigsty 2.0.2 37.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb pigsty 2.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb pigsty 2.0.2 37.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb pigsty 2.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb pigsty 2.0.2 40.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb pigsty 2.0.2 39.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~noble_amd64.deb pigsty 2.0.2 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~noble_arm64.deb pigsty 2.0.2 38.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb pigsty 2.0.2 38.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb pigsty 2.0.2 38.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 postgresbson_16 postgresbson_16-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 30.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_16-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 postgresbson_16 postgresbson_16-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_16-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 postgresbson_16 postgresbson_16-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_16-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 postgresbson_16 postgresbson_16-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 29.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_16-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 postgresbson_16 postgresbson_16-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_16-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 postgresbson_16 postgresbson_16-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 29.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_16-2.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb pigsty 2.0.2 37.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb pigsty 2.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb pigsty 2.0.2 37.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb pigsty 2.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb pigsty 2.0.2 40.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb pigsty 2.0.2 39.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~noble_amd64.deb pigsty 2.0.2 38.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~noble_arm64.deb pigsty 2.0.2 38.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb pigsty 2.0.2 38.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb pigsty 2.0.2 38.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 postgresbson_15 postgresbson_15-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 30.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_15-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 postgresbson_15 postgresbson_15-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_15-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 postgresbson_15 postgresbson_15-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_15-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 postgresbson_15 postgresbson_15-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 29.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_15-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 postgresbson_15 postgresbson_15-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_15-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 postgresbson_15 postgresbson_15-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 29.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_15-2.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb pigsty 2.0.2 37.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb pigsty 2.0.2 37.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb pigsty 2.0.2 37.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb pigsty 2.0.2 37.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb pigsty 2.0.2 40.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb pigsty 2.0.2 39.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~noble_amd64.deb pigsty 2.0.2 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~noble_arm64.deb pigsty 2.0.2 38.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb pigsty 2.0.2 38.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb pigsty 2.0.2 38.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 postgresbson_14 postgresbson_14-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 30.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_14-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 postgresbson_14 postgresbson_14-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 29.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_14-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 postgresbson_14 postgresbson_14-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_14-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 postgresbson_14 postgresbson_14-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 29.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_14-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 postgresbson_14 postgresbson_14-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_14-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 postgresbson_14 postgresbson_14-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 29.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_14-2.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb pigsty 2.0.2 37.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb pigsty 2.0.2 37.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb pigsty 2.0.2 37.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb pigsty 2.0.2 37.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb pigsty 2.0.2 40.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb pigsty 2.0.2 39.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~noble_amd64.deb pigsty 2.0.2 38.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~noble_arm64.deb pigsty 2.0.2 38.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb pigsty 2.0.2 38.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb pigsty 2.0.2 38.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgbson` using `pig build`:

```bash
pig build pkg pgbson         # build RPM / DEB packages
```


## Install

You can install `pgbson` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgbson;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgbson -v 18  # PG 18
pig ext install -y pgbson -v 17  # PG 17
pig ext install -y pgbson -v 16  # PG 16
pig ext install -y pgbson -v 15  # PG 15
pig ext install -y pgbson -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y postgresbson_18       # PG 18
dnf install -y postgresbson_17       # PG 17
dnf install -y postgresbson_16       # PG 16
dnf install -y postgresbson_15       # PG 15
dnf install -y postgresbson_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgbson   # PG 18
apt install -y postgresql-17-pgbson   # PG 17
apt install -y postgresql-16-pgbson   # PG 16
apt install -y postgresql-15-pgbson   # PG 15
apt install -y postgresql-14-pgbson   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgbson;
```


## Usage

Sources: [README](https://github.com/buzzm/postgresbson/blob/master/README.md), [META.json 2.0.2](https://github.com/buzzm/postgresbson/blob/master/META.json), [pgbson.control](https://github.com/buzzm/postgresbson/blob/master/pgbson.control)

`pgbson` adds a BSON data type plus BSON-aware accessors and operators. Upstream documents the package release as `2.0.2`, while the extension control file still exposes SQL default version `2.0`; this matches the packaging note that the dist version is ahead of the extension SQL version.

```sql
CREATE EXTENSION pgbson;
```

### Core Access Patterns

Typed dotpath accessors walk the BSON structure directly and are the upstream-recommended fast path:

```sql
SELECT bson_get_datetime(bson_column, 'msg.header.event.ts') FROM my_table;
SELECT bson_get_bson(bson_column, 'msg.header.event') FROM my_table;
SELECT bson_get_string(bson_column, 'data.payload.product.definition.id') FROM my_table;
```

JSON-style operators are also supported:

```sql
SELECT (bson_column->'msg'->'header'->'event'->>'ts')::timestamp
FROM my_table;
```

### Main Functions and Operators

- Typed getters such as `bson_get_string`, `bson_get_int32`, `bson_get_int64`, `bson_get_double`, `bson_get_decimal`, `bson_get_datetime`, `bson_get_binary`, and `bson_get_boolean`.
- `bson_get_bson` to return a BSON subdocument.
- `bson_get_jsonb_array` when a path resolves to an array and you want native `jsonb` array operators afterward.
- Arrow operators `->` and `->>` similar to PostgreSQL JSON types.
- Casts to `json`/`jsonb` using Extended JSON so type fidelity is preserved.

### Interop and Indexing

Cast BSON to `jsonb` when you want PostgreSQL JSON operators:

```sql
SELECT (bson_get_bson(bson_column, 'msg.header.event')::jsonb) ?& ARRAY['id', 'type']
FROM my_table;
```

Build expression indexes on extracted paths:

```sql
CREATE INDEX ON data_collection (bson_get_string(data, 'd.recordId'));
```

The README also notes BSON values can round-trip byte-for-byte through `bytea` casts.

### Caveats

- Dotpath accessors are usually faster and more memory-efficient than long `->` chains because they avoid materializing intermediate substructures.
- `bson_get_bson()` returns `NULL` for scalar endpoints because simple scalars are not BSON documents.
- Upstream explicitly calls out array handling and wrong-type accessor behavior as rough edges that still need better ergonomics.
