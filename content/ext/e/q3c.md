---
title: "q3c"
linkTitle: "q3c"
description: "q3c sky indexing plugin"
weight: 1540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/segasai/q3c">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">segasai/q3c</div>
    <div class="ext-card__desc">https://github.com/segasai/q3c</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/q3c-2.0.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">q3c-2.0.5.tar.gz</div>
    <div class="ext-card__desc">q3c-2.0.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`q3c`**](/ext/e/q3c) | `2.0.5` | <a class="ext-badge ext-badge--cate gis" href="/ext/cate/gis">GIS</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1540  | [**`q3c`**](/ext/e/q3c) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_sphere`](/ext/e/pg_sphere) [`earthdistance`](/ext/e/earthdistance) [`postgis`](/ext/e/postgis) [`h3`](/ext/e/h3) [`pointcloud`](/ext/e/pointcloud) [`pgrouting`](/ext/e/pgrouting) [`pg_geohash`](/ext/e/pg_geohash) [`mobilitydb`](/ext/e/mobilitydb) [`qdgc`](/ext/e/qdgc) [`pg_eviltransform`](/ext/e/pg_eviltransform) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `q3c` | - |
| [**RPM**](/ext/rpm#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `q3c_$v` | - |
| [**DEB**](/ext/deb#gis) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-q3c` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 |
| el8.aarch64 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 | AVAIL PGDG 2.0.5 6 |
| el9.x86_64 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 |
| el9.aarch64 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 |
| el10.x86_64 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 |
| el10.aarch64 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 | AVAIL PGDG 2.0.5 10 |
| d12.x86_64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| d12.aarch64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| d13.x86_64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| d13.aarch64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| u22.x86_64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| u22.aarch64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| u24.x86_64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| u24.aarch64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| u26.x86_64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| u26.aarch64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
@ el8.x86_64 18 q3c_18 q3c_18-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 107.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/q3c_18-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 q3c_18 q3c_18-2.0.3-2PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 105.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/q3c_18-2.0.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 105.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/q3c_18-2.0.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 q3c_18 q3c_18-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 99.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/q3c_18-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 104.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/q3c_18-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 q3c_18 q3c_18-2.0.1-1PGDG.rhel8.x86_64.rpm pgdg 2.0.1 103.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/q3c_18-2.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 q3c_18 q3c_18-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 101.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/q3c_18-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 q3c_18 q3c_18-2.0.3-2PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 100.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/q3c_18-2.0.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 99.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/q3c_18-2.0.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 q3c_18 q3c_18-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 93.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/q3c_18-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 98.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/q3c_18-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 q3c_18 q3c_18-2.0.1-1PGDG.rhel8.aarch64.rpm pgdg 2.0.1 97.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/q3c_18-2.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 148.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.3-2PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 136.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 160.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.3 160.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.3 160.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 97.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/q3c_18-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 136.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 109.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 109.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 q3c_18 q3c_18-2.0.1-1PGDG.rhel9.x86_64.rpm pgdg 2.0.1 108.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/q3c_18-2.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 108.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.3-2PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 93.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 93.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.3 93.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.3 93.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 126.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/q3c_18-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 112.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 112.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 112.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 q3c_18 q3c_18-2.0.1-1PGDG.rhel9.aarch64.rpm pgdg 2.0.1 105.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/q3c_18-2.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 141.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.3-2PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 153.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 153.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.3 153.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.3 154.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 133.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/q3c_18-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 115.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 115.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 157.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 q3c_18 q3c_18-2.0.1-1PGDG.rhel10.x86_64.rpm pgdg 2.0.1 127.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/q3c_18-2.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 87.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.3-2PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 108.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 108.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.3 108.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.3-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.3 108.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 128.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/q3c_18-2.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 132.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 132.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 132.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 q3c_18 q3c_18-2.0.1-1PGDG.rhel10.aarch64.rpm pgdg 2.0.1 106.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/q3c_18-2.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 131.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg12+1_amd64.deb pgdg 2.0.4 156.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg12+1_amd64.deb pgdg 2.0.3 156.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 163.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg12+1_arm64.deb pgdg 2.0.4 151.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg12+1_arm64.deb pgdg 2.0.3 155.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 148.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg13+1_amd64.deb pgdg 2.0.4 157.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg13+1_amd64.deb pgdg 2.0.3 157.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 167.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg13+1_arm64.deb pgdg 2.0.4 167.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg13+1_arm64.deb pgdg 2.0.3 155.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 162.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg22.04+1_amd64.deb pgdg 2.0.4 144.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg22.04+1_amd64.deb pgdg 2.0.3 155.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 156.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg22.04+1_arm64.deb pgdg 2.0.4 153.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg22.04+1_arm64.deb pgdg 2.0.3 152.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg24.04+1_amd64.deb pgdg 2.0.4 146.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg24.04+1_amd64.deb pgdg 2.0.3 155.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 154.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg24.04+1_arm64.deb pgdg 2.0.4 127.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg24.04+1_arm64.deb pgdg 2.0.3 160.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 130.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg26.04+1_amd64.deb pgdg 2.0.4 158.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg26.04+1_amd64.deb pgdg 2.0.3 162.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 154.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.4-1.pgdg26.04+1_arm64.deb pgdg 2.0.4 158.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-q3c postgresql-18-q3c_2.0.3-1.pgdg26.04+1_arm64.deb pgdg 2.0.3 163.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-18-q3c_2.0.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 q3c_17 q3c_17-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 107.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/q3c_17-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 q3c_17 q3c_17-2.0.3-2PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 105.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/q3c_17-2.0.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 105.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/q3c_17-2.0.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 q3c_17 q3c_17-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 99.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/q3c_17-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 104.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/q3c_17-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 q3c_17 q3c_17-2.0.1-1PGDG.rhel8.x86_64.rpm pgdg 2.0.1 103.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/q3c_17-2.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 q3c_17 q3c_17-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 101.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/q3c_17-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 q3c_17 q3c_17-2.0.3-2PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 100.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/q3c_17-2.0.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 99.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/q3c_17-2.0.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 q3c_17 q3c_17-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 93.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/q3c_17-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 98.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/q3c_17-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 q3c_17 q3c_17-2.0.1-1PGDG.rhel8.aarch64.rpm pgdg 2.0.1 97.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/q3c_17-2.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 148.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.3-2PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 160.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 136.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.3 111.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.3 143.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 97.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/q3c_17-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 109.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 136.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 136.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 q3c_17 q3c_17-2.0.1-1PGDG.rhel9.x86_64.rpm pgdg 2.0.1 101.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/q3c_17-2.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 110.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.3-2PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 97.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 97.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.3 97.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.3 97.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 94.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/q3c_17-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 107.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 107.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 108.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 q3c_17 q3c_17-2.0.1-1PGDG.rhel9.aarch64.rpm pgdg 2.0.1 105.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/q3c_17-2.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 141.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.3-2PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 153.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 153.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.3 153.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.3 154.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 133.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/q3c_17-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 115.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 112.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 157.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 q3c_17 q3c_17-2.0.1-1PGDG.rhel10.x86_64.rpm pgdg 2.0.1 127.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/q3c_17-2.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 88.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.3-2PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 107.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 107.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.3 107.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.3-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.3 107.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 128.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/q3c_17-2.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 132.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 132.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 132.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 q3c_17 q3c_17-2.0.1-1PGDG.rhel10.aarch64.rpm pgdg 2.0.1 107.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/q3c_17-2.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 147.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg12+1_amd64.deb pgdg 2.0.4 133.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg12+1_amd64.deb pgdg 2.0.3 129.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 136.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg12+1_arm64.deb pgdg 2.0.4 161.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg12+1_arm64.deb pgdg 2.0.3 160.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 140.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg13+1_amd64.deb pgdg 2.0.4 132.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg13+1_amd64.deb pgdg 2.0.3 143.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 154.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg13+1_arm64.deb pgdg 2.0.4 162.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg13+1_arm64.deb pgdg 2.0.3 155.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 171.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg22.04+1_amd64.deb pgdg 2.0.4 134.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg22.04+1_amd64.deb pgdg 2.0.3 147.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 159.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg22.04+1_arm64.deb pgdg 2.0.4 165.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg22.04+1_arm64.deb pgdg 2.0.3 154.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 133.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg24.04+1_amd64.deb pgdg 2.0.4 131.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg24.04+1_amd64.deb pgdg 2.0.3 130.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 150.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg24.04+1_arm64.deb pgdg 2.0.4 159.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg24.04+1_arm64.deb pgdg 2.0.3 139.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 135.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg26.04+1_amd64.deb pgdg 2.0.4 160.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg26.04+1_amd64.deb pgdg 2.0.3 167.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 144.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.4-1.pgdg26.04+1_arm64.deb pgdg 2.0.4 150.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-q3c postgresql-17-q3c_2.0.3-1.pgdg26.04+1_arm64.deb pgdg 2.0.3 153.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-17-q3c_2.0.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 q3c_16 q3c_16-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 107.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/q3c_16-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 q3c_16 q3c_16-2.0.3-2PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 105.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/q3c_16-2.0.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 105.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/q3c_16-2.0.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 q3c_16 q3c_16-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 99.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/q3c_16-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 104.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/q3c_16-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 q3c_16 q3c_16-2.0.1-1PGDG.rhel8.x86_64.rpm pgdg 2.0.1 103.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/q3c_16-2.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 q3c_16 q3c_16-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 101.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/q3c_16-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 q3c_16 q3c_16-2.0.3-2PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 100.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/q3c_16-2.0.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 99.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/q3c_16-2.0.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 q3c_16 q3c_16-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 93.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/q3c_16-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 98.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/q3c_16-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 q3c_16 q3c_16-2.0.1-1PGDG.rhel8.aarch64.rpm pgdg 2.0.1 97.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/q3c_16-2.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 148.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.3-2PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 136.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 160.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.3 136.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.3 136.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 97.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/q3c_16-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 136.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 136.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 149.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 q3c_16 q3c_16-2.0.1-1PGDG.rhel9.x86_64.rpm pgdg 2.0.1 103.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/q3c_16-2.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 110.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.3-2PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 97.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 97.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.3 97.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.3 97.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 94.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/q3c_16-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 108.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 103.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 107.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 q3c_16 q3c_16-2.0.1-1PGDG.rhel9.aarch64.rpm pgdg 2.0.1 105.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/q3c_16-2.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 141.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.3-2PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 153.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 153.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.3 160.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.3 154.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 133.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/q3c_16-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 115.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 112.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 114.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 q3c_16 q3c_16-2.0.1-1PGDG.rhel10.x86_64.rpm pgdg 2.0.1 127.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/q3c_16-2.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 88.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.3-2PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 107.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 107.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.3 107.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.3-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.3 107.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 128.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/q3c_16-2.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 132.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 132.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 132.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 q3c_16 q3c_16-2.0.1-1PGDG.rhel10.aarch64.rpm pgdg 2.0.1 107.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/q3c_16-2.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 135.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg12+1_amd64.deb pgdg 2.0.4 130.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg12+1_amd64.deb pgdg 2.0.3 132.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 164.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg12+1_arm64.deb pgdg 2.0.4 151.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg12+1_arm64.deb pgdg 2.0.3 159.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 139.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg13+1_amd64.deb pgdg 2.0.4 143.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg13+1_amd64.deb pgdg 2.0.3 137.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 152.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg13+1_arm64.deb pgdg 2.0.4 153.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg13+1_arm64.deb pgdg 2.0.3 159.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 137.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg22.04+1_amd64.deb pgdg 2.0.4 133.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg22.04+1_amd64.deb pgdg 2.0.3 147.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 157.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg22.04+1_arm64.deb pgdg 2.0.4 154.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg22.04+1_arm64.deb pgdg 2.0.3 149.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 147.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg24.04+1_amd64.deb pgdg 2.0.4 135.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg24.04+1_amd64.deb pgdg 2.0.3 164.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 149.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg24.04+1_arm64.deb pgdg 2.0.4 161.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg24.04+1_arm64.deb pgdg 2.0.3 142.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 156.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg26.04+1_amd64.deb pgdg 2.0.4 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg26.04+1_amd64.deb pgdg 2.0.3 163.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 154.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.4-1.pgdg26.04+1_arm64.deb pgdg 2.0.4 149.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-q3c postgresql-16-q3c_2.0.3-1.pgdg26.04+1_arm64.deb pgdg 2.0.3 154.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-16-q3c_2.0.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 q3c_15 q3c_15-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 106.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/q3c_15-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 q3c_15 q3c_15-2.0.3-2PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 104.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/q3c_15-2.0.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 104.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/q3c_15-2.0.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 q3c_15 q3c_15-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 98.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/q3c_15-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 103.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/q3c_15-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 q3c_15 q3c_15-2.0.1-1PGDG.rhel8.x86_64.rpm pgdg 2.0.1 102.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/q3c_15-2.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 q3c_15 q3c_15-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 101.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/q3c_15-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 q3c_15 q3c_15-2.0.3-2PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 99.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/q3c_15-2.0.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 99.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/q3c_15-2.0.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 q3c_15 q3c_15-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 93.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/q3c_15-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 98.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/q3c_15-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 q3c_15 q3c_15-2.0.1-1PGDG.rhel8.aarch64.rpm pgdg 2.0.1 97.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/q3c_15-2.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 136.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.3-2PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 120.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 111.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.3 120.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.3 120.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 109.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/q3c_15-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 118.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 140.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 140.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 q3c_15 q3c_15-2.0.1-1PGDG.rhel9.x86_64.rpm pgdg 2.0.1 109.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/q3c_15-2.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 102.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.3-2PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 95.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 95.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.3 95.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.3 95.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 102.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/q3c_15-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 109.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 108.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 108.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 q3c_15 q3c_15-2.0.1-1PGDG.rhel9.aarch64.rpm pgdg 2.0.1 103.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/q3c_15-2.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 112.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.3-2PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 112.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 112.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.3 112.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.3 113.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 106.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/q3c_15-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 112.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 112.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 112.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 q3c_15 q3c_15-2.0.1-1PGDG.rhel10.x86_64.rpm pgdg 2.0.1 92.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/q3c_15-2.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 111.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.3-2PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 97.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 97.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.3 97.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.3-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.3 97.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 100.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/q3c_15-2.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 112.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 113.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 113.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 q3c_15 q3c_15-2.0.1-1PGDG.rhel10.aarch64.rpm pgdg 2.0.1 104.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/q3c_15-2.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 130.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg12+1_amd64.deb pgdg 2.0.4 133.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg12+1_amd64.deb pgdg 2.0.3 137.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 127.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg12+1_arm64.deb pgdg 2.0.4 152.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg12+1_arm64.deb pgdg 2.0.3 138.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 145.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg13+1_amd64.deb pgdg 2.0.4 149.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg13+1_amd64.deb pgdg 2.0.3 130.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 161.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg13+1_arm64.deb pgdg 2.0.4 130.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg13+1_arm64.deb pgdg 2.0.3 152.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 152.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg22.04+1_amd64.deb pgdg 2.0.4 137.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg22.04+1_amd64.deb pgdg 2.0.3 168.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 159.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg22.04+1_arm64.deb pgdg 2.0.4 161.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg22.04+1_arm64.deb pgdg 2.0.3 141.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 144.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg24.04+1_amd64.deb pgdg 2.0.4 139.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg24.04+1_amd64.deb pgdg 2.0.3 141.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 160.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg24.04+1_arm64.deb pgdg 2.0.4 161.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg24.04+1_arm64.deb pgdg 2.0.3 158.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 154.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg26.04+1_amd64.deb pgdg 2.0.4 148.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg26.04+1_amd64.deb pgdg 2.0.3 147.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 169.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.4-1.pgdg26.04+1_arm64.deb pgdg 2.0.4 163.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-q3c postgresql-15-q3c_2.0.3-1.pgdg26.04+1_arm64.deb pgdg 2.0.3 141.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-15-q3c_2.0.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 q3c_14 q3c_14-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 106.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/q3c_14-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 q3c_14 q3c_14-2.0.3-2PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 104.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/q3c_14-2.0.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.3 104.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/q3c_14-2.0.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 q3c_14 q3c_14-2.0.2-1PIGSTY.el8.x86_64.rpm pigsty 2.0.2 98.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/q3c_14-2.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.2 103.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/q3c_14-2.0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 q3c_14 q3c_14-2.0.1-1PGDG.rhel8.x86_64.rpm pgdg 2.0.1 102.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/q3c_14-2.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 q3c_14 q3c_14-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 101.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/q3c_14-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 q3c_14 q3c_14-2.0.3-2PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 99.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/q3c_14-2.0.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.3 99.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/q3c_14-2.0.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 q3c_14 q3c_14-2.0.2-1PIGSTY.el8.aarch64.rpm pigsty 2.0.2 93.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/q3c_14-2.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.2 98.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/q3c_14-2.0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 q3c_14 q3c_14-2.0.1-1PGDG.rhel8.aarch64.rpm pgdg 2.0.1 97.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/q3c_14-2.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 136.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.3-2PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 129.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.3 120.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.3 120.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.3 125.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.2-1PIGSTY.el9.x86_64.rpm pigsty 2.0.2 109.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/q3c_14-2.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.2 91.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.2 91.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.2 91.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 q3c_14 q3c_14-2.0.1-1PGDG.rhel9.x86_64.rpm pgdg 2.0.1 109.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/q3c_14-2.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 99.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.3-2PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 95.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.3 95.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.3 95.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.3 95.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.2-1PIGSTY.el9.aarch64.rpm pigsty 2.0.2 101.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/q3c_14-2.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.2 108.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.2 108.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.2 108.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 q3c_14 q3c_14-2.0.1-1PGDG.rhel9.aarch64.rpm pgdg 2.0.1 103.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/q3c_14-2.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 113.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.3-2PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 112.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.3 112.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.3 112.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.3 113.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.2-1PIGSTY.el10.x86_64.rpm pigsty 2.0.2 106.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/q3c_14-2.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.2 112.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.2 112.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.2 112.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 q3c_14 q3c_14-2.0.1-1PGDG.rhel10.x86_64.rpm pgdg 2.0.1 92.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/q3c_14-2.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 111.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.3-2PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 101.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.3 101.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.3 101.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.3-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.3 101.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.2-1PIGSTY.el10.aarch64.rpm pigsty 2.0.2 127.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/q3c_14-2.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.2 115.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.2 115.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.2 115.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 q3c_14 q3c_14-2.0.1-1PGDG.rhel10.aarch64.rpm pgdg 2.0.1 104.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/q3c_14-2.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 141.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg12+1_amd64.deb pgdg 2.0.4 144.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg12+1_amd64.deb pgdg 2.0.3 135.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 138.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg12+1_arm64.deb pgdg 2.0.4 157.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg12+1_arm64.deb pgdg 2.0.3 138.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 130.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg13+1_amd64.deb pgdg 2.0.4 131.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg13+1_amd64.deb pgdg 2.0.3 151.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 165.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg13+1_arm64.deb pgdg 2.0.4 127.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg13+1_arm64.deb pgdg 2.0.3 163.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 164.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg22.04+1_amd64.deb pgdg 2.0.4 135.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg22.04+1_amd64.deb pgdg 2.0.3 160.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 157.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg22.04+1_arm64.deb pgdg 2.0.4 156.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg22.04+1_arm64.deb pgdg 2.0.3 139.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 154.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg24.04+1_amd64.deb pgdg 2.0.4 135.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg24.04+1_amd64.deb pgdg 2.0.3 138.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 130.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg24.04+1_arm64.deb pgdg 2.0.4 151.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg24.04+1_arm64.deb pgdg 2.0.3 162.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 137.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg26.04+1_amd64.deb pgdg 2.0.4 160.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg26.04+1_amd64.deb pgdg 2.0.3 167.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 127.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.4-1.pgdg26.04+1_arm64.deb pgdg 2.0.4 151.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-q3c postgresql-14-q3c_2.0.3-1.pgdg26.04+1_arm64.deb pgdg 2.0.3 153.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-q3c/postgresql-14-q3c_2.0.3-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `q3c` using `pig build`:

