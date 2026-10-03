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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/rdf_fdw-3.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">rdf_fdw-3.0.0.tar.gz</div>
    <div class="ext-card__desc">rdf_fdw-3.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`rdf_fdw`**](/ext/e/rdf_fdw) | `3.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8760  | [**`rdf_fdw`**](/ext/e/rdf_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgrdf`](/ext/e/pgrdf) [`ogr_fdw`](/ext/e/ogr_fdw) [`sparql`](/ext/e/sparql) [`nominatim_fdw`](/ext/e/nominatim_fdw) [`postgis`](/ext/e/postgis) [`mongo_fdw`](/ext/e/mongo_fdw) [`redis_fdw`](/ext/e/redis_fdw) [`etcd_fdw`](/ext/e/etcd_fdw) [`xml2`](/ext/e/xml2) [`plxslt`](/ext/e/plxslt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Package 3.0.0; SQL extension 3.0. Upgrades from 2.x require the upstream rdfnode index and dependent-object migration; REINDEX alone is insufficient.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0` | {{< pgvers "18,17,16,15,14" >}} | `rdf_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.0` | {{< pgvers "18,17,16,15,14" >}} | `rdf_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-rdf-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 | AVAIL PIGSTY 3.0.0 1 |
@ el8.x86_64 18 rdf_fdw_18 rdf_fdw_18-3.0.0-1PGSTY.el8.x86_64.rpm pigsty 3.0.0 399.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdf_fdw_18-3.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 rdf_fdw_18 rdf_fdw_18-3.0.0-1PGSTY.el8.aarch64.rpm pigsty 3.0.0 390.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdf_fdw_18-3.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 rdf_fdw_18 rdf_fdw_18-3.0.0-1PGSTY.el9.x86_64.rpm pigsty 3.0.0 406.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_18-3.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 rdf_fdw_18 rdf_fdw_18-3.0.0-1PGSTY.el9.aarch64.rpm pigsty 3.0.0 401.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_18-3.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 rdf_fdw_18 rdf_fdw_18-3.0.0-1PGSTY.el10.x86_64.rpm pigsty 3.0.0 408.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_18-3.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 rdf_fdw_18 rdf_fdw_18-3.0.0-1PGSTY.el10.aarch64.rpm pigsty 3.0.0 403.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_18-3.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb pigsty 3.0.0 406.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb pigsty 3.0.0 396.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb pigsty 3.0.0 406.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb pigsty 3.0.0 397.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb pigsty 3.0.0 414.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb pigsty 3.0.0 409.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb pigsty 3.0.0 400.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb pigsty 3.0.0 396.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb pigsty 3.0.0 398.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-rdf-fdw postgresql-18-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb pigsty 3.0.0 394.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-18-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 rdf_fdw_17 rdf_fdw_17-3.0.0-1PGSTY.el8.x86_64.rpm pigsty 3.0.0 399.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdf_fdw_17-3.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 rdf_fdw_17 rdf_fdw_17-3.0.0-1PGSTY.el8.aarch64.rpm pigsty 3.0.0 389.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdf_fdw_17-3.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 rdf_fdw_17 rdf_fdw_17-3.0.0-1PGSTY.el9.x86_64.rpm pigsty 3.0.0 405.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_17-3.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 rdf_fdw_17 rdf_fdw_17-3.0.0-1PGSTY.el9.aarch64.rpm pigsty 3.0.0 400.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_17-3.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 rdf_fdw_17 rdf_fdw_17-3.0.0-1PGSTY.el10.x86_64.rpm pigsty 3.0.0 407.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_17-3.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 rdf_fdw_17 rdf_fdw_17-3.0.0-1PGSTY.el10.aarch64.rpm pigsty 3.0.0 403.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_17-3.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb pigsty 3.0.0 405.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb pigsty 3.0.0 394.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb pigsty 3.0.0 405.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb pigsty 3.0.0 395.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb pigsty 3.0.0 437.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb pigsty 3.0.0 431.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb pigsty 3.0.0 399.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb pigsty 3.0.0 396.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb pigsty 3.0.0 397.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-rdf-fdw postgresql-17-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb pigsty 3.0.0 393.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-17-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 rdf_fdw_16 rdf_fdw_16-3.0.0-1PGSTY.el8.x86_64.rpm pigsty 3.0.0 399.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdf_fdw_16-3.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 rdf_fdw_16 rdf_fdw_16-3.0.0-1PGSTY.el8.aarch64.rpm pigsty 3.0.0 389.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdf_fdw_16-3.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 rdf_fdw_16 rdf_fdw_16-3.0.0-1PGSTY.el9.x86_64.rpm pigsty 3.0.0 405.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_16-3.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 rdf_fdw_16 rdf_fdw_16-3.0.0-1PGSTY.el9.aarch64.rpm pigsty 3.0.0 400.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_16-3.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 rdf_fdw_16 rdf_fdw_16-3.0.0-1PGSTY.el10.x86_64.rpm pigsty 3.0.0 407.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_16-3.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 rdf_fdw_16 rdf_fdw_16-3.0.0-1PGSTY.el10.aarch64.rpm pigsty 3.0.0 403.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_16-3.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb pigsty 3.0.0 406.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb pigsty 3.0.0 395.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb pigsty 3.0.0 405.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb pigsty 3.0.0 396.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb pigsty 3.0.0 435.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb pigsty 3.0.0 428.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb pigsty 3.0.0 399.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb pigsty 3.0.0 395.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb pigsty 3.0.0 397.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-rdf-fdw postgresql-16-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb pigsty 3.0.0 393.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-16-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 rdf_fdw_15 rdf_fdw_15-3.0.0-1PGSTY.el8.x86_64.rpm pigsty 3.0.0 400.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdf_fdw_15-3.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 rdf_fdw_15 rdf_fdw_15-3.0.0-1PGSTY.el8.aarch64.rpm pigsty 3.0.0 390.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdf_fdw_15-3.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 rdf_fdw_15 rdf_fdw_15-3.0.0-1PGSTY.el9.x86_64.rpm pigsty 3.0.0 408.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_15-3.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 rdf_fdw_15 rdf_fdw_15-3.0.0-1PGSTY.el9.aarch64.rpm pigsty 3.0.0 402.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_15-3.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 rdf_fdw_15 rdf_fdw_15-3.0.0-1PGSTY.el10.x86_64.rpm pigsty 3.0.0 410.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_15-3.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 rdf_fdw_15 rdf_fdw_15-3.0.0-1PGSTY.el10.aarch64.rpm pigsty 3.0.0 404.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_15-3.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb pigsty 3.0.0 406.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb pigsty 3.0.0 397.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb pigsty 3.0.0 407.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb pigsty 3.0.0 397.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb pigsty 3.0.0 436.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb pigsty 3.0.0 430.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb pigsty 3.0.0 400.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb pigsty 3.0.0 397.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb pigsty 3.0.0 399.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-rdf-fdw postgresql-15-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb pigsty 3.0.0 394.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-15-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 rdf_fdw_14 rdf_fdw_14-3.0.0-1PGSTY.el8.x86_64.rpm pigsty 3.0.0 400.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdf_fdw_14-3.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 rdf_fdw_14 rdf_fdw_14-3.0.0-1PGSTY.el8.aarch64.rpm pigsty 3.0.0 390.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdf_fdw_14-3.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 rdf_fdw_14 rdf_fdw_14-3.0.0-1PGSTY.el9.x86_64.rpm pigsty 3.0.0 408.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdf_fdw_14-3.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 rdf_fdw_14 rdf_fdw_14-3.0.0-1PGSTY.el9.aarch64.rpm pigsty 3.0.0 402.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdf_fdw_14-3.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 rdf_fdw_14 rdf_fdw_14-3.0.0-1PGSTY.el10.x86_64.rpm pigsty 3.0.0 409.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdf_fdw_14-3.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 rdf_fdw_14 rdf_fdw_14-3.0.0-1PGSTY.el10.aarch64.rpm pigsty 3.0.0 404.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdf_fdw_14-3.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb pigsty 3.0.0 406.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb pigsty 3.0.0 397.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb pigsty 3.0.0 406.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb pigsty 3.0.0 397.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb pigsty 3.0.0 436.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb pigsty 3.0.0 430.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb pigsty 3.0.0 400.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb pigsty 3.0.0 397.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb pigsty 3.0.0 398.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-rdf-fdw postgresql-14-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb pigsty 3.0.0 393.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdf-fdw/postgresql-14-rdf-fdw_3.0.0-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install rdf_fdw;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y rdf_fdw -v 18  # PG 18
pig ext install -y rdf_fdw -v 17  # PG 17
pig ext install -y rdf_fdw -v 16  # PG 16
pig ext install -y rdf_fdw -v 15  # PG 15
pig ext install -y rdf_fdw -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y rdf_fdw_18       # PG 18
dnf install -y rdf_fdw_17       # PG 17
dnf install -y rdf_fdw_16       # PG 16
dnf install -y rdf_fdw_15       # PG 15
dnf install -y rdf_fdw_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-rdf-fdw   # PG 18
apt install -y postgresql-17-rdf-fdw   # PG 17
apt install -y postgresql-16-rdf-fdw   # PG 16
apt install -y postgresql-15-rdf-fdw   # PG 15
apt install -y postgresql-14-rdf-fdw   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION rdf_fdw;
```

## Usage

Sources:

- [PGXN rdf_fdw 3.0.0](https://pgxn.org/dist/rdf_fdw/3.0.0/)
- [rdf_fdw 3.0 README](https://github.com/jimjonesbr/rdf_fdw/blob/v3.0/README.md)
- [rdf_fdw 3.0 changelog](https://github.com/jimjonesbr/rdf_fdw/blob/v3.0/CHANGELOG.md)
- [rdf_fdw 3.0 control file](https://github.com/jimjonesbr/rdf_fdw/blob/v3.0/rdf_fdw.control)

`rdf_fdw` is a PostgreSQL foreign data wrapper for querying RDF triplestores over SPARQL endpoints. It exposes SPARQL result variables as foreign-table columns, supports pushdown for common SQL clauses, includes a native `rdfnode` type for RDF terms, provides SPARQL 1.1 helper functions, and can perform SPARQL `INSERT`, `UPDATE`, and `DELETE` through writable foreign tables.

Distribution 3.0.0 provides SQL extension 3.0. This release repairs RDF comparison, arithmetic and pushdown correctness. `GROUP BY`, `DISTINCT`, `UNION` and unique constraints distinguish RDF term spelling; `sparql.uri()` now returns `rdfnode`, so text assignments need an explicit cast. Some unsafe pushdown cases execute locally.

### Create the Extension

```sql
CREATE EXTENSION IF NOT EXISTS rdf_fdw;

SELECT rdf_fdw_version();
SELECT * FROM rdf_fdw_settings;
```

Before upgrading from 2.x, save and drop indexes on `rdfnode` columns, and dependent views, materialized views or SQL-body functions that sort, group or deduplicate them. Recreate these objects after the upgrade; `REINDEX` alone is insufficient. Use the appropriate command for a fresh installation or a prepared upgrade:

```sql
CREATE EXTENSION rdf_fdw WITH VERSION '3.0';
ALTER EXTENSION rdf_fdw UPDATE TO '3.0';
```

### Register a SPARQL Endpoint

```sql
CREATE SERVER dbpedia
FOREIGN DATA WRAPPER rdf_fdw
OPTIONS (
  endpoint          'https://dbpedia.org/sparql',
  enable_pushdown   'true',
  request_timeout   '60',
  max_response_size '104857600',
  readonly          'true'
);
```

Useful server options include:

- `endpoint`: SPARQL endpoint URL; required.
- `batch_size`: number of rows per SPARQL UPDATE batch.
- `enable_pushdown`: enables SQL-to-SPARQL pushdown.
- `format`: expected SPARQL result MIME type.
- `http_proxy`: proxy URL; proxy credentials belong in `USER MAPPING`.
- `connect_timeout`: connection timeout.
- `request_timeout`: complete HTTP request timeout.
- `max_response_size`: maximum response body size in bytes; `0` means unlimited.
- `readonly`: prevents `INSERT`, `UPDATE`, and `DELETE` before requests reach the endpoint.
- `request_max_redirect`: `0` refuses redirects; a positive value enables and limits them. `-1` is rejected. `request_redirect` is deprecated.

Use `max_response_size` for public or untrusted endpoints because `rdf_fdw` loads retrieved RDF data into memory before converting it for PostgreSQL.

### User Mapping

```sql
CREATE USER MAPPING FOR postgres
SERVER dbpedia
OPTIONS (
  user 'sparql_user',
  password 'secret'
);
```

v2.6.0 adds Bearer-token authentication:

```sql
CREATE USER MAPPING FOR postgres
SERVER dbpedia
OPTIONS (
  token 'eyJhbGciOi...'
);
```

Proxy credentials are also `USER MAPPING` options:

```sql
CREATE USER MAPPING FOR app_user
SERVER dbpedia
OPTIONS (
  proxy_user 'proxy-user',
  proxy_password 'proxy-secret'
);
```

### Foreign Tables with rdfnode Columns

Declare foreign-table columns as `rdfnode` to preserve RDF terms, IRIs, blank nodes, language tags, and XSD datatypes.

```sql
CREATE FOREIGN TABLE dbpedia_films (
  film rdfnode OPTIONS (variable '?film'),
  name rdfnode OPTIONS (variable '?name'),
  year rdfnode OPTIONS (variable '?year')
)
SERVER dbpedia
OPTIONS (
  sparql $$
    SELECT ?film ?name ?year
    WHERE {
      ?film a dbo:Film ;
            rdfs:label ?name ;
            dbo:releaseDate ?year .
      FILTER (lang(?name) = 'en')
    }
  $$
);
```

Native PostgreSQL column types are deprecated for RDF values in v2.6.0. Existing native-typed tables continue to work, but they emit warnings and lose RDF term details.

### Querying and Pushdown

```sql
SELECT film, sparql.lex(name) AS title
FROM dbpedia_films
WHERE name = '"The Matrix"@en'::rdfnode
ORDER BY year
LIMIT 10;

EXPLAIN (VERBOSE, COSTS OFF)
SELECT *
FROM dbpedia_films
WHERE film = '<http://dbpedia.org/resource/The_Matrix>'::rdfnode;
```

`rdf_fdw` can push down `WHERE`, `LIMIT`, `ORDER BY`, `DISTINCT`, and supported comparisons/functions. Use `EXPLAIN VERBOSE` to inspect the generated remote SPARQL.

### Prefix Management

`rdf_fdw` provides catalog tables and helper functions under the `sparql` schema for reusable SPARQL prefixes:

```sql
SELECT sparql.add_context('default', 'Default SPARQL prefix context');
SELECT sparql.add_prefix('default', 'rdf',  'http://www.w3.org/1999/02/22-rdf-syntax-ns#');
SELECT sparql.add_prefix('default', 'rdfs', 'http://www.w3.org/2000/01/rdf-schema#');
SELECT sparql.add_prefix('default', 'xsd',  'http://www.w3.org/2001/XMLSchema#');
```

### Data Modification

Writable foreign tables translate PostgreSQL `INSERT`, `UPDATE`, and `DELETE` into SPARQL UPDATE requests. The example assumes an administrator-created rdf_write server connected to a writable endpoint you control; keep the public DBpedia server read-only. Every update-pattern variable must map to a non-null `rdfnode` column, and `sparql_update_pattern` is mandatory.

```sql
CREATE FOREIGN TABLE writable_triples (
  subject rdfnode OPTIONS (variable '?s'),
  predicate rdfnode OPTIONS (variable '?p'),
  object rdfnode OPTIONS (variable '?o')
)
SERVER rdf_write
OPTIONS (
  sparql 'SELECT ?s ?p ?o WHERE { ?s ?p ?o }',
  sparql_update_pattern '?s ?p ?o .',
  readonly 'false'
);
INSERT INTO writable_triples(subject, predicate, object) VALUES (
  '<http://example.org/film/1>'::rdfnode,
  '<http://www.w3.org/2000/01/rdf-schema#label>'::rdfnode,
  '"Example Film"@en'::rdfnode
);
```

Use `readonly = true` to disable writes for a server or table. An explicit table setting of `readonly = false` overrides a server setting of `readonly = true`; enforce read-only access at the remote endpoint with its credentials and access controls when writes must be prohibited.

Each remote write is committed immediately by the triplestore. PostgreSQL ROLLBACK does not undo it; plan application-level compensation and do not assume cross-system atomicity.

### Clone a Foreign Table

```sql
CALL rdf_fdw_clone_table(
  foreign_table := 'dbpedia_films',
  target_table  := 'dbpedia_films_local',
  fetch_size    := 1000,
  create_table  := true
);
```

`rdf_fdw_clone_table()` copies data from a foreign table into a local table in batches. v2.5 fixed several round-trip issues for RDF terms during cloning.

### SPARQL Functions

The `sparql` schema implements many SPARQL 1.1 functions and aggregates, including:

- aggregates such as `sparql.sum`, `sparql.avg`, `sparql.min`, `sparql.max`, `sparql.group_concat`, and `sparql.sample`
- RDF term helpers such as `sparql.isiri`, `sparql.isblank`, `sparql.isliteral`, `sparql.datatype`, `sparql.iri`, `sparql.strdt`, and `sparql.strlang`
- string functions such as `sparql.strlen`, `sparql.substr`, `sparql.ucase`, `sparql.lcase`, `sparql.contains`, and `sparql.replace`
- numeric, date/time, hash, and custom convenience functions

### Caveats

- PostgreSQL 9.5 or newer is the upstream baseline.
- Retrieved RDF data is accumulated in memory before conversion. Set `max_response_size`, use `LIMIT`, and keep remote result sets bounded.
- Prefer `rdfnode` columns. Native PostgreSQL typed columns are deprecated for RDF terms and will lose IRI/language/datatype information.
- Store secrets in `USER MAPPING`; do not put proxy credentials or endpoint tokens into `SERVER` options.
- Public SPARQL endpoints can be slow or rate-limited. Use `connect_timeout`, `request_timeout`, retries, and local materialization when needed.
- The extension is not relocatable in 3.0 and also creates the fixed `sparql` schema. Review the 3.0 migration requirements before changing existing installations.
