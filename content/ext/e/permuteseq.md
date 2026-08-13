---
title: "permuteseq"
linkTitle: "permuteseq"
description: "Pseudo-randomly permute sequences with a format-preserving encryption on elements"
weight: 4540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dverite/permuteseq">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dverite/permuteseq</div>
    <div class="ext-card__desc">https://github.com/dverite/permuteseq</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/permuteseq-1.2.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">permuteseq-1.2.2.tar.gz</div>
    <div class="ext-card__desc">permuteseq-1.2.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`permuteseq`**](/ext/e/permuteseq) | `1.2.2` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4540  | [**`permuteseq`**](/ext/e/permuteseq) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`sequential_uuids`](/ext/e/sequential_uuids) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`snowflake`](/ext/e/snowflake) [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`uuid-ossp`](/ext/e/uuid-ossp) [`pg_uuid_v8`](/ext/e/pg_uuid_v8) [`typeid`](/ext/e/typeid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "18,17,16,15,14" >}} | `permuteseq` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "18,17,16,15,14" >}} | `permuteseq_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-permuteseq` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| el8.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 | AVAIL PIGSTY 1.2.2 1 |
@ el8.x86_64 18 permuteseq_18 permuteseq_18-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/permuteseq_18-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 permuteseq_18 permuteseq_18-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/permuteseq_18-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 permuteseq_18 permuteseq_18-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/permuteseq_18-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 permuteseq_18 permuteseq_18-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/permuteseq_18-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 permuteseq_18 permuteseq_18-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/permuteseq_18-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 permuteseq_18 permuteseq_18-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/permuteseq_18-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 15.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 15.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 15.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 15.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 15.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-permuteseq postgresql-18-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-18-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 permuteseq_17 permuteseq_17-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/permuteseq_17-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 permuteseq_17 permuteseq_17-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/permuteseq_17-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 permuteseq_17 permuteseq_17-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/permuteseq_17-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 permuteseq_17 permuteseq_17-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/permuteseq_17-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 permuteseq_17 permuteseq_17-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 13.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/permuteseq_17-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 permuteseq_17 permuteseq_17-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/permuteseq_17-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 15.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 15.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 16.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 16.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 15.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-permuteseq postgresql-17-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-17-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 permuteseq_16 permuteseq_16-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/permuteseq_16-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 permuteseq_16 permuteseq_16-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/permuteseq_16-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 permuteseq_16 permuteseq_16-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/permuteseq_16-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 permuteseq_16 permuteseq_16-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/permuteseq_16-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 permuteseq_16 permuteseq_16-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 13.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/permuteseq_16-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 permuteseq_16 permuteseq_16-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/permuteseq_16-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 15.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 15.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 16.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 16.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 15.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-permuteseq postgresql-16-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-16-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 permuteseq_15 permuteseq_15-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 13.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/permuteseq_15-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 permuteseq_15 permuteseq_15-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/permuteseq_15-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 permuteseq_15 permuteseq_15-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 12.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/permuteseq_15-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 permuteseq_15 permuteseq_15-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 12.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/permuteseq_15-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 permuteseq_15 permuteseq_15-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 12.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/permuteseq_15-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 permuteseq_15 permuteseq_15-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 13.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/permuteseq_15-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 14.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 14.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 14.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 14.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 15.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 14.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 15.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-permuteseq postgresql-15-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 15.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-15-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 permuteseq_14 permuteseq_14-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 13.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/permuteseq_14-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 permuteseq_14 permuteseq_14-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/permuteseq_14-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 permuteseq_14 permuteseq_14-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 12.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/permuteseq_14-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 permuteseq_14 permuteseq_14-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 12.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/permuteseq_14-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 permuteseq_14 permuteseq_14-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 12.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/permuteseq_14-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 permuteseq_14 permuteseq_14-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 13.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/permuteseq_14-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 14.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 14.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 14.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 14.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 15.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 15.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 15.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 14.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb pigsty 1.2.2 15.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-permuteseq postgresql-14-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb pigsty 1.2.2 15.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/permuteseq/postgresql-14-permuteseq_1.2.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `permuteseq` using `pig build`:

```bash
pig build pkg permuteseq         # build RPM / DEB packages
```


## Install

You can install `permuteseq` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install permuteseq;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y permuteseq -v 18  # PG 18
pig ext install -y permuteseq -v 17  # PG 17
pig ext install -y permuteseq -v 16  # PG 16
pig ext install -y permuteseq -v 15  # PG 15
pig ext install -y permuteseq -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y permuteseq_18       # PG 18
dnf install -y permuteseq_17       # PG 17
dnf install -y permuteseq_16       # PG 16
dnf install -y permuteseq_15       # PG 15
dnf install -y permuteseq_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-permuteseq   # PG 18
apt install -y postgresql-17-permuteseq   # PG 17
apt install -y postgresql-16-permuteseq   # PG 16
apt install -y postgresql-15-permuteseq   # PG 15
apt install -y postgresql-14-permuteseq   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION permuteseq;
```




## Usage

> [permuteseq: scalable pseudo-random permutations of sequences](https://github.com/dverite/permuteseq)

Generate unique, non-sequential, random-looking series of numbers without storing previous values. Uses a Feistel cipher with cycle-walking for format-preserving encryption.

```sql
CREATE EXTENSION permuteseq;
```

### Functions

| Function | Description |
|---|---|
| `permute_nextval(seq_oid, crypt_key bigint)` | Advance sequence and return encrypted value within sequence bounds |
| `reverse_permute(seq_oid, value bigint, crypt_key bigint)` | Compute original value from its permuted element |
| `range_encrypt_element(clear_val bigint, min_val bigint, max_val bigint, crypt_key bigint)` | Encrypt a bigint in a given range |
| `range_decrypt_element(crypt_val bigint, min_val bigint, max_val bigint, crypt_key bigint)` | Decrypt a previously encrypted value |

### Examples

```sql
CREATE SEQUENCE s MINVALUE -10000 MAXVALUE 15000;

-- Generate random-looking unique values from a sequence
SELECT permute_nextval('s'::regclass, 123456789012345)
  FROM generate_series(1, 10);

-- Reverse a permuted value back to the original
SELECT reverse_permute('s'::regclass, -545, 123456789012345);
-- -10000

-- Encrypt/decrypt within an arbitrary range
SELECT range_encrypt_element(91919191919, 1e10::bigint, 1e11::bigint, 123456789012345);
-- 83028080992

SELECT range_decrypt_element(83028080992, 1e10::bigint, 1e11::bigint, 123456789012345);
-- 91919191919
```
