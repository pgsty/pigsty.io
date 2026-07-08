---
title: "prefix"
linkTitle: "prefix"
description: "Prefix Range module for PostgreSQL"
weight: 3500
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dimitri/prefix">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dimitri/prefix</div>
    <div class="ext-card__desc">https://github.com/dimitri/prefix</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/prefix-1.2.11.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">prefix-1.2.11.tar.gz</div>
    <div class="ext-card__desc">prefix-1.2.11.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_prefix`**](/ext/e/prefix) | `1.2.11` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3500  | [**`prefix`**](/ext/e/prefix) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`semver`](/ext/e/semver) [`ltree`](/ext/e/ltree) [`citext`](/ext/e/citext) [`pg_trgm`](/ext/e/pg_trgm) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2.11` | {{< pgvers "18,17,16,15,14" >}} | `pg_prefix` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2.11` | {{< pgvers "18,17,16,15,14" >}} | `prefix_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2.11` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-prefix` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.11 2 | AVAIL PIGSTY 1.2.11 3 | AVAIL PIGSTY 1.2.11 3 | AVAIL PIGSTY 1.2.11 4 | AVAIL PIGSTY 1.2.11 4 |
| el8.aarch64 | AVAIL PIGSTY 1.2.11 2 | AVAIL PIGSTY 1.2.11 3 | AVAIL PIGSTY 1.2.11 3 | AVAIL PIGSTY 1.2.11 4 | AVAIL PIGSTY 1.2.11 4 |
| el9.x86_64 | AVAIL PIGSTY 1.2.11 4 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 6 | AVAIL PIGSTY 1.2.11 5 |
| el9.aarch64 | AVAIL PIGSTY 1.2.11 4 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 6 | AVAIL PIGSTY 1.2.11 6 |
| el10.x86_64 | AVAIL PIGSTY 1.2.11 4 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 5 |
| el10.aarch64 | AVAIL PIGSTY 1.2.11 4 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 5 | AVAIL PIGSTY 1.2.11 4 |
| d12.x86_64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| d12.aarch64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| d13.x86_64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| d13.aarch64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| u22.x86_64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| u22.aarch64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| u24.x86_64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| u24.aarch64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| u26.x86_64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
| u26.aarch64 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 | AVAIL PGDG 1.2.11 2 |
@ el8.x86_64 18 prefix_18 prefix_18-1.2.11-1PIGSTY.el8.x86_64.rpm pigsty 1.2.11 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/prefix_18-1.2.11-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2.11 30.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/prefix_18-1.2.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 prefix_18 prefix_18-1.2.11-1PIGSTY.el8.aarch64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/prefix_18-1.2.11-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2.11 28.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/prefix_18-1.2.11-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 prefix_18 prefix_18-1.2.11-1PIGSTY.el9.x86_64.rpm pigsty 1.2.11 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/prefix_18-1.2.11-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel9.8.x86_64.rpm pgdg 1.2.11 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/prefix_18-1.2.11-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2.11 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/prefix_18-1.2.11-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2.11 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/prefix_18-1.2.11-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 prefix_18 prefix_18-1.2.11-1PIGSTY.el9.aarch64.rpm pigsty 1.2.11 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/prefix_18-1.2.11-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel9.8.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/prefix_18-1.2.11-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/prefix_18-1.2.11-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2.11 26.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/prefix_18-1.2.11-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 prefix_18 prefix_18-1.2.11-1PIGSTY.el10.x86_64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/prefix_18-1.2.11-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel10.2.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/prefix_18-1.2.11-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/prefix_18-1.2.11-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2.11 28.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/prefix_18-1.2.11-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 prefix_18 prefix_18-1.2.11-1PIGSTY.el10.aarch64.rpm pigsty 1.2.11 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/prefix_18-1.2.11-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/prefix_18-1.2.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/prefix_18-1.2.11-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 prefix_18 prefix_18-1.2.11-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/prefix_18-1.2.11-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg12+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg12+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg12+1_arm64.deb pgdg 1.2.11 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg12+1_arm64.deb pgdg 1.2.10 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg13+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg13+1_amd64.deb pgdg 1.2.10 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg13+1_arm64.deb pgdg 1.2.11 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg13+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg22.04+1_amd64.deb pgdg 1.2.11 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg22.04+1_amd64.deb pgdg 1.2.10 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg22.04+1_arm64.deb pgdg 1.2.11 41.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg22.04+1_arm64.deb pgdg 1.2.10 41.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg24.04+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg24.04+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg24.04+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg24.04+1_arm64.deb pgdg 1.2.10 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg26.04+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg26.04+1_amd64.deb pgdg 1.2.10 40.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.11-1.pgdg26.04+1_arm64.deb pgdg 1.2.11 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.11-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-prefix postgresql-18-prefix_1.2.10-4.pgdg26.04+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-18-prefix_1.2.10-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 prefix_17 prefix_17-1.2.11-1PIGSTY.el8.x86_64.rpm pigsty 1.2.11 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/prefix_17-1.2.11-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2.11 30.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/prefix_17-1.2.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 prefix_17 prefix_17-1.2.10-2PGDG.rhel8.x86_64.rpm pgdg 1.2.10 30.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/prefix_17-1.2.10-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 prefix_17 prefix_17-1.2.11-1PIGSTY.el8.aarch64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/prefix_17-1.2.11-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2.11 28.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/prefix_17-1.2.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 prefix_17 prefix_17-1.2.10-2PGDG.rhel8.aarch64.rpm pgdg 1.2.10 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/prefix_17-1.2.10-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 prefix_17 prefix_17-1.2.11-1PIGSTY.el9.x86_64.rpm pigsty 1.2.11 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/prefix_17-1.2.11-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel9.8.x86_64.rpm pgdg 1.2.11 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/prefix_17-1.2.11-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2.11 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/prefix_17-1.2.11-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2.11 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/prefix_17-1.2.11-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 prefix_17 prefix_17-1.2.10-2PGDG.rhel9.x86_64.rpm pgdg 1.2.10 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/prefix_17-1.2.10-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 prefix_17 prefix_17-1.2.11-1PIGSTY.el9.aarch64.rpm pigsty 1.2.11 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/prefix_17-1.2.11-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel9.8.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/prefix_17-1.2.11-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/prefix_17-1.2.11-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2.11 26.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/prefix_17-1.2.11-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 prefix_17 prefix_17-1.2.10-2PGDG.rhel9.aarch64.rpm pgdg 1.2.10 26.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/prefix_17-1.2.10-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 prefix_17 prefix_17-1.2.11-1PIGSTY.el10.x86_64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/prefix_17-1.2.11-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel10.2.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/prefix_17-1.2.11-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/prefix_17-1.2.11-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2.11 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/prefix_17-1.2.11-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 prefix_17 prefix_17-1.2.10-3PGDG.rhel10.x86_64.rpm pgdg 1.2.10 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/prefix_17-1.2.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 prefix_17 prefix_17-1.2.11-1PIGSTY.el10.aarch64.rpm pigsty 1.2.11 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/prefix_17-1.2.11-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/prefix_17-1.2.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/prefix_17-1.2.11-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 prefix_17 prefix_17-1.2.11-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/prefix_17-1.2.11-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 prefix_17 prefix_17-1.2.10-3PGDG.rhel10.aarch64.rpm pgdg 1.2.10 27.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/prefix_17-1.2.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg12+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg12+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg12+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg12+1_arm64.deb pgdg 1.2.10 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg13+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg13+1_amd64.deb pgdg 1.2.10 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg13+1_arm64.deb pgdg 1.2.11 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg13+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg22.04+1_amd64.deb pgdg 1.2.11 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg22.04+1_amd64.deb pgdg 1.2.10 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg22.04+1_arm64.deb pgdg 1.2.11 42.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg22.04+1_arm64.deb pgdg 1.2.10 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg24.04+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg24.04+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg24.04+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg24.04+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg26.04+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg26.04+1_amd64.deb pgdg 1.2.10 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.11-1.pgdg26.04+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.11-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-prefix postgresql-17-prefix_1.2.10-4.pgdg26.04+1_arm64.deb pgdg 1.2.10 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-17-prefix_1.2.10-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 prefix_16 prefix_16-1.2.11-1PIGSTY.el8.x86_64.rpm pigsty 1.2.11 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/prefix_16-1.2.11-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2.11 30.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/prefix_16-1.2.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 prefix_16 prefix_16-1.2.10-1PGDG.rhel8.x86_64.rpm pgdg 1.2.10 30.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/prefix_16-1.2.10-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 prefix_16 prefix_16-1.2.11-1PIGSTY.el8.aarch64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/prefix_16-1.2.11-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2.11 28.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/prefix_16-1.2.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 prefix_16 prefix_16-1.2.10-1PGDG.rhel8.aarch64.rpm pgdg 1.2.10 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/prefix_16-1.2.10-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 prefix_16 prefix_16-1.2.11-1PIGSTY.el9.x86_64.rpm pigsty 1.2.11 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/prefix_16-1.2.11-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel9.8.x86_64.rpm pgdg 1.2.11 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/prefix_16-1.2.11-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2.11 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/prefix_16-1.2.11-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2.11 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/prefix_16-1.2.11-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 prefix_16 prefix_16-1.2.10-1PGDG.rhel9.x86_64.rpm pgdg 1.2.10 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/prefix_16-1.2.10-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 prefix_16 prefix_16-1.2.11-1PIGSTY.el9.aarch64.rpm pigsty 1.2.11 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/prefix_16-1.2.11-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel9.8.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/prefix_16-1.2.11-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/prefix_16-1.2.11-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2.11 26.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/prefix_16-1.2.11-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 prefix_16 prefix_16-1.2.10-1PGDG.rhel9.aarch64.rpm pgdg 1.2.10 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/prefix_16-1.2.10-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 prefix_16 prefix_16-1.2.11-1PIGSTY.el10.x86_64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/prefix_16-1.2.11-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel10.2.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/prefix_16-1.2.11-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/prefix_16-1.2.11-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2.11 28.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/prefix_16-1.2.11-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 prefix_16 prefix_16-1.2.10-3PGDG.rhel10.x86_64.rpm pgdg 1.2.10 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/prefix_16-1.2.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 prefix_16 prefix_16-1.2.11-1PIGSTY.el10.aarch64.rpm pigsty 1.2.11 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/prefix_16-1.2.11-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/prefix_16-1.2.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/prefix_16-1.2.11-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 prefix_16 prefix_16-1.2.11-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/prefix_16-1.2.11-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 prefix_16 prefix_16-1.2.10-3PGDG.rhel10.aarch64.rpm pgdg 1.2.10 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/prefix_16-1.2.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg12+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg12+1_amd64.deb pgdg 1.2.10 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg12+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg12+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg13+1_amd64.deb pgdg 1.2.11 40.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg13+1_amd64.deb pgdg 1.2.10 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg13+1_arm64.deb pgdg 1.2.11 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg13+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg22.04+1_amd64.deb pgdg 1.2.11 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg22.04+1_amd64.deb pgdg 1.2.10 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg22.04+1_arm64.deb pgdg 1.2.11 42.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg22.04+1_arm64.deb pgdg 1.2.10 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg24.04+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg24.04+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg24.04+1_arm64.deb pgdg 1.2.11 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg24.04+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg26.04+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg26.04+1_amd64.deb pgdg 1.2.10 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.11-1.pgdg26.04+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.11-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-prefix postgresql-16-prefix_1.2.10-4.pgdg26.04+1_arm64.deb pgdg 1.2.10 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-16-prefix_1.2.10-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 prefix_15 prefix_15-1.2.11-1PIGSTY.el8.x86_64.rpm pigsty 1.2.11 29.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/prefix_15-1.2.11-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2.11 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/prefix_15-1.2.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 prefix_15 prefix_15-1.2.10-1PGDG.rhel8.x86_64.rpm pgdg 1.2.10 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/prefix_15-1.2.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 prefix_15 prefix_15-1.2.9-3.rhel8.x86_64.rpm pgdg 1.2.9 51.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/prefix_15-1.2.9-3.rhel8.x86_64.rpm
@ el8.aarch64 15 prefix_15 prefix_15-1.2.11-1PIGSTY.el8.aarch64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/prefix_15-1.2.11-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2.11 28.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/prefix_15-1.2.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 prefix_15 prefix_15-1.2.10-1PGDG.rhel8.aarch64.rpm pgdg 1.2.10 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/prefix_15-1.2.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 prefix_15 prefix_15-1.2.9-3.rhel8.aarch64.rpm pgdg 1.2.9 49.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/prefix_15-1.2.9-3.rhel8.aarch64.rpm
@ el9.x86_64 15 prefix_15 prefix_15-1.2.11-1PIGSTY.el9.x86_64.rpm pigsty 1.2.11 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/prefix_15-1.2.11-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel9.8.x86_64.rpm pgdg 1.2.11 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/prefix_15-1.2.11-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2.11 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/prefix_15-1.2.11-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2.11 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/prefix_15-1.2.11-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 prefix_15 prefix_15-1.2.10-1PGDG.rhel9.x86_64.rpm pgdg 1.2.10 27.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/prefix_15-1.2.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 prefix_15 prefix_15-1.2.9-3.rhel9.x86_64.rpm pgdg 1.2.9 50.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/prefix_15-1.2.9-3.rhel9.x86_64.rpm
@ el9.aarch64 15 prefix_15 prefix_15-1.2.11-1PIGSTY.el9.aarch64.rpm pigsty 1.2.11 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/prefix_15-1.2.11-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel9.8.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/prefix_15-1.2.11-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/prefix_15-1.2.11-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2.11 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/prefix_15-1.2.11-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 prefix_15 prefix_15-1.2.10-1PGDG.rhel9.aarch64.rpm pgdg 1.2.10 26.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/prefix_15-1.2.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 prefix_15 prefix_15-1.2.9-3.rhel9.aarch64.rpm pgdg 1.2.9 49.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/prefix_15-1.2.9-3.rhel9.aarch64.rpm
@ el10.x86_64 15 prefix_15 prefix_15-1.2.11-1PIGSTY.el10.x86_64.rpm pigsty 1.2.11 28.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/prefix_15-1.2.11-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel10.2.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/prefix_15-1.2.11-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/prefix_15-1.2.11-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2.11 28.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/prefix_15-1.2.11-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 prefix_15 prefix_15-1.2.10-3PGDG.rhel10.x86_64.rpm pgdg 1.2.10 28.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/prefix_15-1.2.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 prefix_15 prefix_15-1.2.11-1PIGSTY.el10.aarch64.rpm pigsty 1.2.11 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/prefix_15-1.2.11-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel10.2.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/prefix_15-1.2.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/prefix_15-1.2.11-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 prefix_15 prefix_15-1.2.11-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/prefix_15-1.2.11-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 prefix_15 prefix_15-1.2.10-3PGDG.rhel10.aarch64.rpm pgdg 1.2.10 27.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/prefix_15-1.2.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg12+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg12+1_amd64.deb pgdg 1.2.10 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg12+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg12+1_arm64.deb pgdg 1.2.10 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg13+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg13+1_amd64.deb pgdg 1.2.10 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg13+1_arm64.deb pgdg 1.2.11 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg13+1_arm64.deb pgdg 1.2.10 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg22.04+1_amd64.deb pgdg 1.2.11 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg22.04+1_amd64.deb pgdg 1.2.10 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg22.04+1_arm64.deb pgdg 1.2.11 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg22.04+1_arm64.deb pgdg 1.2.10 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg24.04+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg24.04+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg24.04+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg24.04+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg26.04+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg26.04+1_amd64.deb pgdg 1.2.10 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.11-1.pgdg26.04+1_arm64.deb pgdg 1.2.11 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.11-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-prefix postgresql-15-prefix_1.2.10-4.pgdg26.04+1_arm64.deb pgdg 1.2.10 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-15-prefix_1.2.10-4.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 prefix_14 prefix_14-1.2.11-1PIGSTY.el8.x86_64.rpm pigsty 1.2.11 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/prefix_14-1.2.11-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel8.10.x86_64.rpm pgdg 1.2.11 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/prefix_14-1.2.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 prefix_14 prefix_14-1.2.10-1PGDG.rhel8.x86_64.rpm pgdg 1.2.10 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/prefix_14-1.2.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 prefix_14 prefix_14-1.2.9-3.rhel8.x86_64.rpm pgdg 1.2.9 51.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/prefix_14-1.2.9-3.rhel8.x86_64.rpm
@ el8.aarch64 14 prefix_14 prefix_14-1.2.11-1PIGSTY.el8.aarch64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/prefix_14-1.2.11-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel8.10.aarch64.rpm pgdg 1.2.11 28.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/prefix_14-1.2.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 prefix_14 prefix_14-1.2.10-1PGDG.rhel8.aarch64.rpm pgdg 1.2.10 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/prefix_14-1.2.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 prefix_14 prefix_14-1.2.9-3.rhel8.aarch64.rpm pgdg 1.2.9 49.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/prefix_14-1.2.9-3.rhel8.aarch64.rpm
@ el9.x86_64 14 prefix_14 prefix_14-1.2.11-1PIGSTY.el9.x86_64.rpm pigsty 1.2.11 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/prefix_14-1.2.11-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel9.8.x86_64.rpm pgdg 1.2.11 27.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/prefix_14-1.2.11-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel9.7.x86_64.rpm pgdg 1.2.11 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/prefix_14-1.2.11-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel9.6.x86_64.rpm pgdg 1.2.11 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/prefix_14-1.2.11-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 prefix_14 prefix_14-1.2.10-1PGDG.rhel9.x86_64.rpm pgdg 1.2.10 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/prefix_14-1.2.10-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 prefix_14 prefix_14-1.2.11-1PIGSTY.el9.aarch64.rpm pigsty 1.2.11 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/prefix_14-1.2.11-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel9.8.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/prefix_14-1.2.11-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel9.7.aarch64.rpm pgdg 1.2.11 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/prefix_14-1.2.11-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel9.6.aarch64.rpm pgdg 1.2.11 26.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/prefix_14-1.2.11-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 prefix_14 prefix_14-1.2.10-1PGDG.rhel9.aarch64.rpm pgdg 1.2.10 26.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/prefix_14-1.2.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 prefix_14 prefix_14-1.2.9-3.rhel9.aarch64.rpm pgdg 1.2.9 49.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/prefix_14-1.2.9-3.rhel9.aarch64.rpm
@ el10.x86_64 14 prefix_14 prefix_14-1.2.11-1PIGSTY.el10.x86_64.rpm pigsty 1.2.11 28.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/prefix_14-1.2.11-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel10.2.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/prefix_14-1.2.11-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel10.1.x86_64.rpm pgdg 1.2.11 28.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/prefix_14-1.2.11-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel10.0.x86_64.rpm pgdg 1.2.11 28.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/prefix_14-1.2.11-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 prefix_14 prefix_14-1.2.10-3PGDG.rhel10.x86_64.rpm pgdg 1.2.10 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/prefix_14-1.2.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 prefix_14 prefix_14-1.2.11-1PIGSTY.el10.aarch64.rpm pigsty 1.2.11 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/prefix_14-1.2.11-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel10.1.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/prefix_14-1.2.11-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 prefix_14 prefix_14-1.2.11-1PGDG.rhel10.0.aarch64.rpm pgdg 1.2.11 27.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/prefix_14-1.2.11-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 prefix_14 prefix_14-1.2.10-3PGDG.rhel10.aarch64.rpm pgdg 1.2.10 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/prefix_14-1.2.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg12+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg12+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg12+1_arm64.deb pgdg 1.2.11 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg12+1_arm64.deb pgdg 1.2.10 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg13+1_amd64.deb pgdg 1.2.11 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg13+1_amd64.deb pgdg 1.2.10 40.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg13+1_arm64.deb pgdg 1.2.11 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg13+1_arm64.deb pgdg 1.2.10 39.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg22.04+1_amd64.deb pgdg 1.2.11 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg22.04+1_amd64.deb pgdg 1.2.10 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg22.04+1_arm64.deb pgdg 1.2.11 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg22.04+1_arm64.deb pgdg 1.2.10 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg24.04+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg24.04+1_amd64.deb pgdg 1.2.10 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg24.04+1_arm64.deb pgdg 1.2.11 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg24.04+1_arm64.deb pgdg 1.2.10 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg26.04+1_amd64.deb pgdg 1.2.11 40.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg26.04+1_amd64.deb pgdg 1.2.10 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.11-1.pgdg26.04+1_arm64.deb pgdg 1.2.11 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.11-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-prefix postgresql-14-prefix_1.2.10-4.pgdg26.04+1_arm64.deb pgdg 1.2.10 39.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/prefix/postgresql-14-prefix_1.2.10-4.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_prefix` using `pig build`:

```bash
pig build pkg pg_prefix         # build RPM packages
```


## Install

You can install `pg_prefix` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_prefix;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_prefix -v 18  # PG 18
pig ext install -y pg_prefix -v 17  # PG 17
pig ext install -y pg_prefix -v 16  # PG 16
pig ext install -y pg_prefix -v 15  # PG 15
pig ext install -y pg_prefix -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y prefix_18       # PG 18
dnf install -y prefix_17       # PG 17
dnf install -y prefix_16       # PG 16
dnf install -y prefix_15       # PG 15
dnf install -y prefix_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-prefix   # PG 18
apt install -y postgresql-17-prefix   # PG 17
apt install -y postgresql-16-prefix   # PG 16
apt install -y postgresql-15-prefix   # PG 15
apt install -y postgresql-14-prefix   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION prefix;
```




