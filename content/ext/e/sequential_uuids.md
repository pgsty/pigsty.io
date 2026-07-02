---
title: "sequential_uuids"
linkTitle: "sequential_uuids"
description: "generator of sequential UUIDs"
weight: 4570
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/sequential-uuids">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/sequential-uuids</div>
    <div class="ext-card__desc">https://github.com/tvondra/sequential-uuids</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/sequential-uuids-1.0.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">sequential-uuids-1.0.3.tar.gz</div>
    <div class="ext-card__desc">sequential-uuids-1.0.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`sequential_uuids`**](/ext/e/sequential_uuids) | `1.0.3` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4570  | [**`sequential_uuids`**](/ext/e/sequential_uuids) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_idkit`](/ext/e/pg_idkit) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`pgx_ulid`](/ext/e/pgx_ulid) [`uuid-ossp`](/ext/e/uuid-ossp) [`pg_hashids`](/ext/e/pg_hashids) [`permuteseq`](/ext/e/permuteseq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `sequential_uuids` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `sequential_uuids_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-sequential-uuids` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.3 2 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 2 |
| el8.aarch64 | AVAIL PIGSTY 1.0.3 2 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| el9.x86_64 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 |
| el9.aarch64 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 |
| el10.x86_64 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 |
| el10.aarch64 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 | AVAIL PGDG 1.0.3 3 |
| d12.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
@ el8.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PIGSTY.el8.x86_64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/sequential_uuids_18-1.0.3-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PGDG.rhel8.x86_64.rpm pgdg 1.0.3 16.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/sequential_uuids_18-1.0.3-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PIGSTY.el8.aarch64.rpm pigsty 1.0.3 12.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/sequential_uuids_18-1.0.3-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PGDG.rhel8.aarch64.rpm pgdg 1.0.3 16.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/sequential_uuids_18-1.0.3-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-4PGDG.rhel9.8.x86_64.rpm pgdg 1.0.3 15.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/sequential_uuids_18-1.0.3-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PIGSTY.el9.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sequential_uuids_18-1.0.3-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PGDG.rhel9.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/sequential_uuids_18-1.0.3-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-4PGDG.rhel9.8.aarch64.rpm pgdg 1.0.3 15.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/sequential_uuids_18-1.0.3-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PIGSTY.el9.aarch64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sequential_uuids_18-1.0.3-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PGDG.rhel9.aarch64.rpm pgdg 1.0.3 15.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/sequential_uuids_18-1.0.3-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-4PGDG.rhel10.2.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/sequential_uuids_18-1.0.3-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PIGSTY.el10.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sequential_uuids_18-1.0.3-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PGDG.rhel10.x86_64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/sequential_uuids_18-1.0.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-4PGDG.rhel10.2.aarch64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/sequential_uuids_18-1.0.3-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PIGSTY.el10.aarch64.rpm pigsty 1.0.3 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sequential_uuids_18-1.0.3-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 sequential_uuids_18 sequential_uuids_18-1.0.3-2PGDG.rhel10.aarch64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/sequential_uuids_18-1.0.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-sequential-uuids postgresql-18-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 13.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-18-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PIGSTY.el8.x86_64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/sequential_uuids_17-1.0.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PIGSTY.el8.aarch64.rpm pigsty 1.0.3 12.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/sequential_uuids_17-1.0.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-4PGDG.rhel9.8.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/sequential_uuids_17-1.0.3-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PIGSTY.el9.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sequential_uuids_17-1.0.3-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 sequential_uuids_17 sequential_uuids_17-1.0.2-5PGDG.rhel9.x86_64.rpm pgdg 1.0.2 15.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/sequential_uuids_17-1.0.2-5PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-4PGDG.rhel9.8.aarch64.rpm pgdg 1.0.3 15.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/sequential_uuids_17-1.0.3-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PIGSTY.el9.aarch64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sequential_uuids_17-1.0.3-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 sequential_uuids_17 sequential_uuids_17-1.0.2-5PGDG.rhel9.aarch64.rpm pgdg 1.0.2 15.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/sequential_uuids_17-1.0.2-5PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-4PGDG.rhel10.2.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/sequential_uuids_17-1.0.3-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PIGSTY.el10.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sequential_uuids_17-1.0.3-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PGDG.rhel10.x86_64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/sequential_uuids_17-1.0.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-4PGDG.rhel10.2.aarch64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/sequential_uuids_17-1.0.3-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PIGSTY.el10.aarch64.rpm pigsty 1.0.3 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sequential_uuids_17-1.0.3-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 sequential_uuids_17 sequential_uuids_17-1.0.3-2PGDG.rhel10.aarch64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/sequential_uuids_17-1.0.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-sequential-uuids postgresql-17-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 13.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-17-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PIGSTY.el8.x86_64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/sequential_uuids_16-1.0.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PIGSTY.el8.aarch64.rpm pigsty 1.0.3 12.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/sequential_uuids_16-1.0.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-4PGDG.rhel9.8.x86_64.rpm pgdg 1.0.3 15.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/sequential_uuids_16-1.0.3-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PIGSTY.el9.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sequential_uuids_16-1.0.3-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 sequential_uuids_16 sequential_uuids_16-1.0.2-4PGDG.rhel9.x86_64.rpm pgdg 1.0.2 15.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/sequential_uuids_16-1.0.2-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-4PGDG.rhel9.8.aarch64.rpm pgdg 1.0.3 15.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/sequential_uuids_16-1.0.3-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PIGSTY.el9.aarch64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sequential_uuids_16-1.0.3-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 sequential_uuids_16 sequential_uuids_16-1.0.2-4PGDG.rhel9.aarch64.rpm pgdg 1.0.2 15.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/sequential_uuids_16-1.0.2-4PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-4PGDG.rhel10.2.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/sequential_uuids_16-1.0.3-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PIGSTY.el10.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sequential_uuids_16-1.0.3-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PGDG.rhel10.x86_64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/sequential_uuids_16-1.0.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-4PGDG.rhel10.2.aarch64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/sequential_uuids_16-1.0.3-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PIGSTY.el10.aarch64.rpm pigsty 1.0.3 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sequential_uuids_16-1.0.3-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 sequential_uuids_16 sequential_uuids_16-1.0.3-2PGDG.rhel10.aarch64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/sequential_uuids_16-1.0.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-sequential-uuids postgresql-16-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-16-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PIGSTY.el8.x86_64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/sequential_uuids_15-1.0.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PIGSTY.el8.aarch64.rpm pigsty 1.0.3 12.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/sequential_uuids_15-1.0.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-4PGDG.rhel9.8.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/sequential_uuids_15-1.0.3-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PIGSTY.el9.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sequential_uuids_15-1.0.3-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 sequential_uuids_15 sequential_uuids_15-1.0.2-2.rhel9.x86_64.rpm pgdg 1.0.2 15.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/sequential_uuids_15-1.0.2-2.rhel9.x86_64.rpm
@ el9.aarch64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-4PGDG.rhel9.8.aarch64.rpm pgdg 1.0.3 15.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/sequential_uuids_15-1.0.3-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PIGSTY.el9.aarch64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sequential_uuids_15-1.0.3-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 sequential_uuids_15 sequential_uuids_15-1.0.2-2.rhel9.aarch64.rpm pgdg 1.0.2 15.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/sequential_uuids_15-1.0.2-2.rhel9.aarch64.rpm
@ el10.x86_64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-4PGDG.rhel10.2.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/sequential_uuids_15-1.0.3-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PIGSTY.el10.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sequential_uuids_15-1.0.3-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PGDG.rhel10.x86_64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/sequential_uuids_15-1.0.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-4PGDG.rhel10.2.aarch64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/sequential_uuids_15-1.0.3-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PIGSTY.el10.aarch64.rpm pigsty 1.0.3 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sequential_uuids_15-1.0.3-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 sequential_uuids_15 sequential_uuids_15-1.0.3-2PGDG.rhel10.aarch64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/sequential_uuids_15-1.0.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-sequential-uuids postgresql-15-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-15-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PIGSTY.el8.x86_64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/sequential_uuids_14-1.0.3-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.2-1.rhel8.x86_64.rpm pgdg 1.0.2 21.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/sequential_uuids_14-1.0.2-1.rhel8.x86_64.rpm
@ el8.aarch64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PIGSTY.el8.aarch64.rpm pigsty 1.0.3 12.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/sequential_uuids_14-1.0.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-4PGDG.rhel9.8.x86_64.rpm pgdg 1.0.3 15.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/sequential_uuids_14-1.0.3-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PIGSTY.el9.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/sequential_uuids_14-1.0.3-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.2-1.rhel9.x86_64.rpm pgdg 1.0.2 21.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/sequential_uuids_14-1.0.2-1.rhel9.x86_64.rpm
@ el9.aarch64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-4PGDG.rhel9.8.aarch64.rpm pgdg 1.0.3 15.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/sequential_uuids_14-1.0.3-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PIGSTY.el9.aarch64.rpm pigsty 1.0.3 12.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/sequential_uuids_14-1.0.3-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 sequential_uuids_14 sequential_uuids_14-1.0.2-2.rhel9.aarch64.rpm pgdg 1.0.2 15.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/sequential_uuids_14-1.0.2-2.rhel9.aarch64.rpm
@ el10.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-4PGDG.rhel10.2.x86_64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/sequential_uuids_14-1.0.3-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PIGSTY.el10.x86_64.rpm pigsty 1.0.3 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/sequential_uuids_14-1.0.3-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PGDG.rhel10.x86_64.rpm pgdg 1.0.3 16.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/sequential_uuids_14-1.0.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-4PGDG.rhel10.2.aarch64.rpm pgdg 1.0.3 16.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/sequential_uuids_14-1.0.3-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PIGSTY.el10.aarch64.rpm pigsty 1.0.3 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/sequential_uuids_14-1.0.3-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 sequential_uuids_14 sequential_uuids_14-1.0.3-2PGDG.rhel10.aarch64.rpm pgdg 1.0.3 16.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/sequential_uuids_14-1.0.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 13.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-sequential-uuids postgresql-14-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/sequential-uuids/postgresql-14-sequential-uuids_1.0.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `sequential_uuids` using `pig build`:

```bash
pig build pkg sequential_uuids         # build RPM / DEB packages
```


## Install

You can install `sequential_uuids` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install sequential_uuids;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y sequential_uuids -v 18  # PG 18
pig ext install -y sequential_uuids -v 17  # PG 17
pig ext install -y sequential_uuids -v 16  # PG 16
pig ext install -y sequential_uuids -v 15  # PG 15
pig ext install -y sequential_uuids -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y sequential_uuids_18       # PG 18
dnf install -y sequential_uuids_17       # PG 17
dnf install -y sequential_uuids_16       # PG 16
dnf install -y sequential_uuids_15       # PG 15
dnf install -y sequential_uuids_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-sequential-uuids   # PG 18
apt install -y postgresql-17-sequential-uuids   # PG 17
apt install -y postgresql-16-sequential-uuids   # PG 16
apt install -y postgresql-15-sequential-uuids   # PG 15
apt install -y postgresql-14-sequential-uuids   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION sequential_uuids;
```




## Usage

> [sequential_uuids: sequential UUID generators for better index locality](https://github.com/tvondra/sequential-uuids)

Generates UUIDs with sequential patterns to reduce random I/O in indexes while maintaining sufficient randomness to avoid collisions.

```sql
CREATE EXTENSION sequential_uuids;
```

### Functions

| Function | Description |
|---|---|
| `uuid_sequence_nextval(sequence regclass, block_size int DEFAULT 65536, block_count int DEFAULT 65536)` | Generate a sequential UUID based on a sequence |
| `uuid_time_nextval(interval_length int DEFAULT 60, interval_count int DEFAULT 65536)` | Generate a sequential UUID based on current timestamp |

### Examples

```sql
CREATE SEQUENCE my_seq;

-- Sequence-based UUID generation
SELECT uuid_sequence_nextval('my_seq'::regclass);

-- Time-based UUID generation (wraps around every ~45 days with defaults)
SELECT uuid_time_nextval();

-- Use as default for a column
CREATE TABLE orders (
  id uuid DEFAULT uuid_time_nextval() PRIMARY KEY,
  data text
);

-- Custom block size and count
SELECT uuid_sequence_nextval('my_seq', 256, 65536);
SELECT uuid_time_nextval(120, 32768);
```
