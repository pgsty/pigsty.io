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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresbson-2.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresbson-2.1.0.tar.gz</div>
    <div class="ext-card__desc">postgresbson-2.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgbson`**](/ext/e/pgbson) | `2.1.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3910  | [**`pgbson`**](/ext/e/pgbson) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgjq`](/ext/e/pgjq) [`jsquery`](/ext/e/jsquery) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsonschema`](/ext/e/jsonschema) [`pg_projection`](/ext/e/pg_projection) [`hstore`](/ext/e/hstore) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`documentdb`](/ext/e/documentdb) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGXN distribution name is bson, CREATE EXTENSION name is pgbson, source archive and RPM root are postgresbson, and the control default_version is 2.1 while the package release is 2.1.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pgbson` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresbson_$v` | `libbson` |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgbson` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
@ el8.x86_64 18 postgresbson_18 postgresbson_18-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_18-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 postgresbson_18 postgresbson_18-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_18-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 postgresbson_18 postgresbson_18-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 34.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_18-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 postgresbson_18 postgresbson_18-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_18-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 postgresbson_18 postgresbson_18-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_18-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 postgresbson_18 postgresbson_18-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_18-2.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 43.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 42.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 43.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 42.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 45.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 44.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 44.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 44.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 44.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgbson postgresql-18-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-18-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 postgresbson_17 postgresbson_17-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_17-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 postgresbson_17 postgresbson_17-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_17-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 postgresbson_17 postgresbson_17-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 34.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_17-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 postgresbson_17 postgresbson_17-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_17-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 postgresbson_17 postgresbson_17-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_17-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 postgresbson_17 postgresbson_17-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_17-2.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 43.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 42.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 43.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 42.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 46.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 45.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 44.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 44.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgbson postgresql-17-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-17-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 postgresbson_16 postgresbson_16-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_16-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 postgresbson_16 postgresbson_16-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_16-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 postgresbson_16 postgresbson_16-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 34.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_16-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 postgresbson_16 postgresbson_16-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_16-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 postgresbson_16 postgresbson_16-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_16-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 postgresbson_16 postgresbson_16-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_16-2.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 43.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 42.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 43.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 42.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 46.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 45.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 44.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgbson postgresql-16-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-16-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 postgresbson_15 postgresbson_15-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_15-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 postgresbson_15 postgresbson_15-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_15-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 postgresbson_15 postgresbson_15-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 34.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_15-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 postgresbson_15 postgresbson_15-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_15-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 postgresbson_15 postgresbson_15-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_15-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 postgresbson_15 postgresbson_15-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_15-2.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 43.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 42.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 43.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 42.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 46.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 45.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 44.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 44.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 44.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgbson postgresql-15-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-15-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 postgresbson_14 postgresbson_14-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresbson_14-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 postgresbson_14 postgresbson_14-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/postgresbson_14-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 postgresbson_14 postgresbson_14-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 34.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresbson_14-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 postgresbson_14 postgresbson_14-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/postgresbson_14-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 postgresbson_14 postgresbson_14-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/postgresbson_14-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 postgresbson_14 postgresbson_14-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/postgresbson_14-2.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 43.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 42.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 43.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 42.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 46.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 45.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 44.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 44.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 44.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgbson postgresql-14-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresbson/postgresql-14-pgbson_2.1.0-1PIGSTY~resolute_arm64.deb
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

- [pgbson 2.1.0 README](https://api.pgxn.org/src/bson/bson-2.1.0/README.md)
- [pgbson 2.1 control file](https://api.pgxn.org/src/bson/bson-2.1.0/pgbson.control)
- [pgbson 2.1 SQL API](https://api.pgxn.org/src/bson/bson-2.1.0/pgbson--2.1.sql)

`pgbson` adds a BSON data type, typed dot-path accessors, JSON-style navigation, casts, comparison operators, and btree/hash indexing. The PGXN distribution release is `2.1.0`, while the SQL extension version is `2.1`. Use BSON when binary round-trip fidelity or BSON-specific scalar types matter; use `jsonb` when PostgreSQL-native JSON indexing is the primary requirement.

### Install and Store BSON

```sql
CREATE EXTENSION pgbson;
SELECT pgbson_version();

CREATE TABLE events (
  id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  payload bson NOT NULL
);

INSERT INTO events (payload)
VALUES ('{"user":{"name":"Ada"},"attempt":3}'::jsonb::bson);
```

The native module depends on `libbson`. The implicit `bytea`-to-`bson` cast validates BSON input, while the reverse cast preserves the binary representation.

### Extract Values

Typed accessors avoid materializing each intermediate document:

```sql
SELECT bson_get_string(payload, 'user.name'),
       bson_get_int32(payload, 'attempt')
FROM events;
```

Other typed getters cover 64-bit integers, doubles, decimals, datetimes, binary values, booleans, embedded BSON documents, and JSONB arrays. A missing path or a type mismatch returns `NULL`, so validate the expected BSON schema at ingestion when those cases must be distinguished.

Version 2.1 adds a type-agnostic terminal extractor:

```sql
SELECT bson_get_value(payload, 'user.name')
FROM events;
-- { "_" : "Ada" }
```

`bson_get_value` always wraps the selected scalar, array, or document under the key `_`. Remove exactly that one wrapper in the caller. It intentionally has no chainable `->` equivalent.

### Navigate, Compare, and Index

```sql
SELECT payload->'user'->>'name'
FROM events;

CREATE INDEX events_user_name_idx
ON events (bson_get_string(payload, 'user.name'));

CREATE INDEX events_payload_btree_idx ON events (payload);
CREATE INDEX events_payload_hash_idx ON events USING hash (payload);
```

Version 2.1 provides logical comparison operators `=`, `<>`, `<`, `<=`, `>`, and `>=`; `==` and `<<>>` perform binary equality and inequality. The default btree operator class uses logical BSON comparison, while the hash operator class uses binary equality. Choose intentionally when field order or byte identity matters.

### Upgrade and Caveats

```sql
ALTER EXTENSION pgbson UPDATE TO '2.1';
```

- Installing a 2.1 shared library does not update an existing 2.0 extension's SQL objects; run the extension update after installing the files.
- The 2.1 shared library fixes a backend crash when `bson_get_bson()` or `->` resolves to a scalar endpoint. Earlier binaries should be replaced even when an application does not yet use the new 2.1 SQL function.
- BSON-to-JSON/JSONB casts use Extended JSON. BSON and JSONB have different type, equality, and ordering semantics, so conversion is not lossless for every workflow.
- In 2.1, `->>` on a BSON datetime includes the trailing `Z`; `bson_get_datetime()` is unchanged. Check clients that compare the old text form.
- BSON top-level values are documents, not bare arrays or scalars. `bson_get_value` uses its `_` wrapper to return any nested shape within that restriction.
