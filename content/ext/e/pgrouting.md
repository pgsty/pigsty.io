---
title: "pgrouting"
linkTitle: "pgrouting"
description: "pgRouting Extension"
weight: 1510
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgRouting/pgrouting">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgRouting/pgrouting</div>
    <div class="ext-card__desc">https://github.com/pgRouting/pgrouting</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgrouting`**](/ext/e/pgrouting) | `4.0.1` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1510  | [**`pgrouting`**](/ext/e/pgrouting) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`postgis`](/ext/e/postgis) [`postgis`](/ext/e/postgis) [`mobilitydb`](/ext/e/mobilitydb) [`h3`](/ext/e/h3) [`pg_polyline`](/ext/e/pg_polyline) [`q3c`](/ext/e/q3c) [`pointcloud`](/ext/e/pointcloud) [`qdgc`](/ext/e/qdgc) [`pg_geohash`](/ext/e/pg_geohash) [`pg_sphere`](/ext/e/pg_sphere) [`pg_eviltransform`](/ext/e/pg_eviltransform) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pgrouting` | `plpgsql`, `postgis` |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pgrouting_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgrouting` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.0.1 2 | AVAIL PGDG 4.0.1 7 | AVAIL PGDG 4.0.1 8 | AVAIL PGDG 4.0.1 15 | AVAIL PGDG 4.0.1 19 |
