---
title: "tzf"
linkTitle: "tzf"
description: "Fast lookup timezone name by GPS coordinates"
weight: 1680
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ringsaturn/pg-tzf">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ringsaturn/pg-tzf</div>
    <div class="ext-card__desc">https://github.com/ringsaturn/pg-tzf</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-tzf-0.2.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-tzf-0.2.4.tar.gz</div>
    <div class="ext-card__desc">pg-tzf-0.2.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tzf`**](/ext/e/tzf) | `0.2.4` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1680  | [**`tzf`**](/ext/e/tzf) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`geoip`](/ext/e/geoip) [`pg_cron`](/ext/e/pg_cron) [`postgis_topology`](/ext/e/postgis_topology) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`address_standardizer`](/ext/e/address_standardizer) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_tzf` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_tzf_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-tzf` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
@ el8.x86_64 18 pg_tzf_18 pg_tzf_18-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tzf_18-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_tzf_18 pg_tzf_18-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tzf_18-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_tzf_18 pg_tzf_18-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tzf_18-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tzf_18 pg_tzf_18-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tzf_18-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tzf_18 pg_tzf_18-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tzf_18-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tzf_18 pg_tzf_18-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tzf_18-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 3.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-tzf postgresql-18-tzf_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 3.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-18-tzf_0.2.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_tzf_17 pg_tzf_17-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tzf_17-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_tzf_17 pg_tzf_17-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tzf_17-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_tzf_17 pg_tzf_17-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tzf_17-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tzf_17 pg_tzf_17-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tzf_17-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tzf_17 pg_tzf_17-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tzf_17-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tzf_17 pg_tzf_17-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tzf_17-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 3.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-tzf postgresql-17-tzf_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 3.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-17-tzf_0.2.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_tzf_16 pg_tzf_16-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tzf_16-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_tzf_16 pg_tzf_16-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tzf_16-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_tzf_16 pg_tzf_16-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tzf_16-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_tzf_16 pg_tzf_16-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tzf_16-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_tzf_16 pg_tzf_16-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tzf_16-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_tzf_16 pg_tzf_16-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tzf_16-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 3.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-tzf postgresql-16-tzf_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 3.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-16-tzf_0.2.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_tzf_15 pg_tzf_15-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tzf_15-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_tzf_15 pg_tzf_15-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tzf_15-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_tzf_15 pg_tzf_15-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tzf_15-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_tzf_15 pg_tzf_15-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tzf_15-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_tzf_15 pg_tzf_15-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tzf_15-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_tzf_15 pg_tzf_15-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tzf_15-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 3.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 3.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-tzf postgresql-15-tzf_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 3.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-15-tzf_0.2.4-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_tzf_14 pg_tzf_14-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tzf_14-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_tzf_14 pg_tzf_14-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tzf_14-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_tzf_14 pg_tzf_14-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tzf_14-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_tzf_14 pg_tzf_14-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 3.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tzf_14-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_tzf_14 pg_tzf_14-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 3.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tzf_14-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_tzf_14 pg_tzf_14-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tzf_14-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 3.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 3.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 3.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 3.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 3.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-tzf postgresql-14-tzf_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 3.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/tzf/postgresql-14-tzf_0.2.4-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_tzf` using `pig build`:

```bash
pig build pkg pg_tzf         # build RPM / DEB packages
```


## Install

You can install `pg_tzf` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_tzf;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_tzf -v 18  # PG 18
pig ext install -y pg_tzf -v 17  # PG 17
pig ext install -y pg_tzf -v 16  # PG 16
pig ext install -y pg_tzf -v 15  # PG 15
pig ext install -y pg_tzf -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_tzf_18       # PG 18
dnf install -y pg_tzf_17       # PG 17
dnf install -y pg_tzf_16       # PG 16
dnf install -y pg_tzf_15       # PG 15
dnf install -y pg_tzf_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-tzf   # PG 18
apt install -y postgresql-17-tzf   # PG 17
apt install -y postgresql-16-tzf   # PG 16
apt install -y postgresql-15-tzf   # PG 15
apt install -y postgresql-14-tzf   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION tzf;
```


## Usage

Sources: [README](https://github.com/ringsaturn/pg-tzf/blob/main/README.md), [releases](https://github.com/ringsaturn/pg-tzf/releases), [Cargo.toml](https://github.com/ringsaturn/pg-tzf/blob/main/Cargo.toml)

`tzf` is a PostgreSQL extension for fast timezone lookup from longitude and latitude coordinates.

### Create the extension

```sql
CREATE EXTENSION tzf;
```

The upstream project packages one build artifact per PostgreSQL major version. Current source metadata says extension version `0.2.4`.

### Functions

Coordinate lookup:

```sql
SELECT tzf_tzname(116.3883, 39.9289) AS timezone;
```

Batch coordinate lookup:

```sql
SELECT unnest(
  tzf_tzname_batch(
    ARRAY[-74.0060, -118.2437, 139.6917],
    ARRAY[40.7128, 34.0522, 35.6895]
  )
) AS timezones;
```

Point lookup:

```sql
SELECT tzf_tzname_point(point(-74.0060, 40.7128)) AS timezone;
```

Batch point lookup:

```sql
SELECT unnest(
  tzf_tzname_batch_points(
    ARRAY[
      point(-74.0060, 40.7128),
      point(-118.2437, 34.0522),
      point(139.6917, 35.6895)
    ]
  )
) AS timezones;
```

### Notes

- Upstream README documents support for PostgreSQL 14 through 18 builds.
- Pre-built release tarballs contain `tzf.so`, `tzf.control`, and `tzf--<version>.sql`.
- The current README still points to a complete schema in `sql/tzf.sql` and includes benchmark figures for the four lookup functions above.
