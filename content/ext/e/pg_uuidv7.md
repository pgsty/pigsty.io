---
title: "pg_uuidv7"
linkTitle: "pg_uuidv7"
description: "Create UUIDv7 values in postgres"
weight: 4540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fboulnois/pg_uuidv7">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fboulnois/pg_uuidv7</div>
    <div class="ext-card__desc">https://github.com/fboulnois/pg_uuidv7</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_uuidv7-1.7.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_uuidv7-1.7.0.tar.gz</div>
    <div class="ext-card__desc">pg_uuidv7-1.7.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_uuidv7`**](/ext/e/pg_uuidv7) | `1.7.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mpl20" href="/ext/license#mpl20">MPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4540  | [**`pg_uuidv7`**](/ext/e/pg_uuidv7) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`uuid-ossp`](/ext/e/uuid-ossp) [`sequential_uuids`](/ext/e/sequential_uuids) [`pg_hashids`](/ext/e/pg_hashids) [`permuteseq`](/ext/e/permuteseq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_uuidv7` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_uuidv7_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-uuidv7` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 3 | AVAIL PGDG 1.7.0 7 | AVAIL PGDG 1.7.0 10 | AVAIL PGDG 1.7.0 10 |
| el8.aarch64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 3 | AVAIL PGDG 1.7.0 7 | AVAIL PGDG 1.7.0 9 | AVAIL PGDG 1.7.0 9 |
| el9.x86_64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 3 | AVAIL PGDG 1.7.0 7 | AVAIL PGDG 1.7.0 9 | AVAIL PGDG 1.7.0 9 |
| el9.aarch64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 3 | AVAIL PGDG 1.7.0 7 | AVAIL PGDG 1.7.0 9 | AVAIL PGDG 1.7.0 9 |
| el10.x86_64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| el10.aarch64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d12.x86_64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| d12.aarch64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| d13.x86_64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| d13.aarch64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| u22.x86_64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| u22.aarch64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| u24.x86_64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| u24.aarch64 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
@ el8.x86_64 18 pg_uuidv7_18 pg_uuidv7_18-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 21.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_uuidv7_18-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_uuidv7_18 pg_uuidv7_18-1.6.0-2PGDG.rhel8.x86_64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_uuidv7_18-1.6.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_uuidv7_18 pg_uuidv7_18-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 21.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_uuidv7_18-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_uuidv7_18 pg_uuidv7_18-1.6.0-2PGDG.rhel8.aarch64.rpm pgdg 1.6.0 21.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_uuidv7_18-1.6.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_uuidv7_18 pg_uuidv7_18-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 21.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_uuidv7_18-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_uuidv7_18 pg_uuidv7_18-1.6.0-2PGDG.rhel9.x86_64.rpm pgdg 1.6.0 21.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_uuidv7_18-1.6.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_uuidv7_18 pg_uuidv7_18-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 21.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_uuidv7_18-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_uuidv7_18 pg_uuidv7_18-1.6.0-2PGDG.rhel9.aarch64.rpm pgdg 1.6.0 21.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_uuidv7_18-1.6.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_uuidv7_18 pg_uuidv7_18-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 21.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_uuidv7_18-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_uuidv7_18 pg_uuidv7_18-1.6.0-2PGDG.rhel10.x86_64.rpm pgdg 1.6.0 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_uuidv7_18-1.6.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_uuidv7_18 pg_uuidv7_18-1.6.0-2PGDG.rhel10.aarch64.rpm pgdg 1.6.0 21.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_uuidv7_18-1.6.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb pgdg 1.7.0 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 18.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 18.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 12.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 12.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 17.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-uuidv7 postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-18-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 21.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_uuidv7_17-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 21.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_uuidv7_17-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.5.0-3PGDG.rhel8.x86_64.rpm pgdg 1.5.0 20.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_uuidv7_17-1.5.0-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_uuidv7_17 pg_uuidv7_17-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 21.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_uuidv7_17-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_uuidv7_17 pg_uuidv7_17-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_uuidv7_17-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_uuidv7_17 pg_uuidv7_17-1.5.0-3PGDG.rhel8.aarch64.rpm pgdg 1.5.0 20.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_uuidv7_17-1.5.0-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 21.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_uuidv7_17-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_uuidv7_17-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.5.0-3PGDG.rhel9.x86_64.rpm pgdg 1.5.0 20.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_uuidv7_17-1.5.0-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_uuidv7_17 pg_uuidv7_17-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 21.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_uuidv7_17-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_uuidv7_17 pg_uuidv7_17-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_uuidv7_17-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_uuidv7_17 pg_uuidv7_17-1.5.0-3PGDG.rhel9.aarch64.rpm pgdg 1.5.0 20.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_uuidv7_17-1.5.0-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 21.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_uuidv7_17-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_uuidv7_17 pg_uuidv7_17-1.6.0-2PGDG.rhel10.x86_64.rpm pgdg 1.6.0 21.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_uuidv7_17-1.6.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_uuidv7_17 pg_uuidv7_17-1.6.0-2PGDG.rhel10.aarch64.rpm pgdg 1.6.0 21.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_uuidv7_17-1.6.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 18.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 18.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 12.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 12.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-uuidv7 postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-17-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 21.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_uuidv7_16-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 21.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_uuidv7_16-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.5.0-1PGDG.rhel8.x86_64.rpm pgdg 1.5.0 20.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_uuidv7_16-1.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_uuidv7_16-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 20.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_uuidv7_16-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_uuidv7_16-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_uuidv7_16-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 21.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_uuidv7_16-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_uuidv7_16-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.5.0-1PGDG.rhel8.aarch64.rpm pgdg 1.5.0 20.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_uuidv7_16-1.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 20.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_uuidv7_16-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_uuidv7_16-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_uuidv7_16-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_uuidv7_16-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_uuidv7_16-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_uuidv7_16-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.5.0-1PGDG.rhel9.x86_64.rpm pgdg 1.5.0 20.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_uuidv7_16-1.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_uuidv7_16-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_uuidv7_16-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_uuidv7_16-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 19.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_uuidv7_16-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 21.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_uuidv7_16-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_uuidv7_16-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.5.0-1PGDG.rhel9.aarch64.rpm pgdg 1.5.0 20.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_uuidv7_16-1.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_uuidv7_16-1.4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_uuidv7_16-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 19.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_uuidv7_16-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 19.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_uuidv7_16-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 21.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_uuidv7_16-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_uuidv7_16 pg_uuidv7_16-1.6.0-2PGDG.rhel10.x86_64.rpm pgdg 1.6.0 21.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_uuidv7_16-1.6.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_uuidv7_16 pg_uuidv7_16-1.6.0-2PGDG.rhel10.aarch64.rpm pgdg 1.6.0 21.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_uuidv7_16-1.6.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 18.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 12.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-uuidv7 postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-16-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 21.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 21.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.5.0-1PGDG.rhel8.x86_64.rpm pgdg 1.5.0 20.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.1-1PGDG.rhel8.x86_64.rpm pgdg 1.1.1 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 19.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.0.2-1PGDG.rhel8.x86_64.rpm pgdg 1.0.2 18.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_uuidv7_15-1.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 21.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.5.0-1PGDG.rhel8.aarch64.rpm pgdg 1.5.0 20.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 20.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.1-1PGDG.rhel8.aarch64.rpm pgdg 1.1.1 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_uuidv7_15-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.5.0-1PGDG.rhel9.x86_64.rpm pgdg 1.5.0 20.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 20.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 20.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.1-1PGDG.rhel9.x86_64.rpm pgdg 1.1.1 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 18.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_uuidv7_15-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 21.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.5.0-1PGDG.rhel9.aarch64.rpm pgdg 1.5.0 20.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 19.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.1-1PGDG.rhel9.aarch64.rpm pgdg 1.1.1 18.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 18.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_uuidv7_15-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_uuidv7_15-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_uuidv7_15 pg_uuidv7_15-1.6.0-2PGDG.rhel10.x86_64.rpm pgdg 1.6.0 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_uuidv7_15-1.6.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_uuidv7_15 pg_uuidv7_15-1.6.0-2PGDG.rhel10.aarch64.rpm pgdg 1.6.0 21.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_uuidv7_15-1.6.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb pgdg 1.7.0 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 18.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 12.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-uuidv7 postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-15-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 21.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 21.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.5.0-1PGDG.rhel8.x86_64.rpm pgdg 1.5.0 20.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 20.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.3.0-1PGDG.rhel8.x86_64.rpm pgdg 1.3.0 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.1-1PGDG.rhel8.x86_64.rpm pgdg 1.1.1 19.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.1.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 19.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.0.2-1PGDG.rhel8.x86_64.rpm pgdg 1.0.2 18.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_uuidv7_14-1.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 21.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.5.0-1PGDG.rhel8.aarch64.rpm pgdg 1.5.0 20.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 20.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 20.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.3.0-1PGDG.rhel8.aarch64.rpm pgdg 1.3.0 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.1-1PGDG.rhel8.aarch64.rpm pgdg 1.1.1 19.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.1.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_uuidv7_14-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 21.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 21.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.5.0-1PGDG.rhel9.x86_64.rpm pgdg 1.5.0 20.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 20.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.3.0-1PGDG.rhel9.x86_64.rpm pgdg 1.3.0 19.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.1-1PGDG.rhel9.x86_64.rpm pgdg 1.1.1 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.1.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 18.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_uuidv7_14-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 21.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 21.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.5.0-1PGDG.rhel9.aarch64.rpm pgdg 1.5.0 20.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.3.0-1PGDG.rhel9.aarch64.rpm pgdg 1.3.0 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 19.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.1-1PGDG.rhel9.aarch64.rpm pgdg 1.1.1 18.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.1.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 18.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_uuidv7_14-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 21.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_uuidv7_14-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_uuidv7_14 pg_uuidv7_14-1.6.0-2PGDG.rhel10.x86_64.rpm pgdg 1.6.0 21.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_uuidv7_14-1.6.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_uuidv7_14 pg_uuidv7_14-1.6.0-2PGDG.rhel10.aarch64.rpm pgdg 1.6.0 21.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_uuidv7_14-1.6.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 18.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb pgdg 1.7.0 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb pgdg 1.7.0 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 12.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 17.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 12.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-uuidv7 postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 17.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuidv7/postgresql-14-pg-uuidv7_1.7.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_uuidv7` using `pig build`:

```bash
pig build pkg pg_uuidv7         # build DEB packages
```


## Install

You can install `pg_uuidv7` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_uuidv7;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_uuidv7 -v 18  # PG 18
pig ext install -y pg_uuidv7 -v 17  # PG 17
pig ext install -y pg_uuidv7 -v 16  # PG 16
pig ext install -y pg_uuidv7 -v 15  # PG 15
pig ext install -y pg_uuidv7 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_uuidv7_18       # PG 18
dnf install -y pg_uuidv7_17       # PG 17
dnf install -y pg_uuidv7_16       # PG 16
dnf install -y pg_uuidv7_15       # PG 15
dnf install -y pg_uuidv7_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-uuidv7   # PG 18
apt install -y postgresql-17-pg-uuidv7   # PG 17
apt install -y postgresql-16-pg-uuidv7   # PG 16
apt install -y postgresql-15-pg-uuidv7   # PG 15
apt install -y postgresql-14-pg-uuidv7   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_uuidv7;
```



