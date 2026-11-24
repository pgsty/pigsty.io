---
title: "pg_orphaned"
linkTitle: "pg_orphaned"
description: "Deal with orphaned files"
weight: 5200
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bdrouvot/pg_orphaned">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bdrouvot/pg_orphaned</div>
    <div class="ext-card__desc">https://github.com/bdrouvot/pg_orphaned</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_orphaned-git20260427.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_orphaned-git20260427.tar.gz</div>
    <div class="ext-card__desc">pg_orphaned-git20260427.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_orphaned`**](/ext/e/pg_orphaned) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5200  | [**`pg_orphaned`**](/ext/e/pg_orphaned) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_checksums`](/ext/e/pg_checksums) [`amcheck`](/ext/e/amcheck) [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_pathcheck`](/ext/e/pg_pathcheck) [`pg_surgery`](/ext/e/pg_surgery) [`pageinspect`](/ext/e/pageinspect) [`pg_isok`](/ext/e/pg_isok) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "19,18,17,16,15" >}} | `pg_orphaned` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "19,18,17,16,15" >}} | `pg_orphaned_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-orphaned` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el9.x86_64 19 pg_orphaned_19 pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm pigsty 1.0 39.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pg_orphaned_19 pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm pigsty 1.0 39.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pg_orphaned_19 pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm pigsty 1.0 39.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pg_orphaned_19 pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm pigsty 1.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_orphaned_19-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb pigsty 1.0 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb pigsty 1.0 29.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb pigsty 1.0 31.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb pigsty 1.0 31.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb pigsty 1.0 30.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-orphaned postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-19-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_orphaned_18 pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm pigsty 1.0 38.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_orphaned_18 pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm pigsty 1.0 38.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_orphaned_18 pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm pigsty 1.0 39.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_orphaned_18 pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm pigsty 1.0 39.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_orphaned_18 pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm pigsty 1.0 39.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_orphaned_18 pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm pigsty 1.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_orphaned_18-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb pigsty 1.0 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb pigsty 1.0 29.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb pigsty 1.0 31.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb pigsty 1.0 31.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb pigsty 1.0 30.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-orphaned postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb pigsty 1.0 30.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-18-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_orphaned_17 pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm pigsty 1.0 38.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_orphaned_17 pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm pigsty 1.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_orphaned_17 pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm pigsty 1.0 39.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_orphaned_17 pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm pigsty 1.0 39.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_orphaned_17 pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm pigsty 1.0 39.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_orphaned_17 pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm pigsty 1.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_orphaned_17-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb pigsty 1.0 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb pigsty 1.0 29.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb pigsty 1.0 29.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb pigsty 1.0 35.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb pigsty 1.0 35.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb pigsty 1.0 30.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-orphaned postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-17-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_orphaned_16 pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm pigsty 1.0 38.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_orphaned_16 pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm pigsty 1.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_orphaned_16 pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm pigsty 1.0 39.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_orphaned_16 pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm pigsty 1.0 39.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_orphaned_16 pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm pigsty 1.0 39.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_orphaned_16 pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm pigsty 1.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_orphaned_16-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb pigsty 1.0 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb pigsty 1.0 29.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb pigsty 1.0 35.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb pigsty 1.0 35.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb pigsty 1.0 30.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-orphaned postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-16-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_orphaned_15 pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm pigsty 1.0 38.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_orphaned_15 pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm pigsty 1.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_orphaned_15 pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm pigsty 1.0 39.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_orphaned_15 pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm pigsty 1.0 39.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_orphaned_15 pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm pigsty 1.0 39.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_orphaned_15 pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm pigsty 1.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_orphaned_15-1.0-2.git20260427.4e23c9cPGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb pigsty 1.0 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb pigsty 1.0 29.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb pigsty 1.0 29.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb pigsty 1.0 35.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb pigsty 1.0 35.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb pigsty 1.0 30.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-orphaned postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb pigsty 1.0 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orphaned/postgresql-15-pg-orphaned_1.0+git20260427-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_orphaned` using `pig build`:

```bash
pig build pkg pg_orphaned         # build RPM / DEB packages
```


## Install

You can install `pg_orphaned` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_orphaned;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_orphaned -v 19  # PG 19
pig ext install -y pg_orphaned -v 18  # PG 18
pig ext install -y pg_orphaned -v 17  # PG 17
pig ext install -y pg_orphaned -v 16  # PG 16
pig ext install -y pg_orphaned -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_orphaned_19       # PG 19
dnf install -y pg_orphaned_18       # PG 18
dnf install -y pg_orphaned_17       # PG 17
dnf install -y pg_orphaned_16       # PG 16
dnf install -y pg_orphaned_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-orphaned   # PG 19
apt install -y postgresql-18-pg-orphaned   # PG 18
apt install -y postgresql-17-pg-orphaned   # PG 17
apt install -y postgresql-16-pg-orphaned   # PG 16
apt install -y postgresql-15-pg-orphaned   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_orphaned;
```




## Usage

> [pg_orphaned: Deal with orphaned files](https://github.com/bdrouvot/pg_orphaned)

pg_orphaned provides functions to detect and manage orphaned data files in PostgreSQL. It handles corner cases like in-progress transactions that could cause false positives by using a dirty snapshot.

### List Orphaned Files

```sql
-- List orphaned files (default: older than 1 day marked as "older")
SELECT * FROM pg_list_orphaned();

-- Custom age threshold
SELECT * FROM pg_list_orphaned('10 seconds');
SELECT * FROM pg_list_orphaned('1 minute');
```

Returns: `dbname`, `path`, `name`, `size`, `mod_time`, `relfilenode`, `reloid`, `older` (boolean).

### Move Orphaned Files to Backup

```sql
-- Move files older than the threshold to orphaned_backup directory
SELECT pg_move_orphaned('1 minute');
```

### List Moved Files

```sql
SELECT * FROM pg_list_orphaned_moved();
```

### Move Files Back (if still orphaned)

```sql
SELECT pg_move_back_orphaned();
```

### Remove Moved Files

```sql
SELECT pg_remove_moved_orphaned();
```

### Typical Workflow

```sql
-- 1. Check for orphaned files
SELECT * FROM pg_list_orphaned('1 minute');

-- 2. Move them to backup (only those older than threshold)
SELECT pg_move_orphaned('1 minute');

-- 3. Verify what was moved
SELECT * FROM pg_list_orphaned_moved();

-- 4. After confirming, remove the backup files
SELECT pg_remove_moved_orphaned();
```

Note: functions operate on orphaned files for the database you are connected to. Always double-check carefully before moving or removing files.
