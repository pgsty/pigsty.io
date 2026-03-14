---
title: "pgjwt"
linkTitle: "pgjwt"
description: "JSON Web Token API for Postgresql"
weight: 4160
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/michelp/pgjwt">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">michelp/pgjwt</div>
    <div class="ext-card__desc">https://github.com/michelp/pgjwt</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgjwt-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgjwt-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pgjwt-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgjwt`**](/ext/e/pgjwt) | `0.2.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4160  | [**`pgjwt`**](/ext/e/pgjwt) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgcrypto`](/ext/e/pgcrypto) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) [`pgjq`](/ext/e/pgjq) [`sparql`](/ext/e/sparql) [`pgcrypto`](/ext/e/pgcrypto) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pgjwt` | `pgcrypto` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pgjwt_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgjwt` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
@ el8.x86_64 18 pgjwt_18 pgjwt_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjwt_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgjwt_18 pgjwt_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjwt_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgjwt_18 pgjwt_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjwt_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgjwt_18 pgjwt_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjwt_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgjwt_18 pgjwt_18-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 9.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjwt_18-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgjwt_18 pgjwt_18-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjwt_18-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgjwt postgresql-18-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-18-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgjwt_17 pgjwt_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjwt_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgjwt_17 pgjwt_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjwt_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgjwt_17 pgjwt_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjwt_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgjwt_17 pgjwt_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjwt_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgjwt_17 pgjwt_17-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 9.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjwt_17-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgjwt_17 pgjwt_17-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjwt_17-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgjwt postgresql-17-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-17-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgjwt_16 pgjwt_16-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjwt_16-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgjwt_16 pgjwt_16-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjwt_16-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgjwt_16 pgjwt_16-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjwt_16-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgjwt_16 pgjwt_16-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjwt_16-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgjwt_16 pgjwt_16-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 9.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjwt_16-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgjwt_16 pgjwt_16-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjwt_16-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgjwt postgresql-16-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-16-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgjwt_15 pgjwt_15-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjwt_15-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgjwt_15 pgjwt_15-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjwt_15-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgjwt_15 pgjwt_15-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjwt_15-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgjwt_15 pgjwt_15-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjwt_15-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgjwt_15 pgjwt_15-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 9.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjwt_15-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgjwt_15 pgjwt_15-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjwt_15-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgjwt postgresql-15-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-15-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgjwt_14 pgjwt_14-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgjwt_14-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgjwt_14 pgjwt_14-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgjwt_14-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgjwt_14 pgjwt_14-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgjwt_14-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgjwt_14 pgjwt_14-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgjwt_14-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgjwt_14 pgjwt_14-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 9.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgjwt_14-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgjwt_14 pgjwt_14-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgjwt_14-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 4.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgjwt postgresql-14-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 4.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgjwt/postgresql-14-pgjwt_0.2.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgjwt` using `pig build`:

```bash
pig build pkg pgjwt         # build RPM / DEB packages
```


## Install

You can install `pgjwt` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgjwt;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgjwt -v 18  # PG 18
pig ext install -y pgjwt -v 17  # PG 17
pig ext install -y pgjwt -v 16  # PG 16
pig ext install -y pgjwt -v 15  # PG 15
pig ext install -y pgjwt -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgjwt_18       # PG 18
dnf install -y pgjwt_17       # PG 17
dnf install -y pgjwt_16       # PG 16
dnf install -y pgjwt_15       # PG 15
dnf install -y pgjwt_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgjwt   # PG 18
apt install -y postgresql-17-pgjwt   # PG 17
apt install -y postgresql-16-pgjwt   # PG 16
apt install -y postgresql-15-pgjwt   # PG 15
apt install -y postgresql-14-pgjwt   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgjwt CASCADE;  -- requires: pgcrypto
```




## Usage

> [pgjwt: JSON Web Tokens for PostgreSQL](https://github.com/michelp/pgjwt)

Requires the `pgcrypto` extension.

### Sign a Token

```sql
SELECT sign(
    '{"sub":"1234567890","name":"John Doe","admin":true}',
    'secret'
);
```

Returns a JWT string like: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOi...`

### Verify a Token

```sql
SELECT * FROM verify(
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWV9.TJVA95OrM7E2cBab30RMHrHDcEfxjoYZgeFONFh7HgQ',
    'secret'
);
```

Returns:

| header | payload | valid |
|--------|---------|-------|
| `{"alg":"HS256","typ":"JWT"}` | `{"sub":"1234567890","name":"John Doe","admin":true}` | `t` |

### Algorithm Selection

`sign()` and `verify()` accept an optional third argument for the algorithm: `'HS256'` (default), `'HS384'`, or `'HS512'`.

```sql
SELECT sign('{"data":"value"}', 'secret', 'HS384');
```
