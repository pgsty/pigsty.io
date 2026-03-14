---
title: "geoip"
linkTitle: "geoip"
description: "IP-based geolocation query"
weight: 1560
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/geoip">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/geoip</div>
    <div class="ext-card__desc">https://github.com/tvondra/geoip</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/geoip-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">geoip-0.3.0.tar.gz</div>
    <div class="ext-card__desc">geoip-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`geoip`**](/ext/e/geoip) | `0.3.0` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license bsd 2clause" href="/ext/license#bsd2clause">BSD 2-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1560  | [**`geoip`**](/ext/e/geoip) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `geoip` |
{.ext-table}

| **Related** | [`ip4r`](/ext/e/ip4r) [`postgis`](/ext/e/postgis) [`tzf`](/ext/e/tzf) [`country`](/ext/e/country) [`postgis_topology`](/ext/e/postgis_topology) [`postgis_raster`](/ext/e/postgis_raster) [`postgis_sfcgal`](/ext/e/postgis_sfcgal) [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) [`address_standardizer`](/ext/e/address_standardizer) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> no pg17 on el9, no legacy branch on el8


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `geoip` | `ip4r` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `geoip_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-geoip` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 2 | AVAIL PIGSTY 0.3.0 2 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 2 | AVAIL PIGSTY 0.3.0 2 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 2 | AVAIL PIGSTY 0.3.0 2 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 2 | AVAIL PIGSTY 0.3.0 2 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
@ el8.x86_64 18 geoip_18 geoip_18-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/geoip_18-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 geoip_18 geoip_18-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/geoip_18-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 geoip_18 geoip_18-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/geoip_18-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 geoip_18 geoip_18-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/geoip_18-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 geoip_18 geoip_18-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/geoip_18-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 geoip_18 geoip_18-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/geoip_18-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-geoip postgresql-18-geoip_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-18-geoip_0.3.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 geoip_17 geoip_17-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/geoip_17-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 geoip_17 geoip_17-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/geoip_17-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 geoip_17 geoip_17-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/geoip_17-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 geoip_17 geoip_17-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/geoip_17-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 geoip_17 geoip_17-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/geoip_17-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 geoip_17 geoip_17-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/geoip_17-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-geoip postgresql-17-geoip_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-17-geoip_0.3.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 geoip_16 geoip_16-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/geoip_16-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 geoip_16 geoip_16-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/geoip_16-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 geoip_16 geoip_16-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/geoip_16-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 geoip_16 geoip_16-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/geoip_16-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 geoip_16 geoip_16-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/geoip_16-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 geoip_16 geoip_16-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/geoip_16-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-geoip postgresql-16-geoip_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-16-geoip_0.3.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 geoip_15 geoip_15-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/geoip_15-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 geoip_15 geoip_15-0.2.4-3.rhel8.noarch.rpm pgdg 0.2.4 11.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/geoip_15-0.2.4-3.rhel8.noarch.rpm
@ el8.aarch64 15 geoip_15 geoip_15-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/geoip_15-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 geoip_15 geoip_15-0.2.4-3.rhel8.noarch.rpm pgdg 0.2.4 11.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/geoip_15-0.2.4-3.rhel8.noarch.rpm
@ el9.x86_64 15 geoip_15 geoip_15-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/geoip_15-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 geoip_15 geoip_15-0.2.4-3.rhel9.noarch.rpm pgdg 0.2.4 11.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/geoip_15-0.2.4-3.rhel9.noarch.rpm
@ el9.aarch64 15 geoip_15 geoip_15-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/geoip_15-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 geoip_15 geoip_15-0.2.4-3.rhel9.noarch.rpm pgdg 0.2.4 10.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/geoip_15-0.2.4-3.rhel9.noarch.rpm
@ el10.x86_64 15 geoip_15 geoip_15-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/geoip_15-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 geoip_15 geoip_15-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/geoip_15-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-geoip postgresql-15-geoip_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-15-geoip_0.3.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 geoip_14 geoip_14-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/geoip_14-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 geoip_14 geoip_14-0.2.4-3.rhel8.noarch.rpm pgdg 0.2.4 11.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/geoip_14-0.2.4-3.rhel8.noarch.rpm
@ el8.aarch64 14 geoip_14 geoip_14-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/geoip_14-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 geoip_14 geoip_14-0.2.4-3.rhel8.noarch.rpm pgdg 0.2.4 11.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/geoip_14-0.2.4-3.rhel8.noarch.rpm
@ el9.x86_64 14 geoip_14 geoip_14-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/geoip_14-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 geoip_14 geoip_14-0.2.4-3.rhel9.noarch.rpm pgdg 0.2.4 11.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/geoip_14-0.2.4-3.rhel9.noarch.rpm
@ el9.aarch64 14 geoip_14 geoip_14-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/geoip_14-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 geoip_14 geoip_14-0.2.4-3.rhel9.noarch.rpm pgdg 0.2.4 10.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/geoip_14-0.2.4-3.rhel9.noarch.rpm
@ el10.x86_64 14 geoip_14 geoip_14-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/geoip_14-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 geoip_14 geoip_14-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/geoip_14-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 6.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-geoip postgresql-14-geoip_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 6.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/g/geoip/postgresql-14-geoip_0.3.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `geoip` using `pig build`:

