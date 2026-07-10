---
title: "postgis_raster"
linkTitle: "postgis_raster"
description: "PostGIS raster types and functions"
weight: 1502
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://git.osgeo.org/gitea/postgis/postgis">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://git.osgeo.org/gitea/postgis/postgis</div>
    <div class="ext-card__desc">https://git.osgeo.org/gitea/postgis/postgis</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`postgis`**](/ext/e/postgis) | `3.6.4` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1500  | [**`postgis`**](/ext/e/postgis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 1501  | [**`postgis_topology`**](/ext/e/postgis_topology) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `topology` |
| 1502  | [**`postgis_raster`**](/ext/e/postgis_raster) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 1503  | [**`postgis_sfcgal`**](/ext/e/postgis_sfcgal) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1504  | [**`postgis_tiger_geocoder`**](/ext/e/postgis_tiger_geocoder) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `tiger` |
| 1505  | [**`address_standardizer`**](/ext/e/address_standardizer) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1506  | [**`address_standardizer_data_us`**](/ext/e/address_standardizer_data_us) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`pointcloud_postgis`](/ext/e/pointcloud_postgis) [`pointcloud`](/ext/e/pointcloud) [`pgrouting`](/ext/e/pgrouting) [`h3`](/ext/e/h3) [`q3c`](/ext/e/q3c) [`ogr_fdw`](/ext/e/ogr_fdw) [`geoip`](/ext/e/geoip) [`pg_polyline`](/ext/e/pg_polyline) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`h3_postgis`](/ext/e/h3_postgis) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.4` | {{< pgvers "18,17,16,15,14" >}} | `postgis` | `postgis` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.3` | {{< pgvers "18,17,16,15,14" >}} | `postgis36_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-postgis-3` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 3.6.3 3 | AVAIL PGDG 3.6.3 3 | AVAIL PGDG 3.6.3 3 | AVAIL PGDG 3.6.3 3 | AVAIL PGDG 3.6.3 3 |
| el8.aarch64 | AVAIL PGDG 3.6.3 4 | AVAIL PGDG 3.6.3 4 | AVAIL PGDG 3.6.3 4 | AVAIL PGDG 3.6.3 4 | AVAIL PGDG 3.6.3 4 |
| el9.x86_64 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 |
| el9.aarch64 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 | AVAIL PGDG 3.6.3 10 |
| el10.x86_64 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 |
| el10.aarch64 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 | AVAIL PGDG 3.6.3 9 |
| d12.x86_64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| d12.aarch64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| d13.x86_64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| d13.aarch64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| u22.x86_64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| u22.aarch64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| u24.x86_64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| u24.aarch64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| u26.x86_64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
| u26.aarch64 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 | AVAIL PGDG 3.6.4 3 |
{{< /pgext_matrix >}}


## Install

You can install `postgis` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install postgis;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y postgis -v 18  # PG 18
pig ext install -y postgis -v 17  # PG 17
pig ext install -y postgis -v 16  # PG 16
pig ext install -y postgis -v 15  # PG 15
pig ext install -y postgis -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y postgis36_18       # PG 18
dnf install -y postgis36_17       # PG 17
dnf install -y postgis36_16       # PG 16
dnf install -y postgis36_15       # PG 15
dnf install -y postgis36_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-postgis-3   # PG 18
apt install -y postgresql-17-postgis-3   # PG 17
apt install -y postgresql-16-postgis-3   # PG 16
apt install -y postgresql-15-postgis-3   # PG 15
apt install -y postgresql-14-postgis-3   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION postgis_raster CASCADE;  -- requires: postgis
```




## Usage

> [PostGIS Raster: Raster data support for PostGIS](https://github.com/postgis/postgis)

PostGIS Raster extends PostGIS with support for raster (gridded) data stored directly in PostgreSQL. It enables raster analysis, raster/vector interaction, and map algebra operations within SQL.

- [Raster Reference](https://postgis.net/docs/RT_reference.html)

### Setup

```sql
CREATE EXTENSION postgis_raster;
```

--------

## Loading Raster Data

The `raster2pgsql` command-line tool imports raster files (GeoTIFF, etc.) into PostgreSQL:

```bash
# Load a GeoTIFF as tiled 100x100 rasters, create spatial index, use COPY
raster2pgsql -s 4326 -t 100x100 -I -C -M elevation.tif public.dem | psql mydb

