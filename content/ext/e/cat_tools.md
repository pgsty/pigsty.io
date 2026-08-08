---
title: "cat_tools"
linkTitle: "cat_tools"
description: "Tools for interfacing with the PostgreSQL catalog"
weight: 5290
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Postgres-Extensions/cat_tools">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Postgres-Extensions/cat_tools</div>
    <div class="ext-card__desc">https://github.com/Postgres-Extensions/cat_tools</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/cat_tools-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">cat_tools-0.3.0.tar.gz</div>
    <div class="ext-card__desc">cat_tools-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`cat_tools`**](/ext/e/cat_tools) | `0.3.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5290  | [**`cat_tools`**](/ext/e/cat_tools) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `cat_tools` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) `pg_catalog_get_defs` `pg_global_catalog` `meta_triggers` [`pg_catcheck`](/ext/e/pg_catcheck) [`pgdd`](/ext/e/pgdd) [`ddlx`](/ext/e/ddlx) [`meta`](/ext/e/meta) `object_reference` |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | `extension_drop` `object_reference` |
{.ext-table .ext-table--rel}


> Promoted from a source-only universe row to PIGSTY RPM and DEB packages at 0.3.0; control fixes schema cat_tools and META declares the plpgsql runtime dependency.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "14,15,16,17,18" >}} | `cat_tools` | `plpgsql` |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `cat_tools_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-cat-tools` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
@ el8.x86_64 18 cat_tools_18 cat_tools_18-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cat_tools_18-0.3.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 cat_tools_18 cat_tools_18-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cat_tools_18-0.3.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 cat_tools_18 cat_tools_18-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cat_tools_18-0.3.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 cat_tools_18 cat_tools_18-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cat_tools_18-0.3.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 cat_tools_18 cat_tools_18-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cat_tools_18-0.3.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 cat_tools_18 cat_tools_18-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cat_tools_18-0.3.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-cat-tools postgresql-18-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-18-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 cat_tools_17 cat_tools_17-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cat_tools_17-0.3.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 cat_tools_17 cat_tools_17-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cat_tools_17-0.3.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 cat_tools_17 cat_tools_17-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cat_tools_17-0.3.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 cat_tools_17 cat_tools_17-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cat_tools_17-0.3.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 cat_tools_17 cat_tools_17-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cat_tools_17-0.3.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 cat_tools_17 cat_tools_17-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cat_tools_17-0.3.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-cat-tools postgresql-17-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-17-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 cat_tools_16 cat_tools_16-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cat_tools_16-0.3.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 cat_tools_16 cat_tools_16-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cat_tools_16-0.3.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 cat_tools_16 cat_tools_16-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cat_tools_16-0.3.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 cat_tools_16 cat_tools_16-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cat_tools_16-0.3.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 cat_tools_16 cat_tools_16-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cat_tools_16-0.3.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 cat_tools_16 cat_tools_16-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cat_tools_16-0.3.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-cat-tools postgresql-16-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-16-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 cat_tools_15 cat_tools_15-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cat_tools_15-0.3.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 cat_tools_15 cat_tools_15-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cat_tools_15-0.3.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 cat_tools_15 cat_tools_15-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cat_tools_15-0.3.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 cat_tools_15 cat_tools_15-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cat_tools_15-0.3.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 cat_tools_15 cat_tools_15-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cat_tools_15-0.3.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 cat_tools_15 cat_tools_15-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cat_tools_15-0.3.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-cat-tools postgresql-15-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-15-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 cat_tools_14 cat_tools_14-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cat_tools_14-0.3.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 cat_tools_14 cat_tools_14-0.3.0-1PIGSTY.el8.noarch.rpm pigsty 0.3.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cat_tools_14-0.3.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 cat_tools_14 cat_tools_14-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cat_tools_14-0.3.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 cat_tools_14 cat_tools_14-0.3.0-1PIGSTY.el9.noarch.rpm pigsty 0.3.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cat_tools_14-0.3.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 cat_tools_14 cat_tools_14-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cat_tools_14-0.3.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 cat_tools_14 cat_tools_14-0.3.0-1PIGSTY.el10.noarch.rpm pigsty 0.3.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cat_tools_14-0.3.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~trixie_all.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~jammy_all.deb pigsty 0.3.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~noble_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-cat-tools postgresql-14-cat-tools_0.3.0-1PIGSTY~resolute_all.deb pigsty 0.3.0 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cat-tools/postgresql-14-cat-tools_0.3.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `cat_tools` using `pig build`:

```bash
pig build pkg cat_tools         # build RPM / DEB packages
```


## Install

You can install `cat_tools` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install cat_tools;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y cat_tools -v 18  # PG 18
pig ext install -y cat_tools -v 17  # PG 17
pig ext install -y cat_tools -v 16  # PG 16
pig ext install -y cat_tools -v 15  # PG 15
pig ext install -y cat_tools -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y cat_tools_18       # PG 18
dnf install -y cat_tools_17       # PG 17
dnf install -y cat_tools_16       # PG 16
dnf install -y cat_tools_15       # PG 15
dnf install -y cat_tools_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-cat-tools   # PG 18
apt install -y postgresql-17-cat-tools   # PG 17
apt install -y postgresql-16-cat-tools   # PG 16
apt install -y postgresql-15-cat-tools   # PG 15
apt install -y postgresql-14-cat-tools   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION cat_tools CASCADE;  -- requires: plpgsql
```

