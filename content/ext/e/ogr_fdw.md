---
title: "ogr_fdw"
linkTitle: "ogr_fdw"
description: "foreign-data wrapper for GIS data access"
weight: 1550
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pramsey/pgsql-ogr-fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pramsey/pgsql-ogr-fdw</div>
    <div class="ext-card__desc">https://github.com/pramsey/pgsql-ogr-fdw</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ogr_fdw`**](/ext/e/ogr_fdw) | `1.1.8` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1550  | [**`ogr_fdw`**](/ext/e/ogr_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`file_fdw`](/ext/e/file_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) [`postgis_topology`](/ext/e/postgis_topology) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`address_standardizer`](/ext/e/address_standardizer) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.8` | {{< pgvers "18,17,16,15,14" >}} | `ogr_fdw` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.7` | {{< pgvers "18,17,16,15,14" >}} | `ogr_fdw_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.8` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ogr-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.1.7 2 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 5 | AVAIL PGDG 1.1.7 8 | AVAIL PGDG 1.1.7 10 |
| el8.aarch64 | AVAIL PGDG 1.1.7 2 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 5 | AVAIL PGDG 1.1.7 6 | AVAIL PGDG 1.1.7 6 |
| el9.x86_64 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 7 | AVAIL PGDG 1.1.7 8 | AVAIL PGDG 1.1.7 11 | AVAIL PGDG 1.1.7 12 |
| el9.aarch64 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 7 | AVAIL PGDG 1.1.7 7 | AVAIL PGDG 1.1.7 8 | AVAIL PGDG 1.1.7 8 |
| el10.x86_64 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 5 | AVAIL PGDG 1.1.7 5 | AVAIL PGDG 1.1.7 5 | AVAIL PGDG 1.1.7 5 |
| el10.aarch64 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 |
| d12.x86_64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| d12.aarch64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| d13.x86_64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| d13.aarch64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| u22.x86_64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| u22.aarch64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| u24.x86_64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| u24.aarch64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| u26.x86_64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
| u26.aarch64 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 | AVAIL PGDG 1.1.8 3 |
@ el8.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 51.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/ogr_fdw_18-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/ogr_fdw_18-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 49.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 48.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 48.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 48.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 48.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 50.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 90.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb pgdg 1.1.7 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb pgdg 1.1.7 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb pgdg 1.1.7 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb pgdg 1.1.7 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb pgdg 1.1.7 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb pgdg 1.1.7 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb pgdg 1.1.7 87.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb pgdg 1.1.7 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 87.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 87.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb pgdg 1.1.7 87.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 51.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.1.6 51.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel8.x86_64.rpm pgdg 1.1.5 50.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.5-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 49.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 48.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 49.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 49.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.1.6 49.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.5-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-3PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.5-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 48.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 48.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 48.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-3PGDG.rhel9.aarch64.rpm pgdg 1.1.5 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.5-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 50.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb pgdg 1.1.7 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 88.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb pgdg 1.1.7 88.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb pgdg 1.1.7 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb pgdg 1.1.7 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 106.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 106.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb pgdg 1.1.7 106.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 104.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb pgdg 1.1.7 103.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb pgdg 1.1.7 87.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 87.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 86.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb pgdg 1.1.7 87.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 52.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 51.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.1.6 51.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel8.x86_64.rpm pgdg 1.1.5 50.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.5-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.4-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 48.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.1.4 47.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.4-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 49.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 49.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.1.6 49.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.5-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel9.x86_64.rpm pgdg 1.1.4 48.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.4-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 48.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 48.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 48.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 48.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.1.4 46.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.4-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 50.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 50.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb pgdg 1.1.7 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb pgdg 1.1.7 88.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb pgdg 1.1.7 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb pgdg 1.1.7 88.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 106.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 106.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb pgdg 1.1.7 105.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 103.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 103.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb pgdg 1.1.7 103.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 87.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 87.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb pgdg 1.1.7 87.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 86.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 87.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb pgdg 1.1.7 87.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.1.6 51.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-4PGDG.rhel8.x86_64.rpm pgdg 1.1.5 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.5-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-2PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.4-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.3-1.rhel8.x86_64.rpm pgdg 1.1.3 49.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.2-2.rhel8.x86_64.rpm pgdg 1.1.2 49.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.2-2.rhel8.x86_64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.4-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.1.4 47.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 50.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 51.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 50.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.1.6 51.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-4PGDG.rhel9.x86_64.rpm pgdg 1.1.5 50.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.5-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.1.5 50.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-2PGDG.rhel9.x86_64.rpm pgdg 1.1.4 49.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.4-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-1PGDG.rhel9.x86_64.rpm pgdg 1.1.4 49.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.3-1.rhel9.x86_64.rpm pgdg 1.1.3 49.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.3-1.rhel9.x86_64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.2-2.rhel9.x86_64.rpm pgdg 1.1.2 49.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.2-2.rhel9.x86_64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.4-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 52.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 51.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 91.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 91.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb pgdg 1.1.7 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb pgdg 1.1.7 88.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 91.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb pgdg 1.1.7 91.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb pgdg 1.1.7 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb pgdg 1.1.7 107.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 104.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb pgdg 1.1.7 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 88.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 88.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 52.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 52.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.1.6 51.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.5-4PGDG.rhel8.x86_64.rpm pgdg 1.1.5 51.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.5-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-2PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.4-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.3-1.rhel8.x86_64.rpm pgdg 1.1.3 49.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.2-2.rhel8.x86_64.rpm pgdg 1.1.2 49.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.2-2.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.2-1.rhel8.x86_64.rpm pgdg 1.1.2 49.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.1-1.rhel8.x86_64.rpm pgdg 1.1.1 48.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.1-1.rhel8.x86_64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.4-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.1.4 47.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 51.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 51.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 51.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 51.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.1.6 51.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.5-4PGDG.rhel9.x86_64.rpm pgdg 1.1.5 50.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.5-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.1.5 50.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-2PGDG.rhel9.x86_64.rpm pgdg 1.1.4 49.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.4-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-1PGDG.rhel9.x86_64.rpm pgdg 1.1.4 49.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.3-1.rhel9.x86_64.rpm pgdg 1.1.3 50.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.2-2.rhel9.x86_64.rpm pgdg 1.1.2 49.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.2-2.rhel9.x86_64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.2-1.rhel9.x86_64.rpm pgdg 1.1.2 50.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.2-1.rhel9.x86_64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 50.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.4-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 52.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 52.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 52.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 51.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 91.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb pgdg 1.1.7 90.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb pgdg 1.1.7 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb pgdg 1.1.7 91.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb pgdg 1.1.7 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb pgdg 1.1.7 106.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 104.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb pgdg 1.1.7 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 88.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `ogr_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install ogr_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y ogr_fdw -v 18  # PG 18
pig ext install -y ogr_fdw -v 17  # PG 17
pig ext install -y ogr_fdw -v 16  # PG 16
pig ext install -y ogr_fdw -v 15  # PG 15
pig ext install -y ogr_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y ogr_fdw_18       # PG 18
dnf install -y ogr_fdw_17       # PG 17
dnf install -y ogr_fdw_16       # PG 16
dnf install -y ogr_fdw_15       # PG 15
dnf install -y ogr_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-ogr-fdw   # PG 18
apt install -y postgresql-17-ogr-fdw   # PG 17
apt install -y postgresql-16-ogr-fdw   # PG 16
apt install -y postgresql-15-ogr-fdw   # PG 15
apt install -y postgresql-14-ogr-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION ogr_fdw;
```




