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
| [**`ogr_fdw`**](/ext/e/ogr_fdw) | `1.1.9` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1550  | [**`ogr_fdw`**](/ext/e/ogr_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`nominatim_fdw`](/ext/e/nominatim_fdw) [`rdf_fdw`](/ext/e/rdf_fdw) [`pointcloud`](/ext/e/pointcloud) [`pgh_raster`](/ext/e/pgh_raster) [`file_fdw`](/ext/e/file_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.9` | {{< pgvers "18,17,16,15,14" >}} | `ogr_fdw` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.9` | {{< pgvers "18,17,16,15,14" >}} | `ogr_fdw_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.9` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ogr-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 5 | AVAIL PGDG 1.1.9 6 | AVAIL PGDG 1.1.9 9 | AVAIL PGDG 1.1.9 11 |
| el8.aarch64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 5 | AVAIL PGDG 1.1.9 6 | AVAIL PGDG 1.1.9 7 | AVAIL PGDG 1.1.9 7 |
| el9.x86_64 | AVAIL PGDG 1.1.9 5 | AVAIL PGDG 1.1.9 8 | AVAIL PGDG 1.1.9 9 | AVAIL PGDG 1.1.9 12 | AVAIL PGDG 1.1.9 13 |
| el9.aarch64 | AVAIL PGDG 1.1.9 5 | AVAIL PGDG 1.1.9 8 | AVAIL PGDG 1.1.9 8 | AVAIL PGDG 1.1.9 9 | AVAIL PGDG 1.1.9 9 |
| el10.x86_64 | AVAIL PGDG 1.1.9 5 | AVAIL PGDG 1.1.9 6 | AVAIL PGDG 1.1.9 6 | AVAIL PGDG 1.1.9 6 | AVAIL PGDG 1.1.9 6 |
| el10.aarch64 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 | AVAIL PGDG 1.1.7 4 |
| d12.x86_64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| d12.aarch64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| d13.x86_64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| d13.aarch64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| u22.x86_64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| u22.aarch64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| u24.x86_64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| u24.aarch64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| u26.x86_64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
| u26.aarch64 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 | AVAIL PGDG 1.1.9 3 |
@ el8.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.9-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.9 52.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/ogr_fdw_18-1.1.9-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 51.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/ogr_fdw_18-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.9-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.9 50.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/ogr_fdw_18-1.1.9-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/ogr_fdw_18-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.9-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1.9 49.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.9-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 49.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ogr_fdw_18-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.9-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1.9 48.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.9-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 48.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 48.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 48.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 48.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ogr_fdw_18-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.9-1PGDG.rhel10.2.x86_64.rpm pgdg 1.1.9 50.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.9-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 50.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ogr_fdw_18-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 ogr_fdw_18 ogr_fdw_18-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ogr_fdw_18-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb pgdg 1.1.9 90.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 90.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb pgdg 1.1.9 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb pgdg 1.1.9 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb pgdg 1.1.9 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb pgdg 1.1.9 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb pgdg 1.1.9 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb pgdg 1.1.9 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb pgdg 1.1.9 87.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb pgdg 1.1.9 88.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb pgdg 1.1.9 87.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 87.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-ogr-fdw postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 87.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-18-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.9-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.9 52.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.9-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 51.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.1.6 51.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel8.x86_64.rpm pgdg 1.1.5 50.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ogr_fdw_17-1.1.5-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.9-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.9 50.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.9-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 49.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 48.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ogr_fdw_17-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.9-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1.9 49.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.9-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 49.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 49.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.1.6 49.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.5-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-3PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ogr_fdw_17-1.1.5-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.9-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1.9 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.9-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 48.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 48.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 48.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.5-3PGDG.rhel9.aarch64.rpm pgdg 1.1.5 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ogr_fdw_17-1.1.5-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.9-1PGDG.rhel10.2.x86_64.rpm pgdg 1.1.9 50.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.9-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 ogr_fdw_17 ogr_fdw_17-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 50.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ogr_fdw_17-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 ogr_fdw_17 ogr_fdw_17-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ogr_fdw_17-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb pgdg 1.1.9 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb pgdg 1.1.9 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 88.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb pgdg 1.1.9 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb pgdg 1.1.9 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb pgdg 1.1.9 106.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 106.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 106.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb pgdg 1.1.9 104.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 104.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb pgdg 1.1.9 89.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb pgdg 1.1.9 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb pgdg 1.1.9 88.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb pgdg 1.1.9 87.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 87.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-ogr-fdw postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 86.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-17-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.9-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.9 52.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.9-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 52.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 51.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.1.6 51.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel8.x86_64.rpm pgdg 1.1.5 50.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.5-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ogr_fdw_16-1.1.4-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.9-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.9 50.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.9-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 48.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.1.4 47.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ogr_fdw_16-1.1.4-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.9-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1.9 49.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.9-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.8.x86_64.rpm pgdg 1.1.7 49.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.7.x86_64.rpm pgdg 1.1.7 49.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.6.x86_64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.1.7 49.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.1.6 49.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.5-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel9.x86_64.rpm pgdg 1.1.4 48.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ogr_fdw_16-1.1.4-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.9-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1.9 48.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.9-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 48.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 48.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 48.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 48.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 48.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.1.4 46.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ogr_fdw_16-1.1.4-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.9-1PGDG.rhel10.2.x86_64.rpm pgdg 1.1.9 50.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.9-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 50.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 50.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 ogr_fdw_16 ogr_fdw_16-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 50.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ogr_fdw_16-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 49.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 ogr_fdw_16 ogr_fdw_16-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ogr_fdw_16-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb pgdg 1.1.9 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb pgdg 1.1.9 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb pgdg 1.1.9 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb pgdg 1.1.9 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb pgdg 1.1.9 106.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 106.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 106.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb pgdg 1.1.9 103.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 103.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 103.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb pgdg 1.1.9 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb pgdg 1.1.9 87.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 87.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 87.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb pgdg 1.1.9 88.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb pgdg 1.1.9 87.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 86.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-ogr-fdw postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 87.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-16-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.9-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.9 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.9-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel8.10.x86_64.rpm pgdg 1.1.7 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.1.7 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.1.6 51.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-4PGDG.rhel8.x86_64.rpm pgdg 1.1.5 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.5-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-2PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.4-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-1PGDG.rhel8.x86_64.rpm pgdg 1.1.4 49.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.3-1.rhel8.x86_64.rpm pgdg 1.1.3 49.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.2-2.rhel8.x86_64.rpm pgdg 1.1.2 49.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ogr_fdw_15-1.1.2-2.rhel8.x86_64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.9-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.9 50.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.9-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.4-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.1.4 47.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ogr_fdw_15-1.1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.9-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1.9 51.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ogr_fdw_15-1.1.9-1PGDG.rhel9.8.x86_64.rpm
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
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.9-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1.9 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.9-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.4-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ogr_fdw_15-1.1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.9-1PGDG.rhel10.2.x86_64.rpm pgdg 1.1.9 51.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.9-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 52.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 ogr_fdw_15 ogr_fdw_15-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 52.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ogr_fdw_15-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 ogr_fdw_15 ogr_fdw_15-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 51.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ogr_fdw_15-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb pgdg 1.1.9 90.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 91.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 91.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb pgdg 1.1.9 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb pgdg 1.1.9 91.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 91.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb pgdg 1.1.9 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb pgdg 1.1.9 107.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb pgdg 1.1.9 104.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 104.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb pgdg 1.1.9 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb pgdg 1.1.9 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 88.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb pgdg 1.1.9 89.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb pgdg 1.1.9 88.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 88.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-ogr-fdw postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-15-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.9-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.9 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ogr_fdw_14-1.1.9-1PGDG.rhel8.10.x86_64.rpm
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
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.9-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.9 50.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.9-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel8.10.aarch64.rpm pgdg 1.1.7 50.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.1.6 49.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.5-4PGDG.rhel8.aarch64.rpm pgdg 1.1.5 49.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.5-4PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-2PGDG.rhel8.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.4-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-1PGDG.rhel8.aarch64.rpm pgdg 1.1.4 47.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ogr_fdw_14-1.1.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.9-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1.9 51.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ogr_fdw_14-1.1.9-1PGDG.rhel9.8.x86_64.rpm
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
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.9-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1.9 49.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.9-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.8.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.7.aarch64.rpm pgdg 1.1.7 50.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel9.6.aarch64.rpm pgdg 1.1.7 50.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.1.7 50.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.1.6 50.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.5-4PGDG.rhel9.aarch64.rpm pgdg 1.1.5 49.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.5-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-2PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.4-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.4-1PGDG.rhel9.aarch64.rpm pgdg 1.1.4 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ogr_fdw_14-1.1.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.9-1PGDG.rhel10.2.x86_64.rpm pgdg 1.1.9 52.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.9-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.2.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.1.x86_64.rpm pgdg 1.1.7 51.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.0.x86_64.rpm pgdg 1.1.7 52.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-6PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.1.7 52.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 ogr_fdw_14 ogr_fdw_14-1.1.6-1PGDG.rhel10.x86_64.rpm pgdg 1.1.6 52.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ogr_fdw_14-1.1.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.2.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.1.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-6PGDG.rhel10.0.aarch64.rpm pgdg 1.1.7 50.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-6PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 ogr_fdw_14 ogr_fdw_14-1.1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.1.7 51.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ogr_fdw_14-1.1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb pgdg 1.1.9 90.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb pgdg 1.1.8 91.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb pgdg 1.1.7 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb pgdg 1.1.9 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb pgdg 1.1.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb pgdg 1.1.7 88.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb pgdg 1.1.9 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb pgdg 1.1.8 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb pgdg 1.1.7 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb pgdg 1.1.9 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb pgdg 1.1.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb pgdg 1.1.7 89.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb pgdg 1.1.9 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb pgdg 1.1.8 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb pgdg 1.1.7 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb pgdg 1.1.9 105.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb pgdg 1.1.8 104.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb pgdg 1.1.7 104.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb pgdg 1.1.9 90.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb pgdg 1.1.8 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb pgdg 1.1.7 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb pgdg 1.1.9 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb pgdg 1.1.8 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb pgdg 1.1.7 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb pgdg 1.1.9 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb pgdg 1.1.8 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb pgdg 1.1.7 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb pgdg 1.1.9 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.9-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb pgdg 1.1.8 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.8-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-ogr-fdw postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb pgdg 1.1.7 88.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-ogr-fdw/postgresql-14-ogr-fdw_1.1.7-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `ogr_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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

Sources:

- [ogr_fdw v1.1.9 README](https://github.com/pramsey/pgsql-ogr-fdw/blob/v1.1.9/README.md)
- [Extension control file](https://github.com/pramsey/pgsql-ogr-fdw/blob/v1.1.9/ogr_fdw.control)
- [v1.1.8 to v1.1.9 comparison](https://github.com/pramsey/pgsql-ogr-fdw/compare/v1.1.8...v1.1.9)
- [GDAL vector drivers](https://gdal.org/en/stable/drivers/vector/index.html)

`ogr_fdw` exposes vector data supported by GDAL/OGR as PostgreSQL foreign tables. It can read files and remote data sources through OGR drivers and can write when the selected driver and data source support updates. Install PostGIS before `ogr_fdw` for native geometry columns; otherwise geometry is exposed as WKB `bytea`.

### Discover and Import a Layer

Use the installed helper to inspect a source and generate matching SQL:

```console
ogr_fdw_info -s /srv/gis/cities.gpkg
ogr_fdw_info -s /srv/gis/cities.gpkg -l cities
```

A minimal equivalent definition is:

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION ogr_fdw;

CREATE SERVER city_source
  FOREIGN DATA WRAPPER ogr_fdw
  OPTIONS (
    datasource '/srv/gis/cities.gpkg',
    format 'GPKG'
  );

CREATE FOREIGN TABLE city (
  fid bigint,
  geom geometry,
  name text
) SERVER city_source
  OPTIONS (layer 'cities');

SELECT fid, name FROM city WHERE geom && ST_MakeEnvelope(-10, 35, 30, 60, 4326);
```

The PostgreSQL server account needs filesystem permissions for file-backed data sources and network/credential access for remote drivers.

### Import and Mapping

```sql
CREATE SCHEMA gis_import;

IMPORT FOREIGN SCHEMA ogr_all
  LIMIT TO (cities)
  FROM SERVER city_source
  INTO gis_import;
```

`ogr_all` means all OGR layers. Import normally launders table and column names; use `launder_table_names` and `launder_column_names` options when exact remote names are required. A foreign column can map to a different source name with `OPTIONS (column_name 'RemoteName')`.

### Important Options and Objects

- Server options: required `datasource`, optional `format`, `updateable`, `config_options`, `open_options`, and `character_encoding`.
- Table options: `layer` identifies the OGR layer and `updateable` can disable writes.
- `fid` identifies a feature and is required for writable foreign tables.
- `ogr_fdw_info` lists drivers and layers and emits server/table definitions.
- `ogr_fdw_version()` reports the extension and GDAL version.
- `ogr_fdw_drivers()` lists the compiled OGR drivers.

### Performance and Write Boundaries

Simple comparisons and bounding-box `&&` predicates can be pushed down, but more complex filters may be evaluated locally. The FDW retrieves all selected source columns and opens two OGR connections per query rather than pooling them. Use `EXPLAIN`, project only needed columns, and benchmark the actual driver and data source.

Writes depend on driver capability and require source-level write permissions plus `fid`. Set `updateable = false` when a source must remain read-only. Version 1.1.9 simplifies the version string relative to 1.1.8 and has no documented SQL workflow change; the control file remains at SQL extension version 1.1.