## Usage

Sources:

- [cat_tools 0.3.0 README](https://github.com/Postgres-Extensions/cat_tools/blob/0.3.0/README.asc)
- [cat_tools 0.3.0 history](https://github.com/Postgres-Extensions/cat_tools/blob/0.3.0/HISTORY.asc)
- [cat_tools 0.3.0 control file](https://github.com/Postgres-Extensions/cat_tools/blob/0.3.0/cat_tools.control)
- [cat_tools 0.3.0 install SQL](https://github.com/Postgres-Extensions/cat_tools/blob/0.3.0/sql/cat_tools--0.3.0.sql.in)

`cat_tools` provides typed views, enums, and helper functions for PostgreSQL catalog introspection. It is designed for database code that needs a more stable and readable interface than repeatedly decoding raw `pg_catalog` fields; the views still track PostgreSQL's catalogs and must be reviewed across major-version upgrades.

### Install and Grant Access

```sql
CREATE EXTENSION cat_tools;
GRANT cat_tools__usage TO app_introspection;
```

The extension installs in the fixed `cat_tools` schema, requires `plpgsql`, and is not relocatable. Grant the `cat_tools__usage` role rather than exposing internal `_cat_tools` helpers directly.

### Inspect Relations and Columns

```sql
SELECT cat_tools.relation__kind(c.relkind::text)
FROM pg_catalog.pg_class AS c
WHERE c.oid = 'public.orders'::regclass;

SELECT cat_tools.relation__column_names('public.orders'::regclass);
SELECT cat_tools.pg_attribute__get('public.orders'::regclass, 'id');
```

Useful relation helpers include `pg_class(regclass)`, `relation__is_catalog`, `relation__is_temp`, `relation__kind`, and `relation__relkind`. Typed mapping functions make the one-character catalog codes explicit.

### Inspect Routines

Version 0.3 adds functions and types that cover both functions and procedures:

```sql
SELECT cat_tools.routine__arg_types(
  'public.calculate_total(integer, numeric)'::regprocedure
);

SELECT cat_tools.routine__parse_arg_names(
  'IN account_id integer, INOUT total numeric'
);
```

The routine surface includes `routine__parse_arg_types`, `routine__parse_arg_names`, `routine__arg_types`, `routine__arg_names`, their text variants, and mappings for routine kind, argument mode, volatility, and parallel safety. `function__arg_types` and `function__arg_types_text` are deprecated; use the routine parsers.

### Version 0.3.0 and Caveats

- Version 0.3.0 supports PostgreSQL 12-18+ upstream; current Pigsty packages cover PostgreSQL 14-18.
- The release corrects the `c`, `f`, and `m` mappings for composite types, foreign tables, and materialized views. Re-test any code that worked around the old mapping.
- Internal `_cat_tools` helpers now revoke `EXECUTE` from `PUBLIC`; callers should inherit `cat_tools__usage` and use the supported surface.
- The 0.2.3-to-0.3.0 update adds enum values and therefore cannot run on PostgreSQL 11 or earlier. Upgrade the database major version and extension in the order documented upstream.
- PostgreSQL does not promise catalog compatibility across major releases. Pin tests to every supported PostgreSQL major even when using these wrappers.
