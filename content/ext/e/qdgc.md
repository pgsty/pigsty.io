---
title: "qdgc"
linkTitle: "qdgc"
description: "Encode, decode, navigate, and fill Extended Quarter Degree Grid Cell codes in pure SQL."
weight: 1700
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://pgxn.org/dist/qdgc/0.1.0/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://pgxn.org/dist/qdgc/0.1.0/</div>
    <div class="ext-card__desc">https://pgxn.org/dist/qdgc/0.1.0/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/qdgc-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">qdgc-0.1.0.tar.gz</div>
    <div class="ext-card__desc">qdgc-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`qdgc`**](/ext/e/qdgc) | `0.1.0` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1700  | [**`qdgc`**](/ext/e/qdgc) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 1710  | [**`qdgc_postgis`**](/ext/e/qdgc_postgis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`h3`](/ext/e/h3) [`pgrouting`](/ext/e/pgrouting) [`pg_geohash`](/ext/e/pg_geohash) [`q3c`](/ext/e/q3c) [`postgis_topology`](/ext/e/postgis_topology) [`pg_polyline`](/ext/e/pg_polyline) [`pg_eviltransform`](/ext/e/pg_eviltransform) [`mobilitydb`](/ext/e/mobilitydb) [`earthdistance`](/ext/e/earthdistance) [`pointcloud`](/ext/e/pointcloud) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`qdgc_postgis`](/ext/e/qdgc_postgis) |
{.ext-table .ext-table--rel}


> PGXN distribution qdgc also ships qdgc_postgis; the GitHub v0.1.0 tag belongs to qdgc-py and is not this PGXN release.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `qdgc` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `qdgc_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-qdgc` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 qdgc_18 qdgc_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/qdgc_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 qdgc_18 qdgc_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 24.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/qdgc_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 qdgc_18 qdgc_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/qdgc_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 qdgc_18 qdgc_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/qdgc_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 qdgc_18 qdgc_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/qdgc_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 qdgc_18 qdgc_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/qdgc_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-qdgc postgresql-18-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-18-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 qdgc_17 qdgc_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/qdgc_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 qdgc_17 qdgc_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 24.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/qdgc_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 qdgc_17 qdgc_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/qdgc_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 qdgc_17 qdgc_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/qdgc_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 qdgc_17 qdgc_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/qdgc_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 qdgc_17 qdgc_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/qdgc_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-qdgc postgresql-17-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-17-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 qdgc_16 qdgc_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/qdgc_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 qdgc_16 qdgc_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 24.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/qdgc_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 qdgc_16 qdgc_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/qdgc_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 qdgc_16 qdgc_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/qdgc_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 qdgc_16 qdgc_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/qdgc_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 qdgc_16 qdgc_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/qdgc_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-qdgc postgresql-16-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-16-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 qdgc_15 qdgc_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/qdgc_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 qdgc_15 qdgc_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 24.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/qdgc_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 qdgc_15 qdgc_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/qdgc_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 qdgc_15 qdgc_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/qdgc_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 qdgc_15 qdgc_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/qdgc_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 qdgc_15 qdgc_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/qdgc_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-qdgc postgresql-15-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-15-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 qdgc_14 qdgc_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/qdgc_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 qdgc_14 qdgc_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 24.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/qdgc_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 qdgc_14 qdgc_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/qdgc_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 qdgc_14 qdgc_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 24.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/qdgc_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 qdgc_14 qdgc_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/qdgc_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 qdgc_14 qdgc_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 24.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/qdgc_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-qdgc postgresql-14-qdgc_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 16.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/qdgc/postgresql-14-qdgc_0.1.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `qdgc` using `pig build`:

```bash
pig build pkg qdgc         # build RPM / DEB packages
```


## Install

