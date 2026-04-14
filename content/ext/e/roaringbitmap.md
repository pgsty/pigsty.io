---
title: "roaringbitmap"
linkTitle: "roaringbitmap"
description: "support for Roaring Bitmaps"
weight: 3630
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ChenHuajun/pg_roaringbitmap">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ChenHuajun/pg_roaringbitmap</div>
    <div class="ext-card__desc">https://github.com/ChenHuajun/pg_roaringbitmap</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_roaringbitmap-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_roaringbitmap-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_roaringbitmap-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_roaringbitmap`**](/ext/e/roaringbitmap) | `1.1.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3630  | [**`roaringbitmap`**](/ext/e/roaringbitmap) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`rum`](/ext/e/rum) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgfaceting`](/ext/e/pgfaceting) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_roaringbitmap` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_roaringbitmap_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-roaringbitmap` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.0 4 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 |
| el8.aarch64 | AVAIL PIGSTY 1.1.0 4 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 |
| el9.x86_64 | AVAIL PIGSTY 1.1.0 4 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 |
| el9.aarch64 | AVAIL PIGSTY 1.1.0 4 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 4 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 4 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 | AVAIL PIGSTY 1.1.0 5 |
| d12.x86_64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| d12.aarch64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| d13.x86_64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| d13.aarch64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| u22.x86_64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| u22.aarch64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| u24.x86_64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| u24.aarch64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
@ el8.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 182.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roaringbitmap_18-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 171.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_roaringbitmap_18-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 170.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_roaringbitmap_18-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-0.5.5-1PGDG.rhel8.x86_64.rpm pgdg 0.5.5 159.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_roaringbitmap_18-0.5.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 153.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roaringbitmap_18-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 144.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_roaringbitmap_18-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 144.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_roaringbitmap_18-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-0.5.5-1PGDG.rhel8.aarch64.rpm pgdg 0.5.5 133.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_roaringbitmap_18-0.5.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 114.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roaringbitmap_18-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 116.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_roaringbitmap_18-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 116.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_roaringbitmap_18-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-0.5.5-1PGDG.rhel9.x86_64.rpm pgdg 0.5.5 84.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_roaringbitmap_18-0.5.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 101.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roaringbitmap_18-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 103.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_roaringbitmap_18-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 103.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_roaringbitmap_18-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-0.5.5-1PGDG.rhel9.aarch64.rpm pgdg 0.5.5 72.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_roaringbitmap_18-0.5.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 116.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roaringbitmap_18-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 118.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_roaringbitmap_18-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 118.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_roaringbitmap_18-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-0.5.5-1PGDG.rhel10.x86_64.rpm pgdg 0.5.5 86.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_roaringbitmap_18-0.5.5-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 102.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roaringbitmap_18-1.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 104.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_roaringbitmap_18-1.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 104.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_roaringbitmap_18-1.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_roaringbitmap_18 pg_roaringbitmap_18-0.5.5-1PGDG.rhel10.aarch64.rpm pgdg 0.5.5 73.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_roaringbitmap_18-0.5.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb pgdg 1.1.0 462.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb pgdg 1.1.0 420.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb pgdg 1.1.0 465.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb pgdg 1.1.0 421.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb pgdg 1.1.0 416.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb pgdg 1.1.0 384.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb pgdg 1.1.0 409.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-roaringbitmap postgresql-18-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb pgdg 1.1.0 378.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-18-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 182.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roaringbitmap_17-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 171.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_roaringbitmap_17-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 171.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_roaringbitmap_17-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.5-1PGDG.rhel8.x86_64.rpm pgdg 0.5.5 159.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_roaringbitmap_17-0.5.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.4-1PGDG.rhel8.x86_64.rpm pgdg 0.5.4 107.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_roaringbitmap_17-0.5.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 153.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roaringbitmap_17-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 144.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_roaringbitmap_17-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 144.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_roaringbitmap_17-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.5-1PGDG.rhel8.aarch64.rpm pgdg 0.5.5 133.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_roaringbitmap_17-0.5.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.4-1PGDG.rhel8.aarch64.rpm pgdg 0.5.4 98.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_roaringbitmap_17-0.5.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 114.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roaringbitmap_17-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 116.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_roaringbitmap_17-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 116.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_roaringbitmap_17-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.5-1PGDG.rhel9.x86_64.rpm pgdg 0.5.5 84.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_roaringbitmap_17-0.5.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.4-1PGDG.rhel9.x86_64.rpm pgdg 0.5.4 72.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_roaringbitmap_17-0.5.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 101.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roaringbitmap_17-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 103.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_roaringbitmap_17-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 102.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_roaringbitmap_17-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.5-1PGDG.rhel9.aarch64.rpm pgdg 0.5.5 72.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_roaringbitmap_17-0.5.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.4-1PGDG.rhel9.aarch64.rpm pgdg 0.5.4 69.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_roaringbitmap_17-0.5.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 116.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roaringbitmap_17-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 118.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_roaringbitmap_17-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 118.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_roaringbitmap_17-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.5-1PGDG.rhel10.x86_64.rpm pgdg 0.5.5 86.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_roaringbitmap_17-0.5.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.4-1PGDG.rhel10.x86_64.rpm pgdg 0.5.4 82.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_roaringbitmap_17-0.5.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 102.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roaringbitmap_17-1.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 104.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_roaringbitmap_17-1.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 104.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_roaringbitmap_17-1.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.5-1PGDG.rhel10.aarch64.rpm pgdg 0.5.5 73.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_roaringbitmap_17-0.5.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_roaringbitmap_17 pg_roaringbitmap_17-0.5.4-1PGDG.rhel10.aarch64.rpm pgdg 0.5.4 71.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_roaringbitmap_17-0.5.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb pgdg 1.1.0 462.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb pgdg 1.1.0 420.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb pgdg 1.1.0 464.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb pgdg 1.1.0 423.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb pgdg 1.1.0 448.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb pgdg 1.1.0 413.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb pgdg 1.1.0 410.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-roaringbitmap postgresql-17-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb pgdg 1.1.0 378.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-17-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 182.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roaringbitmap_16-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 171.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_roaringbitmap_16-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 171.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_roaringbitmap_16-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.5-1PGDG.rhel8.x86_64.rpm pgdg 0.5.5 159.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_roaringbitmap_16-0.5.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.4-1PGDG.rhel8.x86_64.rpm pgdg 0.5.4 107.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_roaringbitmap_16-0.5.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 153.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roaringbitmap_16-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 144.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_roaringbitmap_16-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 144.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_roaringbitmap_16-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.5-1PGDG.rhel8.aarch64.rpm pgdg 0.5.5 133.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_roaringbitmap_16-0.5.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.4-1PGDG.rhel8.aarch64.rpm pgdg 0.5.4 98.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_roaringbitmap_16-0.5.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 114.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roaringbitmap_16-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 116.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_roaringbitmap_16-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 116.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_roaringbitmap_16-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.5-1PGDG.rhel9.x86_64.rpm pgdg 0.5.5 84.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_roaringbitmap_16-0.5.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.4-1PGDG.rhel9.x86_64.rpm pgdg 0.5.4 72.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_roaringbitmap_16-0.5.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 101.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roaringbitmap_16-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 103.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_roaringbitmap_16-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 102.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_roaringbitmap_16-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.5-1PGDG.rhel9.aarch64.rpm pgdg 0.5.5 72.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_roaringbitmap_16-0.5.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.4-1PGDG.rhel9.aarch64.rpm pgdg 0.5.4 69.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_roaringbitmap_16-0.5.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 116.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roaringbitmap_16-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 118.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_roaringbitmap_16-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 118.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_roaringbitmap_16-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.5-1PGDG.rhel10.x86_64.rpm pgdg 0.5.5 86.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_roaringbitmap_16-0.5.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.4-1PGDG.rhel10.x86_64.rpm pgdg 0.5.4 82.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_roaringbitmap_16-0.5.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 102.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roaringbitmap_16-1.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 104.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_roaringbitmap_16-1.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 104.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_roaringbitmap_16-1.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.5-1PGDG.rhel10.aarch64.rpm pgdg 0.5.5 73.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_roaringbitmap_16-0.5.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_roaringbitmap_16 pg_roaringbitmap_16-0.5.4-1PGDG.rhel10.aarch64.rpm pgdg 0.5.4 71.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_roaringbitmap_16-0.5.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb pgdg 1.1.0 462.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb pgdg 1.1.0 420.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb pgdg 1.1.0 464.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb pgdg 1.1.0 423.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb pgdg 1.1.0 447.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb pgdg 1.1.0 413.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb pgdg 1.1.0 410.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-roaringbitmap postgresql-16-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb pgdg 1.1.0 379.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-16-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 188.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roaringbitmap_15-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 174.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_roaringbitmap_15-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 174.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_roaringbitmap_15-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.5-1PGDG.rhel8.x86_64.rpm pgdg 0.5.5 162.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_roaringbitmap_15-0.5.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.4-1PGDG.rhel8.x86_64.rpm pgdg 0.5.4 109.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_roaringbitmap_15-0.5.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 158.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roaringbitmap_15-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 146.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_roaringbitmap_15-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 146.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_roaringbitmap_15-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.5-1PGDG.rhel8.aarch64.rpm pgdg 0.5.5 135.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_roaringbitmap_15-0.5.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.4-1PGDG.rhel8.aarch64.rpm pgdg 0.5.4 99.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_roaringbitmap_15-0.5.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 176.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roaringbitmap_15-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 175.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_roaringbitmap_15-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 174.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_roaringbitmap_15-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.5-1PGDG.rhel9.x86_64.rpm pgdg 0.5.5 161.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_roaringbitmap_15-0.5.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.4-1PGDG.rhel9.x86_64.rpm pgdg 0.5.4 114.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_roaringbitmap_15-0.5.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 156.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roaringbitmap_15-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 154.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_roaringbitmap_15-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 154.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_roaringbitmap_15-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.5-1PGDG.rhel9.aarch64.rpm pgdg 0.5.5 142.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_roaringbitmap_15-0.5.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.4-1PGDG.rhel9.aarch64.rpm pgdg 0.5.4 105.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_roaringbitmap_15-0.5.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 181.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roaringbitmap_15-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 181.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_roaringbitmap_15-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 181.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_roaringbitmap_15-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.5-1PGDG.rhel10.x86_64.rpm pgdg 0.5.5 167.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_roaringbitmap_15-0.5.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.4-1PGDG.rhel10.x86_64.rpm pgdg 0.5.4 121.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_roaringbitmap_15-0.5.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 159.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roaringbitmap_15-1.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 157.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_roaringbitmap_15-1.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 158.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_roaringbitmap_15-1.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.5-1PGDG.rhel10.aarch64.rpm pgdg 0.5.5 145.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_roaringbitmap_15-0.5.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_roaringbitmap_15 pg_roaringbitmap_15-0.5.4-1PGDG.rhel10.aarch64.rpm pgdg 0.5.4 108.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_roaringbitmap_15-0.5.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb pgdg 1.1.0 464.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb pgdg 1.1.0 423.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb pgdg 1.1.0 467.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb pgdg 1.1.0 425.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb pgdg 1.1.0 499.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb pgdg 1.1.0 455.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb pgdg 1.1.0 462.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-roaringbitmap postgresql-15-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb pgdg 1.1.0 422.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-15-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 188.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roaringbitmap_14-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 174.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_roaringbitmap_14-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 174.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_roaringbitmap_14-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.5-1PGDG.rhel8.x86_64.rpm pgdg 0.5.5 162.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_roaringbitmap_14-0.5.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.4-1PGDG.rhel8.x86_64.rpm pgdg 0.5.4 109.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_roaringbitmap_14-0.5.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 158.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roaringbitmap_14-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 146.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_roaringbitmap_14-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 146.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_roaringbitmap_14-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.5-1PGDG.rhel8.aarch64.rpm pgdg 0.5.5 135.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_roaringbitmap_14-0.5.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.4-1PGDG.rhel8.aarch64.rpm pgdg 0.5.4 99.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_roaringbitmap_14-0.5.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 177.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roaringbitmap_14-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 175.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_roaringbitmap_14-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 174.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_roaringbitmap_14-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.5-1PGDG.rhel9.x86_64.rpm pgdg 0.5.5 161.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_roaringbitmap_14-0.5.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.4-1PGDG.rhel9.x86_64.rpm pgdg 0.5.4 114.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_roaringbitmap_14-0.5.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 156.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roaringbitmap_14-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 155.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_roaringbitmap_14-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 155.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_roaringbitmap_14-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.5-1PGDG.rhel9.aarch64.rpm pgdg 0.5.5 142.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_roaringbitmap_14-0.5.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.4-1PGDG.rhel9.aarch64.rpm pgdg 0.5.4 105.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_roaringbitmap_14-0.5.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 181.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roaringbitmap_14-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 180.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_roaringbitmap_14-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 181.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_roaringbitmap_14-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.5-1PGDG.rhel10.x86_64.rpm pgdg 0.5.5 167.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_roaringbitmap_14-0.5.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.4-1PGDG.rhel10.x86_64.rpm pgdg 0.5.4 121.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_roaringbitmap_14-0.5.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 159.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roaringbitmap_14-1.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 157.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_roaringbitmap_14-1.1.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 157.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_roaringbitmap_14-1.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.5-1PGDG.rhel10.aarch64.rpm pgdg 0.5.5 145.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_roaringbitmap_14-0.5.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_roaringbitmap_14 pg_roaringbitmap_14-0.5.4-1PGDG.rhel10.aarch64.rpm pgdg 0.5.4 108.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_roaringbitmap_14-0.5.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb pgdg 1.1.0 464.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb pgdg 1.1.0 423.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb pgdg 1.1.0 466.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb pgdg 1.1.0 425.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb pgdg 1.1.0 498.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb pgdg 1.1.0 455.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb pgdg 1.1.0 462.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-roaringbitmap postgresql-14-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb pgdg 1.1.0 421.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-roaringbitmap/postgresql-14-roaringbitmap_1.1.0-1.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_roaringbitmap` using `pig build`:

```bash
pig build pkg pg_roaringbitmap         # build RPM packages
```


## Install

You can install `pg_roaringbitmap` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_roaringbitmap;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_roaringbitmap -v 18  # PG 18
pig ext install -y pg_roaringbitmap -v 17  # PG 17
pig ext install -y pg_roaringbitmap -v 16  # PG 16
pig ext install -y pg_roaringbitmap -v 15  # PG 15
pig ext install -y pg_roaringbitmap -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_roaringbitmap_18       # PG 18
dnf install -y pg_roaringbitmap_17       # PG 17
dnf install -y pg_roaringbitmap_16       # PG 16
dnf install -y pg_roaringbitmap_15       # PG 15
dnf install -y pg_roaringbitmap_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-roaringbitmap   # PG 18
apt install -y postgresql-17-roaringbitmap   # PG 17
apt install -y postgresql-16-roaringbitmap   # PG 16
apt install -y postgresql-15-roaringbitmap   # PG 15
apt install -y postgresql-14-roaringbitmap   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION roaringbitmap;
```



