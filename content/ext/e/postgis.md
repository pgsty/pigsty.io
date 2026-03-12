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

| **Related** | [`pointcloud`](/ext/e/pointcloud) [`h3`](/ext/e/h3) [`pg_geohash`](/ext/e/pg_geohash) [`geoip`](/ext/e/geoip) [`pg_polyline`](/ext/e/pg_polyline) [`earthdistance`](/ext/e/earthdistance) [`ogr_fdw`](/ext/e/ogr_fdw) [`tzf`](/ext/e/tzf) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) [`h3_postgis`](/ext/e/h3_postgis) [`mobilitydb`](/ext/e/mobilitydb) [`pgrouting`](/ext/e/pgrouting) [`pointcloud_postgis`](/ext/e/pointcloud_postgis) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`postgis_topology`](/ext/e/postgis_topology) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.6.2` | {{< pgvers "18,17,16,15,14" >}} | `postgis` | - |
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
@ el8.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgis36_18-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel8.1.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgis36_18-3.6.0-1PGDG.rhel8.1.x86_64.rpm
@ el8.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgis36_18-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 postgis36_18 postgis36_18-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgis36_18-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel8.1.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgis36_18-3.6.0-1PGDG.rhel8.1.aarch64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel9.1.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis36_18-3.6.0-1PGDG.rhel9.1.x86_64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel9.1.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis36_18-3.6.0-1PGDG.rhel9.1.aarch64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis36_18-3.6.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 postgis36_18 postgis36_18-3.6.0-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis36_18-3.6.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-postgis-3 postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-18-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgis36_17-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgis36_17-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgis36_17-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 postgis36_17 postgis36_17-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgis36_17-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgis36_17-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis36_17-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis36_17-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis36_17-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 postgis36_17 postgis36_17-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis36_17-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-postgis-3 postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-17-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgis36_16-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgis36_16-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgis36_16-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 postgis36_16 postgis36_16-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgis36_16-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgis36_16-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis36_16-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis36_16-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis36_16-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 postgis36_16 postgis36_16-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis36_16-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.7MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-postgis-3 postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-16-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgis36_15-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgis36_15-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgis36_15-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 postgis36_15 postgis36_15-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgis36_15-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgis36_15-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgis36_15-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgis36_15-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgis36_15-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 postgis36_15 postgis36_15-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgis36_15-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-postgis-3 postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-15-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.6.1 5.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgis36_14-3.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgis36_14-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.6.1 5.1MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgis36_14-3.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 postgis36_14 postgis36_14-3.6.0-6PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgis36_14-3.6.0-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 5.0MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgis36_14-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.0-6PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgis36_14-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.0-6PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.0-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.0-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgis36_14-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.2 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.6.1 4.3MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.0-4PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel10.x86_64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgis36_14-3.6.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.2-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.2 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.6.1 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.0-4PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.0-4PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 postgis36_14 postgis36_14-3.6.0-1PGDG.rhel10.aarch64.rpm pgdg 3.6.0 4.2MiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgis36_14-3.6.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb pgdg 3.6.2 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb pgdg 3.6.2 3.2MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb pgdg 3.6.2 3.6MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb pgdg 3.6.2 3.5MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb pgdg 3.6.2 3.3MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-postgis-3 postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb pgdg 3.6.2 5.4MiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis/postgresql-14-postgis-3_3.6.2+dfsg-1.pgdg24.04+1_arm64.deb
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

> [PostGIS: Spatial and Geographic objects for PostgreSQL](https://github.com/postgis/postgis)

PostGIS adds support for geographic objects to PostgreSQL, turning it into a spatial database. It implements the [OGC Simple Features](https://www.ogc.org/standard/sfs/) specification and provides spatial indexing, spatial functions, and coordinate transformation capabilities.

### Documentation

- [PostGIS Reference](https://postgis.net/docs/) -- Full documentation
- [Geometry Types](https://postgis.net/docs/using_postgis_dbmanagement.html#RefObject) -- Point, LineString, Polygon, MultiPoint, etc.
- [Spatial Relationships](https://postgis.net/docs/reference.html#Spatial_Relationships) -- ST_Contains, ST_Intersects, ST_Within, etc.
- [Measurement Functions](https://postgis.net/docs/reference.html#Measurement_Functions) -- ST_Distance, ST_Area, ST_Length, etc.
- [Geometry Processing](https://postgis.net/docs/reference.html#Geometry_Processing) -- ST_Buffer, ST_Union, ST_Intersection, etc.
- [Geometry Input/Output](https://postgis.net/docs/reference.html#Geometry_Inputs) -- WKT, WKB, GeoJSON, KML, GML, SVG
- [Coordinate Transformation](https://postgis.net/docs/reference.html#SRS_Functions) -- ST_Transform, ST_SetSRID
- [Geography Functions](https://postgis.net/docs/using_postgis_dbmanagement.html#PostGIS_Geography) -- True spheroidal distance calculations
- [Spatial Indexing](https://postgis.net/docs/using_postgis_dbmanagement.html#idm2269) -- GiST and SP-GiST indexes

### Setup

```sql
CREATE EXTENSION postgis;
```

Verify the installation:

```sql
SELECT PostGIS_Full_Version();
```

--------

## Core Data Types

PostGIS provides two primary spatial types:

| Type | Description | Coordinate System |
|------|-------------|-------------------|
| `geometry` | Planar (flat-earth) spatial type | Cartesian, uses SRID for projection |
| `geography` | Spheroidal (round-earth) spatial type | Always lon/lat on WGS 84 (SRID 4326) |

### Geometry

The `geometry` type works in a projected coordinate system. It is fast and supports the full range of PostGIS functions. Best suited when working within a single projected coordinate system (e.g., UTM zones, state planes).

### Geography

The `geography` type performs calculations on a sphere/spheroid. Distances and areas are returned in meters. It has a smaller set of supported functions but gives accurate results over large areas without needing to choose a projection.

```sql
-- Geography column: distances are in meters, always WGS 84
CREATE TABLE cities (
    name text PRIMARY KEY,
    location geography(Point, 4326)
);