## Usage

> [ogr_fdw: OGR Foreign Data Wrapper for PostgreSQL](https://github.com/pramsey/pgsql-ogr-fdw)

OGR is the **vector** half of the [GDAL](http://www.gdal.org/) spatial data access library. It allows access to a [large number of GIS data formats](http://www.gdal.org/ogr_formats.html) using a simple C API. Since OGR exposes a simple table structure and PostgreSQL foreign data wrappers allow access to table structures, the fit is pretty perfect.

### Quick Start

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION ogr_fdw;
```

Use the `ogr_fdw_info` tool to read an OGR data source and output server/table definitions:

```bash
ogr_fdw_info -s /tmp/test -l pt_two
```

```sql
CREATE SERVER "myserver"
  FOREIGN DATA WRAPPER ogr_fdw
  OPTIONS (
    datasource '/tmp/test',
    format 'ESRI Shapefile' );

CREATE FOREIGN TABLE "pt_two" (
  fid integer,
  "geom" geometry(Point, 4326),
  "name" varchar,
  "age" integer,
  "height" real,
  "birthdate" date )
  SERVER "myserver"
  OPTIONS (layer 'pt_two');

SELECT * FROM pt_two;
```

Filter pushdown is supported — both simple predicates and bounding box filters (`&&`):

```sql
SET client_min_messages = debug1;

SELECT name, age, height
FROM pt_two
WHERE height < 5.7
AND geom && ST_MakeEnvelope(0, 0, 1, 1);
```

```
DEBUG:  OGR SQL: (height < 5.7)
DEBUG:  OGR spatial filter (0 0, 1 1)
```


## Limitations

- PostgreSQL 11 or higher required
- Limited non-spatial query restrictions are pushed down to OGR (only `>`, `<`, `<=`, `>=`, `=`)
- Only bounding box filters (`&&`) are pushed down for spatial filtering
- OGR connections are made for every query (no pooling)
- All columns are retrieved every time


## Examples

### WFS (Web Feature Service)

```sql
CREATE SERVER geoserver
  FOREIGN DATA WRAPPER ogr_fdw
  OPTIONS (
    datasource 'WFS:https://demo.geo-solutions.it/geoserver/wfs',
    format 'WFS' );

CREATE FOREIGN TABLE topp_states (
  fid bigint,
  the_geom Geometry(MultiSurface,4326),
  gml_id varchar,
  state_name varchar,
  state_fips varchar,
  state_abbr varchar,
  land_km double precision,
  persons double precision )
  SERVER "geoserver"
  OPTIONS (layer 'topp:states');
```

### File Geodatabase

```sql
CREATE SERVER fgdbtest
  FOREIGN DATA WRAPPER ogr_fdw
  OPTIONS (
    datasource '/tmp/Querying.gdb',
    format 'OpenFileGDB' );

CREATE FOREIGN TABLE cities (
  fid integer,
  geom geometry(Point, 4326),
  city_name varchar,
  state_name varchar,
  elevation integer,
  pop1990 integer )
  SERVER fgdbtest
  OPTIONS (layer 'Cities');
```


## Advanced Features

### Writeable Tables

If the OGR driver supports it, you can insert/update/delete records. Writeable tables require a `fid` column in the table definition.

```sql
ALTER SERVER myserver
  OPTIONS (ADD updateable 'true');
```

### Column Name Mapping

Map remote column names to local names:

```sql
CREATE FOREIGN TABLE typetest_fdw_mapped (
  fid bigint,
  supertime time OPTIONS (column_name 'clock'),
  thebestname varchar OPTIONS (column_name 'name') )
  SERVER wraparound
  OPTIONS (layer 'typetest');
```

### Automatic Table Import

Use `IMPORT FOREIGN SCHEMA` to auto-create foreign table definitions:

```sql
CREATE SCHEMA fgdball;

-- Import all tables
IMPORT FOREIGN SCHEMA ogr_all
  FROM SERVER fgdbtest
  INTO fgdball;

-- Import specific tables
IMPORT FOREIGN SCHEMA ogr_all
  LIMIT TO(cities)
  FROM SERVER fgdbtest
  INTO fgdball;
```

### GDAL Options

Control driver behavior with config and open options:

```sql
CREATE SERVER myserver_latin1
  FOREIGN DATA WRAPPER ogr_fdw
  OPTIONS (
    datasource '/tmp/test',
    format 'ESRI Shapefile',
    config_options 'SHAPE_ENCODING=LATIN1' );
```

Multiple config options can be passed as a space-separated list.
