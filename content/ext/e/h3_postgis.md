---
title: "h3_postgis"
linkTitle: "h3_postgis"
description: "H3 PostGIS integration"
weight: 1531
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/zachasme/h3-pg">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">zachasme/h3-pg</div>
    <div class="ext-card__desc">https://github.com/zachasme/h3-pg</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_h3`**](/ext/e/h3) | `4.2.3` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1530  | [**`h3`**](/ext/e/h3) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1531  | [**`h3_postgis`**](/ext/e/h3_postgis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`h3`](/ext/e/h3) [`postgis`](/ext/e/postgis) [`postgis_raster`](/ext/e/postgis_raster) [`mobilitydb`](/ext/e/mobilitydb) [`postgis_topology`](/ext/e/postgis_topology) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`address_standardizer`](/ext/e/address_standardizer) [`address_standardizer_data_us`](/ext/e/address_standardizer_data_us) [`pgrouting`](/ext/e/pgrouting) [`pointcloud`](/ext/e/pointcloud) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgdg missing el8.x86.pg17 and el8.x86.pg18


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_h3` | `h3`, `postgis`, `postgis_raster` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.3` | {{< pgvers "18,17,16,15,14" >}} | `h3-pg_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-h3` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 4.1.3 1 | AVAIL PGDG 4.1.3 1 | AVAIL PGDG 4.1.3 1 |
| el8.aarch64 | AVAIL PGDG 4.2.3 1 | AVAIL PGDG 4.1.3 1 | AVAIL PGDG 4.1.3 1 | AVAIL PGDG 4.1.3 1 | AVAIL PGDG 4.1.3 1 |
| el9.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| el9.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| el10.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| el10.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.2 1 |
| d12.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| d12.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| d13.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| d13.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| u22.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| u22.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| u24.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| u24.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| u26.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| u26.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
{{< /pgext_matrix >}}


## Install

You can install `pg_h3` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_h3;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_h3 -v 18  # PG 18
pig ext install -y pg_h3 -v 17  # PG 17
pig ext install -y pg_h3 -v 16  # PG 16
pig ext install -y pg_h3 -v 15  # PG 15
pig ext install -y pg_h3 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y h3-pg_18       # PG 18
dnf install -y h3-pg_17       # PG 17
dnf install -y h3-pg_16       # PG 16
dnf install -y h3-pg_15       # PG 15
dnf install -y h3-pg_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-h3   # PG 18
apt install -y postgresql-17-h3   # PG 17
apt install -y postgresql-16-h3   # PG 16
apt install -y postgresql-15-h3   # PG 15
apt install -y postgresql-14-h3   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION h3_postgis CASCADE;  -- requires: h3, postgis, postgis_raster
```




## Usage

> [h3_postgis: PostGIS integration for H3](https://github.com/zachasme/h3-pg)

`h3_postgis` is a bridge extension that integrates the H3 hexagonal hierarchical spatial index with PostGIS. It enables conversion between H3 indexes and PostGIS geometry types.

```sql
CREATE EXTENSION h3_postgis CASCADE;
```

This extension requires both `h3` and `postgis` to be installed. It provides functions to convert between H3 cell indexes and PostGIS geometries, enabling spatial queries that combine H3's hexagonal grid system with PostGIS's spatial capabilities.

### Key Functions

```sql
-- Convert a PostGIS point to an H3 cell index
SELECT h3_latlng_to_cell(ST_MakePoint(-73.985, 40.748)::point, 9);

-- Get the boundary of an H3 cell as a PostGIS geometry
SELECT h3_cell_to_boundary_geometry('892a1008003ffff'::h3index);

-- Convert H3 cells to PostGIS polygons for visualization
SELECT h3_cell_to_geometry('892a1008003ffff'::h3index);
```