INSERT INTO cities VALUES
    ('New York',  ST_GeogFromText('POINT(-74.006 40.7128)')),
    ('London',    ST_GeogFromText('POINT(-0.1278 51.5074)')),
    ('Tokyo',     ST_GeogFromText('POINT(139.6917 35.6895)'));

-- Distance in meters (great-circle)
SELECT a.name, b.name, ST_Distance(a.location, b.location) / 1000 AS distance_km
FROM cities a, cities b WHERE a.name < b.name;
```

--------

## Creating Spatial Tables

A spatial column has a geometry type, a dimensionality (2D, 3D, 4D), and a Spatial Reference System Identifier (SRID).

```sql
CREATE TABLE buildings (
    id serial PRIMARY KEY,
    name text,
    geom geometry(Polygon, 4326)
);

CREATE TABLE roads (
    id serial PRIMARY KEY,
    name text,
    geom geometry(LineString, 4326)
);

CREATE TABLE sensors (
    id serial PRIMARY KEY,
    label text,
    geom geometry(Point, 4326)
);
```

### Inserting Spatial Data

From Well-Known Text (WKT):

```sql
INSERT INTO sensors (label, geom) VALUES
    ('S1', ST_GeomFromText('POINT(-73.985 40.748)', 4326)),
    ('S2', ST_GeomFromText('POINT(-73.979 40.754)', 4326));
```

Using constructor functions:

```sql
INSERT INTO sensors (label, geom) VALUES
    ('S3', ST_SetSRID(ST_MakePoint(-73.990, 40.735), 4326));
```

From GeoJSON:

```sql
INSERT INTO buildings (name, geom) VALUES
    ('Plaza', ST_GeomFromGeoJSON('{"type":"Polygon","coordinates":[[[-73.98,40.74],[-73.97,40.74],[-73.97,40.75],[-73.98,40.75],[-73.98,40.74]]]}'));
```

--------

## Spatial Indexing

GiST indexes are essential for spatial query performance. Always create one on spatial columns:

```sql
CREATE INDEX idx_sensors_geom ON sensors USING GIST (geom);
CREATE INDEX idx_buildings_geom ON buildings USING GIST (geom);
CREATE INDEX idx_roads_geom ON roads USING GIST (geom);
```

The spatial index enables the bounding-box operators (`&&`, `@`, `~`) and is used automatically by spatial functions like `ST_DWithin`, `ST_Intersects`, and `ST_Contains` in WHERE clauses.

For very large datasets, consider BRIN indexes:

```sql
CREATE INDEX idx_sensors_geom_brin ON sensors USING BRIN (geom);
```

--------

## Core Spatial Functions

### Creating Geometries

```sql
-- Point from coordinates
SELECT ST_MakePoint(-73.985, 40.748);

-- Point with SRID
SELECT ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326);

-- From WKT
SELECT ST_GeomFromText('LINESTRING(0 0, 1 1, 2 1)', 4326);

-- From GeoJSON
SELECT ST_GeomFromGeoJSON('{"type":"Point","coordinates":[-73.985,40.748]}');

-- Make a line from two points
SELECT ST_MakeLine(
    ST_MakePoint(0, 0),
    ST_MakePoint(1, 1)
);

-- Make a polygon from a closed linestring
SELECT ST_MakePolygon(
    ST_GeomFromText('LINESTRING(0 0, 1 0, 1 1, 0 1, 0 0)')
);
```

### Measurement

```sql
-- Distance between two geometries (in SRID units)
SELECT ST_Distance(
    ST_GeomFromText('POINT(0 0)', 4326),
    ST_GeomFromText('POINT(1 1)', 4326)
);

-- Distance in meters using geography
SELECT ST_Distance(
    'SRID=4326;POINT(-73.985 40.748)'::geography,
    'SRID=4326;POINT(-0.1278 51.5074)'::geography
);

-- Area (in SRID units, or square meters for geography)
SELECT ST_Area(geom) FROM buildings;

