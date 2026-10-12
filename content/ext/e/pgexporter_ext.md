---
title: "pgexporter_ext"
linkTitle: "pgexporter_ext"
description: "Operating-system and host metrics for pgexporter"
weight: 6430
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgexporter/pgexporter_ext">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgexporter/pgexporter_ext</div>
    <div class="ext-card__desc">https://github.com/pgexporter/pgexporter_ext</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgexporter_ext-0.2.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgexporter_ext-0.2.5.tar.gz</div>
    <div class="ext-card__desc">pgexporter_ext-0.2.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgexporter_ext`**](/ext/e/pgexporter_ext) | `0.2.5` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6430  | [**`pgexporter_ext`**](/ext/e/pgexporter_ext) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgnodemx`](/ext/e/pgnodemx) [`system_stats`](/ext/e/system_stats) [`pg_proctab`](/ext/e/pg_proctab) [`pg_statvfs`](/ext/e/pg_statvfs) [`pgmonitor`](/ext/e/pgmonitor) [`pgtelemetry`](/ext/e/pgtelemetry) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release/control and PIGSTY DEB version are 0.2.5; principal PGDG RPM is 0.2.4, except EL8 PG14-16 at 0.2.3. The guide configures preload, but 0.2.5 metrics work without it (verified). Metric access requires pg_monitor; local build capability does not authorize replacing PGDG packages.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.2.5` | {{< pgvers "18,17,16,15,14" >}} | `pgexporter_ext` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.2.4` | {{< pgvers "18,17,16,15,14" >}} | `pgexporter_ext_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgexporter-ext` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.2.4 1 | AVAIL PGDG 0.2.4 1 | AVAIL PGDG 0.2.3 1 | AVAIL PGDG 0.2.3 2 | AVAIL PGDG 0.2.3 5 |
