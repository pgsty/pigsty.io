---
title: "is_jsonb_valid"
linkTitle: "is_jsonb_valid"
description: "Native JSONB validation against JSON Schema drafts 4 and 7"
weight: 2765
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/furstenheim/is_jsonb_valid">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">furstenheim/is_jsonb_valid</div>
    <div class="ext-card__desc">https://github.com/furstenheim/is_jsonb_valid</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/is_jsonb_valid-0.1.4-1f536758ae06.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">is_jsonb_valid-0.1.4-1f536758ae06.tar.gz</div>
    <div class="ext-card__desc">is_jsonb_valid-0.1.4-1f536758ae06.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`is_jsonb_valid`**](/ext/e/is_jsonb_valid) | `0.1.4` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2765  | [**`is_jsonb_valid`**](/ext/e/is_jsonb_valid) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsonschema`](/ext/e/jsonschema) `postgres-json-schema` [`jsquery`](/ext/e/jsquery) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Remote $ref and format validation are unsupported; local $ref resolution is limited. Ships two libraries under one extension identity.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.4` | {{< pgvers "18,17,16,15,14" >}} | `is_jsonb_valid` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.4` | {{< pgvers "18,17,16,15,14" >}} | `is_jsonb_valid_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-is-jsonb-valid` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
@ el8.x86_64 18 is_jsonb_valid_18 is_jsonb_valid_18-0.1.4-1PGSTY.el8.x86_64.rpm pigsty 0.1.4 63.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/is_jsonb_valid_18-0.1.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 is_jsonb_valid_18 is_jsonb_valid_18-0.1.4-1PGSTY.el8.aarch64.rpm pigsty 0.1.4 62.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/is_jsonb_valid_18-0.1.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 is_jsonb_valid_18 is_jsonb_valid_18-0.1.4-1PGSTY.el9.x86_64.rpm pigsty 0.1.4 64.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/is_jsonb_valid_18-0.1.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 is_jsonb_valid_18 is_jsonb_valid_18-0.1.4-1PGSTY.el9.aarch64.rpm pigsty 0.1.4 64.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/is_jsonb_valid_18-0.1.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 is_jsonb_valid_18 is_jsonb_valid_18-0.1.4-1PGSTY.el10.x86_64.rpm pigsty 0.1.4 64.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/is_jsonb_valid_18-0.1.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 is_jsonb_valid_18 is_jsonb_valid_18-0.1.4-1PGSTY.el10.aarch64.rpm pigsty 0.1.4 64.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/is_jsonb_valid_18-0.1.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb pigsty 0.1.4 51.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb pigsty 0.1.4 49.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb pigsty 0.1.4 51.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb pigsty 0.1.4 49.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb pigsty 0.1.4 53.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb pigsty 0.1.4 53.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb pigsty 0.1.4 53.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb pigsty 0.1.4 52.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb pigsty 0.1.4 52.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-is-jsonb-valid postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb pigsty 0.1.4 51.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-18-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 is_jsonb_valid_17 is_jsonb_valid_17-0.1.4-1PGSTY.el8.x86_64.rpm pigsty 0.1.4 62.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/is_jsonb_valid_17-0.1.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 is_jsonb_valid_17 is_jsonb_valid_17-0.1.4-1PGSTY.el8.aarch64.rpm pigsty 0.1.4 62.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/is_jsonb_valid_17-0.1.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 is_jsonb_valid_17 is_jsonb_valid_17-0.1.4-1PGSTY.el9.x86_64.rpm pigsty 0.1.4 64.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/is_jsonb_valid_17-0.1.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 is_jsonb_valid_17 is_jsonb_valid_17-0.1.4-1PGSTY.el9.aarch64.rpm pigsty 0.1.4 64.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/is_jsonb_valid_17-0.1.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 is_jsonb_valid_17 is_jsonb_valid_17-0.1.4-1PGSTY.el10.x86_64.rpm pigsty 0.1.4 64.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/is_jsonb_valid_17-0.1.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 is_jsonb_valid_17 is_jsonb_valid_17-0.1.4-1PGSTY.el10.aarch64.rpm pigsty 0.1.4 64.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/is_jsonb_valid_17-0.1.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb pigsty 0.1.4 51.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb pigsty 0.1.4 49.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb pigsty 0.1.4 51.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb pigsty 0.1.4 49.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb pigsty 0.1.4 59.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb pigsty 0.1.4 59.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb pigsty 0.1.4 53.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb pigsty 0.1.4 52.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb pigsty 0.1.4 52.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-is-jsonb-valid postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb pigsty 0.1.4 51.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-17-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 is_jsonb_valid_16 is_jsonb_valid_16-0.1.4-1PGSTY.el8.x86_64.rpm pigsty 0.1.4 62.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/is_jsonb_valid_16-0.1.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 is_jsonb_valid_16 is_jsonb_valid_16-0.1.4-1PGSTY.el8.aarch64.rpm pigsty 0.1.4 62.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/is_jsonb_valid_16-0.1.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 is_jsonb_valid_16 is_jsonb_valid_16-0.1.4-1PGSTY.el9.x86_64.rpm pigsty 0.1.4 64.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/is_jsonb_valid_16-0.1.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 is_jsonb_valid_16 is_jsonb_valid_16-0.1.4-1PGSTY.el9.aarch64.rpm pigsty 0.1.4 64.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/is_jsonb_valid_16-0.1.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 is_jsonb_valid_16 is_jsonb_valid_16-0.1.4-1PGSTY.el10.x86_64.rpm pigsty 0.1.4 64.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/is_jsonb_valid_16-0.1.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 is_jsonb_valid_16 is_jsonb_valid_16-0.1.4-1PGSTY.el10.aarch64.rpm pigsty 0.1.4 64.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/is_jsonb_valid_16-0.1.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb pigsty 0.1.4 51.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb pigsty 0.1.4 49.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb pigsty 0.1.4 51.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb pigsty 0.1.4 49.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb pigsty 0.1.4 59.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb pigsty 0.1.4 59.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb pigsty 0.1.4 53.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb pigsty 0.1.4 52.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb pigsty 0.1.4 52.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-is-jsonb-valid postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb pigsty 0.1.4 51.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-16-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 is_jsonb_valid_15 is_jsonb_valid_15-0.1.4-1PGSTY.el8.x86_64.rpm pigsty 0.1.4 62.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/is_jsonb_valid_15-0.1.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 is_jsonb_valid_15 is_jsonb_valid_15-0.1.4-1PGSTY.el8.aarch64.rpm pigsty 0.1.4 62.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/is_jsonb_valid_15-0.1.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 is_jsonb_valid_15 is_jsonb_valid_15-0.1.4-1PGSTY.el9.x86_64.rpm pigsty 0.1.4 64.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/is_jsonb_valid_15-0.1.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 is_jsonb_valid_15 is_jsonb_valid_15-0.1.4-1PGSTY.el9.aarch64.rpm pigsty 0.1.4 63.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/is_jsonb_valid_15-0.1.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 is_jsonb_valid_15 is_jsonb_valid_15-0.1.4-1PGSTY.el10.x86_64.rpm pigsty 0.1.4 64.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/is_jsonb_valid_15-0.1.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 is_jsonb_valid_15 is_jsonb_valid_15-0.1.4-1PGSTY.el10.aarch64.rpm pigsty 0.1.4 64.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/is_jsonb_valid_15-0.1.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb pigsty 0.1.4 51.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb pigsty 0.1.4 49.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb pigsty 0.1.4 50.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb pigsty 0.1.4 49.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb pigsty 0.1.4 60.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb pigsty 0.1.4 59.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb pigsty 0.1.4 53.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb pigsty 0.1.4 52.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb pigsty 0.1.4 52.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-is-jsonb-valid postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb pigsty 0.1.4 51.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-15-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 is_jsonb_valid_14 is_jsonb_valid_14-0.1.4-1PGSTY.el8.x86_64.rpm pigsty 0.1.4 63.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/is_jsonb_valid_14-0.1.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 is_jsonb_valid_14 is_jsonb_valid_14-0.1.4-1PGSTY.el8.aarch64.rpm pigsty 0.1.4 62.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/is_jsonb_valid_14-0.1.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 is_jsonb_valid_14 is_jsonb_valid_14-0.1.4-1PGSTY.el9.x86_64.rpm pigsty 0.1.4 64.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/is_jsonb_valid_14-0.1.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 is_jsonb_valid_14 is_jsonb_valid_14-0.1.4-1PGSTY.el9.aarch64.rpm pigsty 0.1.4 64.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/is_jsonb_valid_14-0.1.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 is_jsonb_valid_14 is_jsonb_valid_14-0.1.4-1PGSTY.el10.x86_64.rpm pigsty 0.1.4 64.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/is_jsonb_valid_14-0.1.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 is_jsonb_valid_14 is_jsonb_valid_14-0.1.4-1PGSTY.el10.aarch64.rpm pigsty 0.1.4 64.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/is_jsonb_valid_14-0.1.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb pigsty 0.1.4 52.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb pigsty 0.1.4 51.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb pigsty 0.1.4 52.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb pigsty 0.1.4 51.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb pigsty 0.1.4 61.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb pigsty 0.1.4 60.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb pigsty 0.1.4 55.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb pigsty 0.1.4 54.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb pigsty 0.1.4 54.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-is-jsonb-valid postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb pigsty 0.1.4 53.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/is-jsonb-valid/postgresql-14-is-jsonb-valid_0.1.4-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `is_jsonb_valid` using `pig build`:

```bash
pig build pkg is_jsonb_valid         # build RPM / DEB packages
```


## Install

You can install `is_jsonb_valid` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install is_jsonb_valid;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y is_jsonb_valid -v 18  # PG 18
pig ext install -y is_jsonb_valid -v 17  # PG 17
pig ext install -y is_jsonb_valid -v 16  # PG 16
pig ext install -y is_jsonb_valid -v 15  # PG 15
pig ext install -y is_jsonb_valid -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y is_jsonb_valid_18       # PG 18
dnf install -y is_jsonb_valid_17       # PG 17
dnf install -y is_jsonb_valid_16       # PG 16
dnf install -y is_jsonb_valid_15       # PG 15
dnf install -y is_jsonb_valid_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-is-jsonb-valid   # PG 18
apt install -y postgresql-17-is-jsonb-valid   # PG 17
apt install -y postgresql-16-is-jsonb-valid   # PG 16
apt install -y postgresql-15-is-jsonb-valid   # PG 15
apt install -y postgresql-14-is-jsonb-valid   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION is_jsonb_valid;
```

