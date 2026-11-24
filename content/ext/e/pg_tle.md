---
title: "pg_tle"
linkTitle: "pg_tle"
description: "Trusted Language Extensions for PostgreSQL"
weight: 3000
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/aws/pg_tle">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">aws/pg_tle</div>
    <div class="ext-card__desc">https://github.com/aws/pg_tle</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_tle-1.5.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_tle-1.5.3.tar.gz</div>
    <div class="ext-card__desc">pg_tle-1.5.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tle`**](/ext/e/pg_tle) | `1.5.3` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3000  | [**`pg_tle`**](/ext/e/pg_tle) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgtle` |
{.ext-table .wide .expand}

| **Related** | [`plv8`](/ext/e/plv8) [`pljs`](/ext/e/pljs) [`pgwasm`](/ext/e/pgwasm) [`pllua`](/ext/e/pllua) [`pg_extension_base`](/ext/e/pg_extension_base) [`pgextwlist`](/ext/e/pgextwlist) [`pg_readme`](/ext/e/pg_readme) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Preload + restart.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.3` | {{< pgvers "19,18,17,16,15" >}} | `pg_tle` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5.3` | {{< pgvers "19,18,17,16,15" >}} | `pg_tle_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.3` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-tle` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 1.5.3 4 | AVAIL PGDG 1.5.3 6 | AVAIL PGDG 1.5.3 6 | AVAIL PGDG 1.5.3 6 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 1.5.3 4 | AVAIL PGDG 1.5.3 6 | AVAIL PGDG 1.5.3 6 | AVAIL PGDG 1.5.3 6 |
| el9.x86_64 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 |
| el9.aarch64 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 |
| el10.x86_64 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 | AVAIL PGDG 1.5.3 2 |
| el10.aarch64 | AVAIL PGDG 1.5.3 1 | AVAIL PGDG 1.5.3 6 | AVAIL PGDG 1.5.3 6 | AVAIL PGDG 1.5.3 6 | AVAIL PGDG 1.5.3 6 |
| d12.x86_64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 | AVAIL PIGSTY 1.5.3 1 |
@ el9.x86_64 19 pg_tle_19 pg_tle_19-1.5.3-2PGDG.rhel9.9.x86_64.rpm pgdg 1.5.3 67.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pg_tle_19-1.5.3-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 pg_tle_19 pg_tle_19-1.5.3-2PGDG.rhel9.9.aarch64.rpm pgdg 1.5.3 65.1KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pg_tle_19-1.5.3-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 pg_tle_19 pg_tle_19-1.5.3-2PGDG.rhel10.3.x86_64.rpm pgdg 1.5.3 68.5KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pg_tle_19-1.5.3-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 pg_tle_19 pg_tle_19-1.5.3-2PGDG.rhel10.3.aarch64.rpm pgdg 1.5.3 65.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pg_tle_19-1.5.3-2PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb pigsty 1.5.3 164.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb pigsty 1.5.3 158.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb pigsty 1.5.3 164.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb pigsty 1.5.3 158.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb pigsty 1.5.3 172.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb pigsty 1.5.3 168.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~noble_amd64.deb pigsty 1.5.3 166.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~noble_arm64.deb pigsty 1.5.3 163.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb pigsty 1.5.3 165.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-tle postgresql-19-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb pigsty 1.5.3 162.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-19-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_tle_18 pg_tle_18-1.5.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 71.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_tle_18-1.5.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_tle_18 pg_tle_18-1.5.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 71.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_tle_18-1.5.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_tle_18 pg_tle_18-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 68.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tle_18-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_tle_18 pg_tle_18-1.5.2-1PGDG.rhel8.x86_64.rpm pgdg 1.5.2 68.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_tle_18-1.5.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_tle_18 pg_tle_18-1.5.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 68.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_tle_18-1.5.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_tle_18 pg_tle_18-1.5.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 67.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_tle_18-1.5.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_tle_18 pg_tle_18-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tle_18-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_tle_18 pg_tle_18-1.5.2-1PGDG.rhel8.aarch64.rpm pgdg 1.5.2 65.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_tle_18-1.5.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_tle_18 pg_tle_18-1.5.3-2PGDG.rhel9.9.x86_64.rpm pgdg 1.5.3 67.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_tle_18-1.5.3-2PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 pg_tle_18 pg_tle_18-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 63.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tle_18-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tle_18 pg_tle_18-1.5.3-2PGDG.rhel9.9.aarch64.rpm pgdg 1.5.3 65.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_tle_18-1.5.3-2PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 pg_tle_18 pg_tle_18-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 59.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tle_18-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tle_18 pg_tle_18-1.5.3-2PGDG.rhel10.3.x86_64.rpm pgdg 1.5.3 68.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_tle_18-1.5.3-2PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 pg_tle_18 pg_tle_18-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 63.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tle_18-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tle_18 pg_tle_18-1.5.3-2PGDG.rhel10.3.aarch64.rpm pgdg 1.5.3 65.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_tle_18-1.5.3-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_tle_18 pg_tle_18-1.5.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 65.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_tle_18-1.5.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_tle_18 pg_tle_18-1.5.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 65.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_tle_18-1.5.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_tle_18 pg_tle_18-1.5.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5.2 63.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_tle_18-1.5.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_tle_18 pg_tle_18-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 60.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tle_18-1.5.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_tle_18 pg_tle_18-1.5.2-1PGDG.rhel10.aarch64.rpm pgdg 1.5.2 63.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_tle_18-1.5.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb pigsty 1.5.3 163.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb pigsty 1.5.3 158.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb pigsty 1.5.3 164.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb pigsty 1.5.3 159.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb pigsty 1.5.3 172.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb pigsty 1.5.3 168.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~noble_amd64.deb pigsty 1.5.3 166.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~noble_arm64.deb pigsty 1.5.3 163.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb pigsty 1.5.3 165.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-tle postgresql-18-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb pigsty 1.5.3 162.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-18-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_tle_17 pg_tle_17-1.5.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 71.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_tle_17-1.5.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_tle_17 pg_tle_17-1.5.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 71.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_tle_17-1.5.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_tle_17 pg_tle_17-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 68.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tle_17-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_tle_17 pg_tle_17-1.5.1-1PGDG.rhel8.x86_64.rpm pgdg 1.5.1 68.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_tle_17-1.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_tle_17 pg_tle_17-1.5.0-1PGDG.rhel8.x86_64.rpm pgdg 1.5.0 68.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_tle_17-1.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_tle_17 pg_tle_17-1.2.0-2PGDG.rhel8.x86_64.rpm pgdg 1.2.0 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_tle_17-1.2.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_tle_17 pg_tle_17-1.5.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 68.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_tle_17-1.5.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_tle_17 pg_tle_17-1.5.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 67.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_tle_17-1.5.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_tle_17 pg_tle_17-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tle_17-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_tle_17 pg_tle_17-1.5.1-1PGDG.rhel8.aarch64.rpm pgdg 1.5.1 64.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_tle_17-1.5.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_tle_17 pg_tle_17-1.5.0-1PGDG.rhel8.aarch64.rpm pgdg 1.5.0 64.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_tle_17-1.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_tle_17 pg_tle_17-1.2.0-2PGDG.rhel8.aarch64.rpm pgdg 1.2.0 59.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_tle_17-1.2.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_tle_17 pg_tle_17-1.5.3-2PGDG.rhel9.9.x86_64.rpm pgdg 1.5.3 67.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_tle_17-1.5.3-2PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 pg_tle_17 pg_tle_17-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 63.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tle_17-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tle_17 pg_tle_17-1.5.3-2PGDG.rhel9.9.aarch64.rpm pgdg 1.5.3 65.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_tle_17-1.5.3-2PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 pg_tle_17 pg_tle_17-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 60.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tle_17-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tle_17 pg_tle_17-1.5.3-2PGDG.rhel10.3.x86_64.rpm pgdg 1.5.3 68.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_tle_17-1.5.3-2PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 pg_tle_17 pg_tle_17-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 63.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tle_17-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tle_17 pg_tle_17-1.5.3-2PGDG.rhel10.3.aarch64.rpm pgdg 1.5.3 65.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_tle_17-1.5.3-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_tle_17 pg_tle_17-1.5.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 65.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_tle_17-1.5.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_tle_17 pg_tle_17-1.5.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 65.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_tle_17-1.5.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_tle_17 pg_tle_17-1.5.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5.2 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_tle_17-1.5.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_tle_17 pg_tle_17-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 60.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tle_17-1.5.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_tle_17 pg_tle_17-1.5.1-1PGDG.rhel10.aarch64.rpm pgdg 1.5.1 62.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_tle_17-1.5.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb pigsty 1.5.3 163.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb pigsty 1.5.3 158.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb pigsty 1.5.3 163.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb pigsty 1.5.3 159.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb pigsty 1.5.3 187.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb pigsty 1.5.3 183.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~noble_amd64.deb pigsty 1.5.3 166.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~noble_arm64.deb pigsty 1.5.3 163.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb pigsty 1.5.3 165.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-tle postgresql-17-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb pigsty 1.5.3 162.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-17-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_tle_16 pg_tle_16-1.5.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 71.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_tle_16-1.5.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_tle_16 pg_tle_16-1.5.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 71.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_tle_16-1.5.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_tle_16 pg_tle_16-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 68.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tle_16-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_tle_16 pg_tle_16-1.5.1-1PGDG.rhel8.x86_64.rpm pgdg 1.5.1 68.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_tle_16-1.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_tle_16 pg_tle_16-1.5.0-1PGDG.rhel8.x86_64.rpm pgdg 1.5.0 68.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_tle_16-1.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_tle_16 pg_tle_16-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 63.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_tle_16-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_tle_16 pg_tle_16-1.5.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 68.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_tle_16-1.5.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_tle_16 pg_tle_16-1.5.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 67.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_tle_16-1.5.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_tle_16 pg_tle_16-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tle_16-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_tle_16 pg_tle_16-1.5.1-1PGDG.rhel8.aarch64.rpm pgdg 1.5.1 64.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_tle_16-1.5.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_tle_16 pg_tle_16-1.5.0-1PGDG.rhel8.aarch64.rpm pgdg 1.5.0 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_tle_16-1.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_tle_16 pg_tle_16-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 59.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_tle_16-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_tle_16 pg_tle_16-1.5.3-2PGDG.rhel9.9.x86_64.rpm pgdg 1.5.3 67.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_tle_16-1.5.3-2PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 pg_tle_16 pg_tle_16-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 63.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tle_16-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_tle_16 pg_tle_16-1.5.3-2PGDG.rhel9.9.aarch64.rpm pgdg 1.5.3 65.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_tle_16-1.5.3-2PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 pg_tle_16 pg_tle_16-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 60.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tle_16-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_tle_16 pg_tle_16-1.5.3-2PGDG.rhel10.3.x86_64.rpm pgdg 1.5.3 68.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_tle_16-1.5.3-2PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 pg_tle_16 pg_tle_16-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 63.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tle_16-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_tle_16 pg_tle_16-1.5.3-2PGDG.rhel10.3.aarch64.rpm pgdg 1.5.3 66.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_tle_16-1.5.3-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_tle_16 pg_tle_16-1.5.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 66.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_tle_16-1.5.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_tle_16 pg_tle_16-1.5.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 65.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_tle_16-1.5.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_tle_16 pg_tle_16-1.5.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5.2 63.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_tle_16-1.5.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_tle_16 pg_tle_16-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 60.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tle_16-1.5.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_tle_16 pg_tle_16-1.5.1-1PGDG.rhel10.aarch64.rpm pgdg 1.5.1 62.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_tle_16-1.5.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb pigsty 1.5.3 163.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb pigsty 1.5.3 158.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb pigsty 1.5.3 163.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb pigsty 1.5.3 158.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb pigsty 1.5.3 187.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb pigsty 1.5.3 183.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~noble_amd64.deb pigsty 1.5.3 166.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~noble_arm64.deb pigsty 1.5.3 163.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb pigsty 1.5.3 165.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-tle postgresql-16-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb pigsty 1.5.3 162.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-16-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_tle_15 pg_tle_15-1.5.3-2PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 72.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_tle_15-1.5.3-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_tle_15 pg_tle_15-1.5.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.3 72.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_tle_15-1.5.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_tle_15 pg_tle_15-1.5.2-1PIGSTY.el8.x86_64.rpm pigsty 1.5.2 69.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tle_15-1.5.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_tle_15 pg_tle_15-1.5.1-1PGDG.rhel8.x86_64.rpm pgdg 1.5.1 69.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_tle_15-1.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_tle_15 pg_tle_15-1.5.0-1PGDG.rhel8.x86_64.rpm pgdg 1.5.0 69.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_tle_15-1.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_tle_15 pg_tle_15-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 63.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_tle_15-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_tle_15 pg_tle_15-1.5.3-2PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 69.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_tle_15-1.5.3-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_tle_15 pg_tle_15-1.5.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.3 68.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_tle_15-1.5.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_tle_15 pg_tle_15-1.5.2-1PIGSTY.el8.aarch64.rpm pigsty 1.5.2 66.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tle_15-1.5.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_tle_15 pg_tle_15-1.5.1-1PGDG.rhel8.aarch64.rpm pgdg 1.5.1 65.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_tle_15-1.5.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_tle_15 pg_tle_15-1.5.0-1PGDG.rhel8.aarch64.rpm pgdg 1.5.0 65.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_tle_15-1.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_tle_15 pg_tle_15-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 60.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_tle_15-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_tle_15 pg_tle_15-1.5.3-2PGDG.rhel9.9.x86_64.rpm pgdg 1.5.3 74.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_tle_15-1.5.3-2PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 15 pg_tle_15 pg_tle_15-1.5.2-1PIGSTY.el9.x86_64.rpm pigsty 1.5.2 69.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tle_15-1.5.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_tle_15 pg_tle_15-1.5.3-2PGDG.rhel9.9.aarch64.rpm pgdg 1.5.3 71.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_tle_15-1.5.3-2PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 15 pg_tle_15 pg_tle_15-1.5.2-1PIGSTY.el9.aarch64.rpm pigsty 1.5.2 66.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tle_15-1.5.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_tle_15 pg_tle_15-1.5.3-2PGDG.rhel10.3.x86_64.rpm pgdg 1.5.3 75.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_tle_15-1.5.3-2PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 15 pg_tle_15 pg_tle_15-1.5.2-1PIGSTY.el10.x86_64.rpm pigsty 1.5.2 69.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tle_15-1.5.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_tle_15 pg_tle_15-1.5.3-2PGDG.rhel10.3.aarch64.rpm pgdg 1.5.3 72.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_tle_15-1.5.3-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_tle_15 pg_tle_15-1.5.3-2PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 72.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_tle_15-1.5.3-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_tle_15 pg_tle_15-1.5.3-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.3 71.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_tle_15-1.5.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_tle_15 pg_tle_15-1.5.2-3PGDG.rhel10.2.aarch64.rpm pgdg 1.5.2 69.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_tle_15-1.5.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_tle_15 pg_tle_15-1.5.2-1PIGSTY.el10.aarch64.rpm pigsty 1.5.2 67.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tle_15-1.5.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_tle_15 pg_tle_15-1.5.1-1PGDG.rhel10.aarch64.rpm pgdg 1.5.1 68.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_tle_15-1.5.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb pigsty 1.5.3 164.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb pigsty 1.5.3 159.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb pigsty 1.5.3 164.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb pigsty 1.5.3 160.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb pigsty 1.5.3 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb pigsty 1.5.3 189.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~noble_amd64.deb pigsty 1.5.3 172.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~noble_arm64.deb pigsty 1.5.3 169.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb pigsty 1.5.3 170.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-tle postgresql-15-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb pigsty 1.5.3 167.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tle/postgresql-15-pg-tle_1.5.3-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_tle` using `pig build`:

```bash
pig build pkg pg_tle         # build RPM / DEB packages
```


## Install

You can install `pg_tle` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_tle;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_tle -v 19  # PG 19
pig ext install -y pg_tle -v 18  # PG 18
pig ext install -y pg_tle -v 17  # PG 17
pig ext install -y pg_tle -v 16  # PG 16
pig ext install -y pg_tle -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_tle_19       # PG 19
dnf install -y pg_tle_18       # PG 18
dnf install -y pg_tle_17       # PG 17
dnf install -y pg_tle_16       # PG 16
dnf install -y pg_tle_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-tle   # PG 19
apt install -y postgresql-18-pg-tle   # PG 18
apt install -y postgresql-17-pg-tle   # PG 17
apt install -y postgresql-16-pg-tle   # PG 16
apt install -y postgresql-15-pg-tle   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_tle';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_tle;
```

## Usage

Sources:

- [v1.5.3 README](https://github.com/aws/pg_tle/blob/v1.5.3/README.md)
- [v1.5.3 release](https://github.com/aws/pg_tle/releases/tag/v1.5.3)
- [1.5.2 to 1.5.3 SQL](https://github.com/aws/pg_tle/blob/v1.5.3/pg_tle--1.5.2--1.5.3.sql)
- [v1.5.3 control template](https://github.com/aws/pg_tle/blob/v1.5.3/pg_tle.control.in)

`pg_tle` 1.5.3 manages extensions written in trusted PostgreSQL languages. Native installation needs shared preload and a server restart; subsequent TLE definitions are stored in the database. Upstream documents PostgreSQL 12 through 19 Beta 4.

### Core Workflow

```ini
shared_preload_libraries = 'pg_tle'
```

```sql
CREATE EXTENSION pg_tle;
SELECT pgtle.available_extensions();
```

### Operational Boundaries

`pgtle.install_extension()` stores an extension definition; `CREATE EXTENSION` enables it in a database. `pgtle.install_update_path()` and `pgtle.set_default_version()` manage versions, while `pgtle.available_extensions()` lists definitions. `pgtle.set_extension_schema()` sets schema metadata for a managed extension in 1.5.3, which also tightens identifier validation. TLE administration is restricted through `pgtle_admin`; executing an installed extension still follows PostgreSQL language and object privileges. Dropping an installed extension and uninstalling its TLE definition are separate operations. Only use trusted extension code and review dependencies and upgrade SQL.
