---
title: "address_standardizer"
linkTitle: "address_standardizer"
description: "Used to parse an address into constituent elements. Generally used to support geocoding address normalization step."
weight: 1505
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgis/address_standardizer">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgis/address_standardizer</div>
    <div class="ext-card__desc">https://github.com/postgis/address_standardizer</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`address_standardizer`**](/ext/e/address_standardizer) | `3.7` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1505  | [**`address_standardizer`**](/ext/e/address_standardizer) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1506  | [**`address_standardizer_data_us`**](/ext/e/address_standardizer_data_us) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`nominatim_fdw`](/ext/e/nominatim_fdw) [`geoip`](/ext/e/geoip) [`country`](/ext/e/country) [`tzf`](/ext/e/tzf) [`pg_geohash`](/ext/e/pg_geohash) [`ogr_fdw`](/ext/e/ogr_fdw) [`addressing_dictionary`](/ext/e/addressing_dictionary) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Standalone since PostGIS 3.7; control 3.7; PGDG package 3.7.0; no local recipe.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.7` | {{< pgvers "18,17,16,15,14" >}} | `address_standardizer` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.7.0` | {{< pgvers "18,17,16,15,14" >}} | `address_standardizer_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.7.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-address-standardizer` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| el9.aarch64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| el10.x86_64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| el10.aarch64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| d12.x86_64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| d12.aarch64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| d13.x86_64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| d13.aarch64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| u22.x86_64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| u22.aarch64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| u24.x86_64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| u24.aarch64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| u26.x86_64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
