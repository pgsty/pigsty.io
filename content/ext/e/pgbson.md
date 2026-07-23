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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresbson-2.0.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresbson-2.0.4.tar.gz</div>
    <div class="ext-card__desc">postgresbson-2.0.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgbson`**](/ext/e/pgbson) | `2.0.4` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3910  | [**`pgbson`**](/ext/e/pgbson) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`mongo_fdw`](/ext/e/mongo_fdw) [`documentdb`](/ext/e/documentdb) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb_distributed`](/ext/e/documentdb_distributed) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGXN distribution name is bson; CREATE EXTENSION name is pgbson; package release 2.0.4 still installs extension SQL version 2.0; RPM package root is postgresbson and requires libbson.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pgbson` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresbson_$v` | `libbson` |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgbson` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
@ el8.x86_64 18 postgresbson_18 postgresbson_18-2.0.4-1PIGSTY.el8.x86_64.rpm pigsty 2.0.4 30.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_18-2.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 postgresbson_18 postgresbson_18-2.0.4-1PIGSTY.el8.aarch64.rpm pigsty 2.0.4 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_18-2.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 postgresbson_18 postgresbson_18-2.0.4-1PIGSTY.el9.x86_64.rpm pigsty 2.0.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_18-2.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 postgresbson_18 postgresbson_18-2.0.4-1PIGSTY.el9.aarch64.rpm pigsty 2.0.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_18-2.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 postgresbson_18 postgresbson_18-2.0.4-1PIGSTY.el10.x86_64.rpm pigsty 2.0.4 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_18-2.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 postgresbson_18 postgresbson_18-2.0.4-1PIGSTY.el10.aarch64.rpm pigsty 2.0.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_18-2.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb pigsty 2.0.4 37.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb pigsty 2.0.4 37.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb pigsty 2.0.4 37.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb pigsty 2.0.4 37.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb pigsty 2.0.4 39.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb pigsty 2.0.4 39.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~noble_amd64.deb pigsty 2.0.4 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~noble_arm64.deb pigsty 2.0.4 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb pigsty 2.0.4 38.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb pigsty 2.0.4 38.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-18-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 postgresbson_17 postgresbson_17-2.0.4-1PIGSTY.el8.x86_64.rpm pigsty 2.0.4 30.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_17-2.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 postgresbson_17 postgresbson_17-2.0.4-1PIGSTY.el8.aarch64.rpm pigsty 2.0.4 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_17-2.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 postgresbson_17 postgresbson_17-2.0.4-1PIGSTY.el9.x86_64.rpm pigsty 2.0.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_17-2.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 postgresbson_17 postgresbson_17-2.0.4-1PIGSTY.el9.aarch64.rpm pigsty 2.0.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_17-2.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 postgresbson_17 postgresbson_17-2.0.4-1PIGSTY.el10.x86_64.rpm pigsty 2.0.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_17-2.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 postgresbson_17 postgresbson_17-2.0.4-1PIGSTY.el10.aarch64.rpm pigsty 2.0.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_17-2.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb pigsty 2.0.4 37.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb pigsty 2.0.4 37.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb pigsty 2.0.4 37.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb pigsty 2.0.4 37.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb pigsty 2.0.4 40.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb pigsty 2.0.4 40.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~noble_amd64.deb pigsty 2.0.4 38.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~noble_arm64.deb pigsty 2.0.4 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb pigsty 2.0.4 38.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb pigsty 2.0.4 38.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-17-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 postgresbson_16 postgresbson_16-2.0.4-1PIGSTY.el8.x86_64.rpm pigsty 2.0.4 30.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_16-2.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 postgresbson_16 postgresbson_16-2.0.4-1PIGSTY.el8.aarch64.rpm pigsty 2.0.4 30.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_16-2.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 postgresbson_16 postgresbson_16-2.0.4-1PIGSTY.el9.x86_64.rpm pigsty 2.0.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_16-2.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 postgresbson_16 postgresbson_16-2.0.4-1PIGSTY.el9.aarch64.rpm pigsty 2.0.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_16-2.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 postgresbson_16 postgresbson_16-2.0.4-1PIGSTY.el10.x86_64.rpm pigsty 2.0.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_16-2.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 postgresbson_16 postgresbson_16-2.0.4-1PIGSTY.el10.aarch64.rpm pigsty 2.0.4 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_16-2.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb pigsty 2.0.4 37.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb pigsty 2.0.4 37.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb pigsty 2.0.4 37.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb pigsty 2.0.4 37.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb pigsty 2.0.4 40.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb pigsty 2.0.4 40.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~noble_amd64.deb pigsty 2.0.4 38.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~noble_arm64.deb pigsty 2.0.4 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb pigsty 2.0.4 38.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb pigsty 2.0.4 38.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-16-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 postgresbson_15 postgresbson_15-2.0.4-1PIGSTY.el8.x86_64.rpm pigsty 2.0.4 30.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_15-2.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 postgresbson_15 postgresbson_15-2.0.4-1PIGSTY.el8.aarch64.rpm pigsty 2.0.4 30.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_15-2.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 postgresbson_15 postgresbson_15-2.0.4-1PIGSTY.el9.x86_64.rpm pigsty 2.0.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_15-2.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 postgresbson_15 postgresbson_15-2.0.4-1PIGSTY.el9.aarch64.rpm pigsty 2.0.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_15-2.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 postgresbson_15 postgresbson_15-2.0.4-1PIGSTY.el10.x86_64.rpm pigsty 2.0.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_15-2.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 postgresbson_15 postgresbson_15-2.0.4-1PIGSTY.el10.aarch64.rpm pigsty 2.0.4 29.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_15-2.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb pigsty 2.0.4 37.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb pigsty 2.0.4 37.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb pigsty 2.0.4 37.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb pigsty 2.0.4 37.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb pigsty 2.0.4 40.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb pigsty 2.0.4 39.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~noble_amd64.deb pigsty 2.0.4 38.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~noble_arm64.deb pigsty 2.0.4 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb pigsty 2.0.4 38.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb pigsty 2.0.4 38.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-15-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 postgresbson_14 postgresbson_14-2.0.4-1PIGSTY.el8.x86_64.rpm pigsty 2.0.4 30.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_14-2.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 postgresbson_14 postgresbson_14-2.0.4-1PIGSTY.el8.aarch64.rpm pigsty 2.0.4 30.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_14-2.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 postgresbson_14 postgresbson_14-2.0.4-1PIGSTY.el9.x86_64.rpm pigsty 2.0.4 30.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_14-2.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 postgresbson_14 postgresbson_14-2.0.4-1PIGSTY.el9.aarch64.rpm pigsty 2.0.4 29.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_14-2.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 postgresbson_14 postgresbson_14-2.0.4-1PIGSTY.el10.x86_64.rpm pigsty 2.0.4 29.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_14-2.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 postgresbson_14 postgresbson_14-2.0.4-1PIGSTY.el10.aarch64.rpm pigsty 2.0.4 29.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_14-2.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb pigsty 2.0.4 37.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb pigsty 2.0.4 37.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb pigsty 2.0.4 37.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb pigsty 2.0.4 37.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb pigsty 2.0.4 40.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb pigsty 2.0.4 39.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~noble_amd64.deb pigsty 2.0.4 38.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~noble_arm64.deb pigsty 2.0.4 38.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb pigsty 2.0.4 38.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb pigsty 2.0.4 38.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-14-pgbson_2.0.4-1PIGSTY~resolute_arm64.deb
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

Sources:

- [postgresbson README at the 2.0.4 revision](https://github.com/buzzm/postgresbson/blob/ec71d314511d484a99ed510f480919dd0509fbe9/README.md)
- [META.json version 2.0.4](https://github.com/buzzm/postgresbson/blob/ec71d314511d484a99ed510f480919dd0509fbe9/META.json)
- [pgbson control file](https://github.com/buzzm/postgresbson/blob/ec71d314511d484a99ed510f480919dd0509fbe9/pgbson.control)
- [Version 2.0 SQL API](https://github.com/buzzm/postgresbson/blob/ec71d314511d484a99ed510f480919dd0509fbe9/pgbson--2.0.sql)

pgbson adds a BSON data type, typed path accessors, JSON-style operators, casts, and expression-index support. Use it when binary BSON must be stored without first converting every value to JSONB, especially when BSON type fidelity or byte-level round trips matter.

The distribution release is 2.0.4 while the extension control and SQL API version remain 2.0.

### Create the Extension

    CREATE EXTENSION pgbson;

The native module uses libbson. Install a package built against compatible PostgreSQL and libbson versions.

### Store and Validate BSON

The bytea-to-bson cast validates input when a value is written. Version 2.0.4 documents that reads can then assume the stored BSON is valid. Do not bypass the type's input or cast path with unsafe low-level writes.

### Extract Values

Typed dot-path accessors avoid materializing every intermediate object:

    SELECT bson_get_datetime(payload, 'msg.header.event.ts'),
           bson_get_string(payload, 'data.customer.name')
    FROM events;

Use bson_get_bson for a subdocument:

    SELECT bson_get_bson(payload, 'msg.header.event')
    FROM events;

JSON-style navigation is also available:

    SELECT payload->'msg'->'header'->'event'->>'ts'
    FROM events;

### Function and Operator Index

- bson_get_string, bson_get_int32, bson_get_int64, bson_get_double, bson_get_decimal: typed scalar accessors.
- bson_get_datetime, bson_get_binary, bson_get_boolean: accessors for additional BSON types.
- bson_get_bson: return an embedded BSON document.
- bson_get_jsonb_array: convert an array endpoint to a PostgreSQL jsonb array.
- -> and ->>: navigate values with JSON-like syntax.
- bson casts to json and jsonb: expose Extended JSON for PostgreSQL JSON processing.
- bson and bytea casts: preserve the BSON binary representation.

### Index and Interoperate

Create expression indexes on frequently queried paths:

    CREATE INDEX events_customer_id_idx
    ON events (bson_get_string(payload, 'data.customer.id'));

Cast a subdocument to jsonb when PostgreSQL's JSON operators are more convenient:

    SELECT bson_get_bson(payload, 'msg.header')::jsonb ? 'event'
    FROM events;

### Caveats

- A typed getter returns useful data only when the endpoint has the expected BSON type. Make type expectations explicit in ingestion code.
- bson_get_bson returns NULL for scalar endpoints because a scalar is not a BSON document.
- Dot-path accessors are generally preferable to long operator chains for repeated extraction because they avoid intermediate BSON values.
- BSON and JSONB have different type and ordering semantics. A cast can be useful but is not a lossless replacement for every BSON workflow.
