---
title: "jsonschema"
linkTitle: "jsonschema"
description: "JSON Schema validation functions for PostgreSQL"
weight: 2760
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/theory/pg-jsonschema-boon">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">theory/pg-jsonschema-boon</div>
    <div class="ext-card__desc">https://github.com/theory/pg-jsonschema-boon</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/jsonschema-0.1.9.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">jsonschema-0.1.9.tar.gz</div>
    <div class="ext-card__desc">jsonschema-0.1.9.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`jsonschema`**](/ext/e/jsonschema) | `0.1.9` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2760  | [**`jsonschema`**](/ext/e/jsonschema) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgbson`](/ext/e/pgbson) [`pgjq`](/ext/e/pgjq) [`jsquery`](/ext/e/jsquery) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`pg_projection`](/ext/e/pg_projection) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`documentdb`](/ext/e/documentdb) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`mongo_fdw`](/ext/e/mongo_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Distinct from Supabase pg_jsonschema.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.9` | {{< pgvers "18,17,16,15,14" >}} | `jsonschema` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.9` | {{< pgvers "18,17,16,15,14" >}} | `jsonschema_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.9` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-jsonschema` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 | AVAIL PIGSTY 0.1.9 1 |
@ el8.x86_64 18 jsonschema_18 jsonschema_18-0.1.9-3PIGSTY.el8.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jsonschema_18-0.1.9-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 jsonschema_18 jsonschema_18-0.1.9-3PIGSTY.el8.aarch64.rpm pigsty 0.1.9 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jsonschema_18-0.1.9-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 jsonschema_18 jsonschema_18-0.1.9-3PIGSTY.el9.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jsonschema_18-0.1.9-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 jsonschema_18 jsonschema_18-0.1.9-3PIGSTY.el9.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jsonschema_18-0.1.9-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 jsonschema_18 jsonschema_18-0.1.9-3PIGSTY.el10.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jsonschema_18-0.1.9-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 jsonschema_18 jsonschema_18-0.1.9-3PIGSTY.el10.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jsonschema_18-0.1.9-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-jsonschema postgresql-18-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-18-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 jsonschema_17 jsonschema_17-0.1.9-3PIGSTY.el8.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jsonschema_17-0.1.9-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 jsonschema_17 jsonschema_17-0.1.9-3PIGSTY.el8.aarch64.rpm pigsty 0.1.9 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jsonschema_17-0.1.9-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 jsonschema_17 jsonschema_17-0.1.9-3PIGSTY.el9.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jsonschema_17-0.1.9-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 jsonschema_17 jsonschema_17-0.1.9-3PIGSTY.el9.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jsonschema_17-0.1.9-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 jsonschema_17 jsonschema_17-0.1.9-3PIGSTY.el10.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jsonschema_17-0.1.9-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 jsonschema_17 jsonschema_17-0.1.9-3PIGSTY.el10.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jsonschema_17-0.1.9-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-jsonschema postgresql-17-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-17-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 jsonschema_16 jsonschema_16-0.1.9-3PIGSTY.el8.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jsonschema_16-0.1.9-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 jsonschema_16 jsonschema_16-0.1.9-3PIGSTY.el8.aarch64.rpm pigsty 0.1.9 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jsonschema_16-0.1.9-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 jsonschema_16 jsonschema_16-0.1.9-3PIGSTY.el9.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jsonschema_16-0.1.9-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 jsonschema_16 jsonschema_16-0.1.9-3PIGSTY.el9.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jsonschema_16-0.1.9-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 jsonschema_16 jsonschema_16-0.1.9-3PIGSTY.el10.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jsonschema_16-0.1.9-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 jsonschema_16 jsonschema_16-0.1.9-3PIGSTY.el10.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jsonschema_16-0.1.9-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-jsonschema postgresql-16-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-16-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 jsonschema_15 jsonschema_15-0.1.9-3PIGSTY.el8.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jsonschema_15-0.1.9-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 jsonschema_15 jsonschema_15-0.1.9-3PIGSTY.el8.aarch64.rpm pigsty 0.1.9 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jsonschema_15-0.1.9-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 jsonschema_15 jsonschema_15-0.1.9-3PIGSTY.el9.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jsonschema_15-0.1.9-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 jsonschema_15 jsonschema_15-0.1.9-3PIGSTY.el9.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jsonschema_15-0.1.9-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 jsonschema_15 jsonschema_15-0.1.9-3PIGSTY.el10.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jsonschema_15-0.1.9-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 jsonschema_15 jsonschema_15-0.1.9-3PIGSTY.el10.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jsonschema_15-0.1.9-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-jsonschema postgresql-15-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-15-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 jsonschema_14 jsonschema_14-0.1.9-3PIGSTY.el8.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jsonschema_14-0.1.9-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 jsonschema_14 jsonschema_14-0.1.9-3PIGSTY.el8.aarch64.rpm pigsty 0.1.9 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jsonschema_14-0.1.9-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 jsonschema_14 jsonschema_14-0.1.9-3PIGSTY.el9.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jsonschema_14-0.1.9-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 jsonschema_14 jsonschema_14-0.1.9-3PIGSTY.el9.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jsonschema_14-0.1.9-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 jsonschema_14 jsonschema_14-0.1.9-3PIGSTY.el10.x86_64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jsonschema_14-0.1.9-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 jsonschema_14 jsonschema_14-0.1.9-3PIGSTY.el10.aarch64.rpm pigsty 0.1.9 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jsonschema_14-0.1.9-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb pigsty 0.1.9 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb pigsty 0.1.9 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-jsonschema postgresql-14-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb pigsty 0.1.9 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jsonschema/postgresql-14-jsonschema_0.1.9-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `jsonschema` using `pig build`:

