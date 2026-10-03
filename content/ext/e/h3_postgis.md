---
title: "h3_postgis"
linkTitle: "h3_postgis"
description: "H3 PostGIS integration"
weight: 1531
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgis/h3-pg">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgis/h3-pg</div>
    <div class="ext-card__desc">https://github.com/postgis/h3-pg</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/h3-pg-4.5.0.tar.gz h3-4.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">h3-pg-4.5.0.tar.gz h3-4.5.0.tar.gz</div>
    <div class="ext-card__desc">h3-pg-4.5.0.tar.gz h3-4.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_h3`**](/ext/e/h3) | `4.5.0` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1530  | [**`h3`**](/ext/e/h3) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1531  | [**`h3_postgis`**](/ext/e/h3_postgis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`h3`](/ext/e/h3) [`postgis`](/ext/e/postgis) [`postgis_raster`](/ext/e/postgis_raster) [`postgis`](/ext/e/postgis) [`qdgc`](/ext/e/qdgc) [`pg_geohash`](/ext/e/pg_geohash) [`pgrouting`](/ext/e/pgrouting) [`q3c`](/ext/e/q3c) [`pg_polyline`](/ext/e/pg_polyline) [`pg_eviltransform`](/ext/e/pg_eviltransform) [`earthdistance`](/ext/e/earthdistance) [`mobilitydb`](/ext/e/mobilitydb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> RPM and DEB 4.5.0 require h3, postgis and postgis_raster; point coordinates use longitude, latitude.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_h3` | `h3`, `postgis`, `postgis_raster` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.5.0` | {{< pgvers "18,17,16,15,14" >}} | `h3-pg_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-h3` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.5.0 1 | AVAIL PIGSTY 4.5.0 1 | AVAIL PIGSTY 4.5.0 2 | AVAIL PIGSTY 4.5.0 2 | AVAIL PIGSTY 4.5.0 2 |
| el8.aarch64 | AVAIL PIGSTY 4.5.0 2 | AVAIL PIGSTY 4.5.0 2 | AVAIL PIGSTY 4.5.0 2 | AVAIL PIGSTY 4.5.0 2 | AVAIL PIGSTY 4.5.0 2 |
| el9.x86_64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| el9.aarch64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| el10.x86_64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| el10.aarch64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| d12.x86_64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| d12.aarch64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| d13.x86_64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| d13.aarch64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| u22.x86_64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| u22.aarch64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| u24.x86_64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| u24.aarch64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| u26.x86_64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
| u26.aarch64 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 | AVAIL PIGSTY 4.5.0 3 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_h3` using `pig build`:

```bash
pig build pkg pg_h3         # build RPM / DEB packages
```


## Install

You can install `pg_h3` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_h3;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_h3 -v 18  # PG 18
pig ext install -y pg_h3 -v 17  # PG 17
pig ext install -y pg_h3 -v 16  # PG 16
pig ext install -y pg_h3 -v 15  # PG 15
pig ext install -y pg_h3 -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y h3-pg_18       # PG 18
dnf install -y h3-pg_17       # PG 17
dnf install -y h3-pg_16       # PG 16
dnf install -y h3-pg_15       # PG 15
dnf install -y h3-pg_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-h3   # PG 18
apt install -y postgresql-17-h3   # PG 17
apt install -y postgresql-16-h3   # PG 16
apt install -y postgresql-15-h3   # PG 15
apt install -y postgresql-14-h3   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION h3_postgis CASCADE;  -- requires: h3, postgis, postgis_raster
```

## Usage

Sources:

- [4.5.0 PostGIS API](https://github.com/postgis/h3-pg/blob/v4.5.0/docs/api.md)
- [Dependencies and extension definition](https://github.com/postgis/h3-pg/blob/v4.5.0/h3_postgis/CMakeLists.txt)
- [4.5.0 migration SQL](https://github.com/postgis/h3-pg/blob/v4.5.0/h3_postgis/sql/updates/h3_postgis--4.2.3--4.5.0.sql)
- [4.5.0 release](https://github.com/postgis/h3-pg/releases/tag/v4.5.0)

`h3_postgis` bridges H3 cells with PostGIS geometry, geography, and raster. It requires `h3`, `postgis`, and `postgis_raster`, including for geometry-only use. Input geometries must use SRID 4326 with longitude, latitude coordinates; the functions do not reproject inputs.

### Convert Points and Cells

```sql
CREATE EXTENSION h3_postgis CASCADE;
SET h3.strict = true;

SELECT h3_latlng_to_cell(
    ST_SetSRID(ST_MakePoint(-122.0553238, 37.3615593), 4326), 9
);
SELECT h3_cell_to_geometry('85283473fffffff'::h3index);
SELECT h3_cell_to_boundary_geometry('85283473fffffff'::h3index);
```

Transform other coordinate systems to SRID 4326 with PostGIS before calling the H3 functions. Setting an SRID label alone does not transform coordinates.

### Core API

| Task | Functions |
| --- | --- |
| Point to cell | `h3_latlng_to_cell(geometry, integer)`, `h3_latlng_to_cell(geography, integer)` |
| Cell center | `h3_cell_to_geometry`, `h3_cell_to_geography` |
| Cell boundary | `h3_cell_to_boundary_geometry`, `h3_cell_to_boundary_geography` |
| Polygon coverage | `h3_polygon_to_cells`, `h3_cells_to_multi_polygon_geometry`, `h3_cells_to_multi_polygon_geography` |
| Continuous raster summaries | `h3_raster_summary`, `h3_raster_summary_stats_agg` |
| Categorical raster summaries | `h3_raster_class_summary`, `h3_raster_class_summary_item_agg` |

The geometry-to-resolution `@` operator also maps a location to an H3 cell. Validate polygon inputs with `ST_IsValid()`; repairs through `ST_MakeValid()` can change topology and produce geometry collections, so retain and review polygonal components before coverage calculations. Invalid polygons have undefined behavior.

### Summarize Raster Data

```sql
SELECT (summary).h3,
       (h3_raster_summary_stats_agg((summary).stats)).*
FROM (
    SELECT h3_raster_summary(rast, 8) AS summary
    FROM rasters
) AS r
GROUP BY (summary).h3;
```

The default summary chooses a method; explicit clip, centroid, and subpixel variants let you control how raster pixels are assigned to cells. Review the choice against raster resolution and the requested H3 resolution.

### Upgrade and Boundaries

```sql
ALTER EXTENSION h3 UPDATE TO '4.5.0';
ALTER EXTENSION h3_postgis UPDATE TO '4.5.0';
```

The base extension update performs affected btree rebuilds and distance-dependent refreshes, so plan its maintenance window before updating the companion. Version 4.5.0 fixes restricted-search-path maintenance on PostgreSQL 17+, expression-index dump/restore, and several geometry and polygonization errors. Both extension versions should match. Install the matching 4.5.0 package files before updating either extension.

`h3.extend_antimeridian` should normally remain false for planar overlays. Both extensions are relocatable; ensure the schemas containing H3 and PostGIS objects are visible when issuing unqualified SQL. Neither extension requires shared preloading.
