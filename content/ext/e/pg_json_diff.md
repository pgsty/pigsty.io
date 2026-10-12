---
title: "pg_json_diff"
linkTitle: "pg_json_diff"
description: "JSONB diff, JSON Patch, and JSON Merge Patch functions"
weight: 4160
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/KhaledSMQ/pg-jsondiff">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">KhaledSMQ/pg-jsondiff</div>
    <div class="ext-card__desc">https://github.com/KhaledSMQ/pg-jsondiff</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_json_diff-1.0-95cd668636ce.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_json_diff-1.0-95cd668636ce.tar.gz</div>
    <div class="ext-card__desc">pg_json_diff-1.0-95cd668636ce.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_json_diff`**](/ext/e/pg_json_diff) | `1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4160  | [**`pg_json_diff`**](/ext/e/pg_json_diff) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgjq`](/ext/e/pgjq) [`pgbson`](/ext/e/pgbson) [`jsquery`](/ext/e/jsquery) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Source requires PostgreSQL 12+ and C++17. Packaging removes the unsupported control-file author field; no extension dependency.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_json_diff` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_json_diff_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-json-diff` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 pg_json_diff_18 pg_json_diff_18-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 305.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_json_diff_18-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_json_diff_18 pg_json_diff_18-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 298.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_json_diff_18-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_json_diff_18 pg_json_diff_18-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 313.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_json_diff_18-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_json_diff_18 pg_json_diff_18-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 307.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_json_diff_18-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_json_diff_18 pg_json_diff_18-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 318.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_json_diff_18-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_json_diff_18 pg_json_diff_18-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 310.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_json_diff_18-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 276.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 269.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 285.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 277.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 291.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 288.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 295.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 291.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 296.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-json-diff postgresql-18-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 289.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-18-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_json_diff_17 pg_json_diff_17-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 305.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_json_diff_17-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_json_diff_17 pg_json_diff_17-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 297.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_json_diff_17-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_json_diff_17 pg_json_diff_17-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 312.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_json_diff_17-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_json_diff_17 pg_json_diff_17-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 306.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_json_diff_17-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_json_diff_17 pg_json_diff_17-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 318.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_json_diff_17-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_json_diff_17 pg_json_diff_17-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 309.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_json_diff_17-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 276.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 270.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 285.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 277.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 323.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 321.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 295.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 291.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 296.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-json-diff postgresql-17-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 288.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-17-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_json_diff_16 pg_json_diff_16-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 305.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_json_diff_16-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_json_diff_16 pg_json_diff_16-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 297.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_json_diff_16-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_json_diff_16 pg_json_diff_16-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 312.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_json_diff_16-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_json_diff_16 pg_json_diff_16-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 306.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_json_diff_16-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_json_diff_16 pg_json_diff_16-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 318.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_json_diff_16-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_json_diff_16 pg_json_diff_16-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 309.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_json_diff_16-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 277.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 270.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 285.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 277.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 323.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 321.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 295.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 291.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 296.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-json-diff postgresql-16-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 288.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-16-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_json_diff_15 pg_json_diff_15-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 307.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_json_diff_15-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_json_diff_15 pg_json_diff_15-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 298.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_json_diff_15-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_json_diff_15 pg_json_diff_15-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 313.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_json_diff_15-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_json_diff_15 pg_json_diff_15-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 306.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_json_diff_15-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_json_diff_15 pg_json_diff_15-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 318.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_json_diff_15-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_json_diff_15 pg_json_diff_15-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 310.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_json_diff_15-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 281.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 274.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 289.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 280.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 324.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 321.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 295.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 291.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 296.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-json-diff postgresql-15-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 289.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-15-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_json_diff_14 pg_json_diff_14-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 307.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_json_diff_14-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_json_diff_14 pg_json_diff_14-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 298.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_json_diff_14-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_json_diff_14 pg_json_diff_14-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 313.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_json_diff_14-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_json_diff_14 pg_json_diff_14-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 307.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_json_diff_14-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_json_diff_14 pg_json_diff_14-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 319.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_json_diff_14-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_json_diff_14 pg_json_diff_14-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 310.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_json_diff_14-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 284.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 278.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 293.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 284.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 327.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 324.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 299.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 295.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 300.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-json-diff postgresql-14-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 292.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-json-diff/postgresql-14-pg-json-diff_1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_json_diff` using `pig build`:

```bash
pig build pkg pg_json_diff         # build RPM / DEB packages
```


## Install

You can install `pg_json_diff` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_json_diff;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_json_diff -v 18  # PG 18
pig ext install -y pg_json_diff -v 17  # PG 17
pig ext install -y pg_json_diff -v 16  # PG 16
pig ext install -y pg_json_diff -v 15  # PG 15
pig ext install -y pg_json_diff -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_json_diff_18       # PG 18
dnf install -y pg_json_diff_17       # PG 17
dnf install -y pg_json_diff_16       # PG 16
dnf install -y pg_json_diff_15       # PG 15
dnf install -y pg_json_diff_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-json-diff   # PG 18
apt install -y postgresql-17-pg-json-diff   # PG 17
apt install -y postgresql-16-pg-json-diff   # PG 16
apt install -y postgresql-15-pg-json-diff   # PG 15
apt install -y postgresql-14-pg-json-diff   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_json_diff;
```

## Usage

Sources:

- [Official README](https://github.com/KhaledSMQ/pg-jsondiff/blob/95cd668636ce9c88d2f6ac57d92ac5301a81ed3c/README.md)
- [Extension SQL](https://github.com/KhaledSMQ/pg-jsondiff/blob/95cd668636ce9c88d2f6ac57d92ac5301a81ed3c/pg_json_diff--1.0.sql)
- [C++ implementation](https://github.com/KhaledSMQ/pg-jsondiff/blob/95cd668636ce9c88d2f6ac57d92ac5301a81ed3c/src/json_diff_impl.cpp)

`pg_json_diff` 1.0 provides three immutable JSONB transformation functions backed by nlohmann/json: generate an RFC 6902 JSON Patch, apply such a patch, or apply an RFC 7386 merge patch. Use it for explicit document transformations, not as automatic conflict resolution or a stable audit-diff format.

### Core Workflow

Generate a patch, store or inspect it, and verify that applying it produces the expected target:

```sql
CREATE EXTENSION pg_json_diff;

WITH docs AS (
  SELECT '{"name":"Ada","age":30}'::jsonb AS old_doc,
         '{"name":"Ada","age":31,"city":"London"}'::jsonb AS new_doc
), patch AS (
  SELECT old_doc, new_doc, generate_json_diff(old_doc, new_doc) AS operations
  FROM docs
)
SELECT operations, apply_patch(old_doc, operations) = new_doc AS verified
FROM patch;
```

Validate externally supplied patches before applying them and run the transformation in a transaction with application-level authorization.

### Function Index

- `generate_json_diff(source, target)` returns an RFC 6902 operation array.
- `apply_patch(document, patch)` supports add, remove, replace, move, copy, and test operations.
- `merge_patch(document, patch)` recursively merges objects; a null member removes a key and arrays are replaced rather than merged.

All three functions accept and return `jsonb`.

### Operational Notes

Each call serializes PostgreSQL JSONB to text, parses it into a C++ JSON value, performs the operation, serializes again, and reparses the result as JSONB. Large or deeply nested documents therefore incur copying and parser cost. nlohmann/json and PostgreSQL JSONB have different numeric models, so test very large integers and high-precision decimals for fidelity. Patch errors are surfaced as general internal errors, and generated operation order or paths should not be treated as a canonical human audit record.
