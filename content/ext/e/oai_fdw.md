---
title: "oai_fdw"
linkTitle: "oai_fdw"
description: "Read-only OAI-PMH foreign data wrapper for metadata harvesting over HTTP/HTTPS."
weight: 8770
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jimjonesbr/oai_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jimjonesbr/oai_fdw</div>
    <div class="ext-card__desc">https://github.com/jimjonesbr/oai_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/oai_fdw-1.16.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">oai_fdw-1.16.0.tar.gz</div>
    <div class="ext-card__desc">oai_fdw-1.16.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`oai_fdw`**](/ext/e/oai_fdw) | `1.16` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8770  | [**`oai_fdw`**](/ext/e/oai_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`rdf_fdw`](/ext/e/rdf_fdw) [`http`](/ext/e/http) [`postgres_fdw`](/ext/e/postgres_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> SQL/control 1.16; package 1.16.0 (tag v1.16). Read-only OAI-PMH 2.0 FDW; libcurl/libxml2; no preload. Response limit has a 1 GB hard ceiling. PG14-18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.16` | {{< pgvers "14,15,16,17,18" >}} | `oai_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.16.0` | {{< pgvers "14,15,16,17,18" >}} | `oai_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.16.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-oai-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 | AVAIL PIGSTY 1.16.0 1 |
@ el8.x86_64 18 oai_fdw_18 oai_fdw_18-1.16.0-1PGSTY.el8.x86_64.rpm pigsty 1.16.0 115.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/oai_fdw_18-1.16.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 oai_fdw_18 oai_fdw_18-1.16.0-1PGSTY.el8.aarch64.rpm pigsty 1.16.0 113.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/oai_fdw_18-1.16.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 oai_fdw_18 oai_fdw_18-1.16.0-1PGSTY.el9.x86_64.rpm pigsty 1.16.0 117.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/oai_fdw_18-1.16.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 oai_fdw_18 oai_fdw_18-1.16.0-1PGSTY.el9.aarch64.rpm pigsty 1.16.0 115.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/oai_fdw_18-1.16.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 oai_fdw_18 oai_fdw_18-1.16.0-1PGSTY.el10.x86_64.rpm pigsty 1.16.0 117.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/oai_fdw_18-1.16.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 oai_fdw_18 oai_fdw_18-1.16.0-1PGSTY.el10.aarch64.rpm pigsty 1.16.0 116.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/oai_fdw_18-1.16.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb pigsty 1.16.0 107.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb pigsty 1.16.0 105.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb pigsty 1.16.0 107.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb pigsty 1.16.0 104.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb pigsty 1.16.0 116.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb pigsty 1.16.0 114.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb pigsty 1.16.0 111.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb pigsty 1.16.0 109.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb pigsty 1.16.0 109.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-oai-fdw postgresql-18-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb pigsty 1.16.0 108.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-18-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 oai_fdw_17 oai_fdw_17-1.16.0-1PGSTY.el8.x86_64.rpm pigsty 1.16.0 115.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/oai_fdw_17-1.16.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 oai_fdw_17 oai_fdw_17-1.16.0-1PGSTY.el8.aarch64.rpm pigsty 1.16.0 113.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/oai_fdw_17-1.16.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 oai_fdw_17 oai_fdw_17-1.16.0-1PGSTY.el9.x86_64.rpm pigsty 1.16.0 117.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/oai_fdw_17-1.16.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 oai_fdw_17 oai_fdw_17-1.16.0-1PGSTY.el9.aarch64.rpm pigsty 1.16.0 115.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/oai_fdw_17-1.16.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 oai_fdw_17 oai_fdw_17-1.16.0-1PGSTY.el10.x86_64.rpm pigsty 1.16.0 117.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/oai_fdw_17-1.16.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 oai_fdw_17 oai_fdw_17-1.16.0-1PGSTY.el10.aarch64.rpm pigsty 1.16.0 116.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/oai_fdw_17-1.16.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb pigsty 1.16.0 107.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb pigsty 1.16.0 105.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb pigsty 1.16.0 107.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb pigsty 1.16.0 104.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb pigsty 1.16.0 125.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb pigsty 1.16.0 123.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb pigsty 1.16.0 111.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb pigsty 1.16.0 109.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb pigsty 1.16.0 109.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-oai-fdw postgresql-17-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb pigsty 1.16.0 108.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-17-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 oai_fdw_16 oai_fdw_16-1.16.0-1PGSTY.el8.x86_64.rpm pigsty 1.16.0 115.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/oai_fdw_16-1.16.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 oai_fdw_16 oai_fdw_16-1.16.0-1PGSTY.el8.aarch64.rpm pigsty 1.16.0 113.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/oai_fdw_16-1.16.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 oai_fdw_16 oai_fdw_16-1.16.0-1PGSTY.el9.x86_64.rpm pigsty 1.16.0 117.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/oai_fdw_16-1.16.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 oai_fdw_16 oai_fdw_16-1.16.0-1PGSTY.el9.aarch64.rpm pigsty 1.16.0 115.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/oai_fdw_16-1.16.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 oai_fdw_16 oai_fdw_16-1.16.0-1PGSTY.el10.x86_64.rpm pigsty 1.16.0 117.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/oai_fdw_16-1.16.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 oai_fdw_16 oai_fdw_16-1.16.0-1PGSTY.el10.aarch64.rpm pigsty 1.16.0 116.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/oai_fdw_16-1.16.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb pigsty 1.16.0 107.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb pigsty 1.16.0 105.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb pigsty 1.16.0 107.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb pigsty 1.16.0 104.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb pigsty 1.16.0 125.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb pigsty 1.16.0 123.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb pigsty 1.16.0 111.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb pigsty 1.16.0 111.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb pigsty 1.16.0 109.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-oai-fdw postgresql-16-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb pigsty 1.16.0 108.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-16-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 oai_fdw_15 oai_fdw_15-1.16.0-1PGSTY.el8.x86_64.rpm pigsty 1.16.0 115.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/oai_fdw_15-1.16.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 oai_fdw_15 oai_fdw_15-1.16.0-1PGSTY.el8.aarch64.rpm pigsty 1.16.0 113.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/oai_fdw_15-1.16.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 oai_fdw_15 oai_fdw_15-1.16.0-1PGSTY.el9.x86_64.rpm pigsty 1.16.0 117.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/oai_fdw_15-1.16.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 oai_fdw_15 oai_fdw_15-1.16.0-1PGSTY.el9.aarch64.rpm pigsty 1.16.0 115.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/oai_fdw_15-1.16.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 oai_fdw_15 oai_fdw_15-1.16.0-1PGSTY.el10.x86_64.rpm pigsty 1.16.0 117.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/oai_fdw_15-1.16.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 oai_fdw_15 oai_fdw_15-1.16.0-1PGSTY.el10.aarch64.rpm pigsty 1.16.0 116.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/oai_fdw_15-1.16.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb pigsty 1.16.0 107.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb pigsty 1.16.0 116.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb pigsty 1.16.0 107.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb pigsty 1.16.0 104.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb pigsty 1.16.0 125.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb pigsty 1.16.0 123.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb pigsty 1.16.0 111.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb pigsty 1.16.0 109.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb pigsty 1.16.0 109.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-oai-fdw postgresql-15-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb pigsty 1.16.0 108.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-15-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 oai_fdw_14 oai_fdw_14-1.16.0-1PGSTY.el8.x86_64.rpm pigsty 1.16.0 115.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/oai_fdw_14-1.16.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 oai_fdw_14 oai_fdw_14-1.16.0-1PGSTY.el8.aarch64.rpm pigsty 1.16.0 113.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/oai_fdw_14-1.16.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 oai_fdw_14 oai_fdw_14-1.16.0-1PGSTY.el9.x86_64.rpm pigsty 1.16.0 117.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/oai_fdw_14-1.16.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 oai_fdw_14 oai_fdw_14-1.16.0-1PGSTY.el9.aarch64.rpm pigsty 1.16.0 115.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/oai_fdw_14-1.16.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 oai_fdw_14 oai_fdw_14-1.16.0-1PGSTY.el10.x86_64.rpm pigsty 1.16.0 117.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/oai_fdw_14-1.16.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 oai_fdw_14 oai_fdw_14-1.16.0-1PGSTY.el10.aarch64.rpm pigsty 1.16.0 116.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/oai_fdw_14-1.16.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb pigsty 1.16.0 107.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb pigsty 1.16.0 105.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb pigsty 1.16.0 107.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb pigsty 1.16.0 104.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb pigsty 1.16.0 125.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb pigsty 1.16.0 123.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb pigsty 1.16.0 111.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb pigsty 1.16.0 109.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb pigsty 1.16.0 109.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-oai-fdw postgresql-14-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb pigsty 1.16.0 107.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/oai-fdw/postgresql-14-oai-fdw_1.16.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `oai_fdw` using `pig build`:

```bash
pig build pkg oai_fdw         # build RPM / DEB packages
```


## Install

You can install `oai_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install oai_fdw;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y oai_fdw -v 18  # PG 18
pig ext install -y oai_fdw -v 17  # PG 17
pig ext install -y oai_fdw -v 16  # PG 16
pig ext install -y oai_fdw -v 15  # PG 15
pig ext install -y oai_fdw -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y oai_fdw_18       # PG 18
dnf install -y oai_fdw_17       # PG 17
dnf install -y oai_fdw_16       # PG 16
dnf install -y oai_fdw_15       # PG 15
dnf install -y oai_fdw_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-oai-fdw   # PG 18
apt install -y postgresql-17-oai-fdw   # PG 17
apt install -y postgresql-16-oai-fdw   # PG 16
apt install -y postgresql-15-oai-fdw   # PG 15
apt install -y postgresql-14-oai-fdw   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION oai_fdw;
```

## Usage

Sources:

- [CHANGELOG.md](https://github.com/jimjonesbr/oai_fdw/blob/206169ac1cc2ea9a35d92e9a3ade9d82ec01d18c/CHANGELOG.md)
- [Official v1.16 README](https://github.com/jimjonesbr/oai_fdw/blob/206169ac1cc2ea9a35d92e9a3ade9d82ec01d18c/README.md)
- [Official v1.16 control file](https://github.com/jimjonesbr/oai_fdw/blob/206169ac1cc2ea9a35d92e9a3ade9d82ec01d18c/oai_fdw.control)
- [Official v1.16 changelog](https://github.com/jimjonesbr/oai_fdw/blob/206169ac1cc2ea9a35d92e9a3ade9d82ec01d18c/CHANGELOG.md)
- [Official OAI-PMH specification](https://www.openarchives.org/OAI/openarchivesprotocol.html)

`oai_fdw` 1.16 is a foreign data wrapper for harvesting metadata from OAI-PMH 2.0 repositories over HTTP or HTTPS. It maps OAI record headers and XML content to foreign-table columns, supports automatic table generation for repositories or sets, and can copy harvested records into local tables.

### Core Workflow

Create a server for the repository, then either define a foreign table explicitly or use `IMPORT FOREIGN SCHEMA`. Every table needs a metadata format such as `oai_dc`.

```sql
CREATE EXTENSION oai_fdw;
CREATE SCHEMA oai_data;

CREATE SERVER museum_oai
FOREIGN DATA WRAPPER oai_fdw
OPTIONS (url 'https://example.org/oai');

CREATE FOREIGN TABLE oai_data.records (
    id text OPTIONS (oai_node 'identifier'),
    content xml OPTIONS (oai_node 'content'),
    sets text[] OPTIONS (oai_node 'setspec'),
    datestamp timestamp OPTIONS (oai_node 'datestamp'),
    format text OPTIONS (oai_node 'metadataprefix'),
    status boolean OPTIONS (oai_node 'status')
)
SERVER museum_oai
OPTIONS (metadataprefix 'oai_dc');

SELECT id, datestamp
FROM oai_data.records
LIMIT 100;
```

Without `setspec`, a scan can harvest every set exposed by the repository. Use `from`, `until`, or `setspec` table options and an outer `LIMIT` where appropriate, but verify request behavior with the remote service.

### Import and Support Interfaces

- `IMPORT FOREIGN SCHEMA oai_repository` creates one table spanning the repository; `oai_sets` creates a table per OAI set. Both require the `metadataprefix` import option and support `LIMIT TO` or `EXCEPT`.
- Column option `oai_node` maps `identifier`, `setspec`, `datestamp`, `content`, `metadataprefix`, or `status` to compatible PostgreSQL types.
- Server options include `url`, `http_proxy`, `connect_timeout`, `connect_retry`, `request_redirect`, and `request_max_redirect`.
- `OAI_HarvestTable` copies a foreign-table harvest into a local table; OAI support functions expose repository metadata such as sets and formats.

Version 1.13 moves `proxy_user` and `proxy_password` to the user mapping. Repository `user` and `password` also belong there and use HTTP Basic Authentication.

### Network, Credentials, and Consistency

Queries perform synchronous remote requests and parse untrusted XML. Latency, pagination, server throttling, redirects, malformed responses, and repository changes affect results. Store credentials in narrowly scoped user mappings, restrict who may create or alter servers, and treat configurable URLs/proxies as outbound-network access with SSRF implications.

OAI-PMH is a harvesting protocol, not a transactional database API. Repeated scans can observe changing pages and deletions; local copies become stale. Record harvest windows and identifiers, make refreshes restartable, and reconcile deleted/status records explicitly. Version 1.13 requires matching libcurl/libxml2 build dependencies and should be tested against each target repository’s metadata format.

### Version 1.15

HTTP 429 and 503 retries respect backoff/Retry-After; from/until validation and timestamp granularity are stricter. Server USAGE and view-owner user mappings are checked. Harvest windows and cancellation handling are corrected, and stalled transfers abort after the documented five-minute low-speed threshold. Install matching files and apply `ALTER EXTENSION oai_fdw UPDATE`. PGXN calls this distribution 1.15.0, while the SQL/control version is 1.15.

### 1.16 Response Limits

Use the server option `max_response_size` to bound response bytes; a hard 1 GB ceiling applies even without a smaller configured limit. Exceeding the cap aborts the request. The FDW is read-only: INSERT, UPDATE and DELETE now fail immediately. GetRecord row estimates are capped at one, and EXPLAIN includes the server identity. Distribution 1.16.0 uses SQL version 1.16; install matching files and run `ALTER EXTENSION oai_fdw UPDATE TO '1.16'`.