| el8.aarch64 | AVAIL PGDG 4.0.1 2 | AVAIL PGDG 4.0.1 7 | AVAIL PGDG 4.0.1 8 | AVAIL PGDG 4.0.1 13 | AVAIL PGDG 4.0.1 15 |
| el9.x86_64 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 9 | AVAIL PGDG 4.0.1 10 | AVAIL PGDG 4.0.1 17 | AVAIL PGDG 4.0.1 17 |
| el9.aarch64 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 9 | AVAIL PGDG 4.0.1 10 | AVAIL PGDG 4.0.1 15 | AVAIL PGDG 4.0.1 17 |
| el10.x86_64 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 |
| el10.aarch64 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 | AVAIL PGDG 4.0.1 4 |
| d12.x86_64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| d12.aarch64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| d13.x86_64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| d13.aarch64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| u22.x86_64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| u22.aarch64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| u24.x86_64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| u24.aarch64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| u26.x86_64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
| u26.aarch64 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 | AVAIL PGDG 4.0.1 1 |
@ el8.x86_64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0.1 904.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgrouting_18-4.0.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgrouting_18 pgrouting_18-3.8.0-1PGDG.rhel8.x86_64.rpm pgdg 3.8.0 943.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgrouting_18-3.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0.1 797.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgrouting_18-4.0.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgrouting_18 pgrouting_18-3.8.0-1PGDG.rhel8.aarch64.rpm pgdg 3.8.0 830.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgrouting_18-3.8.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgrouting_18 pgrouting_18-4.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 4.0.1 696.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgrouting_18-4.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0.1 696.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgrouting_18-4.0.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel9.6.x86_64.rpm pgdg 4.0.1 696.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgrouting_18-4.0.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgrouting_18 pgrouting_18-3.8.0-1PGDG.rhel9.x86_64.rpm pgdg 3.8.0 741.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgrouting_18-3.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgrouting_18 pgrouting_18-4.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 4.0.1 648.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgrouting_18-4.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0.1 648.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgrouting_18-4.0.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel9.6.aarch64.rpm pgdg 4.0.1 648.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgrouting_18-4.0.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgrouting_18 pgrouting_18-3.8.0-1PGDG.rhel9.aarch64.rpm pgdg 3.8.0 693.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgrouting_18-3.8.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgrouting_18 pgrouting_18-4.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 4.0.1 728.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgrouting_18-4.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0.1 727.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgrouting_18-4.0.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel10.0.x86_64.rpm pgdg 4.0.1 727.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgrouting_18-4.0.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgrouting_18 pgrouting_18-3.8.0-1PGDG.rhel10.x86_64.rpm pgdg 3.8.0 773.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgrouting_18-3.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgrouting_18 pgrouting_18-4.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 4.0.1 672.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgrouting_18-4.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0.1 670.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgrouting_18-4.0.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgrouting_18 pgrouting_18-4.0.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0.1 671.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgrouting_18-4.0.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgrouting_18 pgrouting_18-3.8.0-1PGDG.rhel10.aarch64.rpm pgdg 3.8.0 718.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgrouting_18-3.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg12+1_amd64.deb pgdg 4.0.1 813.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg12+1_arm64.deb pgdg 4.0.1 695.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg13+1_amd64.deb pgdg 4.0.1 902.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg13+1_arm64.deb pgdg 4.0.1 773.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb pgdg 4.0.1 614.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb pgdg 4.0.1 521.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb pgdg 4.0.1 596.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb pgdg 4.0.1 518.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb pgdg 4.0.1 641.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgrouting postgresql-18-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb pgdg 4.0.1 566.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-18-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0.1 904.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgrouting_17-4.0.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgrouting_17 pgrouting_17-3.8.0-1PGDG.rhel8.x86_64.rpm pgdg 3.8.0 943.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgrouting_17-3.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgrouting_17 pgrouting_17-3.7.3-1PGDG.rhel8.x86_64.rpm pgdg 3.7.3 921.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgrouting_17-3.7.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgrouting_17 pgrouting_17-3.7.1-1PGDG.rhel8.x86_64.rpm pgdg 3.7.1 965.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgrouting_17-3.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgrouting_17 pgrouting_17-3.7.0-1PGDG.rhel8.x86_64.rpm pgdg 3.7.0 968.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgrouting_17-3.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgrouting_17 pgrouting_17-3.6.3-1PGDG.rhel8.x86_64.rpm pgdg 3.6.3 958.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgrouting_17-3.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgrouting_17 pgrouting_17-3.6.2-2PGDG.rhel8.x86_64.rpm pgdg 3.6.2 958.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgrouting_17-3.6.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0.1 797.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgrouting_17-4.0.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgrouting_17 pgrouting_17-3.8.0-1PGDG.rhel8.aarch64.rpm pgdg 3.8.0 830.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgrouting_17-3.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgrouting_17 pgrouting_17-3.7.3-1PGDG.rhel8.aarch64.rpm pgdg 3.7.3 810.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgrouting_17-3.7.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgrouting_17 pgrouting_17-3.7.1-1PGDG.rhel8.aarch64.rpm pgdg 3.7.1 849.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgrouting_17-3.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgrouting_17 pgrouting_17-3.7.0-1PGDG.rhel8.aarch64.rpm pgdg 3.7.0 852.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgrouting_17-3.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgrouting_17 pgrouting_17-3.6.3-1PGDG.rhel8.aarch64.rpm pgdg 3.6.3 840.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgrouting_17-3.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgrouting_17 pgrouting_17-3.6.2-2PGDG.rhel8.aarch64.rpm pgdg 3.6.2 839.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgrouting_17-3.6.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-4.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 4.0.1 696.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-4.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0.1 696.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-4.0.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel9.6.x86_64.rpm pgdg 4.0.1 696.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-4.0.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-3.8.0-1PGDG.rhel9.x86_64.rpm pgdg 3.8.0 741.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-3.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-3.7.3-1PGDG.rhel9.x86_64.rpm pgdg 3.7.3 719.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-3.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-3.7.1-1PGDG.rhel9.x86_64.rpm pgdg 3.7.1 748.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-3.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-3.7.0-1PGDG.rhel9.x86_64.rpm pgdg 3.7.0 752.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-3.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-3.6.3-1PGDG.rhel9.x86_64.rpm pgdg 3.6.3 738.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-3.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgrouting_17 pgrouting_17-3.6.2-2PGDG.rhel9.x86_64.rpm pgdg 3.6.2 737.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgrouting_17-3.6.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-4.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 4.0.1 648.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-4.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0.1 648.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-4.0.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel9.6.aarch64.rpm pgdg 4.0.1 648.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-4.0.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-3.8.0-1PGDG.rhel9.aarch64.rpm pgdg 3.8.0 693.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-3.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-3.7.3-1PGDG.rhel9.aarch64.rpm pgdg 3.7.3 671.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-3.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-3.7.1-1PGDG.rhel9.aarch64.rpm pgdg 3.7.1 699.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-3.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-3.7.0-1PGDG.rhel9.aarch64.rpm pgdg 3.7.0 701.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-3.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-3.6.3-1PGDG.rhel9.aarch64.rpm pgdg 3.6.3 688.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-3.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgrouting_17 pgrouting_17-3.6.2-2PGDG.rhel9.aarch64.rpm pgdg 3.6.2 688.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgrouting_17-3.6.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgrouting_17 pgrouting_17-4.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 4.0.1 727.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgrouting_17-4.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0.1 726.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgrouting_17-4.0.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel10.0.x86_64.rpm pgdg 4.0.1 728.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgrouting_17-4.0.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgrouting_17 pgrouting_17-3.8.0-1PGDG.rhel10.x86_64.rpm pgdg 3.8.0 772.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgrouting_17-3.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgrouting_17 pgrouting_17-4.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 4.0.1 672.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgrouting_17-4.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0.1 670.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgrouting_17-4.0.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgrouting_17 pgrouting_17-4.0.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0.1 671.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgrouting_17-4.0.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgrouting_17 pgrouting_17-3.8.0-1PGDG.rhel10.aarch64.rpm pgdg 3.8.0 719.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgrouting_17-3.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg12+1_amd64.deb pgdg 4.0.1 813.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg12+1_arm64.deb pgdg 4.0.1 695.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg13+1_amd64.deb pgdg 4.0.1 902.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg13+1_arm64.deb pgdg 4.0.1 772.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb pgdg 4.0.1 614.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb pgdg 4.0.1 522.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb pgdg 4.0.1 596.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb pgdg 4.0.1 518.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb pgdg 4.0.1 641.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgrouting postgresql-17-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb pgdg 4.0.1 566.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-17-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0.1 904.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-4.0.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgrouting_16 pgrouting_16-3.8.0-1PGDG.rhel8.x86_64.rpm pgdg 3.8.0 943.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-3.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgrouting_16 pgrouting_16-3.7.3-1PGDG.rhel8.x86_64.rpm pgdg 3.7.3 921.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-3.7.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgrouting_16 pgrouting_16-3.7.1-1PGDG.rhel8.x86_64.rpm pgdg 3.7.1 965.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-3.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgrouting_16 pgrouting_16-3.7.0-1PGDG.rhel8.x86_64.rpm pgdg 3.7.0 968.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-3.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgrouting_16 pgrouting_16-3.6.3-1PGDG.rhel8.x86_64.rpm pgdg 3.6.3 958.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-3.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgrouting_16 pgrouting_16-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 956.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgrouting_16 pgrouting_16-3.5.0-1.rhel8.x86_64.rpm pgdg 3.5.0 939.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgrouting_16-3.5.0-1.rhel8.x86_64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0.1 797.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-4.0.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-3.8.0-1PGDG.rhel8.aarch64.rpm pgdg 3.8.0 830.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-3.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-3.7.3-1PGDG.rhel8.aarch64.rpm pgdg 3.7.3 810.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-3.7.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-3.7.1-1PGDG.rhel8.aarch64.rpm pgdg 3.7.1 849.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-3.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-3.7.0-1PGDG.rhel8.aarch64.rpm pgdg 3.7.0 852.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-3.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-3.6.3-1PGDG.rhel8.aarch64.rpm pgdg 3.6.3 840.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-3.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 837.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgrouting_16 pgrouting_16-3.5.0-1.rhel8.aarch64.rpm pgdg 3.5.0 818.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgrouting_16-3.5.0-1.rhel8.aarch64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-4.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 4.0.1 696.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-4.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0.1 696.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-4.0.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel9.6.x86_64.rpm pgdg 4.0.1 696.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-4.0.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-3.8.0-1PGDG.rhel9.x86_64.rpm pgdg 3.8.0 741.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-3.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-3.7.3-1PGDG.rhel9.x86_64.rpm pgdg 3.7.3 719.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-3.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-3.7.1-1PGDG.rhel9.x86_64.rpm pgdg 3.7.1 749.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-3.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-3.7.0-1PGDG.rhel9.x86_64.rpm pgdg 3.7.0 752.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-3.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-3.6.3-1PGDG.rhel9.x86_64.rpm pgdg 3.6.3 738.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-3.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 736.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgrouting_16 pgrouting_16-3.5.0-1.rhel9.x86_64.rpm pgdg 3.5.0 732.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgrouting_16-3.5.0-1.rhel9.x86_64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-4.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 4.0.1 648.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-4.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0.1 648.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-4.0.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel9.6.aarch64.rpm pgdg 4.0.1 648.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-4.0.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-3.8.0-1PGDG.rhel9.aarch64.rpm pgdg 3.8.0 693.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-3.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-3.7.3-1PGDG.rhel9.aarch64.rpm pgdg 3.7.3 671.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-3.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-3.7.1-1PGDG.rhel9.aarch64.rpm pgdg 3.7.1 698.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-3.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-3.7.0-1PGDG.rhel9.aarch64.rpm pgdg 3.7.0 702.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-3.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-3.6.3-1PGDG.rhel9.aarch64.rpm pgdg 3.6.3 688.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-3.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 688.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgrouting_16 pgrouting_16-3.5.0-1.rhel9.aarch64.rpm pgdg 3.5.0 688.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgrouting_16-3.5.0-1.rhel9.aarch64.rpm
@ el10.x86_64 16 pgrouting_16 pgrouting_16-4.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 4.0.1 727.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgrouting_16-4.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0.1 726.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgrouting_16-4.0.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel10.0.x86_64.rpm pgdg 4.0.1 727.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgrouting_16-4.0.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgrouting_16 pgrouting_16-3.8.0-1PGDG.rhel10.x86_64.rpm pgdg 3.8.0 772.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgrouting_16-3.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgrouting_16 pgrouting_16-4.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 4.0.1 672.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgrouting_16-4.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0.1 670.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgrouting_16-4.0.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgrouting_16 pgrouting_16-4.0.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0.1 671.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgrouting_16-4.0.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgrouting_16 pgrouting_16-3.8.0-1PGDG.rhel10.aarch64.rpm pgdg 3.8.0 718.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgrouting_16-3.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg12+1_amd64.deb pgdg 4.0.1 813.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg12+1_arm64.deb pgdg 4.0.1 695.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg13+1_amd64.deb pgdg 4.0.1 902.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg13+1_arm64.deb pgdg 4.0.1 772.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb pgdg 4.0.1 614.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb pgdg 4.0.1 521.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb pgdg 4.0.1 596.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb pgdg 4.0.1 518.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb pgdg 4.0.1 641.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgrouting postgresql-16-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb pgdg 4.0.1 566.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-16-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0.1 904.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-4.0.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.8.0-1PGDG.rhel8.x86_64.rpm pgdg 3.8.0 943.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.7.3-1PGDG.rhel8.x86_64.rpm pgdg 3.7.3 921.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.7.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.7.1-1PGDG.rhel8.x86_64.rpm pgdg 3.7.1 965.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.7.0-1PGDG.rhel8.x86_64.rpm pgdg 3.7.0 968.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.6.3-1PGDG.rhel8.x86_64.rpm pgdg 3.6.3 958.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 956.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.5.0-1.rhel8.x86_64.rpm pgdg 3.5.0 938.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.5.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.4.2-2.rhel8.x86_64.rpm pgdg 3.4.2 918.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.4.2-2.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.4.1-1.rhel8.x86_64.rpm pgdg 3.4.1 917.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.4.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.4.0-1.rhel8.x86_64.rpm pgdg 3.4.0 915.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.4.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.3.4-1.rhel8.x86_64.rpm pgdg 3.3.4 868.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.3.4-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.3.3-1.rhel8.x86_64.rpm pgdg 3.3.3 868.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.3.3-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.2.2-1.rhel8.x86_64.rpm pgdg 3.2.2 847.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.2.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgrouting_15 pgrouting_15-3.1.4-1.rhel8.x86_64.rpm pgdg 3.1.4 789.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgrouting_15-3.1.4-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0.1 797.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-4.0.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.8.0-1PGDG.rhel8.aarch64.rpm pgdg 3.8.0 830.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.7.3-1PGDG.rhel8.aarch64.rpm pgdg 3.7.3 810.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.7.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.7.1-1PGDG.rhel8.aarch64.rpm pgdg 3.7.1 849.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.7.0-1PGDG.rhel8.aarch64.rpm pgdg 3.7.0 852.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.6.3-1PGDG.rhel8.aarch64.rpm pgdg 3.6.3 840.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 837.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.5.0-1.rhel8.aarch64.rpm pgdg 3.5.0 818.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.5.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.4.2-2.rhel8.aarch64.rpm pgdg 3.4.2 821.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.4.2-2.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.4.1-1.rhel8.aarch64.rpm pgdg 3.4.1 821.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.4.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.4.0-1.rhel8.aarch64.rpm pgdg 3.4.0 819.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.4.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.3.4-1.rhel8.aarch64.rpm pgdg 3.3.4 775.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.3.4-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pgrouting_15 pgrouting_15-3.1.4-1.rhel8.aarch64.rpm pgdg 3.1.4 710.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgrouting_15-3.1.4-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-4.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 4.0.1 696.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-4.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0.1 696.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-4.0.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel9.6.x86_64.rpm pgdg 4.0.1 697.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-4.0.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.8.0-1PGDG.rhel9.x86_64.rpm pgdg 3.8.0 741.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.7.3-1PGDG.rhel9.x86_64.rpm pgdg 3.7.3 719.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.7.1-1PGDG.rhel9.x86_64.rpm pgdg 3.7.1 749.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.7.0-1PGDG.rhel9.x86_64.rpm pgdg 3.7.0 752.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.6.3-1PGDG.rhel9.x86_64.rpm pgdg 3.6.3 738.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 736.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.5.0-1.rhel9.x86_64.rpm pgdg 3.5.0 732.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.5.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.4.2-2.rhel9.x86_64.rpm pgdg 3.4.2 733.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.4.2-2.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.4.1-1.rhel9.x86_64.rpm pgdg 3.4.1 732.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.4.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.4.0-1.rhel9.x86_64.rpm pgdg 3.4.0 729.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.4.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.3.4-1.rhel9.x86_64.rpm pgdg 3.3.4 698.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.3.4-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.3.3-1.rhel9.x86_64.rpm pgdg 3.3.3 698.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.3.3-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.2.2-1.rhel9.x86_64.rpm pgdg 3.2.2 684.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.2.2-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgrouting_15 pgrouting_15-3.1.4-1.rhel9.x86_64.rpm pgdg 3.1.4 654.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgrouting_15-3.1.4-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-4.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 4.0.1 648.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-4.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0.1 648.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-4.0.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel9.6.aarch64.rpm pgdg 4.0.1 648.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-4.0.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.8.0-1PGDG.rhel9.aarch64.rpm pgdg 3.8.0 693.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.7.3-1PGDG.rhel9.aarch64.rpm pgdg 3.7.3 671.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.7.1-1PGDG.rhel9.aarch64.rpm pgdg 3.7.1 698.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.7.0-1PGDG.rhel9.aarch64.rpm pgdg 3.7.0 701.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.6.3-1PGDG.rhel9.aarch64.rpm pgdg 3.6.3 688.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 689.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.5.0-1.rhel9.aarch64.rpm pgdg 3.5.0 688.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.5.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.4.2-2.rhel9.aarch64.rpm pgdg 3.4.2 686.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.4.2-2.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.4.1-1.rhel9.aarch64.rpm pgdg 3.4.1 688.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.4.1-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.4.0-1.rhel9.aarch64.rpm pgdg 3.4.0 683.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.4.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.3.4-1.rhel9.aarch64.rpm pgdg 3.3.4 654.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.3.4-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pgrouting_15 pgrouting_15-3.1.4-1.rhel9.aarch64.rpm pgdg 3.1.4 613.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgrouting_15-3.1.4-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pgrouting_15 pgrouting_15-4.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 4.0.1 728.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgrouting_15-4.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0.1 726.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgrouting_15-4.0.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel10.0.x86_64.rpm pgdg 4.0.1 727.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgrouting_15-4.0.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgrouting_15 pgrouting_15-3.8.0-1PGDG.rhel10.x86_64.rpm pgdg 3.8.0 772.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgrouting_15-3.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgrouting_15 pgrouting_15-4.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 4.0.1 671.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgrouting_15-4.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0.1 670.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgrouting_15-4.0.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgrouting_15 pgrouting_15-4.0.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0.1 671.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgrouting_15-4.0.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgrouting_15 pgrouting_15-3.8.0-1PGDG.rhel10.aarch64.rpm pgdg 3.8.0 718.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgrouting_15-3.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg12+1_amd64.deb pgdg 4.0.1 813.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg12+1_arm64.deb pgdg 4.0.1 695.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg13+1_amd64.deb pgdg 4.0.1 902.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg13+1_arm64.deb pgdg 4.0.1 772.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb pgdg 4.0.1 614.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb pgdg 4.0.1 522.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb pgdg 4.0.1 596.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb pgdg 4.0.1 518.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb pgdg 4.0.1 641.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgrouting postgresql-15-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb pgdg 4.0.1 566.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-15-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0.1 904.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-4.0.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.8.0-1PGDG.rhel8.x86_64.rpm pgdg 3.8.0 943.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.7.3-1PGDG.rhel8.x86_64.rpm pgdg 3.7.3 921.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.7.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.7.1-1PGDG.rhel8.x86_64.rpm pgdg 3.7.1 965.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.7.0-1PGDG.rhel8.x86_64.rpm pgdg 3.7.0 968.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.6.3-1PGDG.rhel8.x86_64.rpm pgdg 3.6.3 958.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.6.0-1PGDG.rhel8.x86_64.rpm pgdg 3.6.0 956.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.5.0-1.rhel8.x86_64.rpm pgdg 3.5.0 938.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.5.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.4.2-2.rhel8.x86_64.rpm pgdg 3.4.2 918.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.4.2-2.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.4.1-1.rhel8.x86_64.rpm pgdg 3.4.1 917.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.4.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.4.0-1.rhel8.x86_64.rpm pgdg 3.4.0 915.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.4.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.3.4-1.rhel8.x86_64.rpm pgdg 3.3.4 868.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.3.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.3.3-1.rhel8.x86_64.rpm pgdg 3.3.3 868.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.3.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.3.2-1.rhel8.x86_64.rpm pgdg 3.3.2 868.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.3.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.3.1-1.rhel8.x86_64.rpm pgdg 3.3.1 870.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.3.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.3.0-1.rhel8.x86_64.rpm pgdg 3.3.0 861.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.3.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.2.1-1.rhel8.x86_64.rpm pgdg 3.2.1 846.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.1.3-1.rhel8.x86_64.rpm pgdg 3.1.3 788.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgrouting_14 pgrouting_14-3.0.5-1.rhel8.x86_64.rpm pgdg 3.0.5 780.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgrouting_14-3.0.5-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0.1 797.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-4.0.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.8.0-1PGDG.rhel8.aarch64.rpm pgdg 3.8.0 830.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.7.3-1PGDG.rhel8.aarch64.rpm pgdg 3.7.3 810.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.7.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.7.1-1PGDG.rhel8.aarch64.rpm pgdg 3.7.1 849.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.7.0-1PGDG.rhel8.aarch64.rpm pgdg 3.7.0 852.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.6.3-1PGDG.rhel8.aarch64.rpm pgdg 3.6.3 839.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.6.0-1PGDG.rhel8.aarch64.rpm pgdg 3.6.0 837.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.5.0-1.rhel8.aarch64.rpm pgdg 3.5.0 818.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.5.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.4.2-2.rhel8.aarch64.rpm pgdg 3.4.2 821.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.4.2-2.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.4.1-1.rhel8.aarch64.rpm pgdg 3.4.1 821.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.4.1-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.4.0-1.rhel8.aarch64.rpm pgdg 3.4.0 819.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.4.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.3.4-1.rhel8.aarch64.rpm pgdg 3.3.4 775.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.3.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.2.2-1.rhel8.aarch64.rpm pgdg 3.2.2 758.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.2.2-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.1.4-1.rhel8.aarch64.rpm pgdg 3.1.4 710.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgrouting_14 pgrouting_14-3.0.6-1.rhel8.aarch64.rpm pgdg 3.0.6 702.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgrouting_14-3.0.6-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-4.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 4.0.1 696.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-4.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0.1 696.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-4.0.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel9.6.x86_64.rpm pgdg 4.0.1 696.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-4.0.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.8.0-1PGDG.rhel9.x86_64.rpm pgdg 3.8.0 741.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.7.3-1PGDG.rhel9.x86_64.rpm pgdg 3.7.3 719.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.7.1-1PGDG.rhel9.x86_64.rpm pgdg 3.7.1 748.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.7.0-1PGDG.rhel9.x86_64.rpm pgdg 3.7.0 752.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.6.3-1PGDG.rhel9.x86_64.rpm pgdg 3.6.3 738.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.6.0-1PGDG.rhel9.x86_64.rpm pgdg 3.6.0 736.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.5.0-1.rhel9.x86_64.rpm pgdg 3.5.0 732.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.5.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.4.2-2.rhel9.x86_64.rpm pgdg 3.4.2 733.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.4.2-2.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.4.1-1.rhel9.x86_64.rpm pgdg 3.4.1 732.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.4.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.4.0-1.rhel9.x86_64.rpm pgdg 3.4.0 729.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.4.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.3.4-1.rhel9.x86_64.rpm pgdg 3.3.4 697.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.3.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.3.3-1.rhel9.x86_64.rpm pgdg 3.3.3 697.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.3.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.3.2-1.rhel9.x86_64.rpm pgdg 3.3.2 697.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.3.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgrouting_14 pgrouting_14-3.3.1-1.rhel9.x86_64.rpm pgdg 3.3.1 699.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgrouting_14-3.3.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-4.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 4.0.1 648.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-4.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0.1 648.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-4.0.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel9.6.aarch64.rpm pgdg 4.0.1 648.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-4.0.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.8.0-1PGDG.rhel9.aarch64.rpm pgdg 3.8.0 693.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.7.3-1PGDG.rhel9.aarch64.rpm pgdg 3.7.3 671.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.7.1-1PGDG.rhel9.aarch64.rpm pgdg 3.7.1 699.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.7.0-1PGDG.rhel9.aarch64.rpm pgdg 3.7.0 701.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.6.3-1PGDG.rhel9.aarch64.rpm pgdg 3.6.3 688.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.6.0-1PGDG.rhel9.aarch64.rpm pgdg 3.6.0 689.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.5.0-1.rhel9.aarch64.rpm pgdg 3.5.0 688.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.5.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.4.2-2.rhel9.aarch64.rpm pgdg 3.4.2 687.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.4.2-2.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.4.1-1.rhel9.aarch64.rpm pgdg 3.4.1 688.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.4.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.4.0-1.rhel9.aarch64.rpm pgdg 3.4.0 684.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.4.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.3.4-1.rhel9.aarch64.rpm pgdg 3.3.4 654.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.3.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.2.2-1.rhel9.aarch64.rpm pgdg 3.2.2 642.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.2.2-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.1.4-1.rhel9.aarch64.rpm pgdg 3.1.4 613.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgrouting_14 pgrouting_14-3.0.6-1.rhel9.aarch64.rpm pgdg 3.0.6 607.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgrouting_14-3.0.6-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgrouting_14 pgrouting_14-4.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 4.0.1 727.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgrouting_14-4.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0.1 726.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgrouting_14-4.0.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel10.0.x86_64.rpm pgdg 4.0.1 727.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgrouting_14-4.0.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgrouting_14 pgrouting_14-3.8.0-1PGDG.rhel10.x86_64.rpm pgdg 3.8.0 773.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgrouting_14-3.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgrouting_14 pgrouting_14-4.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 4.0.1 672.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgrouting_14-4.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0.1 670.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgrouting_14-4.0.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgrouting_14 pgrouting_14-4.0.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0.1 671.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgrouting_14-4.0.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgrouting_14 pgrouting_14-3.8.0-1PGDG.rhel10.aarch64.rpm pgdg 3.8.0 718.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgrouting_14-3.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg12+1_amd64.deb pgdg 4.0.1 813.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg12+1_arm64.deb pgdg 4.0.1 695.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg13+1_amd64.deb pgdg 4.0.1 902.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg13+1_arm64.deb pgdg 4.0.1 773.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb pgdg 4.0.1 614.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb pgdg 4.0.1 521.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb pgdg 4.0.1 596.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb pgdg 4.0.1 518.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb pgdg 4.0.1 641.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgrouting postgresql-14-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb pgdg 4.0.1 566.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgrouting/postgresql-14-pgrouting_4.0.1-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pgrouting` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgrouting;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgrouting -v 18  # PG 18
pig ext install -y pgrouting -v 17  # PG 17
pig ext install -y pgrouting -v 16  # PG 16
pig ext install -y pgrouting -v 15  # PG 15
pig ext install -y pgrouting -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgrouting_18       # PG 18
dnf install -y pgrouting_17       # PG 17
dnf install -y pgrouting_16       # PG 16
dnf install -y pgrouting_15       # PG 15
dnf install -y pgrouting_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgrouting   # PG 18
apt install -y postgresql-17-pgrouting   # PG 17
apt install -y postgresql-16-pgrouting   # PG 16
apt install -y postgresql-15-pgrouting   # PG 15
apt install -y postgresql-14-pgrouting   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgrouting CASCADE;  -- requires: plpgsql, postgis
```




