---
title: "pg_jsonschema"
linkTitle: "pg_jsonschema"
description: "PostgreSQL extension providing JSON Schema validation"
weight: 2750
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supabase/pg_jsonschema">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supabase/pg_jsonschema</div>
    <div class="ext-card__desc">https://github.com/supabase/pg_jsonschema</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_jsonschema-0.3.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_jsonschema-0.3.4.tar.gz</div>
    <div class="ext-card__desc">pg_jsonschema-0.3.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_jsonschema`**](/ext/e/pg_jsonschema) | `0.3.4` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2750  | [**`pg_jsonschema`**](/ext/e/pg_jsonschema) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgbson`](/ext/e/pgbson) [`pgjq`](/ext/e/pgjq) [`jsquery`](/ext/e/jsquery) [`jsonschema`](/ext/e/jsonschema) [`pg_projection`](/ext/e/pg_projection) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`documentdb`](/ext/e/documentdb) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`mongo_fdw`](/ext/e/mongo_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`fsm_core`](/ext/e/fsm_core) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_jsonschema` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_jsonschema_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-jsonschema` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| u26.x86_64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 | AVAIL PIGSTY 0.3.4 1 |
@ el8.x86_64 18 pg_jsonschema_18 pg_jsonschema_18-0.3.4-3PIGSTY.el8.x86_64.rpm pigsty 0.3.4 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jsonschema_18-0.3.4-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_jsonschema_18 pg_jsonschema_18-0.3.4-3PIGSTY.el8.aarch64.rpm pigsty 0.3.4 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jsonschema_18-0.3.4-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_jsonschema_18 pg_jsonschema_18-0.3.4-3PIGSTY.el9.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jsonschema_18-0.3.4-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_jsonschema_18 pg_jsonschema_18-0.3.4-3PIGSTY.el9.aarch64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jsonschema_18-0.3.4-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_jsonschema_18 pg_jsonschema_18-0.3.4-3PIGSTY.el10.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jsonschema_18-0.3.4-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_jsonschema_18 pg_jsonschema_18-0.3.4-3PIGSTY.el10.aarch64.rpm pigsty 0.3.4 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jsonschema_18-0.3.4-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb pigsty 0.3.4 1.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-jsonschema postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-18-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_jsonschema_17 pg_jsonschema_17-0.3.4-3PIGSTY.el8.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jsonschema_17-0.3.4-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_jsonschema_17 pg_jsonschema_17-0.3.4-3PIGSTY.el8.aarch64.rpm pigsty 0.3.4 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jsonschema_17-0.3.4-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_jsonschema_17 pg_jsonschema_17-0.3.4-3PIGSTY.el9.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jsonschema_17-0.3.4-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_jsonschema_17 pg_jsonschema_17-0.3.4-3PIGSTY.el9.aarch64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jsonschema_17-0.3.4-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_jsonschema_17 pg_jsonschema_17-0.3.4-3PIGSTY.el10.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jsonschema_17-0.3.4-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_jsonschema_17 pg_jsonschema_17-0.3.4-3PIGSTY.el10.aarch64.rpm pigsty 0.3.4 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jsonschema_17-0.3.4-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-jsonschema postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-17-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_jsonschema_16 pg_jsonschema_16-0.3.4-3PIGSTY.el8.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jsonschema_16-0.3.4-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_jsonschema_16 pg_jsonschema_16-0.3.4-3PIGSTY.el8.aarch64.rpm pigsty 0.3.4 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jsonschema_16-0.3.4-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_jsonschema_16 pg_jsonschema_16-0.3.4-3PIGSTY.el9.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jsonschema_16-0.3.4-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_jsonschema_16 pg_jsonschema_16-0.3.4-3PIGSTY.el9.aarch64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jsonschema_16-0.3.4-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_jsonschema_16 pg_jsonschema_16-0.3.4-3PIGSTY.el10.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jsonschema_16-0.3.4-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_jsonschema_16 pg_jsonschema_16-0.3.4-3PIGSTY.el10.aarch64.rpm pigsty 0.3.4 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jsonschema_16-0.3.4-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-jsonschema postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-16-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_jsonschema_15 pg_jsonschema_15-0.3.4-3PIGSTY.el8.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jsonschema_15-0.3.4-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_jsonschema_15 pg_jsonschema_15-0.3.4-3PIGSTY.el8.aarch64.rpm pigsty 0.3.4 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jsonschema_15-0.3.4-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_jsonschema_15 pg_jsonschema_15-0.3.4-3PIGSTY.el9.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jsonschema_15-0.3.4-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_jsonschema_15 pg_jsonschema_15-0.3.4-3PIGSTY.el9.aarch64.rpm pigsty 0.3.4 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jsonschema_15-0.3.4-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_jsonschema_15 pg_jsonschema_15-0.3.4-3PIGSTY.el10.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jsonschema_15-0.3.4-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_jsonschema_15 pg_jsonschema_15-0.3.4-3PIGSTY.el10.aarch64.rpm pigsty 0.3.4 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jsonschema_15-0.3.4-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-jsonschema postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-15-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_jsonschema_14 pg_jsonschema_14-0.3.4-3PIGSTY.el8.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_jsonschema_14-0.3.4-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_jsonschema_14 pg_jsonschema_14-0.3.4-3PIGSTY.el8.aarch64.rpm pigsty 0.3.4 1.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_jsonschema_14-0.3.4-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_jsonschema_14 pg_jsonschema_14-0.3.4-3PIGSTY.el9.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_jsonschema_14-0.3.4-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_jsonschema_14 pg_jsonschema_14-0.3.4-3PIGSTY.el9.aarch64.rpm pigsty 0.3.4 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_jsonschema_14-0.3.4-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_jsonschema_14 pg_jsonschema_14-0.3.4-3PIGSTY.el10.x86_64.rpm pigsty 0.3.4 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_jsonschema_14-0.3.4-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_jsonschema_14 pg_jsonschema_14-0.3.4-3PIGSTY.el10.aarch64.rpm pigsty 0.3.4 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_jsonschema_14-0.3.4-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb pigsty 0.3.4 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb pigsty 0.3.4 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-jsonschema postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb pigsty 0.3.4 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jsonschema/postgresql-14-pg-jsonschema_0.3.4-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_jsonschema` using `pig build`:

```bash
pig build pkg pg_jsonschema         # build RPM / DEB packages
```


## Install

You can install `pg_jsonschema` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_jsonschema;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_jsonschema -v 18  # PG 18
pig ext install -y pg_jsonschema -v 17  # PG 17
pig ext install -y pg_jsonschema -v 16  # PG 16
pig ext install -y pg_jsonschema -v 15  # PG 15
pig ext install -y pg_jsonschema -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_jsonschema_18       # PG 18
dnf install -y pg_jsonschema_17       # PG 17
dnf install -y pg_jsonschema_16       # PG 16
dnf install -y pg_jsonschema_15       # PG 15
dnf install -y pg_jsonschema_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-jsonschema   # PG 18
apt install -y postgresql-17-pg-jsonschema   # PG 17
apt install -y postgresql-16-pg-jsonschema   # PG 16
apt install -y postgresql-15-pg-jsonschema   # PG 15
apt install -y postgresql-14-pg-jsonschema   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_jsonschema;
```




