---
title: "postgis_sfcgal"
linkTitle: "postgis_sfcgal"
description: "PostGIS SFCGAL functions"
weight: 1503
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

| **Related** | [`postgis`](/ext/e/postgis) [`pointcloud`](/ext/e/pointcloud) [`pg_sphere`](/ext/e/pg_sphere) [`q3c`](/ext/e/q3c) [`earthdistance`](/ext/e/earthdistance) [`pgrouting`](/ext/e/pgrouting) [`h3`](/ext/e/h3) [`mobilitydb`](/ext/e/mobilitydb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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
CREATE EXTENSION postgis_sfcgal CASCADE;  -- requires: postgis
```




## Usage

> [PostGIS SFCGAL: 3D geometry and advanced operations powered by SFCGAL](https://github.com/postgis/postgis)

PostGIS SFCGAL provides advanced 2D and 3D spatial operations by wrapping the [SFCGAL](https://sfcgal.gitlab.io/SFCGAL/) library. It adds support for 3D geometry operations, volume calculations, extrusion, tesselation, and other functions not available in the core PostGIS GEOS backend.

- [SFCGAL Function Reference](https://postgis.net/docs/reference_sfcgal.html)

### Setup

```sql
CREATE EXTENSION postgis_sfcgal;
```

--------

## 3D Operations

### 3D Intersection and Difference

```sql
-- 3D intersection of two solids
SELECT ST_3DIntersection(
    ST_GeomFromText('POLYHEDRALSURFACE Z(((0 0 0,1 0 0,1 1 0,0 1 0,0 0 0)),((0 0 1,1 0 1,1 1 1,0 1 1,0 0 1)),((0 0 0,0 1 0,0 1 1,0 0 1,0 0 0)),((1 0 0,1 1 0,1 1 1,1 0 1,1 0 0)),((0 0 0,1 0 0,1 0 1,0 0 1,0 0 0)),((0 1 0,1 1 0,1 1 1,0 1 1,0 1 0)))'),
    ST_GeomFromText('POLYHEDRALSURFACE Z(((0.5 0.5 0.5,1.5 0.5 0.5,1.5 1.5 0.5,0.5 1.5 0.5,0.5 0.5 0.5)),((0.5 0.5 1.5,1.5 0.5 1.5,1.5 1.5 1.5,0.5 1.5 1.5,0.5 0.5 1.5)),((0.5 0.5 0.5,0.5 1.5 0.5,0.5 1.5 1.5,0.5 0.5 1.5,0.5 0.5 0.5)),((1.5 0.5 0.5,1.5 1.5 0.5,1.5 1.5 1.5,1.5 0.5 1.5,1.5 0.5 0.5)),((0.5 0.5 0.5,1.5 0.5 0.5,1.5 0.5 1.5,0.5 0.5 1.5,0.5 0.5 0.5)),((0.5 1.5 0.5,1.5 1.5 0.5,1.5 1.5 1.5,0.5 1.5 1.5,0.5 1.5 0.5)))')
);

-- 3D difference
SELECT ST_3DDifference(solid_a, solid_b) FROM solids;

-- 3D union
SELECT ST_3DUnion(solid_a, solid_b) FROM solids;
```

### 3D Measurements

```sql
-- 3D area of a surface
SELECT ST_3DArea(geom) FROM surfaces;

-- Volume of a solid
SELECT ST_Volume(geom) FROM solids;
```

### Extrusion

```sql
-- Extrude a 2D polygon into a 3D solid
SELECT ST_Extrude(
    ST_GeomFromText('POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))'),
    0, 0, 10  -- dx, dy, dz
);
```

### Tesselation and Triangulation

```sql
-- Tesselate a polygon into triangles
SELECT ST_Tesselate(
    ST_GeomFromText('POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))')
);

-- Constrained Delaunay triangulation
SELECT ST_ConstrainedDelaunayTriangles(
    ST_GeomFromText('POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))')
);
```

### Other Functions

```sql
-- Straight skeleton of a polygon
SELECT ST_StraightSkeleton(
    ST_GeomFromText('POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))')
);

-- Approximate medial axis
SELECT ST_ApproximateMedialAxis(
    ST_GeomFromText('POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))')
);

-- Minkowski sum
SELECT ST_MinkowskiSum(
    ST_GeomFromText('LINESTRING(0 0, 4 0)'),
    ST_GeomFromText('POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))')
);

-- Check planarity of a surface
SELECT ST_IsPlanar(geom) FROM surfaces;
```