| el8.aarch64 | AVAIL PGDG 0.2.4 1 | AVAIL PGDG 0.2.4 1 | AVAIL PGDG 0.2.3 1 | AVAIL PGDG 0.2.3 1 | AVAIL PGDG 0.2.3 2 |
| el9.x86_64 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 3 | AVAIL PGDG 0.2.4 5 |
| el9.aarch64 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 3 |
| el10.x86_64 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 |
| el10.aarch64 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 | AVAIL PGDG 0.2.4 2 |
| d12.x86_64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 | AVAIL PIGSTY 0.2.5 1 |
@ el8.x86_64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-1PGDG.rhel8.x86_64.rpm pgdg 0.2.4 23.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgexporter_ext_18-0.2.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-1PGDG.rhel8.aarch64.rpm pgdg 0.2.4 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgexporter_ext_18-0.2.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-2PGDG.rhel9.8.x86_64.rpm pgdg 0.2.4 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgexporter_ext_18-0.2.4-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-1PGDG.rhel9.x86_64.rpm pgdg 0.2.4 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgexporter_ext_18-0.2.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-2PGDG.rhel9.8.aarch64.rpm pgdg 0.2.4 23.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgexporter_ext_18-0.2.4-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-1PGDG.rhel9.aarch64.rpm pgdg 0.2.4 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgexporter_ext_18-0.2.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-2PGDG.rhel10.2.x86_64.rpm pgdg 0.2.4 24.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgexporter_ext_18-0.2.4-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-1PGDG.rhel10.x86_64.rpm pgdg 0.2.4 24.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgexporter_ext_18-0.2.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-2PGDG.rhel10.2.aarch64.rpm pgdg 0.2.4 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgexporter_ext_18-0.2.4-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgexporter_ext_18 pgexporter_ext_18-0.2.4-1PGDG.rhel10.aarch64.rpm pgdg 0.2.4 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgexporter_ext_18-0.2.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb pigsty 0.2.5 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb pigsty 0.2.5 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb pigsty 0.2.5 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb pigsty 0.2.5 11.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgexporter-ext postgresql-18-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb pigsty 0.2.5 11.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-18-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-1PGDG.rhel8.x86_64.rpm pgdg 0.2.4 23.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgexporter_ext_17-0.2.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-1PGDG.rhel8.aarch64.rpm pgdg 0.2.4 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgexporter_ext_17-0.2.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-2PGDG.rhel9.8.x86_64.rpm pgdg 0.2.4 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgexporter_ext_17-0.2.4-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-1PGDG.rhel9.x86_64.rpm pgdg 0.2.4 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgexporter_ext_17-0.2.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-2PGDG.rhel9.8.aarch64.rpm pgdg 0.2.4 23.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgexporter_ext_17-0.2.4-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-1PGDG.rhel9.aarch64.rpm pgdg 0.2.4 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgexporter_ext_17-0.2.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-2PGDG.rhel10.2.x86_64.rpm pgdg 0.2.4 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgexporter_ext_17-0.2.4-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-1PGDG.rhel10.x86_64.rpm pgdg 0.2.4 24.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgexporter_ext_17-0.2.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-2PGDG.rhel10.2.aarch64.rpm pgdg 0.2.4 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgexporter_ext_17-0.2.4-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgexporter_ext_17 pgexporter_ext_17-0.2.4-1PGDG.rhel10.aarch64.rpm pgdg 0.2.4 24.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgexporter_ext_17-0.2.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb pigsty 0.2.5 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb pigsty 0.2.5 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb pigsty 0.2.5 11.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgexporter-ext postgresql-17-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb pigsty 0.2.5 11.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-17-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.3-1PGDG.rhel8.x86_64.rpm pgdg 0.2.3 22.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgexporter_ext_16-0.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.3-1PGDG.rhel8.aarch64.rpm pgdg 0.2.3 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgexporter_ext_16-0.2.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.4-2PGDG.rhel9.8.x86_64.rpm pgdg 0.2.4 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgexporter_ext_16-0.2.4-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.3-1PGDG.rhel9.x86_64.rpm pgdg 0.2.3 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgexporter_ext_16-0.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.4-2PGDG.rhel9.8.aarch64.rpm pgdg 0.2.4 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgexporter_ext_16-0.2.4-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.3-1PGDG.rhel9.aarch64.rpm pgdg 0.2.3 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgexporter_ext_16-0.2.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.4-2PGDG.rhel10.2.x86_64.rpm pgdg 0.2.4 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgexporter_ext_16-0.2.4-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.4-1PGDG.rhel10.x86_64.rpm pgdg 0.2.4 24.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgexporter_ext_16-0.2.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.4-2PGDG.rhel10.2.aarch64.rpm pgdg 0.2.4 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgexporter_ext_16-0.2.4-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgexporter_ext_16 pgexporter_ext_16-0.2.4-1PGDG.rhel10.aarch64.rpm pgdg 0.2.4 24.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgexporter_ext_16-0.2.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb pigsty 0.2.5 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb pigsty 0.2.5 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb pigsty 0.2.5 11.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgexporter-ext postgresql-16-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb pigsty 0.2.5 11.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-16-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.3-1PGDG.rhel8.x86_64.rpm pgdg 0.2.3 22.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgexporter_ext_15-0.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgexporter_ext_15 pgexporter_ext_15-0.1.2-1.rhel8.x86_64.rpm pgdg 0.1.2 16.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgexporter_ext_15-0.1.2-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.3-1PGDG.rhel8.aarch64.rpm pgdg 0.2.3 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgexporter_ext_15-0.2.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.4-2PGDG.rhel9.8.x86_64.rpm pgdg 0.2.4 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgexporter_ext_15-0.2.4-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.3-1PGDG.rhel9.x86_64.rpm pgdg 0.2.3 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgexporter_ext_15-0.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgexporter_ext_15 pgexporter_ext_15-0.1.2-1.rhel9.x86_64.rpm pgdg 0.1.2 16.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgexporter_ext_15-0.1.2-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.4-2PGDG.rhel9.8.aarch64.rpm pgdg 0.2.4 23.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgexporter_ext_15-0.2.4-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.3-1PGDG.rhel9.aarch64.rpm pgdg 0.2.3 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgexporter_ext_15-0.2.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.4-2PGDG.rhel10.2.x86_64.rpm pgdg 0.2.4 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgexporter_ext_15-0.2.4-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.4-1PGDG.rhel10.x86_64.rpm pgdg 0.2.4 24.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgexporter_ext_15-0.2.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.4-2PGDG.rhel10.2.aarch64.rpm pgdg 0.2.4 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgexporter_ext_15-0.2.4-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgexporter_ext_15 pgexporter_ext_15-0.2.4-1PGDG.rhel10.aarch64.rpm pgdg 0.2.4 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgexporter_ext_15-0.2.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb pigsty 0.2.5 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb pigsty 0.2.5 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb pigsty 0.2.5 10.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb pigsty 0.2.5 11.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb pigsty 0.2.5 11.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgexporter-ext postgresql-15-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb pigsty 0.2.5 11.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-15-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.3-1PGDG.rhel8.x86_64.rpm pgdg 0.2.3 22.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgexporter_ext_14-0.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.0-1.rhel8.x86_64.rpm pgdg 0.2.0 22.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgexporter_ext_14-0.2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.1.2-1.rhel8.x86_64.rpm pgdg 0.1.2 16.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgexporter_ext_14-0.1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.1.1-1.rhel8.x86_64.rpm pgdg 0.1.1 15.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgexporter_ext_14-0.1.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.1.0-1.rhel8.x86_64.rpm pgdg 0.1.0 15.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgexporter_ext_14-0.1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.3-1PGDG.rhel8.aarch64.rpm pgdg 0.2.3 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgexporter_ext_14-0.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.0-1.rhel8.aarch64.rpm pgdg 0.2.0 22.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgexporter_ext_14-0.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.4-2PGDG.rhel9.8.x86_64.rpm pgdg 0.2.4 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgexporter_ext_14-0.2.4-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.3-1PGDG.rhel9.x86_64.rpm pgdg 0.2.3 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgexporter_ext_14-0.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.0-1.rhel9.x86_64.rpm pgdg 0.2.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgexporter_ext_14-0.2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.1.2-1.rhel9.x86_64.rpm pgdg 0.1.2 16.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgexporter_ext_14-0.1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.1.1-1.rhel9.x86_64.rpm pgdg 0.1.1 16.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgexporter_ext_14-0.1.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.4-2PGDG.rhel9.8.aarch64.rpm pgdg 0.2.4 23.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgexporter_ext_14-0.2.4-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.3-1PGDG.rhel9.aarch64.rpm pgdg 0.2.3 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgexporter_ext_14-0.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.0-1.rhel9.aarch64.rpm pgdg 0.2.0 22.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgexporter_ext_14-0.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.4-2PGDG.rhel10.2.x86_64.rpm pgdg 0.2.4 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgexporter_ext_14-0.2.4-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.4-1PGDG.rhel10.x86_64.rpm pgdg 0.2.4 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgexporter_ext_14-0.2.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.4-2PGDG.rhel10.2.aarch64.rpm pgdg 0.2.4 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgexporter_ext_14-0.2.4-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgexporter_ext_14 pgexporter_ext_14-0.2.4-1PGDG.rhel10.aarch64.rpm pgdg 0.2.4 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgexporter_ext_14-0.2.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb pigsty 0.2.5 11.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb pigsty 0.2.5 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb pigsty 0.2.5 11.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb pigsty 0.2.5 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb pigsty 0.2.5 12.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb pigsty 0.2.5 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb pigsty 0.2.5 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb pigsty 0.2.5 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb pigsty 0.2.5 12.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgexporter-ext postgresql-14-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb pigsty 0.2.5 12.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgexporter-ext/postgresql-14-pgexporter-ext_0.2.5-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgexporter_ext` using `pig build`:

```bash
pig build pkg pgexporter_ext         # build RPM / DEB packages
```


## Install

You can install `pgexporter_ext` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgexporter_ext;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgexporter_ext -v 18  # PG 18
pig ext install -y pgexporter_ext -v 17  # PG 17
pig ext install -y pgexporter_ext -v 16  # PG 16
pig ext install -y pgexporter_ext -v 15  # PG 15
pig ext install -y pgexporter_ext -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgexporter_ext_18       # PG 18
dnf install -y pgexporter_ext_17       # PG 17
dnf install -y pgexporter_ext_16       # PG 16
dnf install -y pgexporter_ext_15       # PG 15
dnf install -y pgexporter_ext_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgexporter-ext   # PG 18
apt install -y postgresql-17-pgexporter-ext   # PG 17
apt install -y postgresql-16-pgexporter-ext   # PG 16
apt install -y postgresql-15-pgexporter-ext   # PG 15
apt install -y postgresql-14-pgexporter-ext   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgexporter_ext;
```

