---
title: "mobilitydb_datagen"
linkTitle: "mobilitydb_datagen"
description: "MobilityDB random data generator functions"
weight: 1651
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/MobilityDB/MobilityDB">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">MobilityDB/MobilityDB</div>
    <div class="ext-card__desc">https://github.com/MobilityDB/MobilityDB</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/mobilitydb-1.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">mobilitydb-1.3.0.tar.gz</div>
    <div class="ext-card__desc">mobilitydb-1.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`mobilitydb`**](/ext/e/mobilitydb) | `1.3.0` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1650  | [**`mobilitydb`**](/ext/e/mobilitydb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 1651  | [**`mobilitydb_datagen`**](/ext/e/mobilitydb_datagen) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`mobilitydb`](/ext/e/mobilitydb) [`pgrouting`](/ext/e/pgrouting) [`faker`](/ext/e/faker) [`random`](/ext/e/random) [`h3`](/ext/e/h3) [`pg_polyline`](/ext/e/pg_polyline) [`dbt2`](/ext/e/dbt2) [`tsm_system_time`](/ext/e/tsm_system_time) [`tsm_system_rows`](/ext/e/tsm_system_rows) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.3.0` | {{< pgvers "18,17,16,15,14" >}} | `mobilitydb` | `mobilitydb` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "18,17,16,15,14" >}} | `mobilitydb_$v` | `postgis36_$v` |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-mobilitydb` | `postgresql-$v-postgis-3` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d12.x86_64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
| d12.aarch64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
| d13.x86_64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
| d13.aarch64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
| u22.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u24.x86_64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
| u24.aarch64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
| u26.x86_64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
| u26.aarch64 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 | AVAIL PGDG 1.3.0 3 |
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `mobilitydb` using `pig build`:

```bash
pig build pkg mobilitydb         # build RPM packages
```


## Install

You can install `mobilitydb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install mobilitydb;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y mobilitydb -v 18  # PG 18
pig ext install -y mobilitydb -v 17  # PG 17
pig ext install -y mobilitydb -v 16  # PG 16
pig ext install -y mobilitydb -v 15  # PG 15
pig ext install -y mobilitydb -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y mobilitydb_18       # PG 18
dnf install -y mobilitydb_17       # PG 17
dnf install -y mobilitydb_16       # PG 16
dnf install -y mobilitydb_15       # PG 15
dnf install -y mobilitydb_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-mobilitydb   # PG 18
apt install -y postgresql-17-mobilitydb   # PG 17
apt install -y postgresql-16-mobilitydb   # PG 16
apt install -y postgresql-15-mobilitydb   # PG 15
apt install -y postgresql-14-mobilitydb   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION mobilitydb_datagen CASCADE;  -- requires: mobilitydb
```




## Usage

Sources: [repository](https://github.com/MobilityDB/MobilityDB), [synthetic data generator docs](https://docs.mobilitydb.com/MobilityDB/develop/apb.html), [control file](https://github.com/MobilityDB/MobilityDB/blob/master/mobilitydb/datagen/mobilitydb_datagen.in.control), [temporal generators](https://github.com/MobilityDB/MobilityDB/blob/master/mobilitydb/datagen/temporal/random_temporal.sql), [temporal point generators](https://github.com/MobilityDB/MobilityDB/blob/master/mobilitydb/datagen/geo/random_tpoint.sql)

`mobilitydb_datagen` provides PL/pgSQL functions for generating synthetic PostgreSQL, PostGIS, and MobilityDB values. It is mainly useful for regression data, demos, and benchmark fixtures that need random temporal values or trajectories.

```sql
-- After the main MobilityDB extension is loaded:
CREATE EXTENSION mobilitydb_datagen;
```

### Generating Random Temporal Values

```sql
-- A random temporal float sequence.
SELECT random_tfloat_seq(
    -100.0, 100.0,                                  -- value bounds
    '2025-06-01 00:00+00', '2025-06-02 00:00+00',  -- time bounds
    10.0,                                           -- max value delta
    10,                                             -- max minutes between instants
    5, 10                                           -- min/max instants
);

-- Step interpolation instead of the default linear interpolation.
SELECT random_tfloat_seq(
    -100.0, 100.0,
    '2025-06-01 00:00+00', '2025-06-02 00:00+00',
    10.0, 10, 5, 10,
    false
);

-- A random temporal geometry point sequence.
SELECT asEWKT(
    random_tgeompoint_contseq(
        2.20, 2.50, 48.80, 48.95,                  -- x/y bounds
        '2025-06-01 08:00+00', '2025-06-01 18:00+00',
        0.02, 5, 20, 40,                           -- max delta, max minutes, min/max instants
        srid => 4326
    )
);
```

Other confirmed generator families include scalar helpers such as `random_bool`, `random_int`, `random_float`, `random_text`, and `random_timestamptz`; array, set, span, and range helpers; temporal helpers such as `random_tbool_inst`, `random_tint_discseq`, `random_tfloat_seq`, and `random_tfloat_seqset`; and spatial/temporal-point helpers such as `random_geom_point`, `random_geom_linestring`, `random_tgeompoint_contseq`, `random_tgeompoint_seqset`, `random_tgeogpoint_contseq`, and `random_tgeogpoint_seqset`.

### Generating Test Datasets

Create bulk test data for benchmarking trip queries:

```sql
CREATE TABLE trip_samples AS
SELECT
    vehicle_id,
    random_tgeompoint_contseq(
        2.20, 2.50, 48.80, 48.95,
        '2025-06-01 08:00+00', '2025-06-01 18:00+00',
        0.02, 5, 20, 40,
        srid => 4326
    ) AS trip
FROM generate_series(1, 1000) AS vehicle_id;
```

### Caveats

- The control file requires the main `mobilitydb` extension; `mobilitydb_datagen` is not standalone.
- The package row in `db/extension.csv` lists version `1.3.0`, package `mobilitydb`, and PostgreSQL support for 14 through 18.
- Upstream docs intentionally omit detailed parameter lists for many generator functions and point users to the SQL source files for exact signatures.
