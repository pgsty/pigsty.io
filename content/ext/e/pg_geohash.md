---
title: "pg_geohash"
linkTitle: "pg_geohash"
description: "Handle geohash based functionality for spatial coordinates"
weight: 1590
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jistok/pg_geohash">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jistok/pg_geohash</div>
    <div class="ext-card__desc">https://github.com/jistok/pg_geohash</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_geohash-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_geohash-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_geohash-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_geohash`**](/ext/e/pg_geohash) | `1.0` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1590  | [**`pg_geohash`**](/ext/e/pg_geohash) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`h3`](/ext/e/h3) [`q3c`](/ext/e/q3c) [`pg_polyline`](/ext/e/pg_polyline) [`postgis_topology`](/ext/e/postgis_topology) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_geohash` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_geohash_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-geohash` | - |
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
@ el8.x86_64 18 pg_geohash_18 pg_geohash_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_geohash_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_geohash_18 pg_geohash_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_geohash_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_geohash_18 pg_geohash_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_geohash_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_geohash_18 pg_geohash_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_geohash_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_geohash_18 pg_geohash_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_geohash_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_geohash_18 pg_geohash_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_geohash_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 16.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 15.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 16.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-geohash postgresql-18-pg-geohash_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-18-pg-geohash_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_geohash_17 pg_geohash_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_geohash_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_geohash_17 pg_geohash_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_geohash_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_geohash_17 pg_geohash_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_geohash_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_geohash_17 pg_geohash_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_geohash_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_geohash_17 pg_geohash_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_geohash_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_geohash_17 pg_geohash_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_geohash_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 15.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 16.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-geohash postgresql-17-pg-geohash_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-17-pg-geohash_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_geohash_16 pg_geohash_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_geohash_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_geohash_16 pg_geohash_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_geohash_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_geohash_16 pg_geohash_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_geohash_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_geohash_16 pg_geohash_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_geohash_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_geohash_16 pg_geohash_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_geohash_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_geohash_16 pg_geohash_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_geohash_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 16.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 15.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 16.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-geohash postgresql-16-pg-geohash_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-16-pg-geohash_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_geohash_15 pg_geohash_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_geohash_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_geohash_15 pg_geohash_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_geohash_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_geohash_15 pg_geohash_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_geohash_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_geohash_15 pg_geohash_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_geohash_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_geohash_15 pg_geohash_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_geohash_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_geohash_15 pg_geohash_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_geohash_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 15.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 16.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-geohash postgresql-15-pg-geohash_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-15-pg-geohash_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_geohash_14 pg_geohash_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 16.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_geohash_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_geohash_14 pg_geohash_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_geohash_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_geohash_14 pg_geohash_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_geohash_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_geohash_14 pg_geohash_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_geohash_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_geohash_14 pg_geohash_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_geohash_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_geohash_14 pg_geohash_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 16.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_geohash_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 16.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 15.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 16.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-geohash postgresql-14-pg-geohash_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 16.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-geohash/postgresql-14-pg-geohash_1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_geohash` using `pig build`:

```bash
pig build pkg pg_geohash         # build RPM / DEB packages
```


## Install

You can install `pg_geohash` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_geohash;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_geohash -v 18  # PG 18
pig ext install -y pg_geohash -v 17  # PG 17
pig ext install -y pg_geohash -v 16  # PG 16
pig ext install -y pg_geohash -v 15  # PG 15
pig ext install -y pg_geohash -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_geohash_18       # PG 18
dnf install -y pg_geohash_17       # PG 17
dnf install -y pg_geohash_16       # PG 16
dnf install -y pg_geohash_15       # PG 15
dnf install -y pg_geohash_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-geohash   # PG 18
apt install -y postgresql-17-pg-geohash   # PG 17
apt install -y postgresql-16-pg-geohash   # PG 16
apt install -y postgresql-15-pg-geohash   # PG 15
apt install -y postgresql-14-pg-geohash   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_geohash;
```



## Usage

> [pg_geohash: Geohash functions for PostgreSQL](https://github.com/jistok/pg_geohash)

C-based geohash functions for PostgreSQL (also supports HAWQ and Greenplum). Based on the [libgeohash](https://github.com/lyokato/libgeohash) C library.

Background on geohash: [Wikipedia: Geohash](http://en.wikipedia.org/wiki/Geohash)

### Functions

Encode latitude/longitude to a geohash string with specified precision:

```sql
SELECT LAT_LON_TO_GEOHASH_WITH_LEN(latitude, longitude, 5) AS geohash;
```

Encode latitude/longitude to a full-precision geohash:

```sql
SELECT LAT_LON_TO_GEOHASH(latitude, longitude) AS geohash;
```

Decode a geohash back to latitude/longitude:

```sql
SELECT GEOHASH_TO_LAT_LON('dp3w7') AS lat_lon;
```

### Example

Compute geohash-based aggregates using 5-character precision (~2.4km x 4.9km cells):

```sql
SELECT LAT_LON_TO_GEOHASH_WITH_LEN(latitude, longitude, 5) AS geohash,
       COUNT(*)
FROM crimes
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
```

```
 geohash | count
---------+-------
 dp3w7   | 72404
 dp3tt   | 70713
 dp3tw   | 63642
 dp3wm   | 62332
 dp3wk   | 56467
```

Recover coordinates from a geohash:

```sql
SELECT location,
       GEOHASH_TO_LAT_LON(LAT_LON_TO_GEOHASH(latitude, longitude))
FROM crimes
LIMIT 5;
```