## Usage

> [roaringbitmap: compressed bitmap data type for PostgreSQL](https://github.com/ChenHuajun/pg_roaringbitmap)

The `roaringbitmap` extension provides compressed bitmap data types for efficient set operations on integer collections.

```sql
CREATE EXTENSION roaringbitmap;
SET roaringbitmap.output_format = 'array';

SELECT rb_build('{1,2,3,4,5}'::int[]);  -- {1,2,3,4,5}
```

### Data Types

- **`roaringbitmap`**: 32-bit bitmap, range [0, 4294967296)
- **`roaringbitmap64`**: 64-bit bitmap, range [0, 18446744073709551615)

Output format controlled by: `SET roaringbitmap.output_format = 'array'` or `'bytea'`

### Operators

| Operator | Description |
|----------|-------------|
| `\|` | Bitwise OR (union) |
| `&` | Bitwise AND (intersection) |
| `#` | Bitwise XOR |
| `-` | Difference (ANDNOT) |
| `\|` (with int) | Add element |
| `-` (with int) | Remove element |
| `@>` | Contains |
| `<@` | Is contained by |
| `&&` | Overlap |
| `=`, `<>` | Equality/inequality |

### Core Functions

```sql
-- Construction
SELECT rb_build(ARRAY[1,2,3,4,5]);

-- Analysis
SELECT rb_cardinality(rb_build('{1,2,3}'::int[]));   -- 3
SELECT rb_to_array(rb_build('{1,2,3}'::int[]));      -- {1,2,3}
SELECT rb_iterate(rb_build('{1,2,3}'::int[]));        -- returns set

-- Set operation cardinalities
SELECT rb_and_cardinality(a, b);
SELECT rb_or_cardinality(a, b);
SELECT rb_xor_cardinality(a, b);
SELECT rb_andnot_cardinality(a, b);

-- Range operations
SELECT rb_range(bitmap, 2, 5);   -- extract range [2, 5)
SELECT rb_fill(bitmap, 0, 10);   -- add range [0, 10)
SELECT rb_clear(bitmap, 3, 7);   -- remove range [3, 7)
SELECT rb_flip(bitmap, 0, 10);   -- toggle range [0, 10)

-- Element access
SELECT rb_min(bitmap);            -- minimum element
SELECT rb_max(bitmap);            -- maximum element
SELECT rb_rank(bitmap, 5);        -- count elements <= 5
SELECT rb_index(bitmap, 3);       -- 0-based position of element

-- Utilities
SELECT rb_is_empty(bitmap);
SELECT rb_jaccard_dist(a, b);     -- Jaccard similarity
```

### Aggregate Functions

```sql
SELECT rb_build_agg(id) FROM table;       -- build from rows
SELECT rb_or_agg(bitmap) FROM table;      -- union all bitmaps
SELECT rb_and_agg(bitmap) FROM table;     -- intersect all bitmaps
SELECT rb_xor_agg(bitmap) FROM table;     -- XOR all bitmaps
```

64-bit equivalents use the `rb64_` prefix.
