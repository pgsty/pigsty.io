---
title: "nominatim_fdw"
linkTitle: "nominatim_fdw"
description: "Nominatim Foreign Data Wrapper for PostgreSQL"
weight: 8680
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jimjonesbr/nominatim_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jimjonesbr/nominatim_fdw</div>
    <div class="ext-card__desc">https://github.com/jimjonesbr/nominatim_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/nominatim_fdw-2.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">nominatim_fdw-2.0.0.tar.gz</div>
    <div class="ext-card__desc">nominatim_fdw-2.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`nominatim_fdw`**](/ext/e/nominatim_fdw) | `2.0.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8680  | [**`nominatim_fdw`**](/ext/e/nominatim_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> PIGSTY RPM and DEB packages are aligned at 2.0.0 for PostgreSQL 14 through 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `nominatim_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `nominatim_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-nominatim-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 |
| el8.aarch64 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 | AVAIL PIGSTY 2.0.0 5 |
| el9.x86_64 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 |
| el9.aarch64 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 |
| el10.x86_64 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 |
| el10.aarch64 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 | AVAIL PIGSTY 2.0.0 10 |
| d12.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
@ el8.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/nominatim_fdw_18-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.3 32.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/nominatim_fdw_18-1.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3 31.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/nominatim_fdw_18-1.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 30.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/nominatim_fdw_18-1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/nominatim_fdw_18-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.3 31.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/nominatim_fdw_18-1.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3 30.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/nominatim_fdw_18-1.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 29.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/nominatim_fdw_18-1.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 35.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/nominatim_fdw_18-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel9.8.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.3-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.3-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2 31.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2 31.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/nominatim_fdw_18-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel9.8.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.3-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.3-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2 30.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2 30.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.1.0 30.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 35.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/nominatim_fdw_18-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel10.2.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.3-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.3-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2 31.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.1.0 31.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/nominatim_fdw_18-2.0.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.3-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-2PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.3-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2 30.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2 30.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 62.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 61.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 62.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 60.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 65.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 64.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 62.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 61.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 62.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 62.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/nominatim_fdw_17-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.3 32.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/nominatim_fdw_17-1.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3 31.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/nominatim_fdw_17-1.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 30.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/nominatim_fdw_17-1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 33.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/nominatim_fdw_17-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.3 31.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/nominatim_fdw_17-1.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/nominatim_fdw_17-1.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 29.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/nominatim_fdw_17-1.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 35.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/nominatim_fdw_17-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel9.8.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.3-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.3-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2 31.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2 31.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/nominatim_fdw_17-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel9.8.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.3-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.3-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2 30.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.1.0 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 35.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/nominatim_fdw_17-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel10.2.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.3-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.3-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2 31.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.1.0 31.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 35.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/nominatim_fdw_17-2.0.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.3-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-2PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.3-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 62.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 61.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 62.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 60.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 72.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 71.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 61.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 62.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 62.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/nominatim_fdw_16-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.3 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/nominatim_fdw_16-1.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3 31.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/nominatim_fdw_16-1.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/nominatim_fdw_16-1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/nominatim_fdw_16-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.3 31.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/nominatim_fdw_16-1.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/nominatim_fdw_16-1.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 29.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/nominatim_fdw_16-1.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 35.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/nominatim_fdw_16-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel9.8.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.3-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.3-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2 31.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2 31.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 34.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/nominatim_fdw_16-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel9.8.aarch64.rpm pgdg 1.3 31.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.3-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.3-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2 30.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.1.0 30.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 35.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/nominatim_fdw_16-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel10.2.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.3-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.3-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2 31.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.1.0 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 35.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/nominatim_fdw_16-2.0.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.3 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.3-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-2PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.3-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 62.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 61.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 62.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 60.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 72.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 71.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 63.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 61.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 62.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 62.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/nominatim_fdw_15-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.3 32.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/nominatim_fdw_15-1.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3 31.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/nominatim_fdw_15-1.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/nominatim_fdw_15-1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/nominatim_fdw_15-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.3 31.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/nominatim_fdw_15-1.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3 31.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/nominatim_fdw_15-1.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/nominatim_fdw_15-1.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 35.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/nominatim_fdw_15-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel9.8.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.3-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.3-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/nominatim_fdw_15-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel9.8.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.3-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.3-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2 30.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.1.0 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 35.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/nominatim_fdw_15-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel10.2.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.3-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.3-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.1.0 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 35.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/nominatim_fdw_15-2.0.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.3-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-2PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.3-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 62.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 61.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 62.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 60.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 72.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 71.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 61.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 62.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 62.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/nominatim_fdw_14-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.3 32.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/nominatim_fdw_14-1.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3 31.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/nominatim_fdw_14-1.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/nominatim_fdw_14-1.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/nominatim_fdw_14-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.3 31.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/nominatim_fdw_14-1.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/nominatim_fdw_14-1.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/nominatim_fdw_14-1.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 35.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/nominatim_fdw_14-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel9.8.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.3-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.3-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.3-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2 31.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 34.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/nominatim_fdw_14-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel9.8.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.3-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.3-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.3-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3 31.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2 30.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.1.0 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 35.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/nominatim_fdw_14-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel10.2.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.3-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.3-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.3-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3 32.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2 31.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.1.0 31.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 35.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/nominatim_fdw_14-2.0.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.3-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-2PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.3-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3 32.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 62.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 61.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 62.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 60.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 72.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 71.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 62.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 62.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 62.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_2.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `nominatim_fdw` using `pig build`:

```bash
pig build pkg nominatim_fdw         # build RPM / DEB packages
```


## Install

You can install `nominatim_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install nominatim_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y nominatim_fdw -v 18  # PG 18
pig ext install -y nominatim_fdw -v 17  # PG 17
pig ext install -y nominatim_fdw -v 16  # PG 16
pig ext install -y nominatim_fdw -v 15  # PG 15
pig ext install -y nominatim_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y nominatim_fdw_18       # PG 18
dnf install -y nominatim_fdw_17       # PG 17
dnf install -y nominatim_fdw_16       # PG 16
dnf install -y nominatim_fdw_15       # PG 15
dnf install -y nominatim_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-nominatim-fdw   # PG 18
apt install -y postgresql-17-nominatim-fdw   # PG 17
apt install -y postgresql-16-nominatim-fdw   # PG 16
apt install -y postgresql-15-nominatim-fdw   # PG 15
apt install -y postgresql-14-nominatim-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION nominatim_fdw;
```

## Usage

Sources:

- [nominatim_fdw v2.0 README](https://github.com/jimjonesbr/nominatim_fdw/blob/v2.0/README.md)
- [nominatim_fdw v2.0 changelog](https://github.com/jimjonesbr/nominatim_fdw/blob/v2.0/CHANGELOG.md)
- [Extension control file](https://github.com/jimjonesbr/nominatim_fdw/blob/v2.0/nominatim_fdw.control)
- [Official Nominatim API overview](https://nominatim.org/release-docs/develop/api/Overview/)
- [OpenStreetMap Nominatim usage policy](https://operations.osmfoundation.org/policies/nominatim/)

`nominatim_fdw` calls a Nominatim geocoding service from PostgreSQL. Unlike a conventional FDW, it exposes functions for search, reverse geocoding, and OSM-object lookup; it does not create queryable foreign tables.

### Configure a Server

```sql
CREATE EXTENSION nominatim_fdw;

