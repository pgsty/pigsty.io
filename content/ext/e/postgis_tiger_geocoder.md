---
title: "postgis_tiger_geocoder"
linkTitle: "postgis_tiger_geocoder"
description: "PostGIS tiger geocoder and reverse geocoder"
weight: 1504
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
| [**`postgis`**](/ext/e/postgis) | `3.6.2` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
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

| **Related** | [`postgis`](/ext/e/postgis) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`pgrouting`](/ext/e/pgrouting) [`pointcloud`](/ext/e/pointcloud) [`pointcloud_postgis`](/ext/e/pointcloud_postgis) [`h3`](/ext/e/h3) [`h3_postgis`](/ext/e/h3_postgis) [`q3c`](/ext/e/q3c) [`ogr_fdw`](/ext/e/ogr_fdw) [`geoip`](/ext/e/geoip) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.2` | {{< pgvers "18,17,16,15,14" >}} | `postgis` | `postgis`, `fuzzystrmatch` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.2` | {{< pgvers "18,17,16,15,14" >}} | `postgis36_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-postgis-3` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 3.6.1 2 | AVAIL PGDG 3.6.1 2 | AVAIL PGDG 3.6.1 2 | AVAIL PGDG 3.6.1 2 | AVAIL PGDG 3.6.1 2 |
| el8.aarch64 | AVAIL PGDG 3.6.1 3 | AVAIL PGDG 3.6.1 3 | AVAIL PGDG 3.6.1 3 | AVAIL PGDG 3.6.1 3 | AVAIL PGDG 3.6.1 3 |
| el9.x86_64 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 |
| el9.aarch64 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 | AVAIL PGDG 3.6.2 5 |
| el10.x86_64 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 |
| el10.aarch64 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 | AVAIL PGDG 3.6.2 4 |
| d12.x86_64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
| d12.aarch64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
| d13.x86_64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
| d13.aarch64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
| u22.x86_64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
| u22.aarch64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
| u24.x86_64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
| u24.aarch64 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 | AVAIL PGDG 3.6.2 1 |
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
CREATE EXTENSION postgis_tiger_geocoder CASCADE;  -- requires: postgis, fuzzystrmatch
```



## Usage

> [PostGIS TIGER Geocoder: US Census TIGER/Line geocoding for PostGIS](https://github.com/postgis/postgis)

The PostGIS TIGER Geocoder provides geocoding and reverse geocoding capabilities for US addresses using US Census TIGER/Line data. It can parse an address string into a normalized form, find the geographic coordinates, and reverse-geocode coordinates back to an address.

- [TIGER Geocoder Reference](https://postgis.net/docs/Extras.html)

### Setup

```sql
CREATE EXTENSION postgis_tiger_geocoder CASCADE;
```

This creates the `tiger` schema with the geocoder tables and functions.

--------

## Loading TIGER Data

Before geocoding, TIGER/Line data must be loaded for the states you need. The extension provides helper functions to generate the loading scripts:

```sql
-- Generate a script to download and load data for a state
-- (e.g., Massachusetts = 'MA')
SELECT loader_generate_script(ARRAY['MA'], 'sh');
```

This generates a shell script that uses `shp2pgsql` to load TIGER shapefiles. Run the generated script to populate the `tiger_data` schema with address ranges, edges, faces, and other data.

After loading:

```sql
-- Install missing indexes for performance
SELECT install_missing_indexes();

-- Update statistics
ANALYZE tiger.addr;
ANALYZE tiger.edges;
ANALYZE tiger.faces;
```

--------

## Geocoding

Convert a US address string to geographic coordinates:

```sql
-- Basic geocoding
SELECT g.rating, ST_X(g.geomout) AS lon, ST_Y(g.geomout) AS lat,
       pprint_addy(g.addy) AS address
FROM geocode('1600 Pennsylvania Ave NW, Washington, DC 20500') AS g;
```

The `rating` indicates match quality (lower is better, 0 = exact match).

```sql
-- Geocode with a limit on results
SELECT g.rating, ST_AsText(g.geomout), pprint_addy(g.addy)
FROM geocode('100 Main St, Boston, MA', 3) AS g;

-- Batch geocode from a table
SELECT a.id, g.rating, g.geomout, pprint_addy(g.addy)
FROM addresses a, LATERAL geocode(a.address_string, 1) AS g;
```

--------

## Reverse Geocoding

Convert coordinates back to a street address:

```sql
SELECT pprint_addy(r.addy[1]) AS address
FROM reverse_geocode(ST_SetSRID(ST_MakePoint(-77.0365, 38.8977), 4326)) AS r;
```

--------

## Address Normalization

Parse and normalize address strings without geocoding:

```sql
SELECT *
FROM normalize_address('1600 Pennsylvania Avenue NW, Washington, DC 20500');
```

Returns components: `address` (number), `predirAbbrev`, `streetName`, `streetTypeAbbrev`, `postdirAbbrev`, `internal`, `location` (city), `stateAbbrev`, `zip`, `parsed`.

```sql
-- Pretty-print a normalized address
SELECT pprint_addy(normalize_address('100 main street boston ma 02101'));
```

--------

## Configuration

The `tiger.geocode_settings` table controls geocoder behavior:

```sql
-- View current settings
SELECT * FROM tiger.geocode_settings;

-- Adjust settings (e.g., increase debug level)
UPDATE tiger.geocode_settings SET val = 'true' WHERE name = 'debug_geocode_address';
```
