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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_eviltransform-0.0.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_eviltransform-0.0.4.tar.gz</div>
    <div class="ext-card__desc">pg_eviltransform-0.0.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_eviltransform`**](/ext/e/pg_eviltransform) | `0.0.4` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1580  | [**`pg_eviltransform`**](/ext/e/pg_eviltransform) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `eviltransform_internal` |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`postgis`](/ext/e/postgis) [`h3`](/ext/e/h3) [`pg_geohash`](/ext/e/pg_geohash) [`pg_polyline`](/ext/e/pg_polyline) [`earthdistance`](/ext/e/earthdistance) [`qdgc`](/ext/e/qdgc) [`convert`](/ext/e/convert) [`pgrouting`](/ext/e/pgrouting) [`nominatim_fdw`](/ext/e/nominatim_fdw) [`q3c`](/ext/e/q3c) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_eviltransform` | `postgis` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_eviltransform_$v` | `postgis36_$v` |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-eviltransform` | `postgresql-$v-postgis` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 | AVAIL PIGSTY 0.0.4 1 |
@ el8.x86_64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.4-1PIGSTY.el8.x86_64.rpm pigsty 0.0.4 918.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_18-0.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.4-1PIGSTY.el8.aarch64.rpm pigsty 0.0.4 819.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_18-0.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.4-1PIGSTY.el9.x86_64.rpm pigsty 0.0.4 926.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_18-0.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.4-1PIGSTY.el9.aarch64.rpm pigsty 0.0.4 871.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_18-0.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.4-1PIGSTY.el10.x86_64.rpm pigsty 0.0.4 926.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_18-0.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_eviltransform_18 pg_eviltransform_18-0.0.4-1PIGSTY.el10.aarch64.rpm pigsty 0.0.4 849.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_18-0.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb pigsty 0.0.4 737.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb pigsty 0.0.4 611.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb pigsty 0.0.4 737.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb pigsty 0.0.4 612.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb pigsty 0.0.4 816.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb pigsty 0.0.4 723.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb pigsty 0.0.4 810.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb pigsty 0.0.4 715.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb pigsty 0.0.4 806.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-eviltransform postgresql-18-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb pigsty 0.0.4 713.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-18-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.4-1PIGSTY.el8.x86_64.rpm pigsty 0.0.4 915.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_17-0.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.4-1PIGSTY.el8.aarch64.rpm pigsty 0.0.4 816.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_17-0.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.4-1PIGSTY.el9.x86_64.rpm pigsty 0.0.4 923.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_17-0.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.4-1PIGSTY.el9.aarch64.rpm pigsty 0.0.4 866.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_17-0.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.4-1PIGSTY.el10.x86_64.rpm pigsty 0.0.4 923.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_17-0.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_eviltransform_17 pg_eviltransform_17-0.0.4-1PIGSTY.el10.aarch64.rpm pigsty 0.0.4 848.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_17-0.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb pigsty 0.0.4 735.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb pigsty 0.0.4 609.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb pigsty 0.0.4 734.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb pigsty 0.0.4 610.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb pigsty 0.0.4 816.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb pigsty 0.0.4 721.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb pigsty 0.0.4 808.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb pigsty 0.0.4 712.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb pigsty 0.0.4 804.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-eviltransform postgresql-17-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb pigsty 0.0.4 711.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-17-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.4-1PIGSTY.el8.x86_64.rpm pigsty 0.0.4 914.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_16-0.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.4-1PIGSTY.el8.aarch64.rpm pigsty 0.0.4 814.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_16-0.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.4-1PIGSTY.el9.x86_64.rpm pigsty 0.0.4 921.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_16-0.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.4-1PIGSTY.el9.aarch64.rpm pigsty 0.0.4 865.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_16-0.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.4-1PIGSTY.el10.x86_64.rpm pigsty 0.0.4 921.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_16-0.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_eviltransform_16 pg_eviltransform_16-0.0.4-1PIGSTY.el10.aarch64.rpm pigsty 0.0.4 848.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_16-0.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb pigsty 0.0.4 733.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb pigsty 0.0.4 610.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb pigsty 0.0.4 733.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb pigsty 0.0.4 610.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb pigsty 0.0.4 814.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb pigsty 0.0.4 720.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb pigsty 0.0.4 807.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb pigsty 0.0.4 712.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb pigsty 0.0.4 803.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-eviltransform postgresql-16-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb pigsty 0.0.4 709.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-16-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.4-1PIGSTY.el8.x86_64.rpm pigsty 0.0.4 904.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_15-0.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.4-1PIGSTY.el8.aarch64.rpm pigsty 0.0.4 805.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_15-0.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.4-1PIGSTY.el9.x86_64.rpm pigsty 0.0.4 911.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_15-0.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.4-1PIGSTY.el9.aarch64.rpm pigsty 0.0.4 855.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_15-0.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.4-1PIGSTY.el10.x86_64.rpm pigsty 0.0.4 912.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_15-0.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_eviltransform_15 pg_eviltransform_15-0.0.4-1PIGSTY.el10.aarch64.rpm pigsty 0.0.4 844.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_15-0.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb pigsty 0.0.4 728.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb pigsty 0.0.4 605.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb pigsty 0.0.4 727.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb pigsty 0.0.4 605.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb pigsty 0.0.4 805.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb pigsty 0.0.4 714.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb pigsty 0.0.4 800.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb pigsty 0.0.4 706.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb pigsty 0.0.4 796.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-eviltransform postgresql-15-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb pigsty 0.0.4 704.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-15-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.4-1PIGSTY.el8.x86_64.rpm pigsty 0.0.4 901.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_eviltransform_14-0.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.4-1PIGSTY.el8.aarch64.rpm pigsty 0.0.4 803.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_eviltransform_14-0.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.4-1PIGSTY.el9.x86_64.rpm pigsty 0.0.4 908.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_eviltransform_14-0.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.4-1PIGSTY.el9.aarch64.rpm pigsty 0.0.4 852.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_eviltransform_14-0.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.4-1PIGSTY.el10.x86_64.rpm pigsty 0.0.4 908.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_eviltransform_14-0.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_eviltransform_14 pg_eviltransform_14-0.0.4-1PIGSTY.el10.aarch64.rpm pigsty 0.0.4 843.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_eviltransform_14-0.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb pigsty 0.0.4 725.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb pigsty 0.0.4 603.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb pigsty 0.0.4 725.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb pigsty 0.0.4 604.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb pigsty 0.0.4 804.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb pigsty 0.0.4 711.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb pigsty 0.0.4 798.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb pigsty 0.0.4 704.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb pigsty 0.0.4 793.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-eviltransform postgresql-14-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb pigsty 0.0.4 703.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-eviltransform/postgresql-14-eviltransform_0.0.4-1PIGSTY~resolute_arm64.deb
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