## Usage

> [pg_uuidv7: Create valid version 7 UUIDs in PostgreSQL](https://github.com/fboulnois/pg_uuidv7)

```sql
CREATE EXTENSION pg_uuidv7;
```

### Functions

| Function | Description |
|---|---|
| `uuid_generate_v7()` | Generate a new UUIDv7 |
| `uuid_v7_to_timestamptz(uuid)` | Extract the timestamp from a UUIDv7 |
| `uuid_timestamptz_to_v7(timestamptz [, bool])` | Convert a timestamp to a UUIDv7 (set second arg to `true` to zero the random bits) |

### Examples

```sql
-- Generate a UUIDv7
SELECT uuid_generate_v7();
-- 018570bb-4a7d-7c7e-8df4-6d47afd8c8fc

-- Extract timestamp from UUIDv7
SELECT uuid_v7_to_timestamptz('018570bb-4a7d-7c7e-8df4-6d47afd8c8fc');
-- 2023-01-02 04:26:40.637+00

-- Convert timestamp to UUIDv7
SELECT uuid_timestamptz_to_v7('2023-01-02 04:26:40.637+00');
-- 018570bb-4a7d-7630-a5c4-89b795024c5d

-- For date range queries, zero the random bits
SELECT uuid_timestamptz_to_v7('2023-01-02 04:26:40.637+00', true);
-- 018570bb-4a7d-7000-8000-000000000000

-- Use as primary key
CREATE TABLE events (
  id uuid NOT NULL DEFAULT uuid_generate_v7() PRIMARY KEY,
  data text
);
```
