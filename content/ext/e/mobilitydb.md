---
title: "mobilitydb"
linkTitle: "mobilitydb"
description: "MobilityDB geospatial trajectory data management & analysis platform"
weight: 1650
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/MobilityDB/MobilityDB">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">MobilityDB/MobilityDB</div>
    <div class="ext-card__desc">https://github.com/MobilityDB/MobilityDB</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/mobilitydb-1.3.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">mobilitydb-1.3.1.tar.gz</div>
    <div class="ext-card__desc">mobilitydb-1.3.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`mobilitydb`**](/ext/e/mobilitydb) | `1.3.1` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1650  | [**`mobilitydb`**](/ext/e/mobilitydb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 1651  | [**`mobilitydb_datagen`**](/ext/e/mobilitydb_datagen) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`h3`](/ext/e/h3) [`pgrouting`](/ext/e/pgrouting) [`postgis`](/ext/e/postgis) [`pg_polyline`](/ext/e/pg_polyline) [`q3c`](/ext/e/q3c) [`pg_sphere`](/ext/e/pg_sphere) [`pointcloud`](/ext/e/pointcloud) [`pg_geohash`](/ext/e/pg_geohash) [`qdgc`](/ext/e/qdgc) [`pg_eviltransform`](/ext/e/pg_eviltransform) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`mobilitydb_datagen`](/ext/e/mobilitydb_datagen) |
{.ext-table .ext-table--rel}