Sources:

- [Official v0.0.4 README](https://github.com/aiyou178/pg_eviltransform/blob/v0.0.4/README.md)
- [v0.0.4 release notes](https://github.com/aiyou178/pg_eviltransform/releases/tag/v0.0.4)
- [v0.0.4 control file](https://github.com/aiyou178/pg_eviltransform/blob/v0.0.4/pg_eviltransform.control)
- [v0.0.4 upgrade SQL](https://github.com/aiyou178/pg_eviltransform/blob/v0.0.4/pg_eviltransform--0.0.3--0.0.4.sql)

`pg_eviltransform` extends PostGIS with coordinate transformations involving China's GCJ-02 and BD-09 systems. Version `0.0.4` also adds exact Jenks natural-break classification through `ST_JenksBins` array and aggregate overloads.

### Coordinate Transformation

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION pg_eviltransform;

-- WGS84 to GCJ-02 using a readable coordinate-system name.
SELECT ST_EvilTransform(
    ST_SetSRID('POINT(120 30)'::geometry, 4326),
    'GCJ02'
);

-- BD-09 to Web Mercator.
SELECT ST_EvilTransform(
    ST_SetSRID('POINT(120.011070620552 30.0038830555128)'::geometry, 990002),
    3857
);
```

Custom SRIDs are `990001` for GCJ-02 and `990002` for BD-09. When neither endpoint uses a custom system, `ST_EvilTransform` delegates to PostGIS `ST_Transform`; otherwise it converts through WGS84 (`4326`) when necessary.

### Jenks Natural Breaks

```sql
-- Array form; NULL elements are ignored.
SELECT ST_JenksBins(ARRAY[1, 2, NULL, 10, 11]::numeric[], 2);

-- Streaming aggregate form for a large table.
SELECT ST_JenksBins(value, 7)
FROM measurements;

-- Return lower rather than upper bin edges.
SELECT ST_JenksBins(value, 7, true)
FROM measurements;
```

Array inputs support `numeric`, `double precision`, `real`, `bigint`, `integer`, and `smallint`. Aggregate inputs are `numeric` or `double precision`; cast other numeric columns when needed.

### API Index and Caveats

- `ST_EvilTransform(geometry, integer|text)` and `ST_EvilTransform(geometry, text, integer|text)`: four overloads corresponding to the PostGIS `ST_Transform` interface.
- `ST_JenksBins(values[], breaks [, invert])`: classifies an array and returns `double precision[]` edges.
- `ST_JenksBins(value, breaks [, invert])`: streaming aggregate that avoids materializing `array_agg`.
- PostGIS is a runtime prerequisite and must be installed before `pg_eviltransform`.
- Jenks inputs must be finite and `breaks` must be at least one. `numeric` values are converted to finite `f64`, so returned edges are floating-point values.
- When the distinct value count does not exceed `breaks`, the result is the sorted set of unique values; no valid input rows return `NULL`.
