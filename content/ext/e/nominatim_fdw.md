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
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`nominatim_fdw`**](/ext/e/nominatim_fdw) | `1.1.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8680  | [**`nominatim_fdw`**](/ext/e/nominatim_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `nominatim_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `nominatim_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-nominatim-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| el8.aarch64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| el9.x86_64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| el9.aarch64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| el10.x86_64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| el10.aarch64 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 | AVAIL PGDG 1.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
@ el8.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 18 nominatim_fdw_18 nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/nominatim_fdw_18-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 52.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 51.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 52.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 51.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 56.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 56.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 54.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-nominatim-fdw postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 54.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-18-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 17 nominatim_fdw_17 nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/nominatim_fdw_17-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 51.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 52.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 51.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 64.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 64.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 54.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-nominatim-fdw postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 54.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-17-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 16 nominatim_fdw_16 nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/nominatim_fdw_16-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 52.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 51.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 52.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 51.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 64.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 63.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 54.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-nominatim-fdw postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 54.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-16-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 15 nominatim_fdw_15 nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/nominatim_fdw_15-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 52.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 51.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 52.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 51.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 64.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 63.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 54.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-nominatim-fdw postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 54.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-15-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1.0 30.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1.0 29.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.1.0 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.1.0 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 14 nominatim_fdw_14 nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.1.0 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/nominatim_fdw_14-1.1.0-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 52.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 51.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 52.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 51.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 64.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 63.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 54.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-nominatim-fdw postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 54.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/nominatim-fdw/postgresql-14-nominatim-fdw_1.1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `nominatim_fdw` using `pig build`:

```bash
pig build pkg nominatim_fdw         # build DEB packages
```


## Install

You can install `nominatim_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
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

> [nominatim_fdw: Nominatim Foreign Data Wrapper for PostgreSQL](https://github.com/jimjonesbr/nominatim_fdw)

This FDW provides access to [Nominatim](https://nominatim.org/) geocoding services directly from PostgreSQL using SQL functions rather than traditional foreign tables.

### Create Server

```sql
CREATE EXTENSION nominatim_fdw;

CREATE SERVER osm FOREIGN DATA WRAPPER nominatim_fdw
  OPTIONS (url 'https://nominatim.openstreetmap.org');
```

**Server Options:** `url` (required, Nominatim endpoint URL), `http_proxy`, `proxy_user`, `proxy_user_password`, `connect_timeout` (default 300 seconds), `max_connect_retry` (default 3), `max_request_redirect` (0 = unlimited).

### Geocoding (Address to Coordinates)

Structured search:

```sql
SELECT osm_id, ref, lon, lat, boundingbox
FROM nominatim_search(
  server_name => 'osm',
  street => 'Neubrueckenstrasse 63',
  city => 'Muenster',
  country => 'Germany'
);
```

Free-form search:

```sql
SELECT osm_id, display_name, lon, lat
FROM nominatim_search(
  server_name => 'osm',
  q => '1600 Pennsylvania Avenue, Washington DC'
);
```

**Parameters:** `q` (free-form query), `street`, `city`, `county`, `state`, `country`, `postalcode`, `amenity`, `limit` (default 10), `addressdetails`, `extratags`, `namedetails`.

### Reverse Geocoding (Coordinates to Address)

```sql
SELECT osm_id, display_name, boundingbox
FROM nominatim_reverse(
  server_name => 'osm',
  lon => -77.0365,
  lat => 38.8977,
  zoom => 18,
  addressdetails => true
);
```

**Parameters:** `lon`, `lat` (required), `zoom` (default 18), `addressdetails`, `extratags`, `namedetails`, `layer`.

### OSM Object Lookup

```sql
SELECT osm_id, display_name
FROM nominatim_lookup(
  server_name => 'osm',
  osm_ids => 'W121736959,R123456'
);
```

**Parameters:** `osm_ids` (comma-separated list of OSM IDs with type prefix: N=node, W=way, R=relation), `addressdetails`, `extratags`, `namedetails`.

### Version Check

```sql
SELECT nominatim_fdw_version();
```