```bash
pig build pkg q3c         # build RPM packages
```


## Install

You can install `q3c` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install q3c;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y q3c -v 18  # PG 18
pig ext install -y q3c -v 17  # PG 17
pig ext install -y q3c -v 16  # PG 16
pig ext install -y q3c -v 15  # PG 15
pig ext install -y q3c -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y q3c_18       # PG 18
dnf install -y q3c_17       # PG 17
dnf install -y q3c_16       # PG 16
dnf install -y q3c_15       # PG 15
dnf install -y q3c_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-q3c   # PG 18
apt install -y postgresql-17-q3c   # PG 17
apt install -y postgresql-16-q3c   # PG 16
apt install -y postgresql-15-q3c   # PG 15
apt install -y postgresql-14-q3c   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION q3c;
```




## Usage

> Source: [`segasai/q3c`](https://github.com/segasai/q3c) | [ADASS Paper](http://adsabs.harvard.edu/abs/2006ASPC..351..735K) | [ASCL](https://ascl.net/1905.008)

Q3C (Quad Tree Cube) is a PostgreSQL extension for fast sky-indexing of astronomical catalogues. It enables efficient spatial queries on spherical coordinates (right ascension and declination), including cone searches, ellipse searches, polygon queries, positional cross-matches, and nearest-neighbor lookups.

All angles (ra, dec, distances) are in **degrees**, proper motions in **mas/year**, and epochs in **years** (e.g. 2000.5, 2010.5). All Q3C function names start with the `q3c_` prefix.

### Table Preparation

To use Q3C, create a spatial index on your table with `ra` and `dec` columns (in degrees):

```sql
CREATE INDEX ON mytable (q3c_ang2ipix(ra, dec));
```

Optionally cluster the table by the index to ensure faster queries on large datasets:

```sql
CLUSTER mytable_q3c_ang2ipix_idx ON mytable;
```

Alternatively, reorder the table before indexing:

```sql
CREATE TABLE mytable1 AS SELECT * FROM mytable ORDER BY q3c_ang2ipix(ra, dec);
```

After indexing, analyze the table:

```sql
ANALYZE mytable;
```


## Functions

- `q3c_ang2ipix(ra, dec)` -- returns the ipix value (64-bit integer pixel identifier) for given ra and dec

- `q3c_dist(ra1, dec1, ra2, dec2)` -- returns the distance in degrees between two points

- `q3c_dist_pm(ra1, dec1, pmra1, pmdec1, cosdec_flag, epoch1, ra2, dec2, epoch2)` -- returns distance in degrees between two points, taking proper motion into account. The `cosdec_flag` (0 or 1) indicates whether the proper motion includes the cos(dec) term (1) or not (0).

- `q3c_join(ra1, dec1, ra2, dec2, radius)` -- returns true if (ra1, dec1) is within `radius` spherical distance of (ra2, dec2). Use when the index on `q3c_ang2ipix(ra2, dec2)` is created.

- `q3c_join_pm(ra1, dec1, pmra1, pmdec1, cosdec_flag, epoch1, ra2, dec2, epoch2, max_delta_epoch, radius)` -- like `q3c_join` but takes proper motion into account. `max_delta_epoch` is the maximum epoch difference possible between two tables.

- `q3c_ellipse_join(ra1, dec1, ra2, dec2, major, ratio, pa)` -- like `q3c_join`, except (ra1, dec1) must be within an ellipse with semi-major axis `major`, axis ratio `ratio`, and position angle `pa` (from north through east)

- `q3c_radial_query(ra, dec, center_ra, center_dec, radius)` -- returns true if (ra, dec) is within `radius` degrees of (center_ra, center_dec). Main function for cone searches. Requires index on `q3c_ang2ipix(ra, dec)`.

- `q3c_ellipse_query(ra, dec, center_ra, center_dec, maj_ax, axis_ratio, PA)` -- returns true if (ra, dec) is within the ellipse from (center_ra, center_dec), specified by semi-major axis, axis ratio, and positional angle.

- `q3c_poly_query(ra, dec, poly)` -- returns true if (ra, dec) is within the spherical polygon specified as an array of RA/DEC values or a PostgreSQL polygon type. Uses the index.

- `q3c_ipix2ang(ipix)` -- returns a two-element array of (ra, dec) corresponding to a given ipix

- `q3c_pixarea(ipix, bits)` -- returns the spherical area corresponding to a given ipix at the pixelisation level given by `bits` (1 is smallest, 30 is the cube face)

- `q3c_ipixcenter(ra, dec, bits)` -- returns the ipix value of the pixel center at certain pixel depth covering the specified (ra, dec)

- `q3c_in_poly(ra, dec, poly)` -- returns true/false if point is inside a polygon. Does **NOT** use the q3c index.

- `q3c_version()` -- returns the installed version of Q3C


## Examples

### Cone Search

Query all objects within 0.1 degrees of (ra, dec) = (11, 12):

```sql
SELECT * FROM mytable WHERE q3c_radial_query(ra, dec, 11, 12, 0.1);
```

The column names of the table must come first, and the search location after, otherwise the index will not be used.

Alternative cone search using `q3c_join` (can be faster for small tables):

```sql
SELECT * FROM mytable WHERE q3c_join(11, 12, ra, dec, 0.1);
```

### Ellipse Search

Search for objects within an ellipse centered at (10, 20) with semi-major axis 1 degree, axis ratio 0.5, and PA of 10 degrees:

```sql
SELECT * FROM mytable WHERE q3c_ellipse_query(ra, dec, 10, 20, 1, 0.5, 10);
```

### Polygon Search

Query objects inside a spherical polygon with vertices (0,0), (2,0), (2,1), (0,1):

```sql
SELECT * FROM mytable WHERE
    q3c_poly_query(ra, dec, ARRAY[0, 0, 2, 0, 2, 1, 0, 1]);