CREATE SERVER osm
  FOREIGN DATA WRAPPER nominatim_fdw
  OPTIONS (
    url 'https://nominatim.openstreetmap.org',
    connect_timeout '10',
    max_connect_retry '2',
    max_connect_redirect '1',
    accept_language 'en'
  );
```

The public OpenStreetMap endpoint has an official usage policy. For sustained or bulk workloads, use an authorized provider or operate your own Nominatim service, identify the application as required, and respect rate limits.

### Core Workflow

Free-form search:

```sql
SELECT osm_id, display_name, lon, lat
FROM nominatim_search(
  server_name => 'osm',
  q => 'Neubrückenstraße 63, Münster, Germany'
);
```

Reverse geocoding and object lookup:

```sql
SELECT osm_id, display_name, addressdetails
FROM nominatim_reverse(
  server_name => 'osm',
  lon => 7.6293,
  lat => 51.9648,
  addressdetails => true
);

SELECT osm_id, display_name
FROM nominatim_lookup(
  server_name => 'osm',
  osm_ids => 'W121736959'
);
```

### Important Objects

- `nominatim_search(...)` implements free-form or structured forward search.
- `nominatim_reverse(...)` resolves longitude and latitude to the nearest suitable OSM address.
- `nominatim_lookup(...)` fetches node, way, or relation identifiers such as `N123`, `W456`, or `R789`.
- `nominatim_fdw_version()` reports the extension and principal library versions.
- `nominatim_fdw_settings` exposes dependency and build versions as rows.
- Server options include `url`, proxy configuration, timeouts, retry and redirect limits, and default `accept_language`.

All endpoint functions are `STRICT`: an explicit SQL `NULL` argument returns no rows without sending a request. In 2.0 they are correctly declared `VOLATILE`, because responses are remote and can change.

### Version 2.0 Changes and Caveats

Version 2.0 validates reverse coordinates, adds `email`, `polygon_threshold`, and `entrances`, exposes dependency settings, and fixes JSON escaping for returned detail fields. It also has user-visible compatibility changes: reverse output uses `display_name`; `addressparts` becomes `addressdetails`; address details default to true for reverse and lookup; and version output is shorter. Review result-column consumers before upgrading from 1.3.

Each call performs network I/O in the database statement. Use finite timeouts, constrain who can create or alter servers, and avoid invoking a public service once per row in a large query. The upstream build requires PostgreSQL 10 or newer, libxml2 2.5 or newer, and libcurl 7.74 or newer.