## Usage

Sources:

- [Official README at the catalog source revision](https://github.com/furstenheim/is_jsonb_valid/blob/3afa28d70500791a233dc17c919d6136b83cb2ef/README.md)
- [Extension control file at the catalog source revision](https://github.com/furstenheim/is_jsonb_valid/blob/3afa28d70500791a233dc17c919d6136b83cb2ef/is_jsonb_valid.control)
- [Version 0.1.4 extension SQL](https://github.com/furstenheim/is_jsonb_valid/blob/3afa28d70500791a233dc17c919d6136b83cb2ef/is_jsonb_valid--0.1.4.sql)
- [PGXN distribution page](https://pgxn.org/dist/is_jsonb_valid/)

is_jsonb_valid provides native boolean validation of JSONB values against JSON Schema Draft 4 or Draft 7. It is suitable for checks and predicates that need only pass/fail output; it does not return a path or diagnostic explaining a failed keyword.

### Core Workflow

Choose the function that matches the schema draft and pass the schema first, followed by the value being validated.

```sql
CREATE EXTENSION is_jsonb_valid;

SELECT is_jsonb_valid(
    '{"type":"object","required":["id"],"properties":{"id":{"type":"integer"}}}'::jsonb,
    '{"id":42}'::jsonb
);

SELECT is_jsonb_valid_draft_v7(
    '{"if":{"exclusiveMaximum":0},"else":{"multipleOf":2}}'::jsonb,
    '4'::jsonb
);
```

The two functions are strict and immutable in version 0.1.4. This makes them usable in constraints and indexes when the schema is stable.

```sql
CREATE TABLE events (
    payload jsonb NOT NULL,
    CONSTRAINT events_payload_valid CHECK (
        is_jsonb_valid(
            '{"type":"object","required":["id"]}'::jsonb,
            payload
        )
    )
);
```

### Draft Boundary and Limitations

The base validator follows Draft 4; the explicitly named alternative follows Draft 7. Select deliberately, because keyword meaning differs between drafts and the extension does not infer the draft from a schema declaration.

At the pinned revision, remote references are unsupported. Local references are limited to definitions reachable from the schema root, and identifier changes along a reference chain are not resolved. Format validation is also unsupported. These gaps mean a true result is only a claim about the implemented subset, not every behavior in the complete JSON Schema specifications.

No preload or restart is declared. Keep schema literals and application expectations under version control, and add representative valid and invalid cases whenever a constraint depends on this extension.