## Usage

> [pgRouting - Routing on PostgreSQL](https://github.com/pgRouting/pgrouting)

pgRouting extends the PostGIS/PostgreSQL geospatial database to provide geospatial routing and other network analysis functionality.

This library contains the following features:

- All Pairs Shortest Path (Floyd-Warshall, Johnson)
- A* algorithm (with bidirectional variant)
- Dijkstra algorithms (cost, cost matrix, driving distance, K shortest paths, via routing, nearest)
- Bidirectional Dijkstra
- Traveling Salesman Problem (TSP)
- Network flow (max flow, Boykov-Kolmogorov, Edmonds-Karp, push-relabel)
- Spanning trees (Kruskal, Prim with BFS/DFS/driving distance variants)
- Graph components (connected, strong, biconnected, articulation points, bridges)
- Turn Restriction Shortest Path (TRSP)
- WithPoints routing (arbitrary locations on edges)
- Graph contraction and utility functions

### Getting Started

Enable the extension (requires PostGIS):

```sql
CREATE EXTENSION pgrouting CASCADE;
```

### Graph Representation

pgRouting represents graphs using SQL queries that return edge data. The standard edge query format:

```sql
SELECT id, source, target, cost, reverse_cost FROM edges;
```

| Column | Type | Description |
|--------|------|-------------|
| `id` | ANY-INTEGER | Edge identifier |
| `source` | ANY-INTEGER | Starting vertex identifier |
| `target` | ANY-INTEGER | Ending vertex identifier |
| `cost` | ANY-NUMERICAL | Weight (source to target); negative values exclude the edge |
| `reverse_cost` | ANY-NUMERICAL | Weight (target to source); default -1 (non-existent) |

### Simple Example Without Geometry

Create a graph and find the shortest path:

```sql
CREATE TABLE wiki (
  id SERIAL,
  source INTEGER,
  target INTEGER,
  cost INTEGER
);

INSERT INTO wiki (source, target, cost) VALUES
  (1, 2, 7),  (1, 3, 9), (1, 6, 14),
  (2, 3, 10), (2, 4, 15),
  (3, 6, 2),  (3, 4, 11),
  (4, 5, 6),
  (5, 6, 9);

SELECT * FROM pgr_dijkstra(
  'SELECT id, source, target, cost FROM wiki',
  1, 5, false);
```

--------

## Function Families

### Dijkstra - Shortest Path

The core routing function. Supports one-to-one, one-to-many, many-to-one, many-to-many, and combinations signatures.

```sql
pgr_dijkstra(Edges SQL, start_vid,  end_vid,  [directed])
pgr_dijkstra(Edges SQL, start_vid,  end_vids, [directed])
pgr_dijkstra(Edges SQL, start_vids, end_vid,  [directed])
pgr_dijkstra(Edges SQL, start_vids, end_vids, [directed])
pgr_dijkstra(Edges SQL, Combinations SQL,     [directed])
```

Returns: `(seq, path_seq, start_vid, end_vid, node, edge, cost, agg_cost)`

**One to One:**

```sql
SELECT * FROM pgr_dijkstra(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  6, 10, true);
```

**One to Many:**

```sql
SELECT * FROM pgr_dijkstra(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  6, ARRAY[10, 17]);
```

**Many to Many (undirected):**

```sql
SELECT * FROM pgr_dijkstra(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  ARRAY[6, 1], ARRAY[10, 17],
  directed => false);
```

**Combinations:**

```sql
SELECT * FROM pgr_dijkstra(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  'SELECT source, target FROM combinations',
  false);
```

#### Dijkstra Cost

Returns only aggregate cost without path details:

```sql
pgr_dijkstraCost(Edges SQL, start_vid, end_vid, [directed])
```

Returns: `(start_vid, end_vid, agg_cost)`

#### Dijkstra Cost Matrix

Generate a cost matrix for a set of vertices:

```sql
pgr_dijkstraCostMatrix(Edges SQL, vids, [directed])
```

#### Dijkstra Via

Route through an ordered sequence of vertices:

```sql
pgr_dijkstraVia(Edges SQL, via_vertices, [directed, strict, U_turn_on_edge])
```

#### Dijkstra Near

Find the nearest vertex to a set of targets:

```sql
pgr_dijkstraNear(Edges SQL, start_vid, end_vids, [directed])
```

### A* - Shortest Path

Uses the A* heuristic algorithm. Requires additional coordinate columns (`x1`, `y1`, `x2`, `y2`) in the edges query.

```sql
pgr_aStar(Edges SQL, start_vid, end_vid, [directed, heuristic, factor, epsilon])
```

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `directed` | BOOLEAN | `true` | Graph direction |
| `heuristic` | INTEGER | `5` | Distance heuristic (0-5) |
| `factor` | FLOAT | `1` | Units manipulation |
| `epsilon` | FLOAT | `1` | Approximation factor |

```sql
SELECT * FROM pgr_aStar(
  'SELECT id, source, target, cost, reverse_cost, x1, y1, x2, y2 FROM edges',
  6, 12,
  directed => true, heuristic => 2);
```

Also available: `pgr_aStarCost`, `pgr_aStarCostMatrix`

### Bidirectional Algorithms

Bidirectional variants search from both ends simultaneously:

- `pgr_bdDijkstra`, `pgr_bdDijkstraCost`, `pgr_bdDijkstraCostMatrix`
- `pgr_bdAstar`, `pgr_bdAstarCost`, `pgr_bdAstarCostMatrix`

```sql
SELECT * FROM pgr_bdDijkstra(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  6, 10);
```

### K Shortest Paths (Yen's Algorithm)

Find the K shortest paths between two vertices:

```sql
pgr_KSP(Edges SQL, start_vid, end_vid, K, [directed, heap_paths])
```

Returns: `(seq, path_id, path_seq, start_vid, end_vid, node, edge, cost, agg_cost)`

```sql
SELECT * FROM pgr_KSP(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  6, 17, 2);
```

### Driving Distance

Find all vertices reachable within a given distance:

```sql
pgr_drivingDistance(Edges SQL, start_vid, distance, [directed])
pgr_drivingDistance(Edges SQL, start_vids, distance, [directed, equicost])
```

Returns: `(seq, depth, start_vid, pred, node, edge, cost, agg_cost)`

```sql
SELECT * FROM pgr_drivingDistance(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  11, 3.0);
```

### Traveling Salesman Problem

**Matrix-based TSP:**

```sql
pgr_TSP(Matrix SQL, [start_id, end_id])
```

Returns: `(seq, node, cost, agg_cost)`

```sql
SELECT * FROM pgr_TSP(
  $$SELECT * FROM pgr_dijkstraCostMatrix(
    'SELECT id, source, target, cost, reverse_cost FROM edges',
    ARRAY[1, 3, 5, 6, 7, 8, 9, 10, 11, 15, 16, 17],
    directed => false)$$,
  start_id => 1);
```

**Euclidean TSP** (uses coordinates directly):

```sql
pgr_TSPeuclidean(Coordinates SQL, [start_id, end_id])
```

### Network Flow

Compute maximum flow and related properties:

```sql
-- Maximum flow
pgr_maxFlow(Edges SQL, source, sink)

-- Specific algorithms
pgr_boykovKolmogorov(Edges SQL, source, sink)
pgr_edmondsKarp(Edges SQL, source, sink)
pgr_pushRelabel(Edges SQL, source, sink)

-- Edge-disjoint paths
pgr_edgeDisjointPaths(Edges SQL, source, sink)

-- Maximum cardinality matching
pgr_maxCardinalityMatch(Edges SQL, [directed])
```

Flow edges SQL uses `capacity` and `reverse_capacity` instead of `cost`/`reverse_cost`.

### Spanning Trees

**Kruskal's algorithm:**

```sql
pgr_kruskal(Edges SQL)         -- minimum spanning tree
pgr_kruskalBFS(Edges SQL, root_vid, [max_depth])
pgr_kruskalDFS(Edges SQL, root_vid, [max_depth])
pgr_kruskalDD(Edges SQL, root_vid, distance)
```

**Prim's algorithm:**

```sql
pgr_prim(Edges SQL)            -- minimum spanning tree
pgr_primBFS(Edges SQL, root_vid, [max_depth])
pgr_primDFS(Edges SQL, root_vid, [max_depth])
pgr_primDD(Edges SQL, root_vid, distance)
```

### Graph Components

```sql
-- Connected components (undirected)
pgr_connectedComponents(Edges SQL)

-- Strongly connected components (directed)
pgr_strongComponents(Edges SQL)

-- Biconnected components
pgr_biconnectedComponents(Edges SQL)

-- Articulation points (cut vertices)
pgr_articulationPoints(Edges SQL)

-- Bridges (cut edges)
pgr_bridges(Edges SQL)
```

### Turn Restriction Shortest Path (TRSP)

Route with forbidden path restrictions:

```sql
pgr_trsp(Edges SQL, Restrictions SQL, start_vid, end_vid, [directed])
pgr_trspVia(Edges SQL, Restrictions SQL, via_vertices, [directed, strict, U_turn_on_edge])
pgr_trsp_withPoints(Edges SQL, Restrictions SQL, Points SQL, start_pid, end_pid, [options])
```

Restrictions SQL format:

| Column | Type | Description |
|--------|------|-------------|
| `path` | ARRAY[ANY-INTEGER] | Sequence of forbidden edge IDs |
| `cost` | ANY-NUMERICAL | Cost of the forbidden path |

### WithPoints - Routing from Arbitrary Locations

Route between points located on edges (not just vertices):

```sql
pgr_withPoints(Edges SQL, Points SQL, start_pid, end_pid, [options])
pgr_withPointsCost(Edges SQL, Points SQL, start_pid, end_pid, [options])
pgr_withPointsCostMatrix(Edges SQL, Points SQL, pids, [options])
pgr_withPointsKSP(Edges SQL, Points SQL, start_pid, end_pid, K, [options])
pgr_withPointsDD(Edges SQL, Points SQL, start_pid, distance, [options])
```

Points SQL format:

| Column | Type | Default | Description |
|--------|------|---------|-------------|
| `pid` | ANY-INTEGER | | Point identifier |
| `edge_id` | ANY-INTEGER | | Closest edge |
| `fraction` | ANY-NUMERICAL | | Position on edge (0-1) |
| `side` | CHAR | `b` | `r`(right), `l`(left), `b`(both) |

### Graph Contraction

Simplify graphs by contracting vertices:

```sql
pgr_contraction(Edges SQL, contraction_order, [options])
```

### Utility Functions

```sql
-- Extract vertices from edge data
pgr_extractVertices(Edges SQL)

-- Find edges near a point
pgr_findCloseEdges(Edges SQL, point, tolerance, [options])

-- Separate crossing geometries
pgr_separateCrossing(Edges SQL)

-- Separate touching geometries
pgr_separateTouching(Edges SQL)

-- Version info
pgr_version()
pgr_full_version()
```

--------

## Working with Geometries

### Building a Routing Topology

Extract vertices from spatial edges and build topology:

```sql
-- Extract vertices from edge geometries
SELECT * INTO vertices
FROM pgr_extractVertices('SELECT id, geom FROM edges ORDER BY id');

-- Set source vertex
UPDATE edges AS e
SET source = v.id, x1 = x, y1 = y
FROM vertices AS v
WHERE ST_StartPoint(e.geom) = v.geom;

-- Set target vertex
UPDATE edges AS e
SET target = v.id, x2 = x, y2 = y
FROM vertices AS v
WHERE ST_EndPoint(e.geom) = v.geom;
```

### Setting Costs from Geometry Length

```sql
UPDATE edges SET
  cost = sign(cost) * ST_Length(geom),
  reverse_cost = sign(reverse_cost) * ST_Length(geom);
```

### Getting Route Geometry

Combine routing results with edge geometries:

```sql
SELECT seq, node, edge, cost, agg_cost, geom
FROM pgr_dijkstra(
  'SELECT id, source, target, cost, reverse_cost FROM edges',
  6, 10
) AS r
LEFT JOIN edges AS e ON r.edge = e.id;
```

--------

## Performance Tips

Bound queries to the area of interest to reduce processed edges:

```sql
SELECT * FROM pgr_dijkstra($$
  SELECT id, source, target, cost, reverse_cost
  FROM edges
  WHERE geom && (
    SELECT ST_Buffer(ST_Union(geom), 1)
    FROM edges WHERE source IN (7) OR target IN (8))$$,
  7, 8);
```

--------

## All Pairs Shortest Path

For computing distances between all pairs of vertices:

```sql
-- Floyd-Warshall (no edge id required)
pgr_floydWarshall(Edges SQL, [directed])

-- Johnson (no edge id required)
pgr_johnson(Edges SQL, [directed])
```

Returns: `(start_vid, end_vid, agg_cost)`

```sql
SELECT * FROM pgr_floydWarshall(
  'SELECT id, source, target, cost, reverse_cost FROM edges');
```