| u26.aarch64 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 | AVAIL PGDG 3.7.0 1 |
@ el9.x86_64 18 address_standardizer_18 address_standardizer_18-3.7.0-4PGDG.rhel9.8.x86_64.rpm pgdg 3.7.0 216.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/address_standardizer_18-3.7.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 18 address_standardizer_18 address_standardizer_18-3.7.0-4PGDG.rhel9.8.aarch64.rpm pgdg 3.7.0 214.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/address_standardizer_18-3.7.0-4PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 18 address_standardizer_18 address_standardizer_18-3.7.0-4PGDG.rhel10.2.x86_64.rpm pgdg 3.7.0 216.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/address_standardizer_18-3.7.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 address_standardizer_18 address_standardizer_18-3.7.0-4PGDG.rhel10.2.aarch64.rpm pgdg 3.7.0 215.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/address_standardizer_18-3.7.0-4PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb pgdg 3.7.0 528.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb pgdg 3.7.0 524.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb pgdg 3.7.0 529.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb pgdg 3.7.0 526.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb pgdg 3.7.0 526.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb pgdg 3.7.0 523.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb pgdg 3.7.0 523.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb pgdg 3.7.0 520.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb pgdg 3.7.0 522.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-address-standardizer postgresql-18-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb pgdg 3.7.0 519.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-18-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb
@ el9.x86_64 17 address_standardizer_17 address_standardizer_17-3.7.0-4PGDG.rhel9.8.x86_64.rpm pgdg 3.7.0 215.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/address_standardizer_17-3.7.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 17 address_standardizer_17 address_standardizer_17-3.7.0-4PGDG.rhel9.8.aarch64.rpm pgdg 3.7.0 214.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/address_standardizer_17-3.7.0-4PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 17 address_standardizer_17 address_standardizer_17-3.7.0-4PGDG.rhel10.2.x86_64.rpm pgdg 3.7.0 216.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/address_standardizer_17-3.7.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 17 address_standardizer_17 address_standardizer_17-3.7.0-4PGDG.rhel10.2.aarch64.rpm pgdg 3.7.0 215.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/address_standardizer_17-3.7.0-4PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb pgdg 3.7.0 528.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb pgdg 3.7.0 524.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb pgdg 3.7.0 529.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb pgdg 3.7.0 526.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb pgdg 3.7.0 546.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb pgdg 3.7.0 542.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb pgdg 3.7.0 523.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb pgdg 3.7.0 520.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb pgdg 3.7.0 522.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-address-standardizer postgresql-17-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb pgdg 3.7.0 518.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-17-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb
@ el9.x86_64 16 address_standardizer_16 address_standardizer_16-3.7.0-4PGDG.rhel9.8.x86_64.rpm pgdg 3.7.0 215.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/address_standardizer_16-3.7.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 16 address_standardizer_16 address_standardizer_16-3.7.0-4PGDG.rhel9.8.aarch64.rpm pgdg 3.7.0 214.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/address_standardizer_16-3.7.0-4PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 16 address_standardizer_16 address_standardizer_16-3.7.0-4PGDG.rhel10.2.x86_64.rpm pgdg 3.7.0 216.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/address_standardizer_16-3.7.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 16 address_standardizer_16 address_standardizer_16-3.7.0-4PGDG.rhel10.2.aarch64.rpm pgdg 3.7.0 215.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/address_standardizer_16-3.7.0-4PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb pgdg 3.7.0 528.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb pgdg 3.7.0 524.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb pgdg 3.7.0 529.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb pgdg 3.7.0 526.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb pgdg 3.7.0 545.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb pgdg 3.7.0 542.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb pgdg 3.7.0 523.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb pgdg 3.7.0 520.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb pgdg 3.7.0 522.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-address-standardizer postgresql-16-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb pgdg 3.7.0 518.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-16-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb
@ el9.x86_64 15 address_standardizer_15 address_standardizer_15-3.7.0-4PGDG.rhel9.8.x86_64.rpm pgdg 3.7.0 224.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/address_standardizer_15-3.7.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 15 address_standardizer_15 address_standardizer_15-3.7.0-4PGDG.rhel9.8.aarch64.rpm pgdg 3.7.0 222.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/address_standardizer_15-3.7.0-4PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 15 address_standardizer_15 address_standardizer_15-3.7.0-4PGDG.rhel10.2.x86_64.rpm pgdg 3.7.0 225.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/address_standardizer_15-3.7.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 15 address_standardizer_15 address_standardizer_15-3.7.0-4PGDG.rhel10.2.aarch64.rpm pgdg 3.7.0 222.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/address_standardizer_15-3.7.0-4PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb pgdg 3.7.0 528.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb pgdg 3.7.0 525.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb pgdg 3.7.0 529.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb pgdg 3.7.0 527.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb pgdg 3.7.0 551.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb pgdg 3.7.0 548.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb pgdg 3.7.0 528.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb pgdg 3.7.0 525.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb pgdg 3.7.0 527.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-address-standardizer postgresql-15-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb pgdg 3.7.0 524.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-15-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb
@ el9.x86_64 14 address_standardizer_14 address_standardizer_14-3.7.0-4PGDG.rhel9.8.x86_64.rpm pgdg 3.7.0 224.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/address_standardizer_14-3.7.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 address_standardizer_14 address_standardizer_14-3.7.0-4PGDG.rhel9.8.aarch64.rpm pgdg 3.7.0 222.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/address_standardizer_14-3.7.0-4PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 14 address_standardizer_14 address_standardizer_14-3.7.0-4PGDG.rhel10.2.x86_64.rpm pgdg 3.7.0 224.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/address_standardizer_14-3.7.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 14 address_standardizer_14 address_standardizer_14-3.7.0-4PGDG.rhel10.2.aarch64.rpm pgdg 3.7.0 222.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/address_standardizer_14-3.7.0-4PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb pgdg 3.7.0 528.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb pgdg 3.7.0 525.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb pgdg 3.7.0 529.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb pgdg 3.7.0 527.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb pgdg 3.7.0 550.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb pgdg 3.7.0 547.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb pgdg 3.7.0 528.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb pgdg 3.7.0 525.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb pgdg 3.7.0 527.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-address-standardizer postgresql-14-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb pgdg 3.7.0 524.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/a/address-standardizer/postgresql-14-address-standardizer_3.7.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `address_standardizer` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install address_standardizer;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y address_standardizer -v 18  # PG 18
pig ext install -y address_standardizer -v 17  # PG 17
pig ext install -y address_standardizer -v 16  # PG 16
pig ext install -y address_standardizer -v 15  # PG 15
pig ext install -y address_standardizer -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y address_standardizer_18       # PG 18
dnf install -y address_standardizer_17       # PG 17
dnf install -y address_standardizer_16       # PG 16
dnf install -y address_standardizer_15       # PG 15
dnf install -y address_standardizer_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-address-standardizer   # PG 18
apt install -y postgresql-17-address-standardizer   # PG 17
apt install -y postgresql-16-address-standardizer   # PG 16
apt install -y postgresql-15-address-standardizer   # PG 15
apt install -y postgresql-14-address-standardizer   # PG 14
```


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
