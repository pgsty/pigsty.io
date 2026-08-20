---
title: "pg_slug_gen"
linkTitle: "pg_slug_gen"
description: "Generate cryptographically secure timestamp-based slugs"
weight: 4560
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/nandoolle/pg_slug_gen">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">nandoolle/pg_slug_gen</div>
    <div class="ext-card__desc">https://github.com/nandoolle/pg_slug_gen</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_slug_gen-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_slug_gen-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_slug_gen-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_slug_gen`**](/ext/e/pg_slug_gen) | `1.0.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4560  | [**`pg_slug_gen`**](/ext/e/pg_slug_gen) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`base36`](/ext/e/base36) [`base62`](/ext/e/base62) [`pg_base58`](/ext/e/pg_base58) [`pg_hashids`](/ext/e/pg_hashids) [`typeid`](/ext/e/typeid) [`url_encode`](/ext/e/url_encode) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `pg_slug_gen` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `pg_slug_gen_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-slug-gen` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 12.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_slug_gen` using `pig build`:

```bash
pig build pkg pg_slug_gen         # build RPM / DEB packages
```


## Install

You can install `pg_slug_gen` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_slug_gen;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_slug_gen -v 18  # PG 18
pig ext install -y pg_slug_gen -v 17  # PG 17
pig ext install -y pg_slug_gen -v 16  # PG 16
pig ext install -y pg_slug_gen -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_slug_gen_18       # PG 18
dnf install -y pg_slug_gen_17       # PG 17
dnf install -y pg_slug_gen_16       # PG 16
dnf install -y pg_slug_gen_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-slug-gen   # PG 18
apt install -y postgresql-17-pg-slug-gen   # PG 17
apt install -y postgresql-16-pg-slug-gen   # PG 16
apt install -y postgresql-15-pg-slug-gen   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_slug_gen;
```




## Usage

Sources: [repo README](https://github.com/nandoolle/pg_slug_gen), [official PGXN release page](https://pgxn.org/dist/pg_slug_gen/), [official release README](https://api.pgxn.org/src/pg_slug_gen/pg_slug_gen-1.0.0/README.md), [official release SQL](https://api.pgxn.org/src/pg_slug_gen/pg_slug_gen-1.0.0/sql/pg_slug_gen--1.0.sql), [official release metadata](https://api.pgxn.org/src/pg_slug_gen/pg_slug_gen-1.0.0/META.json)

`pg_slug_gen` generates timestamp-based slugs with cryptographic randomness. The official 1.0.0 release describes it as a secure, URL-friendly short ID generator where the requested length selects the timestamp precision.

```sql
CREATE EXTENSION pg_slug_gen;

SELECT gen_random_slug();
SELECT gen_random_slug(13);
```

### Function

- `gen_random_slug(slug_length int DEFAULT 16) returns text`

The release SQL comment and README document these supported values:

- `10`: seconds
- `13`: milliseconds
- `16`: microseconds, also the default
- `19`: nanoseconds

### Precision And Format

Each precision maps to a timestamp width and a fixed slug shape:

- `10` digits: `5-5` format, 11 characters total
- `13` digits: `6-7` format, 14 characters total
- `16` digits: `8-8` format, 17 characters total
- `19` digits: `9-10` format, 20 characters total

The README states the collision-free window is bounded by timestamp precision: at most 1 insert per second, millisecond, microsecond, or nanosecond respectively.

### Examples

```sql
SELECT gen_random_slug();
SELECT gen_random_slug(10);
SELECT gen_random_slug(16);

CREATE TABLE products (
  id serial PRIMARY KEY,
  name text NOT NULL,
  slug text DEFAULT gen_random_slug() UNIQUE
);
```

### How It Works

The official README describes this algorithm:

- take the current timestamp at the chosen precision
- map each digit to a QWERTY-based character bucket
- choose one random character from that bucket with `pg_strong_random()`
- insert a hyphen at the midpoint

### Caveats

- This is a secure short-ID generator, not a text transliteration or title-to-URL slugifier.
- Same-timestamp collisions are still possible; upstream only claims uniqueness when inserts do not exceed one per chosen time unit.
- The catalog URL is the current `https://github.com/nandoolle/pg_slug_gen` repository; the PGXN release metadata still points to the older `fernandoolle` GitHub URL.
- The curated package matrix targets PostgreSQL 15 through 18, while PGXN metadata only declares a minimum PostgreSQL version. Use the catalog matrix for packaged availability.