You can install `qdgc` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install qdgc;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y qdgc -v 18  # PG 18
pig ext install -y qdgc -v 17  # PG 17
pig ext install -y qdgc -v 16  # PG 16
pig ext install -y qdgc -v 15  # PG 15
pig ext install -y qdgc -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y qdgc_18       # PG 18
dnf install -y qdgc_17       # PG 17
dnf install -y qdgc_16       # PG 16
dnf install -y qdgc_15       # PG 15
dnf install -y qdgc_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-qdgc   # PG 18
apt install -y postgresql-17-qdgc   # PG 17
apt install -y postgresql-16-qdgc   # PG 16
apt install -y postgresql-15-qdgc   # PG 15
apt install -y postgresql-14-qdgc   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION qdgc;
```

## Usage

Sources:

- [PGXN qdgc 0.1.0 release](https://pgxn.org/dist/qdgc/0.1.0/)
- [Official 0.1.0 README](https://api.pgxn.org/src/qdgc/qdgc-0.1.0/README.md)
- [Official qdgc control file](https://api.pgxn.org/src/qdgc/qdgc-0.1.0/qdgc.control)
- [Official qdgc 0.1.0 extension SQL](https://api.pgxn.org/src/qdgc/qdgc-0.1.0/qdgc--0.1.0.sql)

`qdgc` 0.1.0 is the trusted, relocatable, pure-SQL core of the QDGC extension family. It encodes longitude and latitude as Extended Quarter Degree Grid Cell codes, decodes their bounds, navigates the prefix hierarchy, reports level metrics, and fills longitude/latitude bounding boxes. It has no PostGIS or compiled-library dependency; geometry, geography, and polygon-fill operations belong to the companion `qdgc_postgis` extension.

### Core Workflow

```sql
CREATE EXTENSION qdgc;

-- qdgc_encode uses (longitude, latitude, level).
SELECT qdgc_encode(31.4, 2.7, 5);
-- E031N02ADBAC

-- The h3-style alias reverses the coordinate arguments.
SELECT qdgc_latlng_to_cell(2.7, 31.4, 5);

SELECT *
FROM qdgc_cell_to_bounds('E031N02ADBAC');

SELECT qdgc_cell_to_parent('E031N02ADBAC', 3);
SELECT * FROM qdgc_cell_to_children('E031N02AD', 5);
```

QDGC hierarchy is encoded directly in the text: a child code begins with its parent code. That makes prefix filtering useful for rollups and descendant lookups:

```sql
CREATE TABLE observations (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    qdgc_code text NOT NULL
);

CREATE INDEX observations_qdgc_idx ON observations (qdgc_code);

SELECT qdgc_cell_to_parent(qdgc_code, 3) AS level_3_cell,
       count(*)
FROM observations
GROUP BY 1;

SELECT *
FROM observations
WHERE qdgc_code LIKE 'E031N02AB%';
```

### Bounding Boxes and Level Metrics

The core extension can enumerate rectangular coverage without PostGIS. Pass `min_lon > max_lon` for a box that crosses the antimeridian.

```sql
SELECT qdgc_bbox_cell_count(30.0, 1.0, 32.0, 3.0, 7);

SELECT *
FROM qdgc_bbox_to_cells(30.0, 1.0, 32.0, 3.0, 7);

SELECT qdgc_level_degrees(7);
SELECT qdgc_get_num_cells(7);
SELECT qdgc_average_cell_area(7, 2.0, 'km^2');
SELECT qdgc_version();
```

`qdgc_average_cell_area` is a spherical estimate. Use `qdgc_cell_area_km2` from `qdgc_postgis` when a cell-specific WGS84 spheroid measurement is required.

### Important Objects

- `qdgc_encode(lon, lat, level)` and `qdgc_latlng_to_cell(lat, lng, level)` create codes; the argument order is intentionally different.
- `qdgc_is_valid_cell`, `qdgc_get_level`, `qdgc_cell_to_bounds`, `qdgc_cell_to_lonlat`, and `qdgc_cell_to_latlng` inspect or decode a code.
- `qdgc_cell_to_parent` and `qdgc_cell_to_children` navigate the four-way prefix hierarchy.
- `qdgc_bbox_to_cells` enumerates cells meeting a bounding box, while `qdgc_bbox_cell_count` calculates the count without materializing the set.
- `qdgc_level_degrees`, `qdgc_get_num_cells`, and `qdgc_average_cell_area` report grid-level metrics.

### Operational Notes

- Upstream requires PostgreSQL 13 or newer and tests PostgreSQL 13 through 17. PostgreSQL 18 is not part of the published 0.1.0 test matrix.
- The control file sets `trusted = true` and `relocatable = true`. No `shared_preload_libraries`, `LOAD`, server restart, or native library is required.
- Relocatable functions call one another by unqualified name. Install `qdgc` into a schema on the active `search_path`; the default `public` schema satisfies this boundary.
- Coordinates are longitude/latitude degrees. `qdgc_encode` takes longitude first, while `qdgc_latlng_to_cell` takes latitude first.
- Result cardinality grows by four for every additional child level. Count a bounding-box fill before materializing it, and avoid requesting deep descendants without a deliberate result-size bound.