> Pigsty 1.3.1 includes the security fix; upgrading from 1.2 to 1.3 requires upstream backup/restore.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `mobilitydb` | `postgis` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `mobilitydb_$v` | `postgis36_$v` |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-mobilitydb` | `postgresql-$v-postgis-3` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
| d12.aarch64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
| d13.x86_64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
| d13.aarch64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
| u22.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 2 | AVAIL PIGSTY 1.3.1 2 | AVAIL PIGSTY 1.3.1 2 | AVAIL PIGSTY 1.3.1 2 |
| u22.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 2 | AVAIL PIGSTY 1.3.1 2 | AVAIL PIGSTY 1.3.1 2 | AVAIL PIGSTY 1.3.1 2 |
| u24.x86_64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
| u24.aarch64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
| u26.x86_64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
| u26.aarch64 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 | AVAIL PIGSTY 1.3.1 4 |
@ el8.x86_64 18 mobilitydb_18 mobilitydb_18-1.3.1-1PGSTY.el8.x86_64.rpm pigsty 1.3.1 789.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mobilitydb_18-1.3.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 mobilitydb_18 mobilitydb_18-1.3.1-1PGSTY.el8.aarch64.rpm pigsty 1.3.1 737.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mobilitydb_18-1.3.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 mobilitydb_18 mobilitydb_18-1.3.1-1PGSTY.el9.x86_64.rpm pigsty 1.3.1 690.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mobilitydb_18-1.3.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 mobilitydb_18 mobilitydb_18-1.3.1-1PGSTY.el9.aarch64.rpm pigsty 1.3.1 676.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mobilitydb_18-1.3.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 mobilitydb_18 mobilitydb_18-1.3.1-1PGSTY.el10.x86_64.rpm pigsty 1.3.1 707.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mobilitydb_18-1.3.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 mobilitydb_18 mobilitydb_18-1.3.1-1PGSTY.el10.aarch64.rpm pigsty 1.3.1 681.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mobilitydb_18-1.3.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb pigsty 1.3.1 716.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb pgdg 1.3.0 715.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb pgdg 1.3.0 715.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb pgdg 1.3.0 709.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb pigsty 1.3.1 648.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb pgdg 1.3.0 648.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb pgdg 1.3.0 647.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb pgdg 1.3.0 642.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb pigsty 1.3.1 715.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb pgdg 1.3.0 716.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb pgdg 1.3.0 716.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb pgdg 1.3.0 710.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb pigsty 1.3.1 660.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb pgdg 1.3.0 657.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb pgdg 1.3.0 651.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb pigsty 1.3.1 667.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb pigsty 1.3.1 656.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb pigsty 1.3.1 664.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb pgdg 1.3.0 609.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb pigsty 1.3.1 653.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 581.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb pgdg 1.3.0 572.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb pigsty 1.3.1 661.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb pgdg 1.3.0 613.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb pigsty 1.3.1 648.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-mobilitydb postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb pgdg 1.3.0 572.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-18-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 mobilitydb_17 mobilitydb_17-1.3.1-1PGSTY.el8.x86_64.rpm pigsty 1.3.1 789.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mobilitydb_17-1.3.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 mobilitydb_17 mobilitydb_17-1.3.1-1PGSTY.el8.aarch64.rpm pigsty 1.3.1 737.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mobilitydb_17-1.3.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 mobilitydb_17 mobilitydb_17-1.3.1-1PGSTY.el9.x86_64.rpm pigsty 1.3.1 690.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mobilitydb_17-1.3.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 mobilitydb_17 mobilitydb_17-1.3.1-1PGSTY.el9.aarch64.rpm pigsty 1.3.1 676.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mobilitydb_17-1.3.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 mobilitydb_17 mobilitydb_17-1.3.1-1PGSTY.el10.x86_64.rpm pigsty 1.3.1 707.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mobilitydb_17-1.3.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 mobilitydb_17 mobilitydb_17-1.3.1-1PGSTY.el10.aarch64.rpm pigsty 1.3.1 681.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mobilitydb_17-1.3.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb pigsty 1.3.1 713.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb pgdg 1.3.0 715.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb pgdg 1.3.0 716.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb pgdg 1.3.0 709.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb pigsty 1.3.1 648.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb pgdg 1.3.0 648.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb pgdg 1.3.0 648.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb pgdg 1.3.0 641.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb pigsty 1.3.1 715.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb pgdg 1.3.0 716.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb pgdg 1.3.0 714.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb pgdg 1.3.0 709.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb pigsty 1.3.1 657.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb pgdg 1.3.0 651.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb pigsty 1.3.1 667.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb pgdg 1.2.0 574.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb pigsty 1.3.1 663.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb pgdg 1.2.0 535.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb pigsty 1.3.1 664.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb pgdg 1.3.0 609.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb pigsty 1.3.1 653.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 581.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb pgdg 1.3.0 572.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb pigsty 1.3.1 661.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb pgdg 1.3.0 613.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb pigsty 1.3.1 649.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-mobilitydb postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb pgdg 1.3.0 572.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-17-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 mobilitydb_16 mobilitydb_16-1.3.1-1PGSTY.el8.x86_64.rpm pigsty 1.3.1 789.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mobilitydb_16-1.3.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 mobilitydb_16 mobilitydb_16-1.3.1-1PGSTY.el8.aarch64.rpm pigsty 1.3.1 737.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mobilitydb_16-1.3.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 mobilitydb_16 mobilitydb_16-1.3.1-1PGSTY.el9.x86_64.rpm pigsty 1.3.1 690.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mobilitydb_16-1.3.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 mobilitydb_16 mobilitydb_16-1.3.1-1PGSTY.el9.aarch64.rpm pigsty 1.3.1 676.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mobilitydb_16-1.3.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 mobilitydb_16 mobilitydb_16-1.3.1-1PGSTY.el10.x86_64.rpm pigsty 1.3.1 708.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mobilitydb_16-1.3.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 mobilitydb_16 mobilitydb_16-1.3.1-1PGSTY.el10.aarch64.rpm pigsty 1.3.1 681.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mobilitydb_16-1.3.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb pigsty 1.3.1 715.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb pgdg 1.3.0 715.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb pgdg 1.3.0 715.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb pgdg 1.3.0 708.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb pigsty 1.3.1 647.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb pgdg 1.3.0 647.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb pgdg 1.3.0 647.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb pgdg 1.3.0 642.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb pigsty 1.3.1 716.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb pgdg 1.3.0 716.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb pgdg 1.3.0 717.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb pgdg 1.3.0 709.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb pigsty 1.3.1 658.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb pgdg 1.3.0 653.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb pigsty 1.3.1 667.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb pgdg 1.2.0 574.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb pigsty 1.3.1 656.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb pgdg 1.2.0 535.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb pigsty 1.3.1 664.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 619.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb pgdg 1.3.0 609.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb pigsty 1.3.1 652.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb pgdg 1.3.0 572.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb pigsty 1.3.1 661.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb pgdg 1.3.0 613.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb pigsty 1.3.1 648.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-mobilitydb postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb pgdg 1.3.0 572.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-16-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 mobilitydb_15 mobilitydb_15-1.3.1-1PGSTY.el8.x86_64.rpm pigsty 1.3.1 788.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mobilitydb_15-1.3.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 mobilitydb_15 mobilitydb_15-1.3.1-1PGSTY.el8.aarch64.rpm pigsty 1.3.1 737.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mobilitydb_15-1.3.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 mobilitydb_15 mobilitydb_15-1.3.1-1PGSTY.el9.x86_64.rpm pigsty 1.3.1 690.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mobilitydb_15-1.3.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 mobilitydb_15 mobilitydb_15-1.3.1-1PGSTY.el9.aarch64.rpm pigsty 1.3.1 675.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mobilitydb_15-1.3.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 mobilitydb_15 mobilitydb_15-1.3.1-1PGSTY.el10.x86_64.rpm pigsty 1.3.1 707.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mobilitydb_15-1.3.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 mobilitydb_15 mobilitydb_15-1.3.1-1PGSTY.el10.aarch64.rpm pigsty 1.3.1 681.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mobilitydb_15-1.3.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb pigsty 1.3.1 715.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb pgdg 1.3.0 715.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb pgdg 1.3.0 715.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb pgdg 1.3.0 708.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb pigsty 1.3.1 647.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb pgdg 1.3.0 647.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb pgdg 1.3.0 648.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb pgdg 1.3.0 643.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb pigsty 1.3.1 715.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb pgdg 1.3.0 716.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb pgdg 1.3.0 715.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb pgdg 1.3.0 708.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb pigsty 1.3.1 658.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb pgdg 1.3.0 653.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb pigsty 1.3.1 666.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb pgdg 1.2.0 573.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb pigsty 1.3.1 656.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb pgdg 1.2.0 536.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb pigsty 1.3.1 663.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb pgdg 1.3.0 609.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb pigsty 1.3.1 662.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb pgdg 1.3.0 572.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb pigsty 1.3.1 661.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 621.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb pgdg 1.3.0 612.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb pigsty 1.3.1 648.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-mobilitydb postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb pgdg 1.3.0 572.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-15-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 mobilitydb_14 mobilitydb_14-1.3.1-1PGSTY.el8.x86_64.rpm pigsty 1.3.1 788.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mobilitydb_14-1.3.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 mobilitydb_14 mobilitydb_14-1.3.1-1PGSTY.el8.aarch64.rpm pigsty 1.3.1 737.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mobilitydb_14-1.3.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 mobilitydb_14 mobilitydb_14-1.3.1-1PGSTY.el9.x86_64.rpm pigsty 1.3.1 690.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mobilitydb_14-1.3.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 mobilitydb_14 mobilitydb_14-1.3.1-1PGSTY.el9.aarch64.rpm pigsty 1.3.1 676.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mobilitydb_14-1.3.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 mobilitydb_14 mobilitydb_14-1.3.1-1PGSTY.el10.x86_64.rpm pigsty 1.3.1 706.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mobilitydb_14-1.3.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 mobilitydb_14 mobilitydb_14-1.3.1-1PGSTY.el10.aarch64.rpm pigsty 1.3.1 681.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mobilitydb_14-1.3.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb pigsty 1.3.1 714.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb pgdg 1.3.0 716.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb pgdg 1.3.0 716.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb pgdg 1.3.0 708.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb pigsty 1.3.1 648.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb pgdg 1.3.0 648.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb pgdg 1.3.0 648.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb pgdg 1.3.0 641.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb pigsty 1.3.1 716.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb pgdg 1.3.0 716.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb pgdg 1.3.0 716.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb pgdg 1.3.0 709.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb pigsty 1.3.1 659.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb pgdg 1.3.0 658.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb pgdg 1.3.0 657.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb pgdg 1.3.0 652.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb pigsty 1.3.1 666.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb pgdg 1.2.0 573.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.2.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb pigsty 1.3.1 656.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb pgdg 1.2.0 535.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.2.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb pigsty 1.3.1 664.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb pgdg 1.3.0 618.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb pgdg 1.3.0 609.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb pigsty 1.3.1 652.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb pgdg 1.3.0 580.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb pgdg 1.3.0 572.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb pigsty 1.3.1 661.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb pgdg 1.3.0 622.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb pgdg 1.3.0 613.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb pigsty 1.3.1 649.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.1-1PGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb pgdg 1.3.0 580.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~rc1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-mobilitydb postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb pgdg 1.3.0 572.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mobilitydb/postgresql-14-mobilitydb_1.3.0~alpha-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `mobilitydb` using `pig build`:

```bash
pig build pkg mobilitydb         # build RPM / DEB packages
```


## Install

You can install `mobilitydb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install mobilitydb;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y mobilitydb -v 18  # PG 18
pig ext install -y mobilitydb -v 17  # PG 17
pig ext install -y mobilitydb -v 16  # PG 16
pig ext install -y mobilitydb -v 15  # PG 15
pig ext install -y mobilitydb -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y mobilitydb_18       # PG 18
dnf install -y mobilitydb_17       # PG 17
dnf install -y mobilitydb_16       # PG 16
dnf install -y mobilitydb_15       # PG 15
dnf install -y mobilitydb_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-mobilitydb   # PG 18
apt install -y postgresql-17-mobilitydb   # PG 17
apt install -y postgresql-16-mobilitydb   # PG 16
apt install -y postgresql-15-mobilitydb   # PG 15
apt install -y postgresql-14-mobilitydb   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'postgis-3';
```


**Create Extension**:

```sql
CREATE EXTENSION mobilitydb CASCADE;  -- requires: postgis
```

## Usage

Sources:

- [MobilityDB v1.3.1 README](https://github.com/MobilityDB/MobilityDB/blob/v1.3.1/README.md)
- [Extension control file](https://github.com/MobilityDB/MobilityDB/blob/v1.3.1/mobilitydb/sql/mobilitydb.in.control)
- [Version 1.3 migration manual](https://github.com/MobilityDB/MobilityDB/blob/v1.3.1/doc/introduction.xml)
- [Temporal spatial API](https://github.com/MobilityDB/MobilityDB/blob/v1.3.1/doc/temporal_spatial_p1.xml)
- [Version 1.3.1 release and upgrade](https://github.com/MobilityDB/MobilityDB/releases/tag/v1.3.1)
- [1.3.0 to 1.3.1 SQL migration](https://github.com/MobilityDB/MobilityDB/blob/v1.3.1/mobilitydb/sql/mobilitydb--1.3.0--1.3.1.sql)

`mobilitydb` 1.3.1 extends PostgreSQL and PostGIS with temporal values and moving-object trajectories. It supports storing changing attributes, reconstructing positions at a timestamp, and indexing space-time bounds. This patch fixes a backend-crashing binary-input vulnerability; installations on 1.3.0 should upgrade.

### Enable the Extension

The release requires PostgreSQL 14 or later and PostGIS 3 or later; it also adds PostgreSQL 19 build support. Package availability is tracked separately. Upstream requires loading the matching PostGIS library and recommends this lock allocation:

```conf
shared_preload_libraries = 'postgis-3'
max_locks_per_transaction = 128
```

Append the PostGIS library to the existing preload list, restart PostgreSQL, and enable both extensions in the target database with an authorized administrative role:

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION mobilitydb;
```

