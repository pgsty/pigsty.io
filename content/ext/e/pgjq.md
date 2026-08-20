---
title: "pgjq"
linkTitle: "pgjq"
description: "Use jq in Postgres"
weight: 4150
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Florents-Tselai/pgJQ">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Florents-Tselai/pgJQ</div>
    <div class="ext-card__desc">https://github.com/Florents-Tselai/pgJQ</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgjq-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgjq-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pgjq-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgjq`**](/ext/e/pgjq) | `0.1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4150  | [**`pgjq`**](/ext/e/pgjq) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgbson`](/ext/e/pgbson) [`jsquery`](/ext/e/jsquery) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsonschema`](/ext/e/jsonschema) [`pg_projection`](/ext/e/pg_projection) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`documentdb`](/ext/e/documentdb) [`mongo_fdw`](/ext/e/mongo_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> build with jq-devel


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgjq` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgjq_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgjq` | - |
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
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pgjq_18 pgjq_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjq_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgjq_18 pgjq_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjq_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgjq_18 pgjq_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjq_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgjq_18 pgjq_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjq_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgjq_18 pgjq_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjq_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgjq_18 pgjq_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjq_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 19.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 19.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgjq postgresql-18-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-18-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgjq_17 pgjq_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjq_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgjq_17 pgjq_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjq_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgjq_17 pgjq_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjq_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgjq_17 pgjq_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjq_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgjq_17 pgjq_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjq_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgjq_17 pgjq_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjq_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 19.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgjq postgresql-17-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-17-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgjq_16 pgjq_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjq_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgjq_16 pgjq_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjq_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgjq_16 pgjq_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjq_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgjq_16 pgjq_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjq_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgjq_16 pgjq_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjq_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgjq_16 pgjq_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjq_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 19.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgjq postgresql-16-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-16-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgjq_15 pgjq_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjq_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgjq_15 pgjq_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjq_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgjq_15 pgjq_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjq_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgjq_15 pgjq_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjq_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgjq_15 pgjq_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjq_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgjq_15 pgjq_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjq_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 19.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgjq postgresql-15-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-15-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgjq_14 pgjq_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjq_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgjq_14 pgjq_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjq_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgjq_14 pgjq_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjq_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgjq_14 pgjq_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjq_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgjq_14 pgjq_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 18.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjq_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgjq_14 pgjq_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjq_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 18.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 19.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 19.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgjq postgresql-14-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgjq/postgresql-14-pgjq_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgjq` using `pig build`:

```bash
pig build pkg pgjq         # build RPM / DEB packages
```


## Install

You can install `pgjq` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pgjq;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgjq -v 18  # PG 18
pig ext install -y pgjq -v 17  # PG 17
pig ext install -y pgjq -v 16  # PG 16
pig ext install -y pgjq -v 15  # PG 15
pig ext install -y pgjq -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgjq_18       # PG 18
dnf install -y pgjq_17       # PG 17
dnf install -y pgjq_16       # PG 16
dnf install -y pgjq_15       # PG 15
dnf install -y pgjq_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgjq   # PG 18
apt install -y postgresql-17-pgjq   # PG 17
apt install -y postgresql-16-pgjq   # PG 16
apt install -y postgresql-15-pgjq   # PG 15
apt install -y postgresql-14-pgjq   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgjq;
```




## Usage

> [pgjq: Use jq JSON processing language in PostgreSQL](https://github.com/Florents-Tselai/pgJQ)

Provides a `jqprog` data type for jq programs and a `jq()` function to execute them on `jsonb` objects.

### Basic Filtering

```sql
SELECT jq('[{"bar": "baz", "balance": 7.77}]'::jsonb, '.[0].bar');
-- "baz"
```

### Using the `@@` Operator

```sql
SELECT '[{"bar": "baz"}]' @@ '.[0].bar'::jqprog;
-- "baz"
```

### Complex Programs

```sql
SELECT jq('[true,false,[5,true,[true,[false]],false]]',
          '(..|select(type=="boolean")) |= if . then 1 else 0 end');
-- [1, 0, [5, 1, [1, [0]], 0]]

SELECT jq('[1,5,3,0,7]', '(.[] | select(. >= 2)) |= empty');
-- [1, 0]
```

### Passing Arguments

Pass dynamic arguments as a `jsonb` object, referenced as `$var`:

```sql
SELECT jq(
    '{"jobs": [{"id": 9, "ok": true}, {"id": 100, "ok": false}]}'::jsonb,
    '.jobs[] | select(.ok == $ok and .id == 100) | .',
    '{"ok": false}'
);
```

### Chaining with jsonpath

```sql
SELECT jq('[{"cust":"baz","active":true,"trans":{"balance":100}}]',
          '(.[] | select(.active == true))') - '{trans}' @> '{"cust": "baz"}';
-- t
```

### Working with Files

```sql
SELECT jq(pg_read_file('/path/to/data.json'), '.[]');
```