```

Using PostgreSQL polygon type:

```sql
SELECT * FROM mytable WHERE
    q3c_poly_query(ra, dec, '((0, 0), (2, 0), (2, 1), (0, 1))'::polygon);
```

### Positional Cross-Match

Cross-match `table1` and `table2` within 0.001 degrees. The index must exist on `q3c_ang2ipix(ra, dec)` of `table2`:

```sql
SELECT * FROM table1 AS a, table2 AS b WHERE
    q3c_join(a.ra, a.dec, b.ra, b.dec, 0.001);
```

The ra/dec columns from the indexed table must be the 3rd and 4th arguments. This returns **all** pairs within the matching distance, not just nearest neighbors.

With per-object error radius:

```sql
SELECT * FROM table1 AS a, table2 AS b WHERE
    q3c_join(a.ra, a.dec, b.ra, b.dec, a.err);
```

### Ellipse Cross-Match

Cross-match using elliptical error areas (e.g., matching within galaxy elliptical bodies):

```sql
SELECT * FROM table1 AS a, table2 AS b WHERE
    q3c_ellipse_join(a.ra, a.dec, b.ra, b.dec, a.maj_ax, a.axis_ratio, a.PA);
```

### Cross-Match with Proper Motion

Cross-match with proper motion correction. Assumes `table1` has `pmra`, `pmdec` (mas/yr) and `epoch` columns, pmra includes cos(dec) factor, and max epoch difference is 30 years:

```sql
SELECT * FROM table1 AS a, table2 AS b WHERE
    q3c_join_pm(a.ra, a.dec, a.pmra, a.pmdec, 1,
    a.epoch, b.ra, b.dec, b.epoch, 30, 0.001);