-- Length of a linestring
SELECT ST_Length(geom) FROM roads;

-- Perimeter of a polygon
SELECT ST_Perimeter(geom) FROM buildings;
```

### Spatial Relationships

```sql
-- Does A contain B?
SELECT ST_Contains(a.geom, b.geom) FROM buildings a, sensors b;

-- Does A intersect B?
SELECT ST_Intersects(a.geom, b.geom) FROM buildings a, roads b;

-- Is B within distance D of A? (index-friendly)
SELECT ST_DWithin(a.geom, b.geom, 0.01) FROM sensors a, sensors b;

-- Are A and B within distance D? (geography, meters)
SELECT ST_DWithin(a.location, b.location, 10000) FROM cities a, cities b;

-- Does A touch B? (share boundary but not interior)
SELECT ST_Touches(a.geom, b.geom) FROM buildings a, roads b;

-- Does A cross B?
SELECT ST_Crosses(a.geom, b.geom) FROM roads a, roads b;

-- Does A overlap B? (same dimension, not identical)
SELECT ST_Overlaps(a.geom, b.geom) FROM buildings a, buildings b;
```

### Geometry Processing

```sql
-- Buffer a geometry (expand by distance)
SELECT ST_Buffer(geom, 0.001) FROM sensors;

-- Intersection of two geometries
SELECT ST_Intersection(a.geom, b.geom) FROM buildings a, buildings b
WHERE ST_Intersects(a.geom, b.geom) AND a.id < b.id;

-- Union of geometries
SELECT ST_Union(geom) FROM buildings WHERE name LIKE 'Block%';

-- Convex hull
SELECT ST_ConvexHull(ST_Collect(geom)) FROM sensors;

-- Simplify a geometry (Douglas-Peucker)
SELECT ST_Simplify(geom, 0.0001) FROM roads;

-- Centroid
SELECT ST_Centroid(geom) FROM buildings;

-- Voronoi diagram
SELECT ST_VoronoiPolygons(ST_Collect(geom)) FROM sensors;
```

### Coordinate Transformation

```sql
-- Transform from WGS 84 (4326) to Web Mercator (3857)
SELECT ST_Transform(geom, 3857) FROM sensors;

-- Transform to a UTM zone for meter-based calculations
SELECT ST_Area(ST_Transform(geom, 32618)) AS area_sqm FROM buildings;

-- Set the SRID on a geometry (does NOT reproject)
SELECT ST_SetSRID(geom, 4326) FROM sensors;

-- Get the current SRID
SELECT ST_SRID(geom) FROM sensors;
```

### Output Formats

```sql
-- To GeoJSON
SELECT ST_AsGeoJSON(geom) FROM sensors;

-- To WKT
SELECT ST_AsText(geom) FROM sensors;

-- To KML
SELECT ST_AsKML(geom) FROM sensors;

-- To SVG path
SELECT ST_AsSVG(geom) FROM buildings;

-- To EWKT (includes SRID)
SELECT ST_AsEWKT(geom) FROM sensors;
```

--------

## Practical Examples

### Find Nearby Points

Find all sensors within 500 meters of a given location:

```sql
SELECT label, ST_Distance(
    geom::geography,
    ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326)::geography
) AS distance_m
FROM sensors
WHERE ST_DWithin(
    geom::geography,
    ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326)::geography,
    500
)
ORDER BY distance_m;
```

### Spatial Join

Find which building each sensor is inside:

```sql
SELECT s.label, b.name
FROM sensors s
JOIN buildings b ON ST_Contains(b.geom, s.geom);
```

### Count Points in Polygons

```sql
SELECT b.name, COUNT(s.id) AS sensor_count
FROM buildings b
LEFT JOIN sensors s ON ST_Contains(b.geom, s.geom)
GROUP BY b.name;
```

### K-Nearest Neighbors

Find the 5 closest sensors to a point using the index-accelerated `<->` operator:

```sql
SELECT label, geom <-> ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326) AS dist
FROM sensors
ORDER BY geom <-> ST_SetSRID(ST_MakePoint(-73.985, 40.748), 4326)
LIMIT 5;
```

### Aggregate into a Single Geometry

```sql
-- Collect all sensor points into a MultiPoint
SELECT ST_Collect(geom) FROM sensors;

-- Compute the minimum bounding circle
SELECT ST_MinimumBoundingCircle(ST_Collect(geom)) FROM sensors;
```

--------

## Geography vs Geometry

| Feature | `geometry` | `geography` |
|---------|-----------|-------------|
| Coordinate system | Any projected CRS | WGS 84 only |
| Distance units | SRID units (degrees, meters, feet) | Meters |
| Accuracy over large areas | Requires correct projection | Accurate globally |
| Function support | Full (~300 functions) | Subset (~40 functions) |
| Index support | GiST, SP-GiST, BRIN | GiST |
| Performance | Faster | Slightly slower |

A common pattern is to store data as `geography` for correctness, and cast to `geometry` when needed for functions not available on geography:

```sql
SELECT ST_Area(geom::geography) AS area_sqm FROM buildings;
```
