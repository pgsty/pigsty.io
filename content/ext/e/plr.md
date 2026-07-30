---
title: "plr"
linkTitle: "plr"
description: "load R interpreter and execute R script from within a database"
weight: 3100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgres-plr/plr">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgres-plr/plr</div>
    <div class="ext-card__desc">https://github.com/postgres-plr/plr</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plr`**](/ext/e/plr) | `8.4.8.6` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3100  | [**`plr`**](/ext/e/plr) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plxslt`](/ext/e/plxslt) [`pltcl`](/ext/e/pltcl) [`plperl`](/ext/e/plperl) [`pljava`](/ext/e/pljava) [`plsh`](/ext/e/plsh) [`plpython3u`](/ext/e/plpython3u) [`plpgsql`](/ext/e/plpgsql) [`plperlu`](/ext/e/plperlu) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> missing el10.x86_64


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `8.4.8.6` | {{< pgvers "18,17,16,15,14" >}} | `plr` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `8.4.8.6` | {{< pgvers "18,17,16,15,14" >}} | `plr_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `8.4.8.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plr` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 4 | AVAIL PGDG 8.4.8.6 5 | AVAIL PGDG 8.4.8.6 6 | AVAIL PGDG 8.4.8.6 7 |
| el8.aarch64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 4 | AVAIL PGDG 8.4.8.6 5 | AVAIL PGDG 8.4.8.6 5 | AVAIL PGDG 8.4.8.6 5 |
| el9.x86_64 | AVAIL PGDG 8.4.8.6 6 | AVAIL PGDG 8.4.8.6 7 | AVAIL PGDG 8.4.8.6 10 | AVAIL PGDG 8.4.8.6 9 | AVAIL PGDG 8.4.8.6 9 |
| el9.aarch64 | AVAIL PGDG 8.4.8.6 6 | AVAIL PGDG 8.4.8.6 7 | AVAIL PGDG 8.4.8.6 8 | AVAIL PGDG 8.4.8.6 8 | AVAIL PGDG 8.4.8.6 8 |
| el10.x86_64 | AVAIL PGDG 8.4.8.6 5 | AVAIL PGDG 8.4.8.6 5 | AVAIL PGDG 8.4.8.6 5 | AVAIL PGDG 8.4.8.6 5 | AVAIL PGDG 8.4.8.6 5 |
| el10.aarch64 | AVAIL PGDG 8.4.8.6 6 | AVAIL PGDG 8.4.8.6 6 | AVAIL PGDG 8.4.8.6 6 | AVAIL PGDG 8.4.8.6 6 | AVAIL PGDG 8.4.8.6 6 |
| d12.x86_64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| d12.aarch64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| d13.x86_64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| d13.aarch64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| u22.x86_64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| u22.aarch64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| u24.x86_64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| u24.aarch64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| u26.x86_64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
| u26.aarch64 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 | AVAIL PGDG 8.4.8.6 3 |
@ el8.x86_64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.6 77.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plr_18-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.4 77.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plr_18-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 plr_18 plr_18-8.4.8-1PGDG.rhel8.x86_64.rpm pgdg 8.4.8 76.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plr_18-8.4.8-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.6 75.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plr_18-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.4 75.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plr_18-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 plr_18 plr_18-8.4.8-1PGDG.rhel8.aarch64.rpm pgdg 8.4.8 73.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plr_18-8.4.8-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm pgdg 8.4.8.6 75.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plr_18-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.6 75.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plr_18-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.6 75.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plr_18-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.4 75.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plr_18-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.4 75.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plr_18-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 plr_18 plr_18-8.4.8-1PGDG.rhel9.x86_64.rpm pgdg 8.4.8 73.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plr_18-8.4.8-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm pgdg 8.4.8.6 73.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plr_18-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.6 73.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plr_18-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.6 73.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plr_18-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.4 73.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plr_18-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.4 73.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plr_18-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 plr_18 plr_18-8.4.8-1PGDG.rhel9.aarch64.rpm pgdg 8.4.8 72.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plr_18-8.4.8-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm pgdg 8.4.8.6 76.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plr_18-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.6 76.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plr_18-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.6 77.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plr_18-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.4 76.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plr_18-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.4 76.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plr_18-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 8.4.8.6 74.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plr_18-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.6 74.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plr_18-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 plr_18 plr_18-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.6 74.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plr_18-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.4 74.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plr_18-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 plr_18 plr_18-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.4 74.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plr_18-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 plr_18 plr_18-8.4.8-1PGDG.rhel10.aarch64.rpm pgdg 8.4.8 73.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plr_18-8.4.8-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg12+1_amd64.deb pgdg 8.4.8.6 135.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg12+1_amd64.deb pgdg 8.4.8.4 135.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg12+1_amd64.deb pgdg 8.4.8.3 135.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg12+1_arm64.deb pgdg 8.4.8.6 132.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg12+1_arm64.deb pgdg 8.4.8.4 132.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg12+1_arm64.deb pgdg 8.4.8.3 132.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg13+1_amd64.deb pgdg 8.4.8.6 136.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg13+1_amd64.deb pgdg 8.4.8.4 136.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg13+1_amd64.deb pgdg 8.4.8.3 136.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg13+1_arm64.deb pgdg 8.4.8.6 132.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg13+1_arm64.deb pgdg 8.4.8.4 132.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg13+1_arm64.deb pgdg 8.4.8.3 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.6 131.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.4 131.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.3 131.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.6 128.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.4 128.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.3 128.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.6 127.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.4 127.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.3 127.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.6 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.4 123.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.3 123.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.6 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.4 125.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.3 125.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.6 122.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.4 122.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-plr postgresql-18-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.3 122.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-18-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.6 77.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plr_17-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.4 77.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plr_17-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 plr_17 plr_17-8.4.8-1PGDG.rhel8.x86_64.rpm pgdg 8.4.8 76.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plr_17-8.4.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 plr_17 plr_17-8.4.7-1PGDG.rhel8.x86_64.rpm pgdg 8.4.7 75.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plr_17-8.4.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.6 75.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plr_17-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.4 75.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plr_17-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 plr_17 plr_17-8.4.8-1PGDG.rhel8.aarch64.rpm pgdg 8.4.8 73.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plr_17-8.4.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 plr_17 plr_17-8.4.7-1PGDG.rhel8.aarch64.rpm pgdg 8.4.7 73.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plr_17-8.4.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm pgdg 8.4.8.6 75.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plr_17-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.6 75.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plr_17-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.6 75.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plr_17-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.4 74.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plr_17-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.4 75.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plr_17-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 plr_17 plr_17-8.4.8-1PGDG.rhel9.x86_64.rpm pgdg 8.4.8 73.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plr_17-8.4.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 plr_17 plr_17-8.4.7-1PGDG.rhel9.x86_64.rpm pgdg 8.4.7 73.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plr_17-8.4.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm pgdg 8.4.8.6 73.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plr_17-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.6 73.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plr_17-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.6 73.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plr_17-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.4 73.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plr_17-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.4 73.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plr_17-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 plr_17 plr_17-8.4.8-1PGDG.rhel9.aarch64.rpm pgdg 8.4.8 72.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plr_17-8.4.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 plr_17 plr_17-8.4.7-1PGDG.rhel9.aarch64.rpm pgdg 8.4.7 72.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plr_17-8.4.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm pgdg 8.4.8.6 76.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plr_17-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.6 76.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plr_17-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.6 77.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plr_17-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.4 76.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plr_17-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.4 76.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plr_17-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 8.4.8.6 74.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plr_17-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.6 74.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plr_17-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 plr_17 plr_17-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.6 74.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plr_17-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.4 74.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plr_17-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 plr_17 plr_17-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.4 74.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plr_17-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 plr_17 plr_17-8.4.8-1PGDG.rhel10.aarch64.rpm pgdg 8.4.8 73.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plr_17-8.4.8-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg12+1_amd64.deb pgdg 8.4.8.6 135.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg12+1_amd64.deb pgdg 8.4.8.4 135.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg12+1_amd64.deb pgdg 8.4.8.3 135.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg12+1_arm64.deb pgdg 8.4.8.6 132.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg12+1_arm64.deb pgdg 8.4.8.4 132.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg12+1_arm64.deb pgdg 8.4.8.3 132.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg13+1_amd64.deb pgdg 8.4.8.6 136.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg13+1_amd64.deb pgdg 8.4.8.4 135.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg13+1_amd64.deb pgdg 8.4.8.3 135.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg13+1_arm64.deb pgdg 8.4.8.6 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg13+1_arm64.deb pgdg 8.4.8.4 132.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg13+1_arm64.deb pgdg 8.4.8.3 132.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.6 155.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.4 155.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.3 155.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.6 152.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.4 152.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.3 152.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.6 127.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.4 127.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.3 127.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.6 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.4 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.3 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.6 125.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.4 125.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.3 125.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.6 122.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.4 122.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-plr postgresql-17-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.3 122.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-17-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.6 77.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plr_16-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.4 77.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plr_16-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 plr_16 plr_16-8.4.8-1PGDG.rhel8.x86_64.rpm pgdg 8.4.8 76.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plr_16-8.4.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 plr_16 plr_16-8.4.7-1PGDG.rhel8.x86_64.rpm pgdg 8.4.7 75.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plr_16-8.4.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 plr_16 plr_16-8.4.6-1PGDG.rhel8.x86_64.rpm pgdg 8.4.6 74.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plr_16-8.4.6-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.6 75.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plr_16-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.4 75.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plr_16-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 plr_16 plr_16-8.4.8-1PGDG.rhel8.aarch64.rpm pgdg 8.4.8 73.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plr_16-8.4.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 plr_16 plr_16-8.4.7-1PGDG.rhel8.aarch64.rpm pgdg 8.4.7 73.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plr_16-8.4.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 plr_16 plr_16-8.4.6-1PGDG.rhel8.aarch64.rpm pgdg 8.4.6 72.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plr_16-8.4.6-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm pgdg 8.4.8.6 75.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.6 75.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.6 75.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.4 74.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.4 75.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.8-1PGDG.rhel9.x86_64.rpm pgdg 8.4.8 73.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.7-1PGDG.rhel9.x86_64.rpm pgdg 8.4.7 73.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.6-1PGDG.rhel9.x86_64.rpm pgdg 8.4.6 72.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plr_16-8.4.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.6-1PGDG.rhel9.x86_64.rpm pgdg 8.4.6 73.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_16-8.4.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 plr_16 plr_16-8.4.6-1PGDG.rhel9.x86_64.rpm pgdg 8.4.6 73.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_16-8.4.6-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm pgdg 8.4.8.6 73.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.6 73.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.6 73.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.4 73.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.4 73.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.8-1PGDG.rhel9.aarch64.rpm pgdg 8.4.8 72.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.7-1PGDG.rhel9.aarch64.rpm pgdg 8.4.7 72.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 plr_16 plr_16-8.4.6-1PGDG.rhel9.aarch64.rpm pgdg 8.4.6 71.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plr_16-8.4.6-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm pgdg 8.4.8.6 76.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plr_16-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.6 76.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plr_16-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.6 77.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plr_16-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.4 76.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plr_16-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.4 76.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plr_16-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 8.4.8.6 74.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plr_16-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.6 74.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plr_16-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 plr_16 plr_16-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.6 74.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plr_16-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.4 74.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plr_16-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 plr_16 plr_16-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.4 74.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plr_16-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 plr_16 plr_16-8.4.8-1PGDG.rhel10.aarch64.rpm pgdg 8.4.8 73.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plr_16-8.4.8-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg12+1_amd64.deb pgdg 8.4.8.6 136.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg12+1_amd64.deb pgdg 8.4.8.4 135.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg12+1_amd64.deb pgdg 8.4.8.3 135.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg12+1_arm64.deb pgdg 8.4.8.6 132.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg12+1_arm64.deb pgdg 8.4.8.4 132.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg12+1_arm64.deb pgdg 8.4.8.3 132.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg13+1_amd64.deb pgdg 8.4.8.6 136.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg13+1_amd64.deb pgdg 8.4.8.4 135.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg13+1_amd64.deb pgdg 8.4.8.3 135.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg13+1_arm64.deb pgdg 8.4.8.6 132.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg13+1_arm64.deb pgdg 8.4.8.4 132.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg13+1_arm64.deb pgdg 8.4.8.3 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.6 151.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.4 151.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.3 151.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.6 148.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.4 148.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.3 148.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.6 127.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.4 127.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.3 127.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.6 123.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.4 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.3 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.6 125.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.4 125.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.3 125.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.6 122.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.4 122.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-plr postgresql-16-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.3 122.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-16-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.6 78.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plr_15-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.4 77.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plr_15-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 plr_15 plr_15-8.4.8-1PGDG.rhel8.x86_64.rpm pgdg 8.4.8 76.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plr_15-8.4.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 plr_15 plr_15-8.4.7-1PGDG.rhel8.x86_64.rpm pgdg 8.4.7 76.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plr_15-8.4.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 plr_15 plr_15-8.4.6-1PGDG.rhel8.x86_64.rpm pgdg 8.4.6 75.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plr_15-8.4.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 plr_15 plr_15-8.4.5-1.rhel8.x86_64.rpm pgdg 8.4.5 167.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plr_15-8.4.5-1.rhel8.x86_64.rpm
@ el8.aarch64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.6 75.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plr_15-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.4 75.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plr_15-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 plr_15 plr_15-8.4.8-1PGDG.rhel8.aarch64.rpm pgdg 8.4.8 74.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plr_15-8.4.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 plr_15 plr_15-8.4.7-1PGDG.rhel8.aarch64.rpm pgdg 8.4.7 73.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plr_15-8.4.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 plr_15 plr_15-8.4.6-1PGDG.rhel8.aarch64.rpm pgdg 8.4.6 73.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plr_15-8.4.6-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm pgdg 8.4.8.6 76.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.6 76.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.6 76.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.4 75.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.4 75.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.8-1PGDG.rhel9.x86_64.rpm pgdg 8.4.8 74.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.7-1PGDG.rhel9.x86_64.rpm pgdg 8.4.7 74.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.6-1PGDG.rhel9.x86_64.rpm pgdg 8.4.6 73.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 plr_15 plr_15-8.4.5-1.rhel9.x86_64.rpm pgdg 8.4.5 167.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plr_15-8.4.5-1.rhel9.x86_64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm pgdg 8.4.8.6 74.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.6 74.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.6 74.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.4 73.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.4 73.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.8-1PGDG.rhel9.aarch64.rpm pgdg 8.4.8 72.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.7-1PGDG.rhel9.aarch64.rpm pgdg 8.4.7 72.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 plr_15 plr_15-8.4.6-1PGDG.rhel9.aarch64.rpm pgdg 8.4.6 71.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plr_15-8.4.6-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm pgdg 8.4.8.6 77.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plr_15-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.6 77.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plr_15-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.6 77.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plr_15-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.4 76.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plr_15-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.4 77.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plr_15-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 8.4.8.6 75.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plr_15-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.6 75.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plr_15-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 plr_15 plr_15-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.6 75.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plr_15-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.4 74.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plr_15-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 plr_15 plr_15-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.4 74.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plr_15-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 plr_15 plr_15-8.4.8-1PGDG.rhel10.aarch64.rpm pgdg 8.4.8 74.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plr_15-8.4.8-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg12+1_amd64.deb pgdg 8.4.8.6 136.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg12+1_amd64.deb pgdg 8.4.8.4 136.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg12+1_amd64.deb pgdg 8.4.8.3 136.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg12+1_arm64.deb pgdg 8.4.8.6 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg12+1_arm64.deb pgdg 8.4.8.4 132.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg12+1_arm64.deb pgdg 8.4.8.3 132.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg13+1_amd64.deb pgdg 8.4.8.6 136.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg13+1_amd64.deb pgdg 8.4.8.4 136.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg13+1_amd64.deb pgdg 8.4.8.3 136.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg13+1_arm64.deb pgdg 8.4.8.6 132.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg13+1_arm64.deb pgdg 8.4.8.4 132.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg13+1_arm64.deb pgdg 8.4.8.3 132.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.6 151.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.4 151.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.3 151.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.6 148.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.4 148.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.3 148.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.6 127.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.4 127.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.3 127.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.6 123.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.4 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.3 123.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.6 125.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.4 125.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.3 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.6 122.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.4 122.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-plr postgresql-15-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.3 122.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-15-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.6 78.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plr_14-8.4.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 8.4.8.4 77.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plr_14-8.4.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 plr_14 plr_14-8.4.8-1PGDG.rhel8.x86_64.rpm pgdg 8.4.8 76.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plr_14-8.4.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 plr_14 plr_14-8.4.7-1PGDG.rhel8.x86_64.rpm pgdg 8.4.7 76.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plr_14-8.4.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 plr_14 plr_14-8.4.6-1PGDG.rhel8.x86_64.rpm pgdg 8.4.6 75.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plr_14-8.4.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 plr_14 plr_14-8.4.5-1.rhel8.x86_64.rpm pgdg 8.4.5 166.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plr_14-8.4.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 plr_14 plr_14-8.4.3-1.rhel8.x86_64.rpm pgdg 8.4.3 166.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plr_14-8.4.3-1.rhel8.x86_64.rpm
@ el8.aarch64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.6 75.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plr_14-8.4.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 8.4.8.4 75.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plr_14-8.4.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 plr_14 plr_14-8.4.8-1PGDG.rhel8.aarch64.rpm pgdg 8.4.8 74.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plr_14-8.4.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 plr_14 plr_14-8.4.7-1PGDG.rhel8.aarch64.rpm pgdg 8.4.7 73.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plr_14-8.4.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 plr_14 plr_14-8.4.6-1PGDG.rhel8.aarch64.rpm pgdg 8.4.6 73.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plr_14-8.4.6-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm pgdg 8.4.8.6 75.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.8.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.6 75.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.8.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.6 76.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.8.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm pgdg 8.4.8.4 75.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.8.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 8.4.8.4 75.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.8-1PGDG.rhel9.x86_64.rpm pgdg 8.4.8 74.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.7-1PGDG.rhel9.x86_64.rpm pgdg 8.4.7 74.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.6-1PGDG.rhel9.x86_64.rpm pgdg 8.4.6 73.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 plr_14 plr_14-8.4.5-1.rhel9.x86_64.rpm pgdg 8.4.5 167.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plr_14-8.4.5-1.rhel9.x86_64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm pgdg 8.4.8.6 74.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.8.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.6 74.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.8.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.6 74.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.8.6-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 8.4.8.4 73.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 8.4.8.4 73.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.8-1PGDG.rhel9.aarch64.rpm pgdg 8.4.8 72.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.7-1PGDG.rhel9.aarch64.rpm pgdg 8.4.7 72.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 plr_14 plr_14-8.4.6-1PGDG.rhel9.aarch64.rpm pgdg 8.4.6 71.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plr_14-8.4.6-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm pgdg 8.4.8.6 77.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plr_14-8.4.8.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.6 77.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plr_14-8.4.8.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.6 77.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plr_14-8.4.8.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 8.4.8.4 76.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plr_14-8.4.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 8.4.8.4 77.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plr_14-8.4.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 8.4.8.6 75.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plr_14-8.4.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.6 75.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plr_14-8.4.8.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 plr_14 plr_14-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.6 75.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plr_14-8.4.8.6-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 8.4.8.4 74.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plr_14-8.4.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 plr_14 plr_14-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 8.4.8.4 74.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plr_14-8.4.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 plr_14 plr_14-8.4.8-1PGDG.rhel10.aarch64.rpm pgdg 8.4.8 74.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plr_14-8.4.8-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg12+1_amd64.deb pgdg 8.4.8.6 136.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg12+1_amd64.deb pgdg 8.4.8.4 136.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg12+1_amd64.deb pgdg 8.4.8.3 136.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg12+1_arm64.deb pgdg 8.4.8.6 132.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg12+1_arm64.deb pgdg 8.4.8.4 132.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg12+1_arm64.deb pgdg 8.4.8.3 132.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg13+1_amd64.deb pgdg 8.4.8.6 136.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg13+1_amd64.deb pgdg 8.4.8.4 136.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg13+1_amd64.deb pgdg 8.4.8.3 136.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg13+1_arm64.deb pgdg 8.4.8.6 132.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg13+1_arm64.deb pgdg 8.4.8.4 132.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg13+1_arm64.deb pgdg 8.4.8.3 132.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.6 151.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.4 151.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb pgdg 8.4.8.3 151.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.6 148.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.4 148.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb pgdg 8.4.8.3 148.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.6 127.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.4 127.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb pgdg 8.4.8.3 127.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.6 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.4 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb pgdg 8.4.8.3 123.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.6 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.4 125.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb pgdg 8.4.8.3 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.6 122.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.4 122.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-plr postgresql-14-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb pgdg 8.4.8.3 122.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/plr/postgresql-14-plr_8.4.8.3-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `plr` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install plr;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y plr -v 18  # PG 18
pig ext install -y plr -v 17  # PG 17
pig ext install -y plr -v 16  # PG 16
pig ext install -y plr -v 15  # PG 15
pig ext install -y plr -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y plr_18       # PG 18
dnf install -y plr_17       # PG 17
dnf install -y plr_16       # PG 16
dnf install -y plr_15       # PG 15
dnf install -y plr_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-plr   # PG 18
apt install -y postgresql-17-plr   # PG 17
apt install -y postgresql-16-plr   # PG 16
apt install -y postgresql-15-plr   # PG 15
apt install -y postgresql-14-plr   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION plr;
```




