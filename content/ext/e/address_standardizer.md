---
title: "address_standardizer"
linkTitle: "address_standardizer"
description: "Used to parse an address into constituent elements. Generally used to support geocoding address normalization step."
weight: 1505
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

| **Related** | [`pgrouting`](/ext/e/pgrouting) [`pointcloud`](/ext/e/pointcloud) [`pointcloud_postgis`](/ext/e/pointcloud_postgis) [`h3`](/ext/e/h3) [`h3_postgis`](/ext/e/h3_postgis) [`q3c`](/ext/e/q3c) [`ogr_fdw`](/ext/e/ogr_fdw) [`geoip`](/ext/e/geoip) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.4` | {{< pgvers "18,17,16,15,14" >}} | `postgis` | - |
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
CREATE EXTENSION address_standardizer;
```




## Usage

> [Address Standardizer: Address parsing and standardization for PostGIS](https://github.com/postgis/postgis)

The Address Standardizer is a PostGIS extension that parses a single-line address string into a structured form using configurable lexicon, grammar, and rules tables. It is a more flexible alternative to the built-in `normalize_address` function in the TIGER geocoder.

- [Address Standardizer Reference](https://postgis.net/docs/Extras.html#Address_Standardizer)

### Setup

```sql
CREATE EXTENSION address_standardizer;
```

--------

## Standardizing Addresses

The core function takes an address string and three table references (lex, gaz, rules):

```sql
SELECT *
FROM standardize_address(
    'us_lex',        -- lexicon table
    'us_gaz',        -- gazetteer table
    'us_rules',      -- rules table
    '1600 Pennsylvania Ave NW, Washington, DC 20500'
);
```

The result contains structured fields:

| Field | Description |
|-------|-------------|
| `building` | Building name or identifier |
| `house_num` | Street number |
| `predir` | Prefix direction (N, S, E, W) |
| `qual` | Qualifier |
| `pretype` | Prefix type |
| `name` | Street name |
| `suftype` | Suffix type (St, Ave, Blvd) |
| `sufdir` | Suffix direction |
| `ruralroute` | Rural route |
| `extra` | Extra information |
| `city` | City name |
| `state` | State |
| `country` | Country |
| `postcode` | ZIP/postal code |
| `box` | PO Box |
| `unit` | Unit/apartment number |

--------

## Lexicon, Gazetteer, and Rules Tables

The standardizer is driven by three user-configurable tables:

**Lexicon (lex)** -- Maps input tokens to standardized forms and token classes:

```sql
CREATE TABLE us_lex (
    id serial PRIMARY KEY,
    seq integer,
    word text,
    stdword text,
    token integer
);
```

**Gazetteer (gaz)** -- Maps place names (cities, states) to standard forms:

```sql
CREATE TABLE us_gaz (
    id serial PRIMARY KEY,
    seq integer,
    word text,
    stdword text,
    token integer
);
```

**Rules (rules)** -- Defines grammar rules for parsing addresses:

```sql
CREATE TABLE us_rules (
    id serial PRIMARY KEY,
    rule text
);
```

For US addresses, the `address_standardizer_data_us` extension provides pre-built data for these tables.