### Store and Query a Trajectory

The example uses projected coordinates and complete UTC timestamps. Choose the coordinate reference system appropriate for the application; geographic coordinates require different distance semantics.

```sql
CREATE TABLE trips (
    trip_id bigint PRIMARY KEY,
    trip tgeompoint NOT NULL
);

INSERT INTO trips VALUES (
    1,
    tgeompoint 'SRID=3857;[Point(0 0)@2026-01-01 08:00:00+00,
                         Point(1000 0)@2026-01-01 09:00:00+00]'
);

SELECT valueAtTimestamp(trip, '2026-01-01 08:30:00+00'),
       ST_AsText(trajectory(trip)),
       length(trip),
       speed(trip)
FROM trips;

CREATE INDEX trips_space_time_idx ON trips USING gist (trip);

SELECT trip_id
FROM trips
WHERE trip && stbox(
    ST_MakeEnvelope(-100, -100, 1100, 100, 3857),
    tstzspan '[2026-01-01 08:00:00+00, 2026-01-01 09:00:00+00]'
);
```

The bounding-box operator supplies an indexable filter. Apply the appropriate exact temporal or spatial predicate afterward when bounding overlap is insufficient.

### Type and Function Index

- `tbool`, `tint`, `tfloat`, and `ttext`: time-varying scalar values.
- `tgeompoint` and `tgeogpoint`: moving geometry or geography points; `tnpoint` represents a network point when that optional family is built.
- `tgeometry` and `tgeography`: arbitrary changing spatial values with discrete or step interpolation.
- `tcbuffer`, `tpose`, and `trgeometry`: optional experimental spatial families in the 1.3 line; do not assume every build contains them.
- Instant, sequence, and sequence-set representations describe one timestamp, one sequence, or multiple non-overlapping sequences. Linear interpolation is type-dependent.
- `valueAtTimestamp`, `startTimestamp`, `endTimestamp`, and `duration`: inspect temporal extent and values.
- `atTime` and `atGeometry`: restrict values to a time domain or geometry.
- `trajectory`, `length`, and `speed`: inspect the spatial path and motion.
- `twAvg` and `tUnion`: time-weighted summaries and temporal aggregation.
- GiST and SP-GiST operator classes accelerate supported temporal and space-time bounding queries.

### Upgrade and Safety Boundaries

Install the new library and SQL files, then update each database:

```sql
ALTER EXTENSION mobilitydb UPDATE TO '1.3.1';
SELECT extversion FROM pg_extension WHERE extname = 'mobilitydb';
```

- Version 1.3.1 fixes CVE-2026-102639: malformed WKB temporal, set, or span input could read beyond the input buffer and crash a backend. The SQL migration alone does not replace the vulnerable library; reconnect or restart processes that loaded the older binary.
- The migration removes five same-base-type `<->` operators and their `set_distance` functions because they conflict with operators supplied by `btree_gist`. Review dependent objects before updating and use the appropriate `btree_gist` operators where needed.
- Upgrading from the 1.2 line to 1.3 changes the temporal binary format and requires the upstream backup-and-restore procedure. An in-place 1.3.0-to-1.3.1 SQL update does not replace that major-line migration.
- Coordinate systems, interpolation, gaps, inclusive bounds, and units affect results. Validate them against the data model rather than treating every trajectory as a continuous geographical line.
