---
title: "pg_polyline"
linkTitle: "pg_polyline"
description: "Fast Google Encoded Polyline encoding & decoding for postgres"
weight: 1570
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/yihong0618/pg_polyline">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">yihong0618/pg_polyline</div>
    <div class="ext-card__desc">https://github.com/yihong0618/pg_polyline</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_polyline-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_polyline-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_polyline-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_polyline`**](/ext/e/pg_polyline) | `0.0.1` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1570  | [**`pg_polyline`**](/ext/e/pg_polyline) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`pgrouting`](/ext/e/pgrouting) [`pg_geohash`](/ext/e/pg_geohash) [`postgis_topology`](/ext/e/postgis_topology) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`address_standardizer`](/ext/e/address_standardizer) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_polyline` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_polyline_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-polyline` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_polyline_18 pg_polyline_18-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 312.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_polyline_18-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_polyline_18 pg_polyline_18-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 205.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_polyline_18-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_polyline_18 pg_polyline_18-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 326.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_polyline_18-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_polyline_18 pg_polyline_18-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 218.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_polyline_18-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_polyline_18 pg_polyline_18-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 326.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_polyline_18-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_polyline_18 pg_polyline_18-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 218.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_polyline_18-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 256.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 256.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 289.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 183.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 286.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 181.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 744.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-polyline postgresql-18-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 660.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-18-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_polyline_17 pg_polyline_17-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 311.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_polyline_17-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_polyline_17 pg_polyline_17-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 205.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_polyline_17-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_polyline_17 pg_polyline_17-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 326.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_polyline_17-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_polyline_17 pg_polyline_17-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 219.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_polyline_17-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_polyline_17 pg_polyline_17-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 326.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_polyline_17-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_polyline_17 pg_polyline_17-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 218.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_polyline_17-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 257.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 158.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 257.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 288.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 183.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 286.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 182.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 742.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-polyline postgresql-17-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 657.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-17-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_polyline_16 pg_polyline_16-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 311.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_polyline_16-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_polyline_16 pg_polyline_16-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 205.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_polyline_16-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_polyline_16 pg_polyline_16-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 326.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_polyline_16-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_polyline_16 pg_polyline_16-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 219.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_polyline_16-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_polyline_16 pg_polyline_16-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 326.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_polyline_16-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_polyline_16 pg_polyline_16-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 218.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_polyline_16-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 257.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 257.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 289.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 183.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 286.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 181.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 742.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-polyline postgresql-16-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 656.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-16-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_polyline_15 pg_polyline_15-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 311.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_polyline_15-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_polyline_15 pg_polyline_15-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 205.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_polyline_15-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_polyline_15 pg_polyline_15-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 326.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_polyline_15-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_polyline_15 pg_polyline_15-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 218.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_polyline_15-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_polyline_15 pg_polyline_15-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 325.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_polyline_15-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_polyline_15 pg_polyline_15-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 218.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_polyline_15-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 256.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 256.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 288.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 183.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 286.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 182.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 731.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-polyline postgresql-15-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 651.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-15-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_polyline_14 pg_polyline_14-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 311.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_polyline_14-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_polyline_14 pg_polyline_14-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 205.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_polyline_14-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_polyline_14 pg_polyline_14-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 326.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_polyline_14-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_polyline_14 pg_polyline_14-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 219.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_polyline_14-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_polyline_14 pg_polyline_14-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 325.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_polyline_14-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_polyline_14 pg_polyline_14-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 218.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_polyline_14-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 256.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 158.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 256.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 157.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 288.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 183.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 286.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 182.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb pigsty 0.0.1 733.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-polyline postgresql-14-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb pigsty 0.0.1 649.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-polyline/postgresql-14-pg-polyline_0.0.1-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_polyline` using `pig build`:

```bash
pig build pkg pg_polyline         # build RPM / DEB packages
```


## Install

You can install `pg_polyline` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_polyline;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_polyline -v 18  # PG 18
pig ext install -y pg_polyline -v 17  # PG 17
pig ext install -y pg_polyline -v 16  # PG 16
pig ext install -y pg_polyline -v 15  # PG 15
pig ext install -y pg_polyline -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_polyline_18       # PG 18
dnf install -y pg_polyline_17       # PG 17
dnf install -y pg_polyline_16       # PG 16
dnf install -y pg_polyline_15       # PG 15
dnf install -y pg_polyline_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-polyline   # PG 18
apt install -y postgresql-17-pg-polyline   # PG 17
apt install -y postgresql-16-pg-polyline   # PG 16
apt install -y postgresql-15-pg-polyline   # PG 15
apt install -y postgresql-14-pg-polyline   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_polyline;
```




## Usage

> [pg_polyline: Google Encoded Polyline encoding & decoding for PostgreSQL](https://github.com/yihong0618/pg_polyline)

Fast Google Encoded Polyline encoding & decoding as a PostgreSQL extension. Built with `pgrx`.

```sql
CREATE EXTENSION pg_polyline;

-- Encode an array of points to a polyline string
SELECT polyline_encode(
  ARRAY[point(-120.2, 38.5), point(-120.95, 40.7), point(-126.453, 43.252)], 6
);
--          polyline_encode
-- ----------------------------------
--  _izlhA~rlgdF_{geC~ywl@_kwzCn`{nI

-- Decode a polyline string back to points
SELECT polyline_decode('_ibE_seK_seK_seK', 6);
--       polyline_decode
-- ---------------------------
--  {"(0.2,0.1)","(0.4,0.3)"}
```

The second parameter is the precision (number of decimal places).
