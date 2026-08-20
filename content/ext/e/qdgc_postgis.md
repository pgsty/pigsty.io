---
title: "qdgc_postgis"
linkTitle: "qdgc_postgis"
description: "Add PostGIS geometry and geography bindings plus area-to-cell fills for QDGC."
weight: 1710
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://pgxn.org/dist/qdgc/0.1.0/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://pgxn.org/dist/qdgc/0.1.0/</div>
    <div class="ext-card__desc">https://pgxn.org/dist/qdgc/0.1.0/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/qdgc-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">qdgc-0.1.0.tar.gz</div>
    <div class="ext-card__desc">qdgc-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`qdgc`**](/ext/e/qdgc) | `0.1.0` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1700  | [**`qdgc`**](/ext/e/qdgc) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1710  | [**`qdgc_postgis`**](/ext/e/qdgc_postgis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`qdgc`](/ext/e/qdgc) [`postgis`](/ext/e/postgis) [`postgis`](/ext/e/postgis) [`h3`](/ext/e/h3) [`pg_geohash`](/ext/e/pg_geohash) [`pgrouting`](/ext/e/pgrouting) [`q3c`](/ext/e/q3c) [`pg_polyline`](/ext/e/pg_polyline) [`pg_eviltransform`](/ext/e/pg_eviltransform) [`earthdistance`](/ext/e/earthdistance) [`mobilitydb`](/ext/e/mobilitydb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `qdgc` | `qdgc`, `postgis` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `qdgc_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-qdgc` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `qdgc` using `pig build`:

```bash
pig build pkg qdgc         # build RPM / DEB packages
```


## Install

You can install `qdgc` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install qdgc;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y qdgc -v 18  # PG 18
pig ext install -y qdgc -v 17  # PG 17
pig ext install -y qdgc -v 16  # PG 16
pig ext install -y qdgc -v 15  # PG 15
pig ext install -y qdgc -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y qdgc_18       # PG 18
dnf install -y qdgc_17       # PG 17
dnf install -y qdgc_16       # PG 16
dnf install -y qdgc_15       # PG 15
dnf install -y qdgc_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-qdgc   # PG 18
apt install -y postgresql-17-qdgc   # PG 17
apt install -y postgresql-16-qdgc   # PG 16
apt install -y postgresql-15-qdgc   # PG 15
apt install -y postgresql-14-qdgc   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION qdgc_postgis CASCADE;  -- requires: qdgc, postgis
```

## Usage

Sources:

- [PGXN qdgc 0.1.0 release](https://pgxn.org/dist/qdgc/0.1.0/)
- [Official 0.1.0 README](https://api.pgxn.org/src/qdgc/qdgc-0.1.0/README.md)
- [Official qdgc_postgis control file](https://api.pgxn.org/src/qdgc/qdgc-0.1.0/qdgc_postgis.control)
- [Official qdgc_postgis 0.1.0 extension SQL](https://api.pgxn.org/src/qdgc/qdgc-0.1.0/qdgc_postgis--0.1.0.sql)

`qdgc_postgis` 0.1.0 is the PostGIS companion to the pure-SQL `qdgc` core. It converts QDGC cells to and from PostGIS points and polygons, measures cell area on the WGS84 spheroid, and fills arbitrary geometries with QDGC cells. The extension requires both `qdgc` and `postgis`; it does not replace either one.

### Core Workflow

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION qdgc;
CREATE EXTENSION qdgc_postgis;

SELECT qdgc_latlng_to_cell(
    ST_SetSRID(ST_MakePoint(31.4, 2.7), 4326),
    5
);

SELECT qdgc_cell_to_geometry('E031N02ADBAC');
SELECT qdgc_cell_to_boundary_geometry('E031N02ADBAC');
SELECT qdgc_cell_area_km2('E031N02ADBAC');
```

The point overload transforms geometry with a nonzero, non-4326 SRID to EPSG:4326. An SRID of zero is assumed to already contain longitude and latitude.

### Fill an Area of Interest

Estimate the result size before producing a deep fill:

```sql
WITH area AS (
    SELECT ST_GeomFromText(
        'POLYGON((31.0 2.0, 31.5 2.0, 31.5 2.5, 31.0 2.5, 31.0 2.0))',
        4326
    ) AS geom
)
SELECT qdgc_estimate_cell_count(geom, 7)
FROM area;

WITH area AS (
    SELECT ST_GeomFromText(
        'POLYGON((31.0 2.0, 31.5 2.0, 31.5 2.5, 31.0 2.5, 31.0 2.0))',
        4326
    ) AS geom
)
SELECT cell
FROM area
CROSS JOIN LATERAL qdgc_polygon_to_cells(
    geom,
    7,
    'intersects'
) AS cell;
```

The predicate can be:

- `intersects`, the default, for cells intersecting the geometry;
- `centroid`, for cells whose center lies inside the geometry;
- `contains`, for cells wholly contained by the geometry.

The implementation descends a pruning quadtree instead of testing every cell in the geometry's full envelope. Multi-part geometries are filled per part and their cell sets are combined.

### Important Objects

- `qdgc_latlng_to_cell(geometry, level)` and its `geography` overload encode PostGIS points.
- `qdgc_cell_to_geometry` and `qdgc_cell_to_geography` return the cell centroid.
- `qdgc_cell_to_boundary_geometry` and `qdgc_cell_to_boundary_geography` return the rectangular cell boundary.
- `qdgc_cell_area_km2` measures the boundary geography on the WGS84 spheroid.
- `qdgc_polygon_to_cells` fills an area using one of the three documented predicates.
- `qdgc_estimate_cell_count` provides a cheap, envelope-capped guard before materializing a fill.

### Operational Notes

- `qdgc_postgis.control` declares `requires = 'qdgc,postgis'` and `relocatable = true`. Install PostGIS with an appropriately privileged role before delegating use of the companion extension.
- No `shared_preload_libraries`, `LOAD`, or restart is required. The extension is SQL-only, but its PostGIS dependency includes native code.
- Install `qdgc`, `qdgc_postgis`, and their callable dependencies into schemas visible on the active `search_path`, because the relocatable SQL calls functions by unqualified name.
- Upstream tests PostgreSQL 13 through 17. Do not infer PostgreSQL 18 support from the absence of compiled code.
- Deep area fills can still produce enormous sets even with pruning. Treat `qdgc_estimate_cell_count` as an operational guard and apply application-specific limits before executing `qdgc_polygon_to_cells`.
