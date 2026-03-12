---
title: "pg_eviltransform"
linkTitle: "pg_eviltransform"
description: "Coordinate transforms for BD09/GCJ02 via PostGIS ST_Transform"
weight: 1580
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/aiyou178/pg_eviltransform">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">aiyou178/pg_eviltransform</div>
    <div class="ext-card__desc">https://github.com/aiyou178/pg_eviltransform</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_eviltransform-0.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_eviltransform-0.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_eviltransform-0.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_eviltransform`**](/ext/e/pg_eviltransform) | `0.0.2` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1580  | [**`pg_eviltransform`**](/ext/e/pg_eviltransform) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `eviltransform_internal` |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`postgis`](/ext/e/postgis) [`pgrouting`](/ext/e/pgrouting) [`pg_geohash`](/ext/e/pg_geohash) [`h3`](/ext/e/h3) [`q3c`](/ext/e/q3c) [`earthdistance`](/ext/e/earthdistance) [`tzf`](/ext/e/tzf) [`geoip`](/ext/e/geoip) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_eviltransform` | `postgis` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_eviltransform_$v` | `postgis36_$v` |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-eviltransform` | `postgresql-$v-postgis` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
@ el8.x86_64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 300.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_18-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 194.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_18-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 315.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_18-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 207.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_18-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 316.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_18-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 208.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_18-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.0.2 249.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.0.2 150.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb pigsty 0.0.2 248.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb pigsty 0.0.2 150.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb pigsty 0.0.2 280.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb pigsty 0.0.2 174.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb pigsty 0.0.2 277.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb pigsty 0.0.2 173.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 300.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_17-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 194.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_17-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 315.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_17-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 207.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_17-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 315.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_17-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 208.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_17-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.0.2 248.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.0.2 150.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb pigsty 0.0.2 248.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb pigsty 0.0.2 150.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb pigsty 0.0.2 280.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb pigsty 0.0.2 174.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb pigsty 0.0.2 277.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb pigsty 0.0.2 173.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 300.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_16-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 194.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_16-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 315.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_16-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 207.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_16-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 315.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_16-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 208.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_16-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.0.2 248.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.0.2 150.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb pigsty 0.0.2 247.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb pigsty 0.0.2 150.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb pigsty 0.0.2 280.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb pigsty 0.0.2 174.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb pigsty 0.0.2 277.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb pigsty 0.0.2 173.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 300.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_15-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 194.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_15-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 315.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_15-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 207.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_15-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 315.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_15-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 208.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_15-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.0.2 249.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.0.2 150.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb pigsty 0.0.2 248.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb pigsty 0.0.2 150.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb pigsty 0.0.2 280.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb pigsty 0.0.2 174.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb pigsty 0.0.2 277.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb pigsty 0.0.2 173.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 300.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_14-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 194.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_14-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 315.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_14-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 207.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_14-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 315.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_14-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 208.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_14-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.0.2 248.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.0.2 150.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb pigsty 0.0.2 248.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb pigsty 0.0.2 150.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb pigsty 0.0.2 280.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb pigsty 0.0.2 174.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb pigsty 0.0.2 277.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb pigsty 0.0.2 173.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.2-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_eviltransform` using `pig build`:

```bash
pig build pkg pg_eviltransform         # build RPM / DEB packages
```


## Install

You can install `pg_eviltransform` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_eviltransform;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_eviltransform -v 18  # PG 18
pig ext install -y pg_eviltransform -v 17  # PG 17
pig ext install -y pg_eviltransform -v 16  # PG 16
pig ext install -y pg_eviltransform -v 15  # PG 15
pig ext install -y pg_eviltransform -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_eviltransform_18       # PG 18
dnf install -y pg_eviltransform_17       # PG 17
dnf install -y pg_eviltransform_16       # PG 16
dnf install -y pg_eviltransform_15       # PG 15
dnf install -y pg_eviltransform_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-eviltransform   # PG 18
apt install -y postgresql-17-eviltransform   # PG 17
apt install -y postgresql-16-eviltransform   # PG 16
apt install -y postgresql-15-eviltransform   # PG 15
apt install -y postgresql-14-eviltransform   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_eviltransform CASCADE;  -- requires: postgis
```



## Usage

> [pg_eviltransform: Coordinate transform between WGS84, GCJ02, and BD09](https://github.com/aiyou178/pg_eviltransform)

`pg_eviltransform` extends PostGIS `ST_Transform` with BD09/GCJ02 support for Chinese coordinate systems. It exposes `ST_EvilTransform` with the same overload interface as `ST_Transform`.

Custom SRIDs:
- `990001`: GCJ02
- `990002`: BD09

### Functions

```sql
ST_EvilTransform(geometry, to_srid integer)
ST_EvilTransform(geometry, to_proj text)
ST_EvilTransform(geometry, from_proj text, to_srid integer)
ST_EvilTransform(geometry, from_proj text, to_proj text)
```

If neither side uses custom coordinates, it delegates directly to `ST_Transform`. If BD09/GCJ02 is involved, it transforms via WGS84 (`4326`) when needed.

### Examples

```sql
-- WGS84 to GCJ02 using text literal
SELECT ST_EvilTransform(ST_SetSRID('POINT(120 30)'::geometry, 4326), 'GCJ02');

-- WGS84 to BD09 using text literal
SELECT ST_EvilTransform(ST_SetSRID('POINT(120 30)'::geometry, 4326), 'BD09');

-- WGS84 to GCJ02 using numeric SRID
SELECT ST_EvilTransform(ST_SetSRID('POINT(120 30)'::geometry, 4326), 990001);

-- BD09 to Web Mercator
SELECT ST_EvilTransform(
  ST_SetSRID('POINT(120.011070620552 30.0038830555128)'::geometry, 990002), 3857
);

-- from_proj / to_proj overload
SELECT ST_EvilTransform('POINT(120 30)'::geometry, 'EPSG:4326', 'GCJ02');
```

### Performance

On PG18 with 200,000 rows, `ST_EvilTransform` is ~30-45x faster than the regex-based SQL approach.
