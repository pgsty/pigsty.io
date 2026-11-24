---
title: "pghydro"
linkTitle: "pghydro"
description: "Drainage network analysis core for PostgreSQL and PostGIS"
weight: 1600
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pghydro/pghydro">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pghydro/pghydro</div>
    <div class="ext-card__desc">https://github.com/pghydro/pghydro</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pghydro-6.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pghydro-6.6.tar.gz</div>
    <div class="ext-card__desc">pghydro-6.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pghydro`**](/ext/e/pghydro) | `6.6` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1600  | [**`pghydro`**](/ext/e/pghydro) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pghydro` |
| 1601  | [**`pgh_raster`**](/ext/e/pgh_raster) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_raster` |
| 1602  | [**`pgh_hgm`**](/ext/e/pgh_hgm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_hgm` |
| 1603  | [**`pgh_output`**](/ext/e/pgh_output) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_output` |
| 1604  | [**`pgh_output_en_au`**](/ext/e/pgh_output_en_au) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_output_en_au` |
| 1605  | [**`pgh_output_pt_br`**](/ext/e/pgh_output_pt_br) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_output_pt_br` |
| 1606  | [**`pgh_consistency`**](/ext/e/pgh_consistency) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_consistency` |
{.ext-table .wide .expand}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`postgis_raster`](/ext/e/postgis_raster) [`pointcloud`](/ext/e/pointcloud) [`pgrouting`](/ext/e/pgrouting) [`ogr_fdw`](/ext/e/ogr_fdw) [`h3`](/ext/e/h3) [`q3c`](/ext/e/q3c) [`mobilitydb`](/ext/e/mobilitydb) [`pg_sphere`](/ext/e/pg_sphere) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgh_consistency`](/ext/e/pgh_consistency) [`pgh_hgm`](/ext/e/pgh_hgm) [`pgh_output`](/ext/e/pgh_output) [`pgh_output_en_au`](/ext/e/pgh_output_en_au) [`pgh_output_pt_br`](/ext/e/pgh_output_pt_br) [`pgh_raster`](/ext/e/pgh_raster) |
{.ext-table .ext-table--rel}


> Lead row; package also ships pgh_raster, pgh_hgm, pgh_output, pgh_output_en_au, pgh_output_pt_br, and pgh_consistency.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.6` | {{< pgvers "19,18,17,16,15" >}} | `pghydro` | `plpgsql`, `postgis` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.6` | {{< pgvers "19,18,17,16,15" >}} | `pghydro_$v` | `postgis37_$v` |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.6` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pghydro` | `postgresql-$v-postgis-3` |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| el9.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| el9.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| el10.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| el10.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| d12.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| d12.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| d13.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| d13.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| u22.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| u22.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| u24.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| u24.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| u26.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| u26.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
@ el9.x86_64 19 pghydro_19 pghydro_19-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pghydro_19-6.6-2PGSTY.el9.noarch.rpm
@ el9.aarch64 19 pghydro_19 pghydro_19-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pghydro_19-6.6-2PGSTY.el9.noarch.rpm
@ el10.x86_64 19 pghydro_19 pghydro_19-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pghydro_19-6.6-2PGSTY.el10.noarch.rpm
@ el10.aarch64 19 pghydro_19 pghydro_19-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pghydro_19-6.6-2PGSTY.el10.noarch.rpm
@ d12.x86_64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d12.aarch64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d13.x86_64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~trixie_all.deb
@ d13.aarch64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~trixie_all.deb
@ u22.x86_64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~jammy_all.deb
@ u22.aarch64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~jammy_all.deb
@ u24.x86_64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~noble_all.deb
@ u24.aarch64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~noble_all.deb
@ u26.x86_64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~resolute_all.deb
@ u26.aarch64 19 postgresql-19-pghydro postgresql-19-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-19-pghydro_6.6-1PGSTY~resolute_all.deb
@ el8.x86_64 18 pghydro_18 pghydro_18-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pghydro_18-6.6-2PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pghydro_18 pghydro_18-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pghydro_18-6.6-2PGSTY.el8.noarch.rpm
@ el9.x86_64 18 pghydro_18 pghydro_18-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pghydro_18-6.6-2PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pghydro_18 pghydro_18-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pghydro_18-6.6-2PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pghydro_18 pghydro_18-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pghydro_18-6.6-2PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pghydro_18 pghydro_18-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pghydro_18-6.6-2PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pghydro postgresql-18-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-18-pghydro_6.6-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pghydro_17 pghydro_17-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pghydro_17-6.6-2PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pghydro_17 pghydro_17-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pghydro_17-6.6-2PGSTY.el8.noarch.rpm
@ el9.x86_64 17 pghydro_17 pghydro_17-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pghydro_17-6.6-2PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pghydro_17 pghydro_17-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pghydro_17-6.6-2PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pghydro_17 pghydro_17-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pghydro_17-6.6-2PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pghydro_17 pghydro_17-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pghydro_17-6.6-2PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pghydro postgresql-17-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-17-pghydro_6.6-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pghydro_16 pghydro_16-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pghydro_16-6.6-2PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pghydro_16 pghydro_16-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pghydro_16-6.6-2PGSTY.el8.noarch.rpm
@ el9.x86_64 16 pghydro_16 pghydro_16-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pghydro_16-6.6-2PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pghydro_16 pghydro_16-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pghydro_16-6.6-2PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pghydro_16 pghydro_16-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pghydro_16-6.6-2PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pghydro_16 pghydro_16-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pghydro_16-6.6-2PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pghydro postgresql-16-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-16-pghydro_6.6-1PGSTY~resolute_all.deb
@ el8.x86_64 15 pghydro_15 pghydro_15-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pghydro_15-6.6-2PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pghydro_15 pghydro_15-6.6-2PGSTY.el8.noarch.rpm pigsty 6.6 145.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pghydro_15-6.6-2PGSTY.el8.noarch.rpm
@ el9.x86_64 15 pghydro_15 pghydro_15-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pghydro_15-6.6-2PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pghydro_15 pghydro_15-6.6-2PGSTY.el9.noarch.rpm pigsty 6.6 138.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pghydro_15-6.6-2PGSTY.el9.noarch.rpm
@ el10.x86_64 15 pghydro_15 pghydro_15-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pghydro_15-6.6-2PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pghydro_15 pghydro_15-6.6-2PGSTY.el10.noarch.rpm pigsty 6.6 138.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pghydro_15-6.6-2PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~bookworm_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~trixie_all.deb pigsty 6.6 135.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~jammy_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~noble_all.deb pigsty 6.6 135.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pghydro postgresql-15-pghydro_6.6-1PGSTY~resolute_all.deb pigsty 6.6 136.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pghydro/postgresql-15-pghydro_6.6-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pghydro` using `pig build`:

