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
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`mobilitydb`**](/ext/e/mobilitydb) | `1.3.0` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1650  | [**`mobilitydb`**](/ext/e/mobilitydb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1651  | [**`mobilitydb_datagen`**](/ext/e/mobilitydb_datagen) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`mobilitydb`](/ext/e/mobilitydb) [`mobilitydb`](/ext/e/mobilitydb) [`postgis`](/ext/e/postgis) [`timescaledb`](/ext/e/timescaledb) [`pgrouting`](/ext/e/pgrouting) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.0` | {{< pgvers "18,17,16,15,14" >}} | `mobilitydb` | `mobilitydb` |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-mobilitydb` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.x86_64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
| d12.aarch64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
| d13.x86_64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
| d13.aarch64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
| u22.x86_64 | MISS PGDG - 0 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u22.aarch64 | MISS PGDG - 0 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u24.x86_64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
| u24.aarch64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
| u26.x86_64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
| u26.aarch64 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 | AVAIL PGDG 1.3.0 2 |
{{< /pgext_matrix >}}


## Install

You can install `mobilitydb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

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

> [mobilitydb_datagen: Synthetic mobility data generator for MobilityDB](https://github.com/MobilityDB/MobilityDB)

MobilityDB DataGen provides functions for generating synthetic mobility data for testing and benchmarking MobilityDB workloads. It creates random temporal values including trips, trajectories, and time-varying measurements.

### Generating Random Temporal Values

```sql
-- Generate a random temporal float over a time span
SELECT random_tfloat(
    '2025-06-01 00:00+00', '2025-06-02 00:00+00',  -- time span
    0.0, 100.0,                                      -- value range
    10                                               -- number of instants
);

-- Generate a random temporal geometric point (trajectory)
SELECT random_tgeompoint(
    '2025-06-01 08:00+00', '2025-06-01 18:00+00',   -- time span
    ST_MakeEnvelope(2.2, 48.8, 2.4, 48.9, 4326),    -- spatial bounds
    20                                               -- number of instants
);
```

### Generating Test Datasets

Create bulk test data for benchmarking trip queries:

```sql
INSERT INTO trips (vehicle_id, trip, trip_date)
SELECT
    i,
    random_tgeompoint(
        '2025-06-01 08:00+00', '2025-06-01 18:00+00',
        ST_MakeEnvelope(2.2, 48.8, 2.5, 48.9, 4326),
        50
    ),
    '2025-06-01'
FROM generate_series(1, 1000) AS i;
```
