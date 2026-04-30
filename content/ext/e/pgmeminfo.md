---
title: "pgmeminfo"
linkTitle: "pgmeminfo"
description: "show memory usage"
weight: 6520
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/okbob/pgmeminfo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">okbob/pgmeminfo</div>
    <div class="ext-card__desc">https://github.com/okbob/pgmeminfo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmeminfo-VERSION_1_0_0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmeminfo-VERSION_1_0_0.tar.gz</div>
    <div class="ext-card__desc">pgmeminfo-VERSION_1_0_0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmeminfo`**](/ext/e/pgmeminfo) | `1.0.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6520  | [**`pgmeminfo`**](/ext/e/pgmeminfo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgfincore`](/ext/e/pgfincore) [`system_stats`](/ext/e/system_stats) [`pg_buffercache`](/ext/e/pg_buffercache) [`pgnodemx`](/ext/e/pgnodemx) [`pg_proctab`](/ext/e/pg_proctab) [`pg_cooldown`](/ext/e/pg_cooldown) [`pgcozy`](/ext/e/pgcozy) [`pg_prewarm`](/ext/e/pg_prewarm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> no pg14 on el8/9 pgdg repo


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmeminfo` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmeminfo_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmeminfo` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el8.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el9.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el9.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el10.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el10.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-3PGDG.rhel8.x86_64.rpm pgdg 1.0.0 15.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmeminfo_18-1.0.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmeminfo_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-3PGDG.rhel8.aarch64.rpm pgdg 1.0.0 15.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmeminfo_18-1.0.0-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmeminfo_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-3PGDG.rhel9.x86_64.rpm pgdg 1.0.0 15.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmeminfo_18-1.0.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmeminfo_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-3PGDG.rhel9.aarch64.rpm pgdg 1.0.0 15.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmeminfo_18-1.0.0-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmeminfo_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0.0 15.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmeminfo_18-1.0.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmeminfo_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0.0 15.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmeminfo_18-1.0.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pgmeminfo_18 pgmeminfo_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmeminfo_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 14.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 14.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmeminfo postgresql-18-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-18-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-2PGDG.rhel8.x86_64.rpm pgdg 1.0.0 15.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmeminfo_17-1.0.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmeminfo_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-2PGDG.rhel8.aarch64.rpm pgdg 1.0.0 15.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmeminfo_17-1.0.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmeminfo_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-2PGDG.rhel9.x86_64.rpm pgdg 1.0.0 15.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmeminfo_17-1.0.0-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmeminfo_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-2PGDG.rhel9.aarch64.rpm pgdg 1.0.0 15.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmeminfo_17-1.0.0-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmeminfo_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0.0 15.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmeminfo_17-1.0.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmeminfo_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0.0 15.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmeminfo_17-1.0.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgmeminfo_17 pgmeminfo_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmeminfo_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 16.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 16.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmeminfo postgresql-17-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-17-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmeminfo_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 15.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmeminfo_16-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmeminfo_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 14.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmeminfo_16-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmeminfo_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 15.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmeminfo_16-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmeminfo_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 14.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmeminfo_16-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0.0 15.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmeminfo_16-1.0.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmeminfo_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0.0 15.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmeminfo_16-1.0.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgmeminfo_16 pgmeminfo_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmeminfo_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 16.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 16.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmeminfo postgresql-16-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-16-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmeminfo_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 15.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmeminfo_15-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmeminfo_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 14.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmeminfo_15-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmeminfo_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 15.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmeminfo_15-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmeminfo_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 14.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmeminfo_15-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0.0 15.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmeminfo_15-1.0.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmeminfo_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0.0 15.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmeminfo_15-1.0.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgmeminfo_15 pgmeminfo_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmeminfo_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 16.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 16.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmeminfo postgresql-15-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-15-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmeminfo_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 14.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmeminfo_14-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmeminfo_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 14.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmeminfo_14-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmeminfo_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 15.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmeminfo_14-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmeminfo_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 14.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmeminfo_14-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0.0 15.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmeminfo_14-1.0.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmeminfo_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0.0 15.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmeminfo_14-1.0.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgmeminfo_14 pgmeminfo_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmeminfo_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 16.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 16.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmeminfo postgresql-14-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmeminfo/postgresql-14-pgmeminfo_1.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmeminfo` using `pig build`:

```bash
pig build pkg pgmeminfo         # build RPM / DEB packages
```


## Install

You can install `pgmeminfo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmeminfo;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmeminfo -v 18  # PG 18
pig ext install -y pgmeminfo -v 17  # PG 17
pig ext install -y pgmeminfo -v 16  # PG 16
pig ext install -y pgmeminfo -v 15  # PG 15
pig ext install -y pgmeminfo -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmeminfo_18       # PG 18
dnf install -y pgmeminfo_17       # PG 17
dnf install -y pgmeminfo_16       # PG 16
dnf install -y pgmeminfo_15       # PG 15
dnf install -y pgmeminfo_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmeminfo   # PG 18
apt install -y postgresql-17-pgmeminfo   # PG 17
apt install -y postgresql-16-pgmeminfo   # PG 16
apt install -y postgresql-15-pgmeminfo   # PG 15
apt install -y postgresql-14-pgmeminfo   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmeminfo;
```



## Usage

> [pgmeminfo: PostgreSQL memory context information](https://github.com/okbob/pgmeminfo)

pgmeminfo provides functions to inspect PostgreSQL backend memory usage and memory context hierarchies.

### Functions

**Memory information overview:**

```sql
-- Show overall memory info
SELECT * FROM pgmeminfo();
```

**Memory context hierarchy:**

```sql
-- Show cumulative memory context sizes
SELECT * FROM pgmeminfo_contexts();

-- Show memory contexts to a specific depth
SELECT * FROM pgmeminfo_contexts(deep => 1);

-- Show all contexts without accumulation
SELECT * FROM pgmeminfo_contexts(deep => -1, accum_mode => 'off');
```