```

### Nearest Neighbour (with NULLs for unmatched)

Returns the nearest neighbour for each row, with NULLs if no match exists within 1 arcsecond:

```sql
SELECT t.*, ss.* FROM mytable AS t
LEFT JOIN LATERAL (
    SELECT s.*
    FROM sdssdr9.phototag AS s
    WHERE q3c_join(t.ra, t.dec, s.ra, s.dec, 1./3600)
    ORDER BY q3c_dist(t.ra, t.dec, s.ra, s.dec) ASC
    LIMIT 1
) AS ss ON true;
```

### Nearest Neighbour (matched only)

Returns only objects that have neighbours:

```sql
SELECT t.*, ss.* FROM mytable AS t,
LATERAL (
    SELECT s.*
    FROM sdssdr9.phototag AS s
    WHERE q3c_join(t.ra, t.dec, s.ra, s.dec, 1./3600)
    ORDER BY q3c_dist(t.ra, t.dec, s.ra, s.dec) ASC
    LIMIT 1
) AS ss;
```

### Nearest Neighbour (CTE variant)

Uses a CTE with an object ID column (requires an index on the ID column):

```sql
WITH x AS MATERIALIZED (
    SELECT *, (
        SELECT objid FROM sdssdr9.phototag AS p
        WHERE q3c_join(m.ra, m.dec, p.ra, p.dec, 1./3600)
        ORDER BY q3c_dist(m.ra, m.dec, p.ra, p.dec) ASC
        LIMIT 1
    ) AS match_objid
    FROM mytable AS m
)
SELECT * FROM x, sdssdr9.phototag AS s WHERE x.match_objid = s.objid;
```

### Density Estimation

Estimate object density using pixelation depth of 25:

```sql
SELECT (q3c_ipix2ang(i))[1] AS ra,
       (q3c_ipix2ang(i))[2] AS dec,
       c,
       q3c_pixarea(i, 25) AS area
