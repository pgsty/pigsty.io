---
title: "meta"
linkTitle: "meta"
description: "Normalized, friendlier system catalog for PostgreSQL"
weight: 6430
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/aquameta/meta">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">aquameta/meta</div>
    <div class="ext-card__desc">https://github.com/aquameta/meta</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/meta-0.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">meta-0.4.0.tar.gz</div>
    <div class="ext-card__desc">meta-0.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_meta`**](/ext/e/meta) | `0.4.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6430  | [**`meta`**](/ext/e/meta) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `meta` |
{.ext-table}

| **Related** | [`ddlx`](/ext/e/ddlx) [`pg_readme`](/ext/e/pg_readme) [`pgdd`](/ext/e/pgdd) [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_checksums`](/ext/e/pg_checksums) [`pg_render`](/ext/e/pg_render) [`pg_get_functiondef`](/ext/e/pg_get_functiondef) [`amcheck`](/ext/e/amcheck) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`schedoc`](/ext/e/schedoc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_meta` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_meta_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-meta` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
@ el8.x86_64 18 pg_meta_18 pg_meta_18-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_meta_18-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_meta_18 pg_meta_18-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_meta_18-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_meta_18 pg_meta_18-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_meta_18-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_meta_18 pg_meta_18-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 15.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_meta_18-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_meta_18 pg_meta_18-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_meta_18-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_meta_18 pg_meta_18-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_meta_18-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-meta postgresql-18-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-18-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_meta_17 pg_meta_17-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_meta_17-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_meta_17 pg_meta_17-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_meta_17-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_meta_17 pg_meta_17-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_meta_17-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_meta_17 pg_meta_17-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 15.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_meta_17-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_meta_17 pg_meta_17-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_meta_17-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_meta_17 pg_meta_17-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_meta_17-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-meta postgresql-17-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-17-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_meta_16 pg_meta_16-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_meta_16-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_meta_16 pg_meta_16-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_meta_16-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_meta_16 pg_meta_16-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_meta_16-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_meta_16 pg_meta_16-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 15.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_meta_16-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_meta_16 pg_meta_16-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_meta_16-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_meta_16 pg_meta_16-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_meta_16-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-meta postgresql-16-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-16-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_meta_15 pg_meta_15-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_meta_15-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_meta_15 pg_meta_15-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_meta_15-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_meta_15 pg_meta_15-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_meta_15-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_meta_15 pg_meta_15-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 15.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_meta_15-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_meta_15 pg_meta_15-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_meta_15-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_meta_15 pg_meta_15-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_meta_15-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-meta postgresql-15-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-15-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_meta_14 pg_meta_14-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_meta_14-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_meta_14 pg_meta_14-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_meta_14-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_meta_14 pg_meta_14-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_meta_14-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_meta_14 pg_meta_14-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 15.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_meta_14-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_meta_14 pg_meta_14-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_meta_14-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_meta_14 pg_meta_14-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_meta_14-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-meta postgresql-14-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-meta/postgresql-14-pg-meta_0.4.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_meta` using `pig build`:

```bash
pig build pkg pg_meta         # build RPM / DEB packages
```


## Install

You can install `pg_meta` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_meta;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_meta -v 18  # PG 18
pig ext install -y pg_meta -v 17  # PG 17
pig ext install -y pg_meta -v 16  # PG 16
pig ext install -y pg_meta -v 15  # PG 15
pig ext install -y pg_meta -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_meta_18       # PG 18
dnf install -y pg_meta_17       # PG 17
dnf install -y pg_meta_16       # PG 16
dnf install -y pg_meta_15       # PG 15
dnf install -y pg_meta_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-meta   # PG 18
apt install -y postgresql-17-pg-meta   # PG 17
apt install -y postgresql-16-pg-meta   # PG 16
apt install -y postgresql-15-pg-meta   # PG 15
apt install -y postgresql-14-pg-meta   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION meta;
```




## Usage

> [meta: simplified system catalog for PostgreSQL](https://github.com/aquameta/meta)

meta provides a normalized, human-friendly system catalog with common names for views and columns, sitting on top of `pg_catalog` and `information_schema`.

### System Catalog Views

The extension creates approximately 30 views in the `meta` schema:

```sql
-- List all tables
SELECT * FROM meta.table;

-- List all columns
SELECT * FROM meta.column;

-- List all views
SELECT * FROM meta.view;

-- List schemas
SELECT * FROM meta.schema;

-- List functions
SELECT * FROM meta.function;

-- List extensions
SELECT * FROM meta.extension;

-- List triggers
SELECT * FROM meta.trigger;

-- List foreign keys
SELECT * FROM meta.foreign_key;

-- List constraints
SELECT * FROM meta.constraint_check;
SELECT * FROM meta.constraint_unique;

-- List types
SELECT * FROM meta.type;

-- List roles
SELECT * FROM meta.role;

-- List sequences
SELECT * FROM meta.sequence;

-- List operators
SELECT * FROM meta.operator;

-- List policies
SELECT * FROM meta.policy;
```

### Available Views

`cast`, `column`, `connection`, `constraint_check`, `constraint_unique`, `extension`, `foreign_column`, `foreign_data_wrapper`, `foreign_key`, `foreign_server`, `foreign_table`, `function`, `function_parameter`, `operator`, `policy`, `policy_role`, `relation`, `relation_column`, `role`, `role_inheritance`, `schema`, `sequence`, `table`, `table_privilege`, `trigger`, `type`, `view`

### Meta-Identifiers

The extension provides composite types that serve as "soft" primary keys to identify PostgreSQL objects by name (tables, columns, types, etc.) rather than by OID.

### Catalog Triggers (Optional)

With the optional `meta_triggers` extension, views become updatable, enabling DDL via DML:

```sql
-- Create a table via INSERT
INSERT INTO meta.table (schema_name, name) VALUES ('public', 'foo');
```
