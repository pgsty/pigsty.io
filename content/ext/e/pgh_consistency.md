---
title: "pgh_consistency"
linkTitle: "pgh_consistency"
description: "Pfafstetter consistency checks for PgHydro"
weight: 1606
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
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1600  | [**`pghydro`**](/ext/e/pghydro) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pghydro` |
| 1601  | [**`pgh_raster`**](/ext/e/pgh_raster) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_raster` |
| 1602  | [**`pgh_hgm`**](/ext/e/pgh_hgm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_hgm` |
| 1603  | [**`pgh_output`**](/ext/e/pgh_output) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_output` |
| 1604  | [**`pgh_output_en_au`**](/ext/e/pgh_output_en_au) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_output_en_au` |
| 1605  | [**`pgh_output_pt_br`**](/ext/e/pgh_output_pt_br) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_output_pt_br` |
| 1606  | [**`pgh_consistency`**](/ext/e/pgh_consistency) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgh_consistency` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`pghydro`](/ext/e/pghydro) [`pgrouting`](/ext/e/pgrouting) [`postgis_raster`](/ext/e/postgis_raster) [`pg_isok`](/ext/e/pg_isok) [`pointcloud`](/ext/e/pointcloud) [`h3`](/ext/e/h3) [`mobilitydb`](/ext/e/mobilitydb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.6` | {{< pgvers "18,17,16,15,14" >}} | `pghydro` | `plpgsql`, `postgis`, `pghydro` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.6` | {{< pgvers "18,17,16,15,14" >}} | `pghydro_$v` | `postgis36_$v` |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pghydro` | `postgresql-$v-postgis-3` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
| el8.aarch64 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 | AVAIL PIGSTY 6.6 1 |
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pghydro;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pghydro -v 18  # PG 18
pig ext install -y pghydro -v 17  # PG 17
pig ext install -y pghydro -v 16  # PG 16
pig ext install -y pghydro -v 15  # PG 15
pig ext install -y pghydro -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pghydro_18       # PG 18
dnf install -y pghydro_17       # PG 17
dnf install -y pghydro_16       # PG 16
dnf install -y pghydro_15       # PG 15
dnf install -y pghydro_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pghydro   # PG 18
apt install -y postgresql-17-pghydro   # PG 17
apt install -y postgresql-16-pghydro   # PG 16
apt install -y postgresql-15-pghydro   # PG 15
apt install -y postgresql-14-pghydro   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgh_consistency CASCADE;  -- requires: plpgsql, postgis, pghydro
```




## Usage

Sources: [PGHydro README](https://github.com/pghydro/pghydro/blob/master/README.md), [pgh_consistency SQL](https://github.com/pghydro/pghydro/blob/master/pgh_consistency--6.6.sql)

`pgh_consistency` is a PgHydro companion extension for checking and cleaning hydrographic network data. It creates the `pgh_consistency` schema with quality-control tables and functions for drainage-line and drainage-area geometry, topology, and Pfafstetter consistency checks.

### Enable

Install it after PostGIS and the core `pghydro` extension:

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION pghydro;
CREATE EXTENSION pgh_consistency;
```

### Inspect Check Tables

The extension stores findings in tables named after the issue being detected:

```sql
SELECT tablename
FROM pg_tables
WHERE schemaname = 'pgh_consistency'
ORDER BY tablename;
```

Examples include `pghft_drainagelineisdisconnected`, `pghft_drainagelineisnotvalid`, `pghft_drainageareaisnotvalid`, `pghft_drainageareaoverlapdrainagearea`, `pghft_pointvalencevalue2`, and `pghft_pointdivergent`.

### Main Workflows

Use the functions in `pgh_consistency` to prepare and validate the drainage network before running analytical PgHydro routines. The SQL objects include helpers to split drainage lines at multipoints, snap drainage lines to a grid, remove repeated points, create drainage-line vertex intersections, break drainage lines, and detect invalid, non-simple, disconnected, overlapping, looping, or misclassified drainage features.

```sql
SELECT nspname, proname
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
WHERE nspname = 'pgh_consistency'
ORDER BY proname;
```

### Notes

The extension assumes PgHydro's base drainage tables are already populated. Run consistency checks before exporting or calculating higher-level hydrological products so invalid geometries and broken network links are visible early.
