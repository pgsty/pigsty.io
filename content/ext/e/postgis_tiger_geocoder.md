---
title: "postgis_tiger_geocoder"
linkTitle: "postgis_tiger_geocoder"
description: "PostGIS tiger geocoder and reverse geocoder"
weight: 1504
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://gitea.osgeo.org/postgis/postgis_tiger_geocoder">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://gitea.osgeo.org/postgis/postgis_tiger_geocoder</div>
    <div class="ext-card__desc">https://gitea.osgeo.org/postgis/postgis_tiger_geocoder</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`postgis_tiger_geocoder`**](/ext/e/postgis_tiger_geocoder) | `2025.2` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang plpgsql" href="/ext/language#plpgsql">PLpgSQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1504  | [**`postgis_tiger_geocoder`**](/ext/e/postgis_tiger_geocoder) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `tiger` |
{.ext-table}

| **Related** | [`postgis`](/ext/e/postgis) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`nominatim_fdw`](/ext/e/nominatim_fdw) [`geoip`](/ext/e/geoip) [`tzf`](/ext/e/tzf) [`pg_geohash`](/ext/e/pg_geohash) [`ogr_fdw`](/ext/e/ogr_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Standalone since PostGIS 3.7; control/package 2025.2; PG16+; no local recipe.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2025.2` | {{< pgvers "18,17,16" >}} | `postgis_tiger_geocoder` | `postgis`, `fuzzystrmatch` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2025.2` | {{< pgvers "18,17,16" >}} | `postgis_tiger_geocoder_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2025.2` | {{< pgvers "18,17,16" >}} | `postgresql-$v-postgis-tiger-geocoder` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.aarch64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.aarch64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.x86_64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.aarch64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.x86_64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.aarch64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.x86_64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.aarch64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.x86_64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.aarch64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.x86_64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.aarch64 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | AVAIL PGDG 2025.2 1 | N/A PGDG - 0 | N/A PGDG - 0 |
@ el9.x86_64 18 postgis_tiger_geocoder_18 postgis_tiger_geocoder_18-2025.2-1PGDG.rhel9.8.noarch.rpm pgdg 2025.2 104.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgis_tiger_geocoder_18-2025.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 postgis_tiger_geocoder_18 postgis_tiger_geocoder_18-2025.2-1PGDG.rhel9.8.noarch.rpm pgdg 2025.2 104.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgis_tiger_geocoder_18-2025.2-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 18 postgis_tiger_geocoder_18 postgis_tiger_geocoder_18-2025.2-1PGDG.rhel10.2.noarch.rpm pgdg 2025.2 104.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgis_tiger_geocoder_18-2025.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 postgis_tiger_geocoder_18 postgis_tiger_geocoder_18-2025.2-1PGDG.rhel10.2.noarch.rpm pgdg 2025.2 104.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgis_tiger_geocoder_18-2025.2-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb pgdg 2025.2 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb pgdg 2025.2 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb
@ u22.x86_64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb
@ u24.x86_64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb pgdg 2025.2 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb pgdg 2025.2 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-postgis-tiger-geocoder postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-18-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb
@ el9.x86_64 17 postgis_tiger_geocoder_17 postgis_tiger_geocoder_17-2025.2-1PGDG.rhel9.8.noarch.rpm pgdg 2025.2 104.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgis_tiger_geocoder_17-2025.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 postgis_tiger_geocoder_17 postgis_tiger_geocoder_17-2025.2-1PGDG.rhel9.8.noarch.rpm pgdg 2025.2 104.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgis_tiger_geocoder_17-2025.2-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 17 postgis_tiger_geocoder_17 postgis_tiger_geocoder_17-2025.2-1PGDG.rhel10.2.noarch.rpm pgdg 2025.2 104.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgis_tiger_geocoder_17-2025.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 postgis_tiger_geocoder_17 postgis_tiger_geocoder_17-2025.2-1PGDG.rhel10.2.noarch.rpm pgdg 2025.2 104.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgis_tiger_geocoder_17-2025.2-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb
@ d13.x86_64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb
@ u22.x86_64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb pgdg 2025.2 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb pgdg 2025.2 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb
@ u24.x86_64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb
@ u26.x86_64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-postgis-tiger-geocoder postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-17-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb
@ el9.x86_64 16 postgis_tiger_geocoder_16 postgis_tiger_geocoder_16-2025.2-1PGDG.rhel9.8.noarch.rpm pgdg 2025.2 104.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgis_tiger_geocoder_16-2025.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 postgis_tiger_geocoder_16 postgis_tiger_geocoder_16-2025.2-1PGDG.rhel9.8.noarch.rpm pgdg 2025.2 104.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgis_tiger_geocoder_16-2025.2-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 16 postgis_tiger_geocoder_16 postgis_tiger_geocoder_16-2025.2-1PGDG.rhel10.2.noarch.rpm pgdg 2025.2 104.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgis_tiger_geocoder_16-2025.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 postgis_tiger_geocoder_16 postgis_tiger_geocoder_16-2025.2-1PGDG.rhel10.2.noarch.rpm pgdg 2025.2 104.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgis_tiger_geocoder_16-2025.2-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg12+1_all.deb
@ d13.x86_64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb pgdg 2025.2 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg13+1_all.deb
@ u22.x86_64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg22.04+1_all.deb
@ u24.x86_64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb pgdg 2025.2 95.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb pgdg 2025.2 95.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg24.04+1_all.deb
@ u26.x86_64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-postgis-tiger-geocoder postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb pgdg 2025.2 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgis-tiger-geocoder/postgresql-16-postgis-tiger-geocoder_2025.2-1.pgdg26.04+1_all.deb
{{< /pgext_matrix >}}


## Install

You can install `postgis_tiger_geocoder` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install postgis_tiger_geocoder;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y postgis_tiger_geocoder -v 18  # PG 18
pig ext install -y postgis_tiger_geocoder -v 17  # PG 17
pig ext install -y postgis_tiger_geocoder -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y postgis_tiger_geocoder_18       # PG 18
dnf install -y postgis_tiger_geocoder_17       # PG 17
dnf install -y postgis_tiger_geocoder_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-postgis-tiger-geocoder   # PG 18
apt install -y postgresql-17-postgis-tiger-geocoder   # PG 17
apt install -y postgresql-16-postgis-tiger-geocoder   # PG 16
```


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