## Usage

> [plr: load R interpreter and execute R script from within a database](https://github.com/postgres-plr/plr)

`plr` enables writing PostgreSQL functions in the R programming language, providing full access to R's statistical and data analysis capabilities.

```sql
CREATE EXTENSION plr;
```

### Create Functions

```sql
CREATE OR REPLACE FUNCTION r_max(integer, integer) RETURNS integer AS '
if (arg1 > arg2)
  return(arg1)
else
  return(arg2)
' LANGUAGE plr STRICT;

SELECT r_max(10, 20);  -- 20
```

With named arguments:

```sql
CREATE OR REPLACE FUNCTION sd(vals float8[]) RETURNS float AS '
sd(vals)
' LANGUAGE plr STRICT;

SELECT sd(ARRAY[1.0, 2.0, 3.0, 4.0, 5.0]);
```

### Argument Handling

- Arguments are available as `arg1`, `arg2`, ... or by named parameter
- NULL arguments become R `NA` values (unless function is `STRICT`)
- Composite types (rows) are passed as R data.frames
- Arrays are passed as R vectors

```sql
CREATE OR REPLACE FUNCTION r_max(integer, integer) RETURNS integer AS '
if (is.null(arg1) && is.null(arg2))
  return(NULL)
if (is.null(arg1))
  return(arg2)
if (is.null(arg2))
  return(arg1)
if (arg1 > arg2)
  return(arg1)
return(arg2)
' LANGUAGE plr;
```

### Database Access via SPI

```sql
CREATE OR REPLACE FUNCTION test_spi(text) RETURNS SETOF record AS '
pg.spi.exec(arg1)
' LANGUAGE plr;

SELECT * FROM test_spi('SELECT oid, typname FROM pg_type LIMIT 5')
  AS t(oid oid, typname name);
```

Prepared statements:

```sql
-- Prepare
sp <<- pg.spi.prepare('SELECT * FROM pg_type WHERE typname = $1', c(NAMEOID))
-- Execute
pg.spi.execp(sp, list('text'))
```

### Set-Returning Functions

Return a data.frame for set-returning functions:

```sql
CREATE OR REPLACE FUNCTION get_numbers(n int) RETURNS SETOF integer AS '
1:arg1
' LANGUAGE plr;

SELECT * FROM get_numbers(5);
```

### Window Functions

```sql
CREATE OR REPLACE FUNCTION r_regr_slope(float8, float8, int)
RETURNS float8 AS '
slope <- NA
y <- farg1
x <- farg2
if (fnumrows == arg3 + 1L)
  try(slope <- lm(y ~ x)$coefficients[2])
return(slope)
' LANGUAGE plr WINDOW;
```

Window functions receive `farg1..fargN` (vectors of values in the window frame), `fnumrows` (frame size), and `prownum` (current row position in partition).

### Global Variables

Persist data across function calls using R's global environment:

```sql
CREATE OR REPLACE FUNCTION set_state(key text, val text) RETURNS void AS '
assign(arg1, arg2, env=.GlobalEnv)
' LANGUAGE plr;
```

### Useful Support Functions

```sql
SELECT load_r_typenames();  -- Load type OID variables
SELECT * FROM r_typenames(); -- List available type OIDs
SELECT plr_version();        -- PL/R version
```

### Trigger Functions

PL/R supports trigger functions with access to `pg.tg.name`, `pg.tg.relname`, `pg.tg.when`, `pg.tg.level`, `pg.tg.op`, `pg.tg.new`, and `pg.tg.old`.