## Usage

> [pg_jsonschema: PostgreSQL extension providing JSON Schema validation](https://github.com/supabase/pg_jsonschema)

`pg_jsonschema` adds JSON Schema validation functions to PostgreSQL, enabling schema enforcement on JSON/JSONB columns via check constraints.

### Functions

| Function | Description |
|----------|-------------|
| `json_matches_schema(schema json, instance json)` | Validate a JSON instance against a schema, returns boolean |
| `jsonb_matches_schema(schema json, instance jsonb)` | Validate a JSONB instance against a schema, returns boolean |
| `jsonschema_is_valid(schema json)` | Check whether a JSON schema itself is valid |
| `jsonschema_validation_errors(schema json, instance json)` | Return an array of validation error messages |

### Table Constraints

Use check constraints to enforce document structure:

```sql
CREATE TABLE customer (
    id serial PRIMARY KEY,
    metadata json,
    CHECK (
        json_matches_schema(
            '{
                "type": "object",
                "properties": {
                    "tags": {
                        "type": "array",
                        "items": {
                            "type": "string",
                            "maxLength": 16
                        }
                    }
                }
            }',
            metadata
        )
    )
);

-- Valid insert (passes check constraint)
INSERT INTO customer(metadata) VALUES ('{"tags": ["vip", "darkmode-ui"]}');

-- Invalid insert (rejected by check constraint)
INSERT INTO customer(metadata) VALUES ('{"tags": [1, 3]}');
-- ERROR: new row violates check constraint
```

### Error Inspection

Retrieve detailed validation errors:

```sql
SELECT jsonschema_validation_errors('{"maxLength": 4}', '"123456789"');
-- Returns: {"\"123456789\" is longer than 4 characters"}
```

### Schema Validation

Verify that a schema is well-formed before using it:

```sql
SELECT jsonschema_is_valid('{
    "type": "object",
    "properties": {
        "name": {"type": "string"},
        "age":  {"type": "integer", "minimum": 0}
    },
    "required": ["name"]
}');
-- Returns: true
```
