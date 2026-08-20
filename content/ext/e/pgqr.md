---
title: "pgqr"
linkTitle: "pgqr"
description: "QR Code generator from PostgreSQL"
weight: 4250
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/AbdulYadi/pgqr">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">AbdulYadi/pgqr</div>
    <div class="ext-card__desc">https://github.com/AbdulYadi/pgqr</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgqr-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgqr-1.0.tar.gz</div>
    <div class="ext-card__desc">pgqr-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgqr`**](/ext/e/pgqr) | `1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4250  | [**`pgqr`**](/ext/e/pgqr) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`base36`](/ext/e/base36) [`base62`](/ext/e/base62) [`pg_base58`](/ext/e/pg_base58) [`pg_hashids`](/ext/e/pg_hashids) [`url_encode`](/ext/e/url_encode) [`pg_slug_gen`](/ext/e/pg_slug_gen) [`typeid`](/ext/e/typeid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgqr` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgqr_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgqr` | - |
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
@ el8.x86_64 18 pgqr_18 pgqr_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgqr_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgqr_18 pgqr_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgqr_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgqr_18 pgqr_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 24.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgqr_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgqr_18 pgqr_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 23.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgqr_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgqr_18 pgqr_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 24.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgqr_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgqr_18 pgqr_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 23.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgqr_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 47.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 46.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 48.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 46.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 50.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 48.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 50.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 49.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 50.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgqr postgresql-18-pgqr_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 49.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-18-pgqr_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgqr_17 pgqr_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgqr_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgqr_17 pgqr_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgqr_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgqr_17 pgqr_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 24.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgqr_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgqr_17 pgqr_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 23.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgqr_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgqr_17 pgqr_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 24.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgqr_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgqr_17 pgqr_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 23.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgqr_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 47.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 46.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 48.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 46.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 50.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 49.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 49.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 49.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 50.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgqr postgresql-17-pgqr_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 49.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-17-pgqr_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgqr_16 pgqr_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgqr_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgqr_16 pgqr_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgqr_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgqr_16 pgqr_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 23.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgqr_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgqr_16 pgqr_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 23.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgqr_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgqr_16 pgqr_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 24.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgqr_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgqr_16 pgqr_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 23.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgqr_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 47.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 46.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 48.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 46.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 50.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 49.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 50.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 49.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 50.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgqr postgresql-16-pgqr_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 49.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-16-pgqr_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgqr_15 pgqr_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 24.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgqr_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgqr_15 pgqr_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 24.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgqr_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgqr_15 pgqr_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 24.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgqr_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgqr_15 pgqr_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgqr_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgqr_15 pgqr_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 25.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgqr_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgqr_15 pgqr_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgqr_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 47.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 46.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 48.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 46.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 51.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 50.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 50.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 49.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 51.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgqr postgresql-15-pgqr_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 50.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-15-pgqr_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgqr_14 pgqr_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 24.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgqr_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgqr_14 pgqr_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 24.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgqr_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgqr_14 pgqr_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 24.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgqr_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgqr_14 pgqr_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgqr_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgqr_14 pgqr_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 25.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgqr_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgqr_14 pgqr_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 24.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgqr_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 47.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 46.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 48.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 46.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 51.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 50.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 50.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 49.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 51.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgqr postgresql-14-pgqr_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 50.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgqr/postgresql-14-pgqr_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgqr` using `pig build`:

```bash
pig build pkg pgqr         # build RPM / DEB packages
```


## Install

You can install `pgqr` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pgqr;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgqr -v 18  # PG 18
pig ext install -y pgqr -v 17  # PG 17
pig ext install -y pgqr -v 16  # PG 16
pig ext install -y pgqr -v 15  # PG 15
pig ext install -y pgqr -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgqr_18       # PG 18
dnf install -y pgqr_17       # PG 17
dnf install -y pgqr_16       # PG 16
dnf install -y pgqr_15       # PG 15
dnf install -y pgqr_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgqr   # PG 18
apt install -y postgresql-17-pgqr   # PG 17
apt install -y postgresql-16-pgqr   # PG 16
apt install -y postgresql-15-pgqr   # PG 15
apt install -y postgresql-14-pgqr   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgqr;
```




## Usage

> [pgqr: QR code generation for PostgreSQL](https://github.com/AbdulYadi/pgqr)

### Function

```sql
pgqr(t text, correction_level integer, model_number integer, scale integer) RETURNS bytea
```

Parameters:
- `t` -- text to encode into the QR code
- `correction_level` -- error correction level: 0 to 3
- `model_number` -- QR model number: 0 to 2
- `scale` -- pixels per dot (scaling factor)

### Example

Generate a QR code as a monochrome bitmap:

```sql
SELECT pgqr('QR Code with PostgreSQL', 0, 0, 4);
```

The output is a monochrome bitmap image (BMP format) returned as `bytea`, ready for display or storage.