# Append to existing table
raster2pgsql -s 4326 -t 100x100 -a more_data.tif public.dem | psql mydb
```

Key flags:
- `-s <srid>` -- Set the SRID
- `-t <width>x<height>` -- Tile the raster into chunks
- `-I` -- Create a spatial GiST index
- `-C` -- Apply raster constraints
- `-M` -- Vacuum analyze after loading

--------

## Querying Raster Data

### Raster Metadata

```sql
-- Get raster dimensions and pixel size
SELECT rid,
    ST_Width(rast) AS width,
    ST_Height(rast) AS height,
    ST_ScaleX(rast) AS pixel_size_x,
    ST_ScaleY(rast) AS pixel_size_y,
    ST_NumBands(rast) AS bands,
    ST_SRID(rast) AS srid
FROM dem LIMIT 5;
```

### Pixel Values

```sql
-- Get the value at a specific point
SELECT ST_Value(rast, ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326)) AS elevation
FROM dem
WHERE ST_Intersects(rast, ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326));

-- Get value at column/row position (band 1)
SELECT ST_Value(rast, 1, 10, 20) FROM dem WHERE rid = 1;
```

### Band Statistics

```sql
SELECT (ST_SummaryStats(rast)).*
FROM dem WHERE rid = 1;
-- Returns: count, sum, mean, stddev, min, max
```

--------

## Raster Processing

### Clipping Rasters by Vector Geometry

```sql
-- Clip raster to a polygon boundary
SELECT ST_Clip(rast, geom) AS clipped_rast
FROM dem, boundaries
WHERE ST_Intersects(rast, geom);
```

### Map Algebra

Apply pixel-by-pixel operations:

```sql
-- Single-raster map algebra: classify elevation
SELECT ST_MapAlgebra(rast, 1, NULL,
    'CASE WHEN [rast] > 100 THEN 1 WHEN [rast] > 50 THEN 2 ELSE 3 END') AS classified
FROM dem;

-- Two-raster map algebra: difference between two DEMs
SELECT ST_MapAlgebra(a.rast, 1, b.rast, 1, '[rast1] - [rast2]') AS diff
FROM dem_old a, dem_new b
WHERE ST_Intersects(a.rast, b.rast);
```

### Raster/Vector Interaction

```sql
-- Convert raster pixels to vector points
SELECT (ST_PixelAsPoints(rast)).*
FROM dem WHERE rid = 1;

-- Convert raster to polygons (one per unique value)
SELECT (ST_DumpAsPolygons(rast)).*
FROM dem WHERE rid = 1;

-- Intersect raster with vector and get values
SELECT p.name, ST_Value(d.rast, p.geom) AS elevation
FROM dem d, points p
WHERE ST_Intersects(d.rast, p.geom);
```

### Resampling and Reprojection

```sql
-- Resample to a different pixel size
SELECT ST_Rescale(rast, 0.001, -0.001) FROM dem;

-- Reproject to a different SRID
SELECT ST_Transform(rast, 3857) FROM dem;
```

--------

## Exporting Rasters

```sql
-- Export as GeoTIFF (binary)
SELECT ST_AsTIFF(rast) FROM dem WHERE rid = 1;

-- Export as PNG
SELECT ST_AsPNG(rast) FROM dem WHERE rid = 1;

-- Export as JPEG
SELECT ST_AsJPEG(rast) FROM dem WHERE rid = 1;
```