FROM (
    SELECT q3c_ipixcenter(ra, dec, 25) AS i, count(*) AS c
    FROM mytable
    GROUP BY i
) AS x;
```

Note: Q3C does not have uniform pixel areas (unlike HEALPIX).


## Limitations

- Querying very large polygons with diameter greater than ~25 degrees is not supported
- Polygons with more than 100 vertices are not supported


## Performance Tips

- Ensure correct argument order in Q3C functions (e.g., `q3c_radial_query(ra, dec, 120, 3, 1)` not `q3c_radial_query(120, 3, ra, dec, 1)`)
- Use `EXPLAIN` to verify the query plan uses bitmap scans on the Q3C index
- If the planner chooses a bad plan, try: `SET enable_mergejoin TO off; SET enable_seqscan TO off; SET enable_hashjoin TO off;`
- Cluster the table using the Q3C index for best performance
- When combining `q3c_join()` with additional filter clauses, use CTEs with `MATERIALIZED` to avoid plan issues:

```sql
WITH x AS MATERIALIZED (SELECT * FROM t1 WHERE t1.mag < 1),
     y AS (SELECT *, t2.mag AS t2mag FROM x, t2 WHERE q3c_join(x.ra, x.dec, t2.ra, t2.dec, 1./3600))
SELECT * FROM y WHERE t2mag > 33;
```
