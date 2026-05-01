---
title: "pg_text_semver"
linkTitle: "pg_text_semver"
description: "Semantic version domain and comparison operators for PostgreSQL"
weight: 3520
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_text_semver">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_text_semver</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_text_semver</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_text_semver-1.2.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_text_semver-1.2.1.tar.gz</div>
    <div class="ext-card__desc">pg_text_semver-1.2.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_text_semver`**](/ext/e/pg_text_semver) | `1.2.1` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3520  | [**`pg_text_semver`**](/ext/e/pg_text_semver) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_text_semver` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_text_semver_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-text-semver` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
@ el8.x86_64 18 pg_text_semver_18 pg_text_semver_18-1.2.1-1PIGSTY.el8.x86_64.rpm pigsty 1.2.1 22.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_text_semver_18-1.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_text_semver_18 pg_text_semver_18-1.2.1-1PIGSTY.el8.aarch64.rpm pigsty 1.2.1 21.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_text_semver_18-1.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_text_semver_18 pg_text_semver_18-1.2.1-1PIGSTY.el9.x86_64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_text_semver_18-1.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_text_semver_18 pg_text_semver_18-1.2.1-1PIGSTY.el9.aarch64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_text_semver_18-1.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_text_semver_18 pg_text_semver_18-1.2.1-1PIGSTY.el10.x86_64.rpm pigsty 1.2.1 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_text_semver_18-1.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_text_semver_18 pg_text_semver_18-1.2.1-1PIGSTY.el10.aarch64.rpm pigsty 1.2.1 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_text_semver_18-1.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-text-semver postgresql-18-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-18-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_text_semver_17 pg_text_semver_17-1.2.1-1PIGSTY.el8.x86_64.rpm pigsty 1.2.1 22.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_text_semver_17-1.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_text_semver_17 pg_text_semver_17-1.2.1-1PIGSTY.el8.aarch64.rpm pigsty 1.2.1 21.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_text_semver_17-1.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_text_semver_17 pg_text_semver_17-1.2.1-1PIGSTY.el9.x86_64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_text_semver_17-1.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_text_semver_17 pg_text_semver_17-1.2.1-1PIGSTY.el9.aarch64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_text_semver_17-1.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_text_semver_17 pg_text_semver_17-1.2.1-1PIGSTY.el10.x86_64.rpm pigsty 1.2.1 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_text_semver_17-1.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_text_semver_17 pg_text_semver_17-1.2.1-1PIGSTY.el10.aarch64.rpm pigsty 1.2.1 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_text_semver_17-1.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-text-semver postgresql-17-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-17-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_text_semver_16 pg_text_semver_16-1.2.1-1PIGSTY.el8.x86_64.rpm pigsty 1.2.1 22.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_text_semver_16-1.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_text_semver_16 pg_text_semver_16-1.2.1-1PIGSTY.el8.aarch64.rpm pigsty 1.2.1 21.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_text_semver_16-1.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_text_semver_16 pg_text_semver_16-1.2.1-1PIGSTY.el9.x86_64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_text_semver_16-1.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_text_semver_16 pg_text_semver_16-1.2.1-1PIGSTY.el9.aarch64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_text_semver_16-1.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_text_semver_16 pg_text_semver_16-1.2.1-1PIGSTY.el10.x86_64.rpm pigsty 1.2.1 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_text_semver_16-1.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_text_semver_16 pg_text_semver_16-1.2.1-1PIGSTY.el10.aarch64.rpm pigsty 1.2.1 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_text_semver_16-1.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-text-semver postgresql-16-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-16-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_text_semver_15 pg_text_semver_15-1.2.1-1PIGSTY.el8.x86_64.rpm pigsty 1.2.1 22.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_text_semver_15-1.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_text_semver_15 pg_text_semver_15-1.2.1-1PIGSTY.el8.aarch64.rpm pigsty 1.2.1 21.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_text_semver_15-1.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_text_semver_15 pg_text_semver_15-1.2.1-1PIGSTY.el9.x86_64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_text_semver_15-1.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_text_semver_15 pg_text_semver_15-1.2.1-1PIGSTY.el9.aarch64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_text_semver_15-1.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_text_semver_15 pg_text_semver_15-1.2.1-1PIGSTY.el10.x86_64.rpm pigsty 1.2.1 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_text_semver_15-1.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_text_semver_15 pg_text_semver_15-1.2.1-1PIGSTY.el10.aarch64.rpm pigsty 1.2.1 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_text_semver_15-1.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb pigsty 1.2.1 19.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb pigsty 1.2.1 19.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-text-semver postgresql-15-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-15-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_text_semver_14 pg_text_semver_14-1.2.1-1PIGSTY.el8.x86_64.rpm pigsty 1.2.1 22.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_text_semver_14-1.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_text_semver_14 pg_text_semver_14-1.2.1-1PIGSTY.el8.aarch64.rpm pigsty 1.2.1 21.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_text_semver_14-1.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_text_semver_14 pg_text_semver_14-1.2.1-1PIGSTY.el9.x86_64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_text_semver_14-1.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_text_semver_14 pg_text_semver_14-1.2.1-1PIGSTY.el9.aarch64.rpm pigsty 1.2.1 21.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_text_semver_14-1.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_text_semver_14 pg_text_semver_14-1.2.1-1PIGSTY.el10.x86_64.rpm pigsty 1.2.1 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_text_semver_14-1.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_text_semver_14 pg_text_semver_14-1.2.1-1PIGSTY.el10.aarch64.rpm pigsty 1.2.1 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_text_semver_14-1.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb pigsty 1.2.1 19.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb pigsty 1.2.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-text-semver postgresql-14-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb pigsty 1.2.1 19.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-text-semver/postgresql-14-pg-text-semver_1.2.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_text_semver` using `pig build`:

```bash
pig build pkg pg_text_semver         # build RPM / DEB packages
```


## Install

You can install `pg_text_semver` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_text_semver;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_text_semver -v 18  # PG 18
pig ext install -y pg_text_semver -v 17  # PG 17
pig ext install -y pg_text_semver -v 16  # PG 16
pig ext install -y pg_text_semver -v 15  # PG 15
pig ext install -y pg_text_semver -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_text_semver_18       # PG 18
dnf install -y pg_text_semver_17       # PG 17
dnf install -y pg_text_semver_16       # PG 16
dnf install -y pg_text_semver_15       # PG 15
dnf install -y pg_text_semver_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-text-semver   # PG 18
apt install -y postgresql-17-pg-text-semver   # PG 17
apt install -y postgresql-16-pg-text-semver   # PG 16
apt install -y postgresql-15-pg-text-semver   # PG 15
apt install -y postgresql-14-pg-text-semver   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_text_semver;
```

## Usage

Source: [README](https://github.com/bigsmoke/pg_text_semver/blob/master/README.md), [META.json](https://github.com/bigsmoke/pg_text_semver/blob/master/META.json), [Tag v1.2.1](https://github.com/bigsmoke/pg_text_semver/tree/v1.2.1)

`pg_text_semver` implements Semantic Versioning 2.0.0 on top of PostgreSQL `text` using a `semver` domain rather than a custom C type.

### Core types and functions

```sql
CREATE EXTENSION pg_text_semver;

SELECT '1.2.3'::semver < '2.0.0'::semver;
SELECT semver_cmp('1.2.3'::semver, '1.2.4'::semver);
SELECT semver_regexp(true);
SELECT '1.2.3-alpha.1+build5'::semver::semver_parsed;
```

- `semver`: domain over `text` with SemVer validation.
- `semver_parsed`: parsed composite type that supports sorting and indexing.
- `semver_prerelease`: domain for prerelease identifiers.
- `semver_cmp(...)`: comparison function for `semver` and `semver_parsed`.
- `semver_regexp(include_captures boolean)`: exposes the validation regex.

### Extra helpers

The current README also documents PGXN-version-range helpers:

- `meta_pgxn_version_range(text)`
- `meta_pgxn_version_range_cmp(text, text)`
- `nonsemver_cmp(text, text, text)`

### Caveats

- This extension favors a spec-oriented, text-backed implementation over the lower-level C-based alternatives.
- The upstream README remains the authoritative user-facing reference; the current stub already matched that surface closely, so this refresh mainly aligns it with the documented 1.2.1 helper set.