## Usage

> [prefix: prefix range type for phone number routing](https://github.com/dimitri/prefix)

The `prefix` extension provides a `prefix_range` data type for efficient prefix matching, particularly useful for telephony call routing.

### Data Type

Create `prefix_range` values using the constructor or text casting:

```sql
CREATE EXTENSION prefix;

SELECT prefix_range('123');           -- 123
SELECT prefix_range('123', '4', '5'); -- 123[4-5]
SELECT '123'::prefix_range;           -- 123
```

### Operators

| Operator | Description |
|----------|-------------|
| `@>` | Contains (prefix contains value) |
| `<@` | Is contained by |
| `&&` | Overlaps |
| `\|` | Union |
| `&` | Intersection |
| `=`, `<>`, `<`, `>`, `<=`, `>=` | Comparison |

### Examples

```sql
-- Find the longest matching prefix for a phone number
SELECT * FROM prefixes
WHERE prefix @> '0123456789'
ORDER BY length(prefix) DESC
LIMIT 1;

-- Containment check
SELECT '123'::prefix_range @> '123456';     -- true

-- Intersection
SELECT '123[4-5]' & '123[2-7]';            -- 123[4-5]

-- Union
SELECT '123' | '124';                       -- 12[3-4]
```

### Index Support

Create a GiST index for efficient prefix lookups:

```sql
CREATE INDEX idx_prefix ON prefixes USING gist(prefix);
```

The index accelerates `@>`, `<@`, `&&`, and `=` operators.
