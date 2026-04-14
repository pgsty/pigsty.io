---
title: "rdf_fdw"
linkTitle: "rdf_fdw"
description: "Foreign data wrapper for RDF triplestores over SPARQL endpoints"
weight: 8760
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jimjonesbr/rdf_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jimjonesbr/rdf_fdw</div>
    <div class="ext-card__desc">https://github.com/jimjonesbr/rdf_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/rdf_fdw-2.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">rdf_fdw-2.4.0.tar.gz</div>
    <div class="ext-card__desc">rdf_fdw-2.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`rdf_fdw`**](/ext/e/rdf_fdw) | `2.4.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8760  | [**`rdf_fdw`**](/ext/e/rdf_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`postgres_fdw`](/ext/e/postgres_fdw) [`sparql`](/ext/e/sparql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.0` | {{< pgvers "18,17,16,15,14" >}} | `rdf_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.0` | {{< pgvers "18,17,16,15,14" >}} | `rdf_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-rdf-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 |
@ el9.x86_64 18 rdf_fdw_18 rdf_fdw_18-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 138.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_18-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 rdf_fdw_18 rdf_fdw_18-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 134.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_18-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 rdf_fdw_18 rdf_fdw_18-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 139.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_18-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 rdf_fdw_18 rdf_fdw_18-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 135.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_18-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb pigsty 2.4.0 328.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb pigsty 2.4.0 320.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb pigsty 2.4.0 329.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb pigsty 2.4.0 320.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb pigsty 2.4.0 352.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb pigsty 2.4.0 347.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb pigsty 2.4.0 339.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb pigsty 2.4.0 335.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb
@ el9.x86_64 17 rdf_fdw_17 rdf_fdw_17-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 138.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_17-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 rdf_fdw_17 rdf_fdw_17-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 134.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_17-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 rdf_fdw_17 rdf_fdw_17-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 139.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_17-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 rdf_fdw_17 rdf_fdw_17-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 135.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_17-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb pigsty 2.4.0 330.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb pigsty 2.4.0 320.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb pigsty 2.4.0 329.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb pigsty 2.4.0 320.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb pigsty 2.4.0 374.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb pigsty 2.4.0 369.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb pigsty 2.4.0 339.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb pigsty 2.4.0 335.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb
@ el9.x86_64 16 rdf_fdw_16 rdf_fdw_16-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 138.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_16-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 rdf_fdw_16 rdf_fdw_16-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 134.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_16-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 rdf_fdw_16 rdf_fdw_16-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 139.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_16-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 rdf_fdw_16 rdf_fdw_16-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 135.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_16-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb pigsty 2.4.0 328.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb pigsty 2.4.0 320.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb pigsty 2.4.0 328.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb pigsty 2.4.0 320.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb pigsty 2.4.0 372.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb pigsty 2.4.0 367.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb pigsty 2.4.0 339.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb pigsty 2.4.0 335.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb
@ el9.x86_64 15 rdf_fdw_15 rdf_fdw_15-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 140.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_15-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 rdf_fdw_15 rdf_fdw_15-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 136.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_15-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 rdf_fdw_15 rdf_fdw_15-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 141.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_15-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 rdf_fdw_15 rdf_fdw_15-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 138.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_15-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb pigsty 2.4.0 331.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb pigsty 2.4.0 322.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb pigsty 2.4.0 330.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb pigsty 2.4.0 321.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb pigsty 2.4.0 373.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb pigsty 2.4.0 368.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb pigsty 2.4.0 339.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb pigsty 2.4.0 336.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb
@ el9.x86_64 14 rdf_fdw_14 rdf_fdw_14-2.4.0-1PIGSTY.el9.x86_64.rpm pigsty 2.4.0 140.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_14-2.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 rdf_fdw_14 rdf_fdw_14-2.4.0-1PIGSTY.el9.aarch64.rpm pigsty 2.4.0 136.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_14-2.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 rdf_fdw_14 rdf_fdw_14-2.4.0-1PIGSTY.el10.x86_64.rpm pigsty 2.4.0 141.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_14-2.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 rdf_fdw_14 rdf_fdw_14-2.4.0-1PIGSTY.el10.aarch64.rpm pigsty 2.4.0 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_14-2.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb pigsty 2.4.0 330.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb pigsty 2.4.0 321.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb pigsty 2.4.0 330.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb pigsty 2.4.0 322.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb pigsty 2.4.0 373.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb pigsty 2.4.0 368.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb pigsty 2.4.0 339.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb pigsty 2.4.0 336.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_2.4.0-2PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `rdf_fdw` using `pig build`:

```bash
pig build pkg rdf_fdw         # build RPM / DEB packages
```


## Install

You can install `rdf_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install rdf_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y rdf_fdw -v 18  # PG 18
pig ext install -y rdf_fdw -v 17  # PG 17
pig ext install -y rdf_fdw -v 16  # PG 16
pig ext install -y rdf_fdw -v 15  # PG 15
pig ext install -y rdf_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y rdf_fdw_18       # PG 18
dnf install -y rdf_fdw_17       # PG 17
dnf install -y rdf_fdw_16       # PG 16
dnf install -y rdf_fdw_15       # PG 15
dnf install -y rdf_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-rdf-fdw   # PG 18
apt install -y postgresql-17-rdf-fdw   # PG 17
apt install -y postgresql-16-rdf-fdw   # PG 16
apt install -y postgresql-15-rdf-fdw   # PG 15
apt install -y postgresql-14-rdf-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION rdf_fdw;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION rdf_fdw;
> CREATE SERVER dbpedia FOREIGN DATA WRAPPER rdf_fdw
>   OPTIONS (endpoint 'https://dbpedia.org/sparql');
> ```
>
> Source: [README](https://github.com/jimjonesbr/rdf_fdw)

`rdf_fdw` is a foreign data wrapper for RDF triplestores exposed through SPARQL endpoints. It lets PostgreSQL query RDF data with SQL, supports SQL clause pushdown, adds an `rdfnode` type for RDF terms, and includes SPARQL 1.1 function support.

## Server Setup

Register a SPARQL endpoint with `CREATE SERVER`:

```sql
CREATE SERVER dbpedia
FOREIGN DATA WRAPPER rdf_fdw
OPTIONS (endpoint 'https://dbpedia.org/sparql');
```

The README documents server options such as:

- `endpoint` (required)
- `batch_size`
- `enable_pushdown`
- `format`
- `http_proxy`
- `connect_timeout`

Proxy credentials belong in a user mapping.

## Foreign Tables

`rdf_fdw` works by declaring foreign tables that embed SPARQL queries and map result variables to PostgreSQL columns. The README also highlights native RDF node handling through the custom `rdfnode` type.

## Pushdown and DML

The upstream docs specifically call out pushdown for:

- `WHERE`
- `LIMIT`
- `ORDER BY`
- `DISTINCT`

They also document data modification support:

- `INSERT`
- `UPDATE`
- `DELETE`

Batching for SPARQL UPDATE traffic is controlled with the `batch_size` option.

## Helper Functions

The README lists utility functions including:

- `rdf_fdw_version()`
- `rdf_fdw_settings()`
- `rdf_fdw_clone_table()`

It also documents broader SPARQL function coverage, including aggregates, string functions, numeric functions, date/time functions, hash functions, and custom functions.

## Notes

The current README warns that retrieved RDF data is loaded into memory before conversion for PostgreSQL, so large result sets require adequate PostgreSQL memory. It also documents PostgreSQL 9.5+ as the supported baseline.
