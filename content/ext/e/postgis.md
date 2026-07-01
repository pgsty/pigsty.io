---
title: "postgis"
linkTitle: "postgis"
description: "PostGIS geometry and geography spatial types and functions"
weight: 1500
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

| **Related** | [`pointcloud`](/ext/e/pointcloud) [`h3`](/ext/e/h3) [`pg_geohash`](/ext/e/pg_geohash) [`geoip`](/ext/e/geoip) [`pg_polyline`](/ext/e/pg_polyline) [`earthdistance`](/ext/e/earthdistance) [`ogr_fdw`](/ext/e/ogr_fdw) [`tzf`](/ext/e/tzf) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) [`h3_postgis`](/ext/e/h3_postgis) [`mobilitydb`](/ext/e/mobilitydb) [`pgrouting`](/ext/e/pgrouting) [`pointcloud_postgis`](/ext/e/pointcloud_postgis) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`postgis_topology`](/ext/e/postgis_topology) [`pg_eviltransform`](/ext/e/pg_eviltransform) |
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
@ el8.x86_64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.3 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgis36_18-3.6.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgis36_18-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel8.1.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgis36_18-3.6.0-1PGDG.rhel8.1.x86_64.rpm
@ el8.aarch64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.3 5.0MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgis36_18-3.6.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgis36_18-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 postgis36_18 postgis36_18-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgis36_18-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel8.1.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgis36_18-3.6.0-1PGDG.rhel8.1.aarch64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.3-2PGDG.rhel9.8.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel9.1.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.0-1PGDG.rhel9.1.x86_64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.3-2PGDG.rhel9.8.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel9.1.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.0-1PGDG.rhel9.1.aarch64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.3-2PGDG.rhel10.2.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.3-2PGDG.rhel10.2.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.3-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb pgdg 3.6.4 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.3 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb pgdg 3.6.4 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.3 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb pgdg 3.6.4 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.3 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb pgdg 3.6.4 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.3 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb pgdg 3.6.4 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.3 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb pgdg 3.6.4 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.3 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.2 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.3 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgis36_17-3.6.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgis36_17-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgis36_17-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.3 5.0MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgis36_17-3.6.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgis36_17-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 postgis36_17 postgis36_17-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgis36_17-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgis36_17-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.3-2PGDG.rhel9.8.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.3-2PGDG.rhel9.8.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.3-2PGDG.rhel10.2.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.3-2PGDG.rhel10.2.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.3-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb pgdg 3.6.4 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.3 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb pgdg 3.6.4 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.3 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb pgdg 3.6.4 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.3 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb pgdg 3.6.4 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.3 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb pgdg 3.6.4 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.3 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb pgdg 3.6.4 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.3 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.2 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.3 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgis36_16-3.6.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgis36_16-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgis36_16-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.3 5.0MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgis36_16-3.6.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgis36_16-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 postgis36_16 postgis36_16-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgis36_16-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgis36_16-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.3-2PGDG.rhel9.8.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.3-2PGDG.rhel9.8.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.3-2PGDG.rhel10.2.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.3-2PGDG.rhel10.2.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.3-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb pgdg 3.6.4 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.3 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb pgdg 3.6.4 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.3 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb pgdg 3.6.4 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.3 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb pgdg 3.6.4 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.3 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.2 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.3 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgis36_15-3.6.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgis36_15-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgis36_15-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.3 5.0MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgis36_15-3.6.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgis36_15-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 postgis36_15 postgis36_15-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgis36_15-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgis36_15-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.3-2PGDG.rhel9.8.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.3-2PGDG.rhel9.8.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.3-2PGDG.rhel10.2.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.3-2PGDG.rhel10.2.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.3-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb pgdg 3.6.4 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.3 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb pgdg 3.6.4 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.3 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb pgdg 3.6.4 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.3 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb pgdg 3.6.4 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.3 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb pgdg 3.6.4 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.3 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb pgdg 3.6.4 5.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.3 5.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.2 5.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.3 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgis36_14-3.6.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgis36_14-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgis36_14-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.3 5.0MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgis36_14-3.6.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgis36_14-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 postgis36_14 postgis36_14-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgis36_14-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgis36_14-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.3-2PGDG.rhel9.8.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel9.6.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.3-2PGDG.rhel9.8.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel9.6.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.3-2PGDG.rhel10.2.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.3 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel10.0.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.3-2PGDG.rhel10.2.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.3-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.3 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb pgdg 3.6.4 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.3 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb pgdg 3.6.4 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.3 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb pgdg 3.6.4 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.3 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb pgdg 3.6.4 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.3 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb pgdg 3.6.4 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.3 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb pgdg 3.6.4 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.3 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb pgdg 3.6.4 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.4+dfsg-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.3 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.3+dfsg-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb pgdg 3.6.2 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg26.04+1_arm64.deb
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
CREATE EXTENSION postgis;
```

## Usage

Source: [Official manual](https://postgis.net/documentation/manual/), [current manual HTML](https://postgis.net/docs/postgis-en.html), [release notes](https://postgis.net/docs/release_notes.html), [patch release announcement](https://postgis.net/2026/04/PostGIS-Patch-Releases/)

`postgis` adds spatial types, indexes, and SQL functions to PostgreSQL. The main user-facing split is between `geometry` for planar/projected work and `geography` for spherical calculations on longitude/latitude data.

### Basic setup

```sql
CREATE EXTENSION postgis;
SELECT PostGIS_Full_Version();
```

### Core types and functions

```sql
CREATE TABLE sensors (
  id bigserial PRIMARY KEY,
  geom geometry(Point, 4326),
  geog geography(Point, 4326)
);

SELECT ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326);
SELECT ST_Intersects(a.geom, b.geom) FROM a, b;
SELECT ST_DWithin(a.geom, b.geom, 100);
SELECT ST_Distance(a.geog, b.geog);
SELECT ST_Transform(geom, 3857) FROM sensors;
```

- constructors: `ST_MakePoint`, `ST_GeomFromText`, `ST_GeomFromGeoJSON`
- relationships: `ST_Intersects`, `ST_Contains`, `ST_Within`, `ST_DWithin`
- measurements and transforms: `ST_Distance`, `ST_Area`, `ST_Length`, `ST_Transform`
- processing: `ST_Buffer`, `ST_Intersection`, `ST_Union`

### Spatial indexes

```sql
CREATE INDEX idx_sensors_geom ON sensors USING GIST (geom);
```

The official manual continues to recommend GiST as the general-purpose spatial index, with BRIN and SP-GiST available for specific data distributions and tradeoffs.

### Caveats

- Use `geometry` in an appropriate projected SRID for planar distances and areas; use `geography` when you need meter-based spheroidal calculations.
- `PostGIS 3.6.3` is a patch release dated 2026-04-14. The release notes describe fixes and a security hardening change, not a new stub-level usage surface, so this refresh mostly trims and aligns the stub with the current manual.