```bash
pig build pkg jsonschema         # build RPM / DEB packages
```


## Install

You can install `jsonschema` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install jsonschema;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y jsonschema -v 18  # PG 18
pig ext install -y jsonschema -v 17  # PG 17
pig ext install -y jsonschema -v 16  # PG 16
pig ext install -y jsonschema -v 15  # PG 15
pig ext install -y jsonschema -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y jsonschema_18       # PG 18
dnf install -y jsonschema_17       # PG 17
dnf install -y jsonschema_16       # PG 16
dnf install -y jsonschema_15       # PG 15
dnf install -y jsonschema_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-jsonschema   # PG 18
apt install -y postgresql-17-jsonschema   # PG 17
apt install -y postgresql-16-jsonschema   # PG 16
apt install -y postgresql-15-jsonschema   # PG 15
apt install -y postgresql-14-jsonschema   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION jsonschema;
```




## Usage

Sources:

- [jsonschema v0.1.9 README](https://github.com/theory/pg-jsonschema-boon/blob/v0.1.9/README.md)
- [documentation](https://github.com/theory/pg-jsonschema-boon/blob/v0.1.9/doc/jsonschema.md)
- [control file](https://github.com/theory/pg-jsonschema-boon/blob/v0.1.9/jsonschema.control)
- [Cargo manifest](https://github.com/theory/pg-jsonschema-boon/blob/v0.1.9/Cargo.toml)

`jsonschema` validates JSON and JSONB values against JSON Schema inside PostgreSQL. It is the `theory/pg-jsonschema-boon` extension and is distinct from Supabase `pg_jsonschema`, although it provides compatibility wrappers named `json_matches_schema()` and `jsonb_matches_schema()`.

The extension supports JSON Schema draft 4, draft 6, draft 7, draft 2019-09, and draft 2020-12 through the Rust `boon` validator. It has no runtime dependency beyond PostgreSQL.

Latest-check note: upstream `main` currently points at the same commit as tag `v0.1.9`, so this refresh found no material user-facing delta beyond replacing the stale generated-SQL source link.

### Validate a Schema and a Document

```sql
CREATE EXTENSION IF NOT EXISTS jsonschema;

SELECT jsonschema_is_valid(
  '{
     "type": "object",
     "required": ["name", "email"],
     "properties": {
       "name":  { "type": "string" },
       "age":   { "type": "number", "minimum": 0 },
       "email": { "type": "string", "format": "email" }
     }
   }'::json
);

SELECT jsonschema_validates(
  '{"name":"Amos Burton","email":"amos@rocinante.ship"}'::json,
  '{
     "type": "object",
     "required": ["name", "email"],
     "properties": {
       "name":  { "type": "string" },
       "email": { "type": "string", "format": "email" }
     }
   }'::json
);
```

`jsonschema_is_valid(schema)` returns whether the schema itself compiles and validates against the selected draft. `jsonschema_validates(data, schema)` returns whether the JSON/JSONB value satisfies the schema.

### Check Constraints

```sql
CREATE TABLE customer_profile (
  id       bigserial PRIMARY KEY,
  profile  jsonb NOT NULL,
  CHECK (
    jsonschema_validates(
      profile,
      '{
         "type": "object",
         "required": ["email"],
         "properties": {
           "email": { "type": "string", "format": "email" },
           "tags":  {
             "type": "array",
             "items": { "type": "string", "maxLength": 16 }
           }
         }
       }'::jsonb
    )
  )
);
```

Use constraints when the database should reject malformed JSON documents at write time.

### Composed Schemas

```sql
SELECT jsonschema_validates(
  jsonb_build_object(
    'first_name', 'Naomi',
    'last_name', 'Nagata',
    'shipping_address', jsonb_build_object(
      'street_address', '1 Rocinante Way',
      'city', 'Ceres Station',
      'state', 'The Belt'
    )
  ),
  'https://example.com/schemas/customer',
  '{
     "$id": "https://example.com/schemas/address",
     "type": "object",
     "required": ["street_address", "city", "state"],
     "properties": {
       "street_address": { "type": "string" },
       "city": { "type": "string" },
       "state": { "type": "string" }
     }
   }'::jsonb,
  '{
     "$id": "https://example.com/schemas/customer",
     "type": "object",
     "required": ["first_name", "last_name", "shipping_address"],
     "properties": {
       "first_name": { "type": "string" },
       "last_name": { "type": "string" },
       "shipping_address": { "$ref": "/schemas/address" }
     }
   }'::jsonb
);
```

The `id` overloads let multiple schemas reference each other by `$id`, which is useful for componentized JSON Schema definitions.

### Compatibility Functions

```sql
SELECT json_matches_schema(
  '{"type":"string","maxLength":4}'::json,
  '"1234"'::json
);

SELECT jsonb_matches_schema(
  '{"type":"object","required":["id"]}'::json,
  '{"id":42}'::jsonb
);
```

These wrappers mirror the common `pg_jsonschema` argument order: schema first, instance second.

### Draft Selection and Caveats

```sql
SET jsonschema.default_draft = 'V2020';
SET jsonschema.default_draft = 'V7';
```

If a schema omits `$schema`, `jsonschema.default_draft` controls the default draft. Supported values are `V4`, `V6`, `V7`, `V2019`, and `V2020`.

- `jsonschema_validates(data, schema)` returns NULL if either argument is NULL.
- Invalid or uncompilable schemas can raise errors in validation calls; failed document validation returns `false` and logs details at `INFO`.
- `jsonschema_is_valid(id, VARIADIC schemas)` and `jsonschema_validates(data, id, VARIADIC schemas)` require matching `$id` values for reliable composed-schema resolution.