## Usage

Sources:

- [Version 0.2.5 README](https://github.com/pgexporter/pgexporter_ext/blob/0.2.5/README.md)
- [Version 0.2.5 setup guide](https://github.com/pgexporter/pgexporter_ext/blob/0.2.5/doc/GETTING_STARTED.md)
- [Version 0.2.5 SQL definitions](https://github.com/pgexporter/pgexporter_ext/tree/0.2.5/sql)
- [Version 0.2.3 SQL definitions](https://github.com/pgexporter/pgexporter_ext/tree/0.2.3/sql)
- [Version 0.2.4 SQL definitions](https://github.com/pgexporter/pgexporter_ext/tree/0.2.4/sql)
- [Version 0.2.5 filesystem implementation](https://github.com/pgexporter/pgexporter_ext/blob/0.2.5/src/pgexporter_ext/utils.c)

`pgexporter_ext` exposes Linux host and filesystem metrics through SQL for collection by pgexporter. The examples below apply to the packaged 0.2.3–0.2.5 APIs. Functions run with the PostgreSQL operating-system account's access, so restrict the monitoring role to trusted users.

### Setup and Core Workflow

The upstream setup guide configures the module in `shared_preload_libraries`, followed by a PostgreSQL restart. Preserve any other libraries already configured.

```ini
shared_preload_libraries = 'pgexporter_ext'
```

In the `postgres` database, a privileged administrator installs the extension and grants monitoring access to the existing exporter login:

```sql
CREATE EXTENSION pgexporter_ext;
GRANT pg_monitor TO pgexporter;

SET ROLE pgexporter;
SELECT pgexporter_version_ext();
SELECT * FROM pgexporter_get_functions();
SELECT * FROM pgexporter_os_info();
SELECT * FROM pgexporter_load_avg();
RESET ROLE;
```

The SQL scripts revoke public execution and grant it to `pg_monitor`. That predefined role also grants broad PostgreSQL monitoring access. The release includes a base installation script and an upgrade chain; PostgreSQL can use that chain when installing the default version with `CREATE EXTENSION`.

### Metric Functions

- `pgexporter_information_ext()` and `pgexporter_version_ext()` return extension information and version text.
- `pgexporter_get_functions()` lists metric names, whether they take input, descriptions, and types. `pgexporter_is_supported(text)` checks a metric name.
- `pgexporter_os_info()`, `pgexporter_cpu_info()`, `pgexporter_memory_info()`, `pgexporter_network_info()`, and `pgexporter_load_avg()` return host metrics.
- `pgexporter_used_space(text)`, `pgexporter_free_space(text)`, and `pgexporter_total_space(text)` return byte counts for a filesystem path.

```sql
SELECT pgexporter_is_supported('pgexporter_load_avg');
SELECT pgexporter_free_space('/var/lib/postgresql');
```

Choose a path that exists on the server and is accessible to its operating-system account. These releases do not provide the later FIPS or log-count APIs.

### Operational Boundaries

Filesystem calls use the server's filesystem view, which may be a container rather than the host. The used-space function walks directories, so large trees can make scrapes expensive. A `pg_monitor` member can inspect accessible paths; restrict database access and choose collection paths deliberately.

Upstream lists Linux and PostgreSQL 13+; this catalog supplies packages for PostgreSQL 14–18. Use the exact PostgreSQL-major package. The principal RPM supplier is PGDG at 0.2.4 (EL8 PostgreSQL 14–16 use 0.2.3), while Pigsty supplies DEB 0.2.5; enable the Pigsty repository as well when following the cross-platform installation instructions.