```bash
pig build pkg pghydro         # build RPM / DEB packages
```


## Install

You can install `pghydro` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pghydro;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pghydro -v 19  # PG 19
pig ext install -y pghydro -v 18  # PG 18
pig ext install -y pghydro -v 17  # PG 17
pig ext install -y pghydro -v 16  # PG 16
pig ext install -y pghydro -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pghydro_19       # PG 19
dnf install -y pghydro_18       # PG 18
dnf install -y pghydro_17       # PG 17
dnf install -y pghydro_16       # PG 16
dnf install -y pghydro_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pghydro   # PG 19
apt install -y postgresql-18-pghydro   # PG 18
apt install -y postgresql-17-pghydro   # PG 17
apt install -y postgresql-16-pghydro   # PG 16
apt install -y postgresql-15-pghydro   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pghydro CASCADE;  -- requires: plpgsql, postgis
```




## Usage

Sources: [README](https://github.com/pghydro/pghydro/blob/master/README.md), [repo](https://github.com/pghydro/pghydro), [releases](https://github.com/pghydro/pghydro/releases)

`pghydro` is the core extension in the PgHydro suite for drainage-network analysis and water-resources decision support on top of PostgreSQL and PostGIS.

### Install the PgHydro suite

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_raster;
CREATE EXTENSION pghydro;
CREATE EXTENSION pgh_raster;
CREATE EXTENSION pgh_hgm;
CREATE EXTENSION pgh_consistency;
CREATE EXTENSION pgh_output;
```

The upstream README presents these companion extensions together:

- `pghydro` for drainage-network analysis
- `pgh_raster` for DEM-derived hydrological products
- `pgh_hgm` for hydrogeomorphological analysis
- `pgh_consistency` for Pfafstetter consistency checks
- `pgh_output` for reporting objects

### What upstream says it covers

The README describes support for:

- flow-direction correction in river networks
- Otto Pfafstetter basin coding
- upstream and downstream stretch selection
- distance-to-mouth calculations
- upstream area calculations
- river orders and basin levels

### Requirements

- PostgreSQL 9.1+
- PostGIS 3.x
- PostGIS Raster

### Notes

- The current upstream README status section still says the master branch tracks release `6.6` and the develop branch tracks `6.7-dev`.
- The repository also publishes newer tags, but the user-facing README remains centered on the `6.6` installation and tutorial flow.