```bash
pig build pkg geoip         # build RPM / DEB packages
```


## Install

You can install `geoip` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install geoip;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y geoip -v 18  # PG 18
pig ext install -y geoip -v 17  # PG 17
pig ext install -y geoip -v 16  # PG 16
pig ext install -y geoip -v 15  # PG 15
pig ext install -y geoip -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y geoip_18       # PG 18
dnf install -y geoip_17       # PG 17
dnf install -y geoip_16       # PG 16
dnf install -y geoip_15       # PG 15
dnf install -y geoip_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-geoip   # PG 18
apt install -y postgresql-17-geoip   # PG 17
apt install -y postgresql-16-geoip   # PG 16
apt install -y postgresql-15-geoip   # PG 15
apt install -y postgresql-14-geoip   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION geoip CASCADE;  -- requires: ip4r
```



## Usage

> [geoip: IP-based geolocation for PostgreSQL](https://github.com/tvondra/geoip)

This extension provides IP-based geolocation — you provide an IPv4 or IPv6 address and the extension looks up country, city, GPS coordinates, ASN and more. It requires the `ip4r` extension and GeoLite2 data from [MaxMind](https://www.maxmind.com).

```sql
CREATE EXTENSION ip4r;
CREATE EXTENSION geoip;
```

### Functions

| Function | Description |
|----------|-------------|
| `geoip_country_code(ip4\|ip6)` | Returns country code (2 chars) |
| `geoip_country(ip4\|ip6)` | Returns all country info (code, name, network) |
| `geoip_city_location(ip4\|ip6)` | Returns just the location ID (INT) |
| `geoip_city(ip4\|ip6)` | Returns all city info (GPS, ZIP code, etc.) |
| `geoip_asn(ip4\|ip6)` | Returns ASN name and IP range |

### Examples

```sql
SELECT geoip_country_code('78.45.133.255'::ip4);
-- CZ

SELECT * FROM geoip.geoip_city('78.45.133.255'::ip4);
--  geoname_id | country_iso_code | city_name | postal_code | ...
-- ------------+------------------+-----------+-------------+----
--     3066399 | CZ               | Sardice   | 696 13      | ...

SELECT * FROM geoip.geoip_country('78.45.133.255'::ip4);
--     network     | country_iso_code | country_name
-- ----------------+------------------+--------------
--  78.45.128.0/17 | CZ               | Czechia

SELECT * FROM geoip.geoip_asn('78.45.133.255'::ip4);
--    network    | asn_number |      asn_name
-- --------------+------------+---------------------
--  78.44.0.0/15 |       6830 | Liberty Global B.V.
```


## Loading Data

The extension requires GeoLite2 CSV data from MaxMind. Download the City, Country, and ASN datasets in CSV format from [MaxMind GeoLite2](https://dev.maxmind.com/geoip/geoip2/geolite2/), then load:

```bash
cat GeoLite2-Country-Locations-en.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_country_locations FROM stdin WITH (FORMAT CSV, HEADER)'

cat GeoLite2-Country-Blocks-IPv4.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_country_blocks FROM stdin WITH (FORMAT CSV, HEADER)'

cat GeoLite2-Country-Blocks-IPv6.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_country_blocks FROM stdin WITH (FORMAT CSV, HEADER)'

cat GeoLite2-City-Locations-en.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_city_locations FROM stdin WITH (FORMAT CSV, HEADER)'

cat GeoLite2-City-Blocks-IPv4.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_city_blocks FROM stdin WITH (FORMAT CSV, HEADER)'

cat GeoLite2-City-Blocks-IPv6.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_city_blocks FROM stdin WITH (FORMAT CSV, HEADER)'

cat GeoLite2-ASN-Blocks-IPv4.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_asn_blocks FROM stdin WITH (FORMAT CSV, HEADER)'

cat GeoLite2-ASN-Blocks-IPv6.csv | \
  psql $DBNAME -c 'COPY geoip.geoip_asn_blocks FROM stdin WITH (FORMAT CSV, HEADER)'
```

The "locations" files have multiple language variants — pick the one that works for you.
